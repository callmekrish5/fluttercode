class DisplayName {
  final List<String> _nameList = ['Krishna', 'Salman', 'Krish'];

  int _index = 0;

  String nextName() {
    String name = _nameList[_index];

    _index = _index == _nameList.length - 1 ? 0 : _index + 1;

    return name;
  }
}
