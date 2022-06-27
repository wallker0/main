//main.cs
//@wallker0


using System;
using System.IO;
using System.Diagnostics;
using System.Threading;
using System.Text.RegularExpressions;
using HtmlAgilityPack;


namespace profitSwitch
{

    internal static class proc {

        internal static bool ison = true;

        internal static int isd = 0, i = 0;

        internal static double dlr,  //dollar to brl
                               mh,   //total MH of rigs
                               pwr,  //total power draw
                               kwh,  //kwh price
                               mhp,  //1mh/month reward
                               ethp, //eth price
                               nrg,  //power cost
                               c1,   //revenue
                               minv, //low profit
                               mem;  //profit average

        internal static ConsoleColor white = ConsoleColor.White;
        internal static ConsoleColor black = ConsoleColor.Black;
        internal static ConsoleColor red = ConsoleColor.Red;
        internal static ConsoleColor blue = ConsoleColor.Blue;
        internal static ConsoleColor cyan = ConsoleColor.Cyan;
        internal static ConsoleColor green = ConsoleColor.Green;
        internal static ConsoleColor yellow = ConsoleColor.Yellow;
        internal static ConsoleColor magenta = ConsoleColor.Magenta;
        internal static ConsoleColor gray = ConsoleColor.Gray;
        internal static ConsoleColor dred = ConsoleColor.DarkRed;
        internal static ConsoleColor dblue = ConsoleColor.DarkBlue;
        internal static ConsoleColor dcyan = ConsoleColor.DarkCyan;
        internal static ConsoleColor dgreen = ConsoleColor.DarkGreen;
        internal static ConsoleColor dyellow = ConsoleColor.DarkYellow;
        internal static ConsoleColor dmagenta = ConsoleColor.DarkMagenta;
        internal static ConsoleColor dgray = ConsoleColor.DarkGray;
        internal static ConsoleColor col1 = new ConsoleColor(), col2 = new ConsoleColor();

        //writes to console in color to x, y
        internal static void writec(string s, ConsoleColor fc, ConsoleColor bc, int x, int y) {
            int x1 = Console.CursorLeft; int y1 = Console.CursorTop;
            Console.SetCursorPosition(x, y);
            Console.ForegroundColor = fc;
            Console.BackgroundColor = bc;
            Console.Write(s);
            Console.ResetColor();
            Console.SetCursorPosition(x1, y1);
        }


        //read:create config file
        internal static void read() {
            if (!File.Exists("config.cfg")) {
                using (StreamWriter sw = File.CreateText("config.cfg")) {
                    sw.WriteLine("//total MH:");
                    sw.WriteLine("830");
                    sw.WriteLine("//power draw:");
                    sw.WriteLine("2300");
                    sw.WriteLine("//kwh price:");
                    sw.WriteLine("0.9");
                    sw.WriteLine("//low profit:");
                    sw.WriteLine("200");
                    sw.WriteLine("//trex <0> / nb <1> / dual <2>");
                    sw.WriteLine("0");
                    sw.Dispose();

                }
            }
            string[] l = new string[10];
            using (StreamReader sr = File.OpenText("config.cfg")) {
                int x = 0;
                while (!sr.EndOfStream) {
                    l[x] = sr.ReadLine(); x += 1;
                }
                sr.Dispose();
            }
            mh = Convert.ToDouble(l[1]); pwr = Convert.ToDouble(l[3]);
            kwh = Convert.ToDouble(l[5]); minv = Convert.ToDouble(l[7]);
            isd = Convert.ToInt32(l[9]); 
        }

        //htmlagilitypack webscrap
        internal static void scrap() {
            try {
                //get 1mh /month reward
                HtmlWeb webp = new HtmlWeb();
                HtmlDocument load = webp.Load("https://whattomine.com/coins/151-eth-ethash?hr=1&p=0&fee=0.0&cost=0&cost_currency=USD&hcost=0.0&span_br=&span_d=&commit=Calculate");
                foreach (var item in load.DocumentNode.SelectNodes("/html/body/div[2]/div[2]/div[2]/table[1]/tbody/tr[5]/td[7]")) {
                    mhp = Convert.ToDouble(Regex.Match(item.InnerText, @"\d+\.*\d*").Value);
                }
                //get eth price
                HtmlDocument load2 = webp.Load("https://www.livecoinwatch.com/price/Ethereum-ETH");
                foreach (var item in load2.DocumentNode.SelectNodes("//span[@class='price']")) {
                    ethp = Convert.ToDouble(Regex.Match(item.InnerText, @"\d+\.*\d*").Value);
                }
                //get dollar price
                HtmlDocument load3 = webp.Load("https://br.investing.com/currencies/usd-brl");
                foreach (var item in load3.DocumentNode.SelectNodes("//*[@id='__next']/div[2]/div/div/div[2]/main/div/div[1]/div[2]/div[1]/span")) {
                    dlr = Convert.ToDouble(Regex.Replace(item.InnerText, @"\D", "")) / 10000;
                }
                //update scrap counter
                i = i + 1;
            } catch (Exception e) {
                //Console.WriteLine("{0}", e);
                Console.WriteLine("Unable to WEBSCRAP.. retrying in 1 min..");
                Thread.Sleep(60000);
            }

        }

