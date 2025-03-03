import '../database.dart';

class GambarTable extends SupabaseTable<GambarRow> {
  @override
  String get tableName => 'gambar';

  @override
  GambarRow createRow(Map<String, dynamic> data) => GambarRow(data);
}

class GambarRow extends SupabaseDataRow {
  GambarRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GambarTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get idpohon => getField<String>('idpohon');
  set idpohon(String? value) => setField<String>('idpohon', value);

  String? get idmember => getField<String>('idmember');
  set idmember(String? value) => setField<String>('idmember', value);

  String? get gambar => getField<String>('gambar');
  set gambar(String? value) => setField<String>('gambar', value);
}
