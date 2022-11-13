import 'package:touristapp/models/local_site.dart';
import 'package:hive/hive.dart';


class Boxes{
  static Box getFavoritesBox() => Hive.box<LocalSite>('favorites');
}