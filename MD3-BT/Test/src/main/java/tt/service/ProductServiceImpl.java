package tt.service;

import tt.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductServiceImpl implements ProductService{
    List<Product> products;

    public ProductServiceImpl() {
        products = new ArrayList<>();
        products.add(new Product(1,"a",400));
        products.add(new Product(2,"b",500));
        products.add(new Product(3,"c",600));
    }

    @Override
    public List<Product> findAll() {
        return products;
    }

    @Override
    public void save(Product product) {
        products.add(product);
    }

    @Override
    public int findIndexById(int id) {
        for (int i =0;i<products.size();i++){
            if (products.get(i).getId() == id){
                return i;
            }
        }
        return -1;
    }

    @Override
    public Product findById(int id) {
        return products.get(findIndexById(id));
//        for (Product product : products){
//            if (product.getId() == id){
//                return product;
//            }
//        }
//        return null;
    }

    @Override
    public void update(int id, Product product) {
        products.set(findIndexById(id),product);
    }

    @Override
    public void delete(int id) {
        products.remove(findById(id));
    }

    @Override
    public void displayById(int id) {
        for (Product product : products){
            if (product.getId() == id){
                System.out.println(product);
            }
        }

    }
}
