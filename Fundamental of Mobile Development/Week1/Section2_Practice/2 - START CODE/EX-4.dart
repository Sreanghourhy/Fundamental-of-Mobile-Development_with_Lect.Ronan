void main() {
  // Map of pizza prices
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  // Example order
  const order = ['margherita', 'pepperoni', 'pineapple'];

  // Your code
  // double total = 0;

//   for(var pizza in order){
//     if(pizzaPrices.containsKey(pizza)){
//       total += pizzaPrices[pizza] ?? 0;
//     }else{
//       print('pineapple pizza is not on the menu ');
//     }
//   }
//   if(total > 0){
//     print('Total : $total');
//   }
// }
double total =0;
var pizza = order;
for(var i=0;i<pizza.length;i++){
  if(pizzaPrices.containsKey(pizza[i])){
    total += pizzaPrices[pizza[i]] ?? 0;
  }else{
    print('none');
  }
}
if(total > 0){
  print('Total : $total');
}

}