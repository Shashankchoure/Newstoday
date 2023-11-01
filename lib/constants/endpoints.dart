/*class AppUrl {
  static const String baseUrl = 'https://inshortsapi.vercel.app/';

*/ /*  static const apikey = '9f5fe353609a38481153bc7cd11ede86';*/ /*
  */ /*static const imgBaseUrl = 'https://www.themoviedb.org/t/p/w300';*/ /*
  static const String all = '${baseUrl}all';*/
/*static const String topRated  = '${baseUrl}top_rated?api_key=$apikey&language=en-US&page=1';
  static const String  upcoming ='${baseUrl}/upcoming?api_key=$apikey&language=en-US&page=1';*/

// https://api.themoviedb.org/3/movie/
// popular
// ?
// api_key=9f5fe353609a38481153bc7cd11ede86
// &language=en-US
// &page=1

/*class AppUrl {
  static const String baseUrl = 'https://inshortsapi.vercel.app/';

  static const String all = baseUrl + 'all';*/
//* static const String countryList = baseUrl + 'countries';*//*
/*}*/
/*
}*/
class AppUrl {
  static const String baseUrl = 'https://inshortsapi.vercel.app/';

  // static const String allNews = '${baseUrl}news?category=all';
  static const String allNews = '${baseUrl}news?category=world';
  static const String nationalNews = '${baseUrl}news?category=national';
  static const String businessNews = '${baseUrl}news?category=business';
  static const String sportsNews = '${baseUrl}news?category=sports';
  static const String worldNews = '${baseUrl}news?category=world';
  static const String politicsNews = '${baseUrl}news?category=politics';
  static const String technologyNews = '${baseUrl}news?category=technology';
  static const String startupNews = '${baseUrl}news?category= startup';
  static const String entertainmentNews =
      '${baseUrl}news?category=entertainment';
  static const String miscellaneousNews =
      '${baseUrl}news?category= miscellaneous';
  static const String hatkeNews = '${baseUrl}news?category=hatke';
  static const String scienceNews = '${baseUrl}news?category=science';
  static const String automobileNews = '${baseUrl}news?category=automobile';
}
