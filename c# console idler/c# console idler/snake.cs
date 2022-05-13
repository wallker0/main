//snake.cs
//@wallker0
//05.11.2022


using System;
using System.Threading;
using System.IO;
using System.Xml.Serialization;


namespace crpg
{
    class snake {

        int height = 30;
        int width = 60;

        int[] sX = new int[1000];
        int[] sY = new int[1000];

        int fX, fY, bX, bY;
        int length = 3;
        int xp = 0;

        bool bonus = false;

        char key;

        ConsoleKeyInfo keyinfo = new ConsoleKeyInfo();
        Random rnd = new Random();
        db p = new db();

        public void get() {
            StreamReader sr = new StreamReader("37156.xml");
            XmlSerializer x = new XmlSerializer(p.GetType());
            p = (db)x.Deserialize(sr);
            sr.Close();
        }

        public void set() {
            StreamWriter sw = new StreamWriter("37156.xml");
            XmlSerializer x = new XmlSerializer(p.GetType());
            x.Serialize(sw, p);
            sw.Close();
        }

        public snake() {
            sX[0] = 10;
            sY[0] = 10;
            fX = rnd.Next(1, (width - 2));
            fY = rnd.Next(1, (height - 2));
            bX = rnd.Next(1, (width - 2));
            bY = rnd.Next(1, (height - 2));
            Console.CursorVisible = false;
        }

        public void gover() {
            f f = new f();
            Console.SetCursorPosition(15, 10);
            Console.BackgroundColor = ConsoleColor.DarkRed;
            Console.ForegroundColor = ConsoleColor.White;
            Console.Write("             game over            ");
            Console.SetCursorPosition(1, 0);
            Console.Write(" score: {0} ",xp);
            Thread.Sleep(2500);
            Console.ResetColor();
            f.home();
        }

        public void writeb() {
            Console.BackgroundColor = ConsoleColor.DarkGray;
            for (int i = 1; i <= (width + 2); i++) {
                Console.SetCursorPosition(i, 0);
                Console.Write(" ");
            }
            for (int i = 0; i <= (width + 2); i++) {
                Console.SetCursorPosition(i, (height + 2));
                Console.Write(" ");
            }
            for (int i = 0; i <= (height + 1); i++) {
                Console.SetCursorPosition(0, i);
                Console.Write(" ");
            }
            for (int i = 1; i <= (height + 1); i++) {
                Console.SetCursorPosition((width + 2), i);
                Console.Write(" ");
            }
            Console.ResetColor();
            Console.SetCursorPosition(1,0);
            Console.ForegroundColor = ConsoleColor.Cyan;
            Console.Write(" score: {0} /  size: {1} ",xp,length);
            Console.ResetColor();
        }

        public void input() {
            if (Console.KeyAvailable) {
                keyinfo = Console.ReadKey(true);
                key = keyinfo.KeyChar;
            }
        }

        public void writep(int x, int y, ConsoleColor c) {
            Console.SetCursorPosition(x, y);
            if (p.cc == false) { Console.ForegroundColor = c; Console.Write("o"); }
            if (p.cc == true) { Console.BackgroundColor = c; Console.Write(" "); }
            Console.ResetColor();
        }

        public void main() {

            Console.Clear();
            writeb();
            input();

            if (sX[0] == fX) { 
                if (sY[0] == fY) {
                    Console.Beep(1500, 50);
                    length++;
                    xp = xp + (length * 200);
                    fX = rnd.Next(1, (width-2));
                    fY = rnd.Next(1, (height-2));
                    if (rnd.Next(1, 7) == 5) { bonus = true; }
                }
            }
            if (bonus == true) {
                if (sX[0] == bX) {
                    if (sY[0] == bY) {
                        Console.Beep(1000, 50);
                        length++; length++;
                        xp = xp + (length * 400);
                        bX = rnd.Next(1, (width - 2));
                        bY = rnd.Next(1, (height - 2));
                        bonus = false;
                    }
                }
            }
            for (int i = length; i>1;i--) {
                sX[i - 1] = sX[i - 2];
                sY[i - 1] = sY[i - 2];
            }
            switch (key) {
                case 'w':
                    sY[0]--;
                    break;
                case 's':
                    sY[0]++;
                    break;
                case 'a':
                    sX[0]--;
                    break;
                case 'd':
                    sX[0]++;
                    break;
                case 'e':
                    f f = new f();
                    f.home();
                    break;
            }
            for (int i = 0; i <= (length - 1); i++) {
                if (sX[0] == Console.BufferWidth - 2) { Console.Beep(1400, 250); gover(); }
                if (sY[0] == Console.BufferHeight - 1) { Console.Beep(1400, 250); gover(); }
                if (sX[0] == 0) { Console.Beep(1400, 150); gover(); }
                if (sY[0] == 0) { Console.Beep(1400, 150); gover(); }
                writep(sX[i],sY[i],ConsoleColor.Cyan);
                writep(fX,fY, ConsoleColor.DarkYellow);
                if (bonus == true) { writep(bX, bY, ConsoleColor.DarkMagenta); }
            }
            if (p.diff == 1) { 
                if (length <= 50) { Thread.Sleep(100); }
                if (length > 50) {
                    if (length <= 85) { Thread.Sleep(75); } else if (length > 85) { Thread.Sleep(50); } }
            } 
            else if (p.diff == 2) {
                if (length <= 50) { Thread.Sleep(40); }
                if (length > 50) {
                    if (length <= 85) { Thread.Sleep(20); } else if (length > 85) { Thread.Sleep(15); } }
            }
            else if (p.diff == 3) { 
                Thread.Sleep(10); 
            }
}

        public void load() {

            Console.Clear();
            Console.SetWindowSize(width+3, height + 3);
            Console.BufferHeight = height + 3;
            Console.BufferWidth = width + 4;

            get();

            while (true) {
                main();
            }
        }

    }
}
