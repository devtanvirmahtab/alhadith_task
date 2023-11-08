class HadithBook {
  int id;
  String title;
  String titleAR;
  int numberOfHadith;
  String abvrCode;
  String bookName;
  String colorCode;

  HadithBook({
    required this.id,
    required this.title,
    required this.titleAR,
    required this.numberOfHadith,
    required this.abvrCode,
    required this.bookName,
    required this.colorCode,
  });

  factory HadithBook.fromMap(Map<dynamic, dynamic> hadithBook) => HadithBook(
        id: hadithBook['id'],
        title: hadithBook['title'],
        titleAR:hadithBook['title_ar'] ,
        numberOfHadith: hadithBook['number_of_hadis'],
        abvrCode: hadithBook['abvr_code'],
        bookName: hadithBook['book_name'],
        colorCode: hadithBook['color_code'],
      );
}
