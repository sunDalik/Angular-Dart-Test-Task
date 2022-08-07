import 'package:angular/angular.dart';
import 'package:angular_app/mock_data.dart';
import 'dart:convert';

@Component(
    selector: 'my-app',
    templateUrl: './app_component.html',
    directives: [coreDirectives],
    pipes: [commonPipes])
class AppComponent implements OnInit {
  var data = null;

  @override
  ngOnInit() {
    Future.delayed(Duration(seconds: 1), () => MOCK_DATA).then((value) {
      data = json.decode(value);
      print(data);
    });
  }

  String formatDate(String milliseconds) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(int.parse(milliseconds));
    return '${date.hour.toString().padLeft(2, '0')}.${date.minute.toString().padLeft(2, '0')}.${date.second.toString().padLeft(2, '0')}\n${date.day.toString().padLeft(2, '0')}.${date.month.toString().padLeft(2, '0')}.${date.year}';
  }

  String getItemOffset(var item, var obj, int width){
    int itemTimestamp = int.parse(item['timestamp']);
    int starTimestamp = int.parse(obj['items'][0]['timestamp']);
    int endTimestamp = int.parse(obj['items'][obj['items'].length - 1]['timestamp']);
    String offset = (((itemTimestamp - starTimestamp) / (endTimestamp - starTimestamp)) * width).toString();
    return offset;
  }
}
