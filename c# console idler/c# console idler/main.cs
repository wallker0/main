//main.cs
//@wallker0
//05.09.2022


using System;
using System.Threading;
using System.IO;
using System.Xml.Serialization;


namespace crpg {

    class f {

        db p = new db();
        snake snk = new snake();

        public int isdead;

        public static ConsoleColor white = ConsoleColor.White;
        public static ConsoleColor black = ConsoleColor.Black;
        public static ConsoleColor red = ConsoleColor.Red;
        public static ConsoleColor blue = ConsoleColor.Blue;
        public static ConsoleColor cyan = ConsoleColor.Cyan;
        public static ConsoleColor green = ConsoleColor.Green;
        public static ConsoleColor yellow = ConsoleColor.Yellow;
        public static ConsoleColor magenta = ConsoleColor.Magenta;
        public static ConsoleColor gray = ConsoleColor.Gray;
        public static ConsoleColor dred = ConsoleColor.DarkRed;
        public static ConsoleColor dblue = ConsoleColor.DarkBlue;
        public static ConsoleColor dcyan = ConsoleColor.DarkCyan;
        public static ConsoleColor dgreen = ConsoleColor.DarkGreen;
        public static ConsoleColor dyellow = ConsoleColor.DarkYellow;
        public static ConsoleColor dmagenta = ConsoleColor.DarkMagenta;
        public static ConsoleColor dgray = ConsoleColor.DarkGray;

        public void save() {
            StreamWriter sw = new StreamWriter("37156.xml");
            XmlSerializer x = new XmlSerializer(p.GetType());
            x.Serialize(sw, p);
            sw.Close();
        }

        public void load() {
            StreamReader sr = new StreamReader("37156.xml");
            XmlSerializer x = new XmlSerializer(p.GetType());
            p = (db)x.Deserialize(sr);
            sr.Close();
        }

        public void pload() {
            Random rand = new Random();
            p.lvl = 1;
            p.forc = rand.Next(5, 16);
            p.con = rand.Next(5, 16);
            p.hpt = ((p.forc * 100) + (p.con * 100)) * p.lvl;
            p.mhpa = p.mhpt = p.hpt * 10;
            p.pdmg = p.pdmgt = (p.con + p.forc) * p.lvl;
            p.hpa = p.hpt;
            p.xpt = p.lvl * 1000;
            p.xpa = 0;
            p.cash = 0;
            //save();
        }

        public void slp(int t) {
            for (int i = 0; i < 3; i++) {
                writec(".",magenta);
                Thread.Sleep(t / 3);
            }
            Console.WriteLine();
        }

        public void writelc(string s, ConsoleColor c) {
            Console.ForegroundColor = c;
            Console.WriteLine(s);
            Console.ResetColor();
        }

        public void writec(string s, ConsoleColor c) {
            Console.ForegroundColor = c;
            Console.Write(s);
            Console.ResetColor();
        }

        public void calc() {

            Random rnd = new Random();

            isdead = 2;
            Console.Clear();
            pload();

            while (isdead == 2) {
                while (p.mhpa > 0 & p.hpa > 0) {

                    p.pdmg = p.pdmgt + rnd.Next(100, 500);
                    p.mhpa -= p.pdmg;
                    p.mdmg = Convert.ToInt32(p.pdmg * 0.05) + rnd.Next(1, 10);
                    p.hpa -= p.mdmg;

                    Thread.Sleep(10);
                    Console.Write(".");
                    //Console.WriteLine("p.hp: " + hpa + " m.hp: " + mhpa + " p.dmg: " + pdmg + " m.dmg: " + mdmg);

                    if (p.hpa <= 0) {
                        isdead = 1;
                        Console.WriteLine();
                        writelc("defeated!", dred);
                        Console.WriteLine("press any key to return..");
                    } else if (p.mhpa <= 0) {
                        isdead = 0;
                        Console.WriteLine();
                        writelc("cleared!", dmagenta);
                        Console.WriteLine("press any key to return..");
                    }
                }
                Console.ResetColor();
                Console.ReadKey();
            }            
            home();
        }

        public void help() {
            Console.WriteLine();

            int optc = 4, sel = 0;
            bool done = false;

            while (done == false) {

                for (int i = 0; i < optc; i++){
                    Console.CursorLeft = 13;

                    if (sel == i) {
                        Console.ForegroundColor = red;
                        Console.Write(">");
                    } else {
                        Console.ForegroundColor = gray;
                        Console.Write(" ");
                    }

                    if (i == 0) { Console.WriteLine("option1"); }
                    if (i == 1) { Console.WriteLine("option2"); }
                    if (i == 2) { Console.WriteLine("option3"); }
                    if (i == 3) { Console.WriteLine("return"); }

                    Console.ResetColor();
                }

                switch (Console.ReadKey().Key) {
                    case ConsoleKey.UpArrow:
                        { sel = Math.Max(0, sel - 1); }
                        break;
                    case ConsoleKey.DownArrow:
                        { sel = Math.Min(optc - 1, sel + 1); }
                        break;
                    case ConsoleKey.Enter: {
                            Console.Beep(100, 1);
                            if (sel == 0) {  }
                            if (sel == 1) {  }
                            if (sel == 2) {  }
                            if (sel == 3) { home(); }
                        }
                        break;
                }
                if (done == false) { Console.CursorTop = Console.CursorTop - optc; }
            }
        }

