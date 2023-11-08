import 'package:get/get.dart';

import '../../../domain/core/util/db_helper.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;

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

    final list = await DataBaseHelper.readBook();
    print("booklist ${list[0].title}");
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
