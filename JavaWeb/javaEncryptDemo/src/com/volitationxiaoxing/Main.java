package com.volitationxiaoxing;

import com.volitationxiaoxing.VXXEncryption.DESUtil;

public class Main {

    public static void main(String[] args) {


        DESUtil des = new DESUtil();
        String s = des.getEnc("1234abcd你好世界");



        System.out.println(s);
    }

}
