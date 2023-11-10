class ChapterModel {
  int id;
  int chapterId;
  int bookId;
  String title;
  int number;
  String hadithRange;
  String bookName;

  ChapterModel({
    required this.id,
    required this.title,
    required this.chapterId,
    required this.bookId,
    required this.number,
    required this.bookName,
    required this.hadithRange,
  });

  factory ChapterModel.fromMap(Map<dynamic, dynamic> hadithBook) => ChapterModel(
    id: hadithBook['id'],
    chapterId:hadithBook['chapter_id'] ,
    bookId: hadithBook['book_id'],
    title: hadithBook['title'],
    number: hadithBook['number'],
    hadithRange: hadithBook['hadis_range'],
    bookName: hadithBook['book_name'],
  );
}
