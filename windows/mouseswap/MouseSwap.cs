using System.Runtime.InteropServices;
using System;

//Compile with C:\Windows\Microsoft.NET\Framework64\v3.5\csc SwapMouse.cs

class SwapMouse
{
    [DllImport("user32.dll")]
    public static extern Int32 SwapMouseButton(Int32 bSwap);

    static void Main(string[] args)
    {
        int rightButtonIsAlreadyPrimary = SwapMouseButton(1);
        if (rightButtonIsAlreadyPrimary != 0)
        {
            SwapMouseButton(0);  // Make the left mousebutton primary
        }
    }
}
