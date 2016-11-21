package com.volitationxiaoxing;

import com.volitationxiaoxing.VXXEncryption.VXXEncryptTools;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

public class Main {

    public static void main(String[] args) {

        String key = "1234567123456789";
        String content = "1234abcd你好世界";
        String iv = "1234567890123456";

        try {

            System.out.println("===========================");
            System.out.println("明文: "+content);
            String encryptContent = VXXEncryptTools.encryptAES(content,key,iv);
            System.out.println("===========================");
            System.out.println("AES-128: "+encryptContent);
            System.out.println("===========================");
            System.out.println("AES-128: "+VXXEncryptTools.decryptAES(encryptContent,key,iv));
            System.out.println("===========================");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
