if (modalFrame8?.hidden == true) {
  if (productType?.value == "Bag") {
    Bags.trigger();
  }
  if (productType?.value == "Rollstock") {
    Roll.trigger();
  }
  addRow2.trigger();
}
