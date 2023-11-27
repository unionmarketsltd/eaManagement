package com.union.portal.common;



import java.security.Key;
import java.util.Random;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.codec.binary.Base64;

public class PasswordGenerator {
	
	 private static final String[] charCategories = new String[] {
	            "abcdefghijklmnopqrstuvwxyz",
	            "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
	            "0123456789",
	            "!@#"
	    };

	 public static String generate(int length) {
	        StringBuilder password = new StringBuilder(length);
	        Random random = new Random(System.nanoTime());

	        for (int i = 0; i < length; i++) {
	            String charCategory = charCategories[random.nextInt(charCategories.length)];
	            int position = random.nextInt(charCategory.length());
	            password.append(charCategory.charAt(position));
	        }

	        return new String(password);
	    }

}