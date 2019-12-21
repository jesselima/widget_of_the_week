import 'package:widget_of_the_week/models/moviedetails/genres.dart';
import 'package:widget_of_the_week/models/moviedetails/production_companies.dart';
import 'package:widget_of_the_week/models/moviedetails/production_countries.dart';
import 'package:widget_of_the_week/models/moviedetails/spoken_languages.dart';
import 'package:widget_of_the_week/models/moviedetails/images.dart';

class MovieDetails {

  bool adult;
  String backdropPath;
  Object belongsToCollection;
  int budget;
  List<Genres> genres;
  String homepage;
  int id;
  String imdbId;
  String originalLanguage;
  String originalTitle;
  String overview;
  double popularity;
  String posterPath;
  List<Production_companies> productionCompanies;
  List<Production_countries> productionCountries;
  String releaseDate;
  int revenue;
  int runtime;
  List<Spoken_languages> spokenLanguages;
  String status;
  String tagLine;
  String title;
  bool video;
  double voteAverage;
  int voteCount;
  Images images;

	MovieDetails.fromJsonMap(Map<String, dynamic> map): 
		adult = map["adult"],
		backdropPath = map["backdrop_path"],
		belongsToCollection = map["belongs_to_collection"],
		budget = map["budget"],
		genres = List<Genres>.from(map["genres"].map((it) => Genres.fromJsonMap(it))),
		homepage = map["homepage"],
		id = map["id"],
		imdbId = map["imdb_id"],
		originalLanguage = map["original_language"],
		originalTitle = map["original_title"],
		overview = map["overview"],
		popularity = map["popularity"],
		posterPath = map["poster_path"],
		productionCompanies = List<Production_companies>.from(map["production_companies"].map((it) => Production_companies.fromJsonMap(it))),
		productionCountries = List<Production_countries>.from(map["production_countries"].map((it) => Production_countries.fromJsonMap(it))),
		releaseDate = map["release_date"],
		revenue = map["revenue"],
		runtime = map["runtime"],
		spokenLanguages = List<Spoken_languages>.from(map["spoken_languages"].map((it) => Spoken_languages.fromJsonMap(it))),
		status = map["status"],
		tagLine = map["tagline"],
		title = map["title"],
		video = map["video"],
		voteAverage = map["vote_average"],
		voteCount = map["vote_count"],
		images = Images.fromJsonMap(map["images"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['adult'] = adult;
		data['backdrop_path'] = backdropPath;
		data['belongs_to_collection'] = belongsToCollection;
		data['budget'] = budget;
		data['genres'] = genres != null ? 
			this.genres.map((v) => v.toJson()).toList()
			: null;
		data['homepage'] = homepage;
		data['id'] = id;
		data['imdb_id'] = imdbId;
		data['original_language'] = originalLanguage;
		data['original_title'] = originalTitle;
		data['overview'] = overview;
		data['popularity'] = popularity;
		data['poster_path'] = posterPath;
		data['production_companies'] = productionCompanies != null ?
			this.productionCompanies.map((v) => v.toJson()).toList()
			: null;
		data['production_countries'] = productionCountries != null ?
			this.productionCountries.map((v) => v.toJson()).toList()
			: null;
		data['release_date'] = releaseDate;
		data['revenue'] = revenue;
		data['runtime'] = runtime;
		data['spoken_languages'] = spokenLanguages != null ?
			this.spokenLanguages.map((v) => v.toJson()).toList()
			: null;
		data['status'] = status;
		data['tagline'] = tagLine;
		data['title'] = title;
		data['video'] = video;
		data['vote_average'] = voteAverage;
		data['vote_count'] = voteCount;
		data['images'] = images == null ? null : images.toJson();
		return data;
	}
}
