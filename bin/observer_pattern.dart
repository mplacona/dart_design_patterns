class IObserver {
    void update(double price, int quantity) {}
}

class ISubject {
    void registerObserver(IObserver observer) {}
    void removeObserver(IObserver observer) {}
    void notifyObservers() {}
}

class IStore {

}

class Product implements ISubject {
    List<IObserver> _observers = new List<IObserver>();
    var name;
    var price;
    var quantity;

    Product(String name, double price, int quantity) {
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }

    // override this method as we want it to also notify any observers of the update
    void setPrice(double price) {
        this.price = price;
        notifyObservers();
    }

    // override this method as we want it to also notify any observers of the update
    void setQuantity(int quantity) {
        this.quantity = quantity;
        notifyObservers();
    }

    @override
    void notifyObservers() {
        for (final ob in _observers) {
            print("Notifying observers of the update");
            ob.update(this.price, this.quantity);
        }
    }

    @override
    void registerObserver(IObserver observer) {
        _observers.add(observer);
    }

    @override
    void removeObserver(IObserver observer) {
        _observers.remove(observer);
    }
}

class Store implements IStore, IObserver {
    var name;
    Store(String name){
        this.name = name;
    }
    @override
    void update(double price, int quantity) {
        print("$name : price and/or quantity have been updated");
        print("Price is: $price");
        print("Quantity is: $quantity");
    }
}
