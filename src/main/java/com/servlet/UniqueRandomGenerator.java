package com.servlet;
import java.util.Random;
import java.util.HashSet;
import java.util.Set;

public class UniqueRandomGenerator {
    private static final Random random = new Random();

    public static int generateUniqueRandom() {
        Set<Integer> usedNumbers = new HashSet<>();
        int randomNumber;

        do {
            // Generate a random 7-digit number
            randomNumber = random.nextInt(9_999_999) + 1_000_000;
        } while (usedNumbers.contains(randomNumber));

        usedNumbers.add(randomNumber);
        return randomNumber;
    }

//    public static void main(String[] args) {
//        // Test the function
//        int uniqueRandom = generateUniqueRandom();
//        System.out.println("Unique Random Number: " + uniqueRandom);
//    }
}
