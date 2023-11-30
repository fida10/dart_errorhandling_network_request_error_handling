/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/errorhandling_network_request_error_handling_base.dart';

/*
Practice Question 2: Network Request Error Handling

Question:

Create a function fetchUserData(String userId) that simulates a network request to fetch user data.

Handle a TimeoutException by returning a default error message "Request timed out".

For other exceptions, use a custom exception NetworkException with a message property.
 */


Future<String> fetchUserData(String userId) async {
  if (userId == 'valid_user') {
    return 'IS A VALID USER';
  } else if (userId == 'timeout_user') {
    return 'Request timed out';
  } else if (userId == 'network_error_user'){
    throw NetworkException("Network exception was found! Please check internet.");
  } else {
    return '';
  }
}

class NetworkException implements Exception {
  NetworkException(this.exceptionMessage);
  final String exceptionMessage;
}
