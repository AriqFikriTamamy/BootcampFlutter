// Ekstensi ini mengkonversi dari m/s ke km/h
// m/s adalah nilai unit default (bawaan) untuk kecepatan angin di openweathermap namun kita perlu mengkonversinya ke kom/h

extension ConvertWindSpeed on double {
  String get kmh => (this * 3.6).toStringAsFixed(2);
}
