// ignore_for_file: public_member_api_docs, sort_constructors_first

List<dynamic> integerler = [1, 2, 3, "shfl", 2.2, true];
// Map<String, String> enKg = {
//   "hello": "salam",
//   "laptop": "noutbuk",
//   1: 1,
//   true: true,
// };

// Map = sozduk: azhkych -> maani
// hello -> salam

class Source {
  const Source({
    this.id,
    this.name,
  });

  final String? id;
  final String? name;

  factory Source.fromJson(Map<String, dynamic> birJson) {
    return Source(
      id: birJson["id"],
      name: birJson["name"],
    );
  }
}
