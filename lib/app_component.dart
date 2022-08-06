import 'package:angular/angular.dart';
import 'package:angular_app/mock_data.dart';
import 'dart:convert';

@Component(
  selector: 'my-app',
  templateUrl: './app_component.html',
  directives: [coreDirectives],
)
class AppComponent implements OnInit {
  var data = null;

  @override
  ngOnInit() {
    Future.delayed(Duration(seconds: 2), () => MOCK_DATA).then((value) {
      data = json.decode(value);
      print(data);
    });
  }
}
