import 'package:widget_of_the_week/models/moviedetails/backdrops.dart';
import 'package:widget_of_the_week/models/moviedetails/posters.dart';

class Images {

  List<Backdrops> backdrops;
  List<Posters> posters;

	Images.fromJsonMap(Map<String, dynamic> map): 
		backdrops = List<Backdrops>.from(map["backdrops"].map((it) => Backdrops.fromJsonMap(it))),
		posters = List<Posters>.from(map["posters"].map((it) => Posters.fromJsonMap(it)));

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['backdrops'] = backdrops != null ? 
			this.backdrops.map((v) => v.toJson()).toList()
			: null;
		data['posters'] = posters != null ? 
			this.posters.map((v) => v.toJson()).toList()
			: null;
		return data;
	}
}
