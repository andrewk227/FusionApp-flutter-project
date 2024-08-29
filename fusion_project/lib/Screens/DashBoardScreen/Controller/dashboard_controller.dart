class DashboardController {
  int _selectedIndex = 2;
  bool _editable = false;

  int getSelectedIndex() {
    return _selectedIndex;
  }

  void setSelectedIndex(int newIndex) {
    _selectedIndex = newIndex;
  }

  void toogleEditStatus() {
    _editable = !_editable;
  }

  bool getEditStatus() {
    return _editable;
  }
}
