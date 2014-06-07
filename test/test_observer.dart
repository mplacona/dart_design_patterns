import 'package:unittest/unittest.dart';
import '../bin/observer_pattern.dart';


void main() {
    test("new instance of IObserver is created", () {
        var observer = new IObserver();
        expect(observer is IObserver, isTrue);
    });

    test("new instance of ISubject is created", () {
        var subject = new ISubject();
        expect(subject is ISubject, isTrue);
    });

    group('Product => ', () {
        var _name = "test";
        var _price = 23.15;
        var _quantity = 10;
        var product = new Product(_name, _price, _quantity);
        test("Should be successfuly created as ISubject", () {
            expect(product is ISubject, isTrue);
        });
        test("Should return name", () {
            expect(product.name, equals(_name));
        });
        test("Should return price", () {
            expect(product.price, equals(_price));
        });
        test("Should return quantity", () {
            expect(product.quantity, equals(_quantity));
        });
    });

    group('Store => ', () {
        var _name = "test";
        var store = new Store(_name);

        // Create product
        var arduino = new Product("Arduino Uno", 25.30, 10);

        test("Should be successfuly created as IStore", () {
            expect(store is IStore, isTrue);
        });
        test("Should be successfuly created as IObserver", () {
            expect(store is IObserver, isTrue);
        });
        test("Should return name", () {
            expect(store.name, equals(_name));
        });

        group('Store1 =>', () {
            var store1 = new Store("Store1");
            arduino.registerObserver(store1);
        });

        group('Store2 =>', () {
            var store2 = new Store("Store2");
            arduino.registerObserver(store2);
        });

        group('Store1 & Store2 get new quantities:', () {
            arduino.setQuantity(15);
        });
    });
}
