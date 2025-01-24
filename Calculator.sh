#!/bin/bash

add() {
        echo "Result: $(($1 + $2))"
}

subtract() {
        echo "Result: $(($1 - $2))"
}


multiply() {
        echo "Result: $(($1 * $2))"
}


divide() {
      if [ $2 -eq 0 ]; then
        echo "Error: Division by zero is now allowed"
      else
        echo "Result: $(($1 + $2))"
      fi
}

###########################################################

echo "Simple Calculator"
echo "Choose Operation:"
echo "1. Add"
echo "2. Subtract"
echo "3. Multiply"
echo "4. Divide"

read -p "Enter Choice (1,2,3,4): " choice
read -p "Enter first number: " num1
read -p "Enter second number: " num2

###########################################################

case $choice in
        1)
                add $num1 $num2
                ;;
        2)
                subtract $num1 $num2
                ;;
        3)
                multiply $num1 $num2
                ;;
        4)
                divide $num1 $num2
                ;;
        *)
                echo "Invalid choice"
                ;;
esac
