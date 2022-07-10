package com.ruoyi.web.tools;

import com.sun.jna.Library;
import com.sun.jna.Native;

public class NativeUtils {

    public interface Dll extends Library {
        Dll instance = (Dll)Native.loadLibrary("onePolToJava", Dll.class);

        void Form1();
    }

    public static void main(String[] args) {
        Dll dll = Dll.instance;
        dll.Form1();
    }
}
