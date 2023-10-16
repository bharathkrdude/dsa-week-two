class Sort {
  bubbleSorting(List<int> arr) {
    int size = arr.length - 1;
    for (int i = 0; i < size; i++) {
      for (int j = 0; j < size - i; i++) {
        if (arr[j] > arr[j + 1]) {
          int temp = arr[j];
          arr[j] = arr[j + 1];
          arr[j + 1] = temp;
        }
      }
    }
  }
}

void main() {}
