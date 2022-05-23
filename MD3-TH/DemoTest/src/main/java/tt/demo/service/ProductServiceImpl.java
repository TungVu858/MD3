package tt.demo.service;

import tt.demo.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductServiceImpl implements ProductService {
    List<Product> productList;

    public ProductServiceImpl() {
        productList = new ArrayList<>();
        productList.add(new Product(1, "a", 300));
        productList.add(new Product(2, "b", 400));
        productList.add(new Product(3, "c", 500));
    }


    @Override
    public List<Product> findAll() {
        return productList;
    }

    @Override
    public void save(Product product) {
        productList.add(product);
    }

    @Override
    public int findIndexById(int id) {
        for (int i =0;i< productList.size();i++){
            if (id == productList.get(i).getId()){
                return i;
            }
        }
        return -1;
    }

    @Override
    public Product findById(int id) {
        return productList.get(findIndexById(id));
    }

    @Override
    public List<Product> findByName(String name) {
        return null;
    }

    @Override
    public void update(int id, Product product) {
        productList.set(findIndexById(id),product);
    }

    @Override
    public void delete(int id) {

    }
}
