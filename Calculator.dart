import 'dart:io';
class caculator{
  

  caculator(){}

  double? sum (double num1,double num2)=>num1+num2;
  
  double? sub (double num1,double num2)=>num1-num2;

  double? mult (double num1,double num2)=>num1*num2;
  
  double? div (double num1,double num2){
    if(num2==0){
  
      throw Exception("Undifined"); //anonyoumous object 
    }
    else {
      return num1/num2;
    }

  }
}

void main(){
  caculator calc =caculator();
  int x =1;
  double num1;
  double num2;
  String operation;
  try{
  while(x==1){
  print("Enter the operation (+, -, *, /) or 'q' to quit:");
  operation = stdin.readLineSync()!;
  print("enter  the first operand");
    if (operation == 'q') {
        print("Close!");
        break;
      }
  num1=double.parse(stdin.readLineSync()!);
  print("enter  the second operand");
  num2=double.parse(stdin.readLineSync()!);
  switch (operation) {
    case '+':
      print(calc.sum(num1, num2));
      break;
      case '-':
      print(calc.sub(num1, num2));
      break;
      case '*':
      print(calc.mult(num1, num2));
      break;
      case '/':
      print(calc.div(num1, num2));
      break;
      // case 'q':
      // print("closed");
      // break;
    default:
    print("enter right operation5");
  }}
  }//on Exception {
  //   print("integerdivision by zero");
  // }
  catch(exception){
    print(exception);
  }


}