class Order {
  final String id;
  final String patrimony;
  final String status;
  final String when;

  const Order({
    required this.id,
    required this.patrimony,
    required this.status,
    required this.when,
  });
}

const List<Order> orders = [
  Order(
    id: '123',
    patrimony: '123456',
    status: 'open',
    when: '25/07/2022 às 5:22',
  ),
  Order(
    id: '123',
    patrimony: '123456',
    status: 'open',
    when: '25/07/2022 às 5:22',
  ),
];
