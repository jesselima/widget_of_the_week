
class Posters {

  double aspect_ratio;
  String file_path;
  int height;
  String iso_639_1;
  double vote_average;
  int vote_count;
  int width;

	Posters.fromJsonMap(Map<String, dynamic> map): 
		aspect_ratio = map["aspect_ratio"],
		file_path = map["file_path"],
		height = map["height"],
		iso_639_1 = map["iso_639_1"],
		vote_average = map["vote_average"],
		vote_count = map["vote_count"],
		width = map["width"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['aspect_ratio'] = aspect_ratio;
		data['file_path'] = file_path;
		data['height'] = height;
		data['iso_639_1'] = iso_639_1;
		data['vote_average'] = vote_average;
		data['vote_count'] = vote_count;
		data['width'] = width;
		return data;
	}
}
