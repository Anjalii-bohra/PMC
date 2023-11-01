package CoreJAVA.OOPs;

     class CopyCunstructor {

        // Class data members
        private double re, im;

        // Constructor 1
        // Parameterized constructor
        public CopyCunstructor(double re, double im)
        {

            // this keyword refers to current instance itself
            this.re = re;
            this.im = im;
        }

        // Constructor 2
        // Copy constructor
        CopyCunstructor(CopyCunstructor c)
        {

            System.out.println("Copy constructor called");

            re = c.re;
            im = c.im;
        }

        // Overriding the toString() of Object class
        @Override public String toString()
        {

            return "(" + re + " + " + im + "i)";
        }

        public static void main(String[] args)
        {

            // Creating object of above class
            CopyCunstructor c1 = new CopyCunstructor(10, 15);

            // Following involves a copy constructor call
            CopyCunstructor c2 = new CopyCunstructor(c1);

            // Note: Following doesn't involve a copy
            // constructor call
            // as non-primitive variables are just references.
            CopyCunstructor c3 = c2;

            // toString() of c2 is called here
            System.out.println(c2);
        }
    }


