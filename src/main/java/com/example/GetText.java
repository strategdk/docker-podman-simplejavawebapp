package com.example;

public class GetText {

    private static final String RECEIVED_RESULT = "";

    public static String getText() {
        String result;

        String resultFromSearch = RECEIVED_RESULT;

        if ("".equals(resultFromSearch)) {
            result = "Nothing received.";
        } else {
            result = "Plenty of test data received.";
        }

        return "Result: " + result;
    }
}
