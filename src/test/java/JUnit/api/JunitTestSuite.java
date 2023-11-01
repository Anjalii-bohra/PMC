package org.example.api;

import junit.framework.*;

public class JunitTestSuite {
    public static void main(String[] a) {
        // add the test's in the suite
        TestSuite suite = new TestSuite(TestJunit1.class, TestJunit2.class, TestJunit3.class );
        TestResult result = new TestResult();
        suite.run(result);
        System.out.println("Number of test cases = " + result.runCount());
    }
}
