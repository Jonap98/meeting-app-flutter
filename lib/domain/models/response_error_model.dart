class ResponseError {
  const ResponseError({required this.message});

  final String message;

  static ResponseError fromJson(dynamic json) {
    return ResponseError(
      message: json['message'] as String,
    );
  }
}
