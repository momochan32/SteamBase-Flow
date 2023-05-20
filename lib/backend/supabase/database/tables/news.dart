import '../database.dart';

class NewsTable extends SupabaseTable<NewsRow> {
  @override
  String get tableName => 'news';

  @override
  NewsRow createRow(Map<String, dynamic> data) => NewsRow(data);
}

class NewsRow extends SupabaseDataRow {
  NewsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NewsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get headerImg => getField<String>('header_img');
  set headerImg(String? value) => setField<String>('header_img', value);

  String? get desc1 => getField<String>('desc1');
  set desc1(String? value) => setField<String>('desc1', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String? get desc2 => getField<String>('desc2');
  set desc2(String? value) => setField<String>('desc2', value);

  String? get games => getField<String>('games');
  set games(String? value) => setField<String>('games', value);
}
