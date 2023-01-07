main() {
  final source = MyObservable();
  final Observer observer = MyObserver();
  source.addObserver(observer);
  final Observer observer2 = MyObserver();
  source.addObserver(observer2);
  // Now something happens:
  print("Notifying");
  var secretMessage = "Etaoin Shrdlu!";
  source.notifyObservers(secretMessage);
  print("Done");
}

class MyObserver implements Observer {
  @override
  void update(Observable observable, Object event) {
    print('Notified by "$observable" about "$event".');
  }

}
class MyObservable extends Observable {
  final List<Observer> observers = [];

  // LIST MANAGEMENT
  @override
  void addObserver(Observer obs) {
    observers.add(obs);
  }

  @override
  void deleteObserver(Observer obs) {
    observers.remove(obs);
  }

  // Deal with observers

  @override
  void notifyObservers(Object data) {
    print("notifyObservers: There are currently ${observers.length} observers");
    for (Observer o in observers) {
      o.update(this, data);
    }
  }
}

abstract class Observable {
  void addObserver(Observer obs);
  void deleteObserver(Observer obs);
  void notifyObservers(Object data);
}
abstract class Observer {
  void update(Observable observable, Object event);
}