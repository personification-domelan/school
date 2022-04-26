#include <iostream>
#include <stack>
#include <time.h>
#include <cstdlib>
#include <string>

using namespace std;

double calculateRPN(string array) {
    stack<double> stack;
    double a=.0,b=.0,num=.0; bool op=false;
    for (int i=0; i < array.length(); i++) {
        switch(array[i]){
            case '+':
                a=stack.top(); stack.pop();
                b=stack.top(); stack.pop();
                stack.push(b+a); op=true;
                break;
            case '-':
                a=stack.top(); stack.pop();
                b=stack.top(); stack.pop();
                stack.push(b-a); op=true;
                break;
            case '*':
                a=stack.top(); stack.pop();
                b=stack.top(); stack.pop();
                stack.push(b*a); op=true;
                break;
            case '/':
                a=stack.top(); stack.pop();
                b=stack.top(); stack.pop();
                stack.push(b/a); op=true;
                break;
            case ' ':
                if (!op) {stack.push(num);}
                num = 0;
                break;
            default:
                num = 10*num + (array[i]-'0'); op=false;
                break;
        }
    }
    return stack.top();
}

string arrayToRPN(string array) {
    stack<char> stack; bool op = false; char chr, last; string temp;
    for (int i = 0; i < array.length(); i++) {
        switch (array[i]) {
            case '+':
                if (stack.empty()) {stack.push(array[i]);last='+';} else {
                    if (last == '(') {stack.push(array[i]);last = "+"} else {
                        while (!stack.empty() || stos.top() != '(') {
                            
                        }
                    }
                }
    }
    return
}

int main() {
    string inputArray;
    getline(cin, inputArray);
    cout << calculateRPN(inputArray);
    return 0;
}