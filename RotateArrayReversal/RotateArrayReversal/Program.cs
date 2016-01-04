using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RotateArrayReversal
{
    public class Program
    {
        static void Main(string[] args)
        {
            int[] arr = { 0, 1, 2, 3, 4, 5, 6 };   //input array

            rotate(arr, 2);
        }

        static void rotate(int[] arr, int order)
        {
            order = order % arr.Length;

            if (arr == null || order < 0)
            {
                return; //invalid
            }

            //length of first part
            int a = arr.Length - order;

            Reverse(arr, 0, a - 1);
            Reverse(arr, a, arr.Length - 1);
            Reverse(arr, 0, arr.Length - 1);
        }

        static void Reverse(int[] Input_Array, int p_left, int p_right)
        {
            if (Input_Array == null || Input_Array.Length == 1)
                return;

            while (p_left < p_right)
            {
                int temp = Input_Array[p_left];
                Input_Array[p_left] = Input_Array[p_right];
                Input_Array[p_right] = temp;
                p_left++;
                p_right--;
            }
        }
    }
}
