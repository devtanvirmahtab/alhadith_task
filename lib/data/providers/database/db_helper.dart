import 'package:alhadith_task/data/models/chapter_model.dart';
import 'package:alhadith_task/data/models/dooks_model.dart';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;

class DataBaseHelper {
   static Future<Database> initDB() async {
    io.Directory applicationDirectory =
    await getApplicationDocumentsDirectory();

    String dbPath =
    path.join(applicationDirectory.path, "hadith_bn_test.db");

    bool dbExists = await io.File(dbPath).exists();

    if (!dbExists) {
      // Copy from asset
      // please add hadith_bn_test.db file to assets folder then run ther project
      ByteData data = await rootBundle.load(path.join("assets", "hadith_bn_test.db"));
      List<int> bytes =
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      // Write and flush the bytes written
      await io.File(dbPath).writeAsBytes(bytes, flush: true);
    }

    return await openDatabase(dbPath);
  }

  static Future<List<HadithBook>> readBook()async{
     Database db = await initDB();
     final hadithBook = await db.query('books');
     List<HadithBook> bookList =  hadithBook.map((e) => HadithBook.fromMap(e)).toList();
     return bookList;
  }

   static Future<List<ChapterModel>> readChapter(bookName)async{
     Database db = await initDB();
     final chapterModel = await db.rawQuery('''SELECT * FROM chapter WHERE book_name like "%$bookName%" ''');
     List<ChapterModel> chapterList =  chapterModel.map((e) => ChapterModel.fromMap(e)).toList();
     return chapterList;
   }

  /// get all the words from english dictionary
  // Future<List<EnglishWord>> getAllTheWordsEnglish() async {
  //   if (_db == null) {
  //     throw "bd is not initiated, initiate using [init(db)] function";
  //   }
  //   List<Map> words;
  //
  //   await _db.transaction((txn) async {
  //     words = await txn.query(
  //       "words",
  //       columns: [
  //         "en_word",
  //         "en_definition",
  //       ],
  //     );
  //   });
  //
  //   return words.map((e) => EnglishWord.fromJson(e)).toList();
  // }
}
