import 'Api.dart';

const apikey = 'AIzaSyAhfMM31uEyuK8lqRFcpOOr0Wk61TuVyn8';

class HelperClass {
  Future<dynamic> search(String search) async {
    var url =
        'https://factchecktools.googleapis.com/v1alpha1/claims:search?query=$search&key=$apikey';
    Api helper = Api(url: url);

    helper.factchecks();
    
  }
}
