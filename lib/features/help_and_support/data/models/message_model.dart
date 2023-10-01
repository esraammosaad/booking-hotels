class MessageModel {
  final String message;
  DateTime createdAt;
  MessageModel(
      {required this.message, required this.createdAt,});

  factory MessageModel.fromJson(dynamic json) => MessageModel(
      message: json['message'],
      createdAt: json['createdAt'].toDate(),
     );
  Map<String, dynamic> toJson() =>
      {'message': message, 'createdAt': createdAt,};
}
