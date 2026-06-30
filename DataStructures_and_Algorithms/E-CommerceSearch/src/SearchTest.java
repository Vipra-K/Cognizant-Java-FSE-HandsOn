public class SearchTest {

    public static void main(String[] args) {
        Product[] products = {

                new Product(1, "Laptop", "Electronics"),
                new Product(2, "Smartphone", "Electronics"),
                new Product(3, "T-shirt", "Clothing"),
                new Product(4, "Jeans", "Clothing"),
                new Product(5, "Blender", "Home Appliances")
        };

        String searchProduct = "T-shirt";

        System.out.println("Linear Search:");

        long st = System.nanoTime();
        Product result1 = SearchAlgorithms.linearSearch(products, searchProduct);
        long end = System.nanoTime();

        System.out.println("Time taken for Linear Search: " + (end - st) + " nanoseconds");
        if (result1 != null) {
            result1.display();
        } else {
            System.out.println("Product Not Found");
        }
        System.out.println();

        System.out.println("Binary Search:");

        st = System.nanoTime();
        Product result2 = SearchAlgorithms.binarySearch(products, searchProduct);
        end = System.nanoTime();

        System.out.println("Time taken for Binary Search: " + (end - st) + " nanoseconds");
        if (result2 != null) {
            result2.display();
        } else {
            System.out.println("Product Not Found");
        }

    }
}