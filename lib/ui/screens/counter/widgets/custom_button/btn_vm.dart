class BtnVm {
  final void Function(String) incrementFn;

  BtnVm(this.incrementFn);

  void inc() {
    incrementFn("hello");
  }
}