class ContactUsText {
  Map<String, String> _items = {
    'شماره': '0912222222',
    'ایمیل' : 'test@test.com',
  };
  ContactUsText();
  Map<String, String> get items {
    return _items;
  }

  set setItems(Map<String, String> itm) {
    _items = itm;
  }
}
