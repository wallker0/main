//main.cs
//@wallker0
//05.27.2022


using System;
using System.Threading;
using System.IO;
using System.Windows.Forms;
using Microsoft.VisualBasic;

namespace pwgen {

    class start {

        public string[] Xar = new string[70];
        public int length = 0; //phrase length
        public bool usecfg = false; //read from config file
        public bool numbers = false; //include numbers
        public bool fnum = true; //final char = only numbers
        public bool ilett = true; //first char = only letters
        public string pw = "";

        Random r = new Random();

        public const ConsoleColor dred = ConsoleColor.DarkRed;
        public const ConsoleColor dgreen = ConsoleColor.DarkGreen;
        public const ConsoleColor dyellow = ConsoleColor.DarkYellow;
        public const ConsoleColor dgray = ConsoleColor.DarkGray;


        //write to console in color to x,y
        public void writec(string s, ConsoleColor c, int x, int y) {
            Console.ForegroundColor = c;
            Console.CursorLeft = x;
            Console.CursorTop = y;
            Console.Write(s);
            Console.ResetColor();
        }

        //simple cipher
        public string dc(string str, int v) {
            string o = string.Empty;
            string c;
            for (var i = 0; i <= Strings.Len(str) - 1; i++) {
                c = str.Substring(i, 1);
                o += Strings.Chr(Strings.Asc(c) + v); }
            return o;
        }


        //read:create config file
        public void read() {
            if (!File.Exists("config.dat")) {
                using (StreamWriter sw = File.CreateText("config.dat")) {
                    sw.WriteLine("//use config file:");
                    sw.WriteLine("true");
                    sw.WriteLine("//length:");
                    sw.WriteLine("10");
                    sw.WriteLine("//include numbers:");
                    sw.WriteLine("true");
                    sw.WriteLine("//final char = only numbers:");
                    sw.WriteLine("true");
                    sw.WriteLine("//initial char = only letters:");
                    sw.WriteLine("true"); } }
            string[] l = new string[10];
            using (StreamReader sr = File.OpenText("config.dat")) {
                int x = 0;
                while (!sr.EndOfStream) { l[x] = sr.ReadLine(); x += 1; } }
            if (Convert.ToBoolean(l[1]) == true) { 
                length = Convert.ToInt32(l[3]); numbers = Convert.ToBoolean(l[5]);
                fnum = Convert.ToBoolean(l[7]); ilett = Convert.ToBoolean(l[9]);
            } else if (Convert.ToBoolean(l[1]) == false) {
                writec("set password length:", dgray, 0, 0);
                length = Convert.ToInt32(Console.ReadLine()); Console.Clear();
                writec("include numbers [true/false] :", dgray, 0, 0);
                numbers = Convert.ToBoolean(Console.ReadLine()); Console.Clear();
                writec("initial charA-Z [true/false] :", dgray, 0, 0);
                ilett = Convert.ToBoolean(Console.ReadLine()); Console.Clear();
                writec("final char0-9 [true/false] :", dgray, 0, 0);
                fnum = Convert.ToBoolean(Console.ReadLine()); Console.Clear();
            }
        }



        public void home() {

            Console.Clear();
            Console.SetWindowSize(30, 5);
            Console.SetBufferSize(30, 5);

            Console.Title = "pw gen";

            //load the config file
            read();

            writec("random generated password:", dgray, 3, 0);

            //a-z scramble
            Xar[1]  = dc("o",-4); Xar[2]  = dc("l",-4); Xar[3]  = dc("i",-4); Xar[4]  = dc("f",-4); Xar[5]  = dc("j",-4); Xar[6]  = dc("z",-4); Xar[7]  = dc("g",-4); Xar[8]  = dc("w",-4);
            Xar[9]  = dc("w",-4); Xar[10] = dc("}",-4); Xar[11] = dc("y",-4); Xar[12] = dc("r",-4); Xar[13] = dc("t",-4); Xar[14] = dc("s",-4); Xar[15] = dc("p",-4); Xar[16] = dc("{",-4);
            Xar[17] = dc("m",-4); Xar[18] = dc("v",-4); Xar[19] = dc("e",-4); Xar[20] = dc("n",-4); Xar[21] = dc("x",-4); Xar[22] = dc("h",-4); Xar[23] = dc("k",-4); Xar[24] = dc("q",-4);
            Xar[25] = dc("u",-4); Xar[26] = dc("|",-4);

            //A-Z scramble
            Xar[27] = dc("O",-4); Xar[28] = dc("Z",-4); Xar[29] = dc("S",-4); Xar[30] = dc("E",-4); Xar[31] = dc("[",-4); Xar[32] = dc("U",-4); Xar[33] = dc("X",-4); Xar[34] = dc("W",-4);
            Xar[35] = dc("T",-4); Xar[36] = dc("M",-4); Xar[37] = dc("Q",-4); Xar[38] = dc("]",-4); Xar[39] = dc("I",-4); Xar[40] = dc("N",-4); Xar[41] = dc("G",-4); Xar[42] = dc("F",-4);
            Xar[43] = dc("J",-4); Xar[44] = dc("Y",-4); Xar[45] = dc("L",-4); Xar[46] = dc("P",-4); Xar[47] = dc("X", 0); Xar[48] = dc("R",-4); Xar[49] = dc("K",-4); Xar[50] = dc("V",-4);
            Xar[51] = dc("H",-4); Xar[52] = dc("^",-4);

            //0-9 scramble
            Xar[53] = "5"; Xar[54] = "4"; Xar[55] = "2"; Xar[56] = "6"; Xar[57] = "8"; Xar[58] = "9"; Xar[59] = "1"; Xar[60] = "0";
            Xar[61] = "3"; Xar[62] = "7";

 
            //draw ? letters:numbers
            switch (numbers) {
                case true:
                    for (int i = 0; i < length; i++) {
                        if (i == 0 & ilett == true) { pw += Xar[r.Next(1, 52)]; Thread.Sleep(50); } //only letters on first char
                        else if (i == length - 1 & fnum == true) { pw += Xar[r.Next(53, 62)]; Thread.Sleep(50); } //only numbers on last char
                        else { pw += Xar[r.Next(1, 62)]; Thread.Sleep(50); } } break;
                case false:
                    for (int i = 0; i < length; i++) {
                        pw += Xar[r.Next(1, 52)];
                        Thread.Sleep(50); } break;
            }

            //print then copy to clipboard
            writec(pw, dyellow, Console.BufferWidth/2 - length/2, 2);
            Clipboard.SetText(pw);
            writec("clipped!",dgray,0,4);
            
            //exit timer
            for (int i = 10; i>1; i--) { writec(Convert.ToString(i-1), dgray, 28, 4); Thread.Sleep(1000); }
            
        }

    }

    class Master {
        [STAThread]
        static void Main() {
            start s = new start();
            s.home();
        }
    }
}