        //math
        internal static void calc() {
            //energy cost /month
            nrg = ((pwr * 24 * 30) / 1000) * kwh;
            //revenue /month
            c1 = mhp * mh * dlr;
            //profit /month average
            mem = (mem + (c1 - nrg));
            //set [1 MONTH PROFIT] color
            if (c1 - nrg >= minv) {
                col1 = green; col2 = black;
            } else if (c1 - nrg < minv && c1 - nrg > 0) {
                col1 = yellow; col2 = black;
            } else if (c1 - nrg < 0) {
                col1 = red; col2 = black;
            }
        }
    
        //rig switch
        internal static void rswitch() { 
        
            if (c1 > nrg) {

                Process[] pname1 = Process.GetProcessesByName("t-rex");
                Process[] pname2 = Process.GetProcessesByName("nbminer");
                   
                    //switch online
                    try { 
                        if (isd == 0) {
                            if (pname1.Length == 0)
                            { Process.Start("start.bat"); }
                        } else if (isd == 1) {
                            if (pname2.Length == 0)
                            { Process.Start("start.bat"); }
                        } else if (isd == 2) {
                            if (pname1.Length == 0 && pname2.Length == 0)
                            { Process.Start("start.bat"); }
                        }
                    } catch { }

                writec(" RIG ONLINE! ", black, dgreen, 12, 10);

            } else if (c1 < nrg) {
                                    
                Process[] pname1 = Process.GetProcessesByName("t-rex");
                Process[] pname2 = Process.GetProcessesByName("nbminer");

                    //switch offline
                    if (isd == 0) {
                        if (pname1.Length != 0) {
                            foreach (var process in pname1) { process.Kill(); }
                        }
                    } else if (isd == 1) {
                        if (pname2.Length != 0) {
                            foreach (var process in pname2) { process.Kill(); }
                        }
                    } else if (isd == 2) {
                        if (pname1.Length != 0 ^ pname2.Length != 0) {
                            try {
                                foreach (var process in pname1) { process.Kill(); }
                                foreach (var process in pname2) { process.Kill(); }
                            } catch { }
                        }
                    }

                writec(" RIG OFFLINE! ", white, dred, 12, 10);

            }
        }


        internal static void menu1() {

            while (ison == true) {

                Console.Clear();
                Console.CursorVisible = false;
                Console.Title = "profitSwitch v0.1";

                //menu title
                writec("         ETH profitSwitch v0.1        ", white, blue, 0, 0);

                //draw the menu
                writec($"ETH Price..............: ", white, black, 3, 2);

                writec($"1 Month Energy Cost....: ", white, black, 3, 3);

                writec($"1 Month Revenue........: ", white, black, 3, 4);

                writec($"1 Day Energy Cost......: ", white, black, 3, 5);

                writec($"1 Day Revenue..........: ", white, black, 3, 6);
                
                writec($"1 Month Avrg...........: ", white, black, 3, 7);

                //webscrap stuff
                scrap();
                //do the math
                calc();

                //populate the menu
                writec($"{Math.Round(ethp * dlr, 2)}", white, black, 28, 2);
                writec($"{Math.Round(nrg, 2)}", white, black, 28, 3);
                writec($"{mh}MH", white, black, 20, 4);
                writec($"{Math.Round(c1, 2)}", white, black, 28, 4);
                writec($"{Math.Round(nrg / 30, 2)}", white, black, 28, 5);
                writec($"{mh}MH", white, black, 20, 6);
                writec($"{Math.Round(c1 / 30, 2)}", white, black, 28, 6);
                writec($"{mh}MH", white, black, 20, 7);
                writec($"{Math.Round(mem / i, 2)}", white, black, 28, 7);
                writec($"1 MONTH PROFIT.........: ", col1, col2, 3, 8);
                writec($"{Math.Round(c1 - nrg, 2)}", col1, col2, 28, 8);


                //rig switch
                rswitch();             
                                

                //5 min wait
                for (int i = 10; i > 1; i--) { writec("wait..("+Convert.ToString((i)/2)+")", dgray, black, 26, 12); Thread.Sleep(30000); }

            }
            
        }

    }

    internal class main {
        static void Main(string[] args) {

            Console.SetWindowSize(38, 13);
            Console.SetBufferSize(38, 13);

            Console.WriteLine("..initializing");

            //load config file
            proc.read();

            proc.menu1(); 

        }
    }
}
