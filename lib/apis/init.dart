import 'package:firebase_core/firebase_core.dart';
import 'package:battalion_connect/models/models.dart';


//TODO: In the future, the Army's not gonna like Firebase. I need to figure out how to generalize the data model to fit other data schemes (similar to what I have here)
void postData(dynamic payload) {
  switch (payload.runtimeType) {
    case User:
      //postUser(payload);
      return;
    case Post:
      //postArticle(payload);
      return;
    case Battalion:
      //postBattalion(payload);
      return;
    case Group:
      //postGroup(payload);
      return;
    default:
      {
        throw Exception(
            'Incompatible Class Object provided: ${payload.runtimeType}');
      }
  }
}