void main() {
  int counter = 0;

  while (counter != 3) {
    print('in while - counter: $counter');
    counter++;
  }
  do {
    print('in do while - counter: $counter');
    counter++;
  } while (counter > 2 && counter < 6);
}
