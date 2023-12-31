import 'package:get/get.dart';

import '../../../data/providers/database/db_helper.dart';

class HomeController extends GetxController {
  final bookList = [].obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    // io.Directory applicationDirectory =
    // await getApplicationDocumentsDirectory();
    //
    // String dbPath =
    // path.join(applicationDirectory.path, "hadith_bn_test.db");
    // print("dbPath $dbPath");
    //
    //
    // bool dbExists = await io.File(dbPath).exists();
    // print("dbExists $dbExists");
    //
    // if (!dbExists) {
    //   // Copy from asset
    //   ByteData data = await rootBundle.load(path.join("assets", "db/hadith_bn_test.db"));
    //   List<int> bytes =
    //   data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    //
    //   // Write and flush the bytes written
    //   await io.File(dbPath).writeAsBytes(bytes, flush: true);
    // }
    //
    // Database db = await openDatabase(dbPath);
    // print("db open");
    // final list = await db.rawQuery('SELECT * FROM books');
    // print("printing list ${list[0]['title']}");

     bookList.value = await DataBaseHelper.readBook();
    print("booklist ${bookList[0].title}");
  }

}
