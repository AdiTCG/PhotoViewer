using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FindStringAlgo_Beta
{
    class Program
    {
        static void Main(string[] args)
        {
            bool MatchFound = false;
            string T = "MyNameIs", p = "Name";
            int n = T.Count(), m = p.Count();
            for (int i = 0; i < n - m; i++)
            {
                int j = 0;
                while (j < m && p[j] == T[i + j])
                {
                    j++;
                }
                if (j == m)
                {
                    Console.Write("Match Found\n", i);
                    MatchFound = true;
                }
            }
            if (!MatchFound)
                Console.Write("No Match Found\n");
        }
    }
}
