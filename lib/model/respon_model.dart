class ResponseModel {
  String timestamp;
  String status;
  String message;
  String error;

  ResponseModel({
    this.timestamp,
    this.status,
    this.message,
    this.error,
  });

  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(
      timestamp: json["timestamp"] != null ? json["timestamp"] : "",
      status: json["status"] != null ? json["status"] : "",
      message: json["message"] != null ? json["message"] : "",
      error: json["error"] != null ? json["error"] : "",
    );
  }
}
