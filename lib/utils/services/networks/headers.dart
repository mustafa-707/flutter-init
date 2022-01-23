class APIsHeaders {
  static Map<String, String> get getHeader {
    return {};
  }

  static Map<String, String> get normalHeader {
    return {
      "Content-Type": "application/json",
      "Accept": "application/json",
    };
  }

  static Map<String, String> get authHeader {
    return {
      "Content-Type": "application/json",
      "Accept": "application/json",
    };
  }

  static Map<String, String> tokenHeader(String token) {
    return {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "Authorization": "Bearer $token"
    };
  }
}
