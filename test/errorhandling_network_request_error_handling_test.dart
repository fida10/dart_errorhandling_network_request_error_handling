import 'package:errorhandling_network_request_error_handling/errorhandling_network_request_error_handling.dart';
import 'package:test/test.dart';

void main() {
  test('fetchUserData returns data for valid request', () {
    // Assuming a valid userId
    expect(fetchUserData('valid_user'), completion(isNotNull));
  });

  test('fetchUserData handles TimeoutException correctly', () {
    // Simulate a timeout scenario
    expect(
        fetchUserData('timeout_user'), completion(equals('Request timed out')));
  });

  test('fetchUserData throws NetworkException for other errors', () {
    // Simulate other network errors
    expect(() => fetchUserData('network_error_user'),
        throwsA(isA<NetworkException>()));
  });
}