        public void options() {
            Console.WriteLine();

            load();
            int optc = 4, sel = 0;
            bool done = false;

            while (done == false) {

                for (int i = 0; i < optc; i++) {

                    Console.CursorLeft = 13;

                    if (sel == i) {
                        Console.ForegroundColor = red;
                        Console.Write(">");
                    } else {
                        Console.ForegroundColor = gray;
                        Console.Write(" ");
                    }

                    if (i == 0) {
                        if (p.diff == 1) { Console.Write("[1]"); } else if (p.diff == 2){ Console.Write("[2]"); } else if (p.diff == 3) { Console.Write("[3]"); }
                        Console.WriteLine("snake dif"); 
                    }
                    if (i == 1) {
                        if (p.cc == false)
                        { Console.Write("[0]"); } else { Console.Write("[1]"); }
                        Console.WriteLine("snake style"); 
                    }
                    if (i == 2) {
                        if (p.op3 == false)
                        { Console.Write("[0]"); } else { Console.Write("[1]"); }
                        Console.WriteLine("option3"); 
                    }
                    if (i == 3) {
                        Console.WriteLine("return"); 
                    }

                    Console.ResetColor();
                }
                ConsoleKey select = Console.ReadKey().Key;
                switch (select) {
                    case ConsoleKey.UpArrow:
                        { sel = Math.Max(0, sel - 1); }
                        break;
                    case ConsoleKey.DownArrow:
                        { sel = Math.Min(optc - 1, sel + 1); }
                        break;
                    case ConsoleKey.LeftArrow or ConsoleKey.Enter or ConsoleKey.RightArrow: {
                            Console.Beep(100, 1);
                            if (sel == 0) {
                                if (select == ConsoleKey.LeftArrow) {
                                    p.diff = p.diff > 1 ? p.diff - 1 : p.diff; save(); }
                                if (select == ConsoleKey.RightArrow) {
                                    p.diff = p.diff < 3 ? p.diff + 1 : p.diff; save(); } }
                            if (sel == 1) { p.cc = !p.cc; save(); }
                            if (sel == 2) { p.op3 = !p.op3; save(); }
                            if (sel == 3) { home(); }
                        }
                        break;
                }
                if (done == false) { Console.CursorTop = Console.CursorTop - optc; }
            }
        }

        public void home() {

            Console.Clear();
            Console.SetWindowSize(35, 25);
            Console.BufferHeight = 25;
            Console.BufferWidth = 35;
            Console.WriteLine();

            int optcount = 6, selec = 1;
            bool done = false;

            while (done == false) {

                for (int i = 0; i < optcount; i++) {
                    Console.CursorLeft = 3;

                    if (selec == i) {
                        Console.ForegroundColor = red;
                        Console.Write(">");
                    }  else {
                        Console.ForegroundColor = gray;
                        Console.Write(" ");
                    }

                    if (i == 0) {
                        Console.CursorLeft -= 3;
                        Console.ForegroundColor = red; ;
                        Console.WriteLine("console idler!");
                        Console.ForegroundColor = gray;
                        Console.CursorLeft += 3;
                    }
                    if (i == 1) { Console.WriteLine("start"); }
                    if (i == 2) { Console.WriteLine("snake"); }
                    if (i == 3) { Console.WriteLine("options"); }
                    if (i == 4) { Console.WriteLine("help"); }
                    if (i == 5) { Console.WriteLine("quit"); }

                    Console.ResetColor();
                }

                switch (Console.ReadKey().Key) {
                    case ConsoleKey.UpArrow:
                        { selec = Math.Max(1, selec - 1); }
                        break;
                    case ConsoleKey.DownArrow:
                        { selec = Math.Min(optcount - 1, selec + 1); }
                        break;
                    case ConsoleKey.Enter or ConsoleKey.RightArrow: {
                            Console.Beep(100, 1);
                            if (selec == 1) { calc(); }
                            if (selec == 2) { snk.load(); }
                            if (selec == 3) { options(); }
                            if (selec == 4) { help(); }
                            if (selec == 5) { Environment.Exit(0); }
                        }
                        break;
                }
                if (done == false) { Console.CursorTop = Console.CursorTop - optcount; }
            }
        }

    }

    class Main1 {
        static void Main() {
            f f = new f();
            f.slp(100);
            f.home();
        }
    }
}
