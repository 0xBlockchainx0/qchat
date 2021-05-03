class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;

  Chat({
    this.name,
    this.lastMessage,
    this.image,
    this.time,
    this.isActive,
  });
}

List chatsData = [
  Chat(
    name: 'Mike',
    lastMessage: 'Amazing',
    time: '3m ago',
    isActive: true,
  ),
  Chat(
    name: 'User 2 Anonymus',
    lastMessage: 'Whatsup Dude?',
    time: '2s ago',
    isActive: true,
  ),
  Chat(
    name: 'Nicholas',
    lastMessage: 'Hey Bro!',
    time: '1m ago',
    isActive: true,
  ),
  Chat(
    name: 'Anya',
    lastMessage: 'We are going out, wanna join?',
    time: '1h ago',
    isActive: true,
  ),
  Chat(
    name: 'Michelle',
    lastMessage: 'Cya later!',
    time: '1m ago',
    isActive: true,
  ),
  Chat(
    name: 'User 6 Anonymus',
    lastMessage: 'I sent you the work materials',
    time: '1m ago',
    isActive: true,
  ),
  Chat(
    name: 'Liam',
    lastMessage: 'We check in later',
    time: '2h ago',
    isActive: false,
  ),
  Chat(
    name: 'William',
    lastMessage: 'test message',
    time: '5h ago',
    isActive: false,
  ),
  Chat(
    name: 'User 9 Anonymus',
    lastMessage: 'test message',
    time: '3m ago',
    isActive: false,
  ),
  Chat(
    name: 'User 10 Anonymus',
    lastMessage: 'test last message',
    time: '3m ago',
    isActive: true,
  ),
];
