import Debug "mo:base/Debug";

actor DBank {
  var currentValue: Nat = 300;
  currentValue := 100;

  let id = 35634563456;

  // Debug.print(debug_show(id));

  public func topUp(amount: Nat){
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

  public func withdrawl(amount: Nat){
    let tempValue: Int = currentValue - amount;
    if(tempValue >= 0){
    currentValue -= amount;
    Debug.print(debug_show(currentValue));
    } else {
      Debug.print("Amount is too large, currentValue less than 0")
    }
  };
}
