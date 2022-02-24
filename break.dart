void main() {
  int counter = 0;
  for (;;) {
    counter++;
    print('valor do contador $counter');

    if (counter == 100) {
      break;
    }
  }
}
