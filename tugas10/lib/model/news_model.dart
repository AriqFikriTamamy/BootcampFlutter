class NewsModel {
  final String url;
  final String title;
  final String subTitle;

  NewsModel({required this.url, required this.title, required this.subTitle});
}

List<NewsModel> news = [
  NewsModel(
    url: 'assets/images/latest1.png',
    title: 'TECHNOLOGY',
    subTitle: 'Insurtech startup PasarPolis gets \$54 million — Series B',
  ),
  NewsModel(
    url: 'assets/images/latest2.png',
    title: 'TECHNOLOGY',
    subTitle: 'The IPO parade continues as Wish files, Bumble targets',
  ),
  NewsModel(
    url: 'assets/images/latest3.png',
    title: 'TECHNOLOGY',
    subTitle: 'Hypatos gets \$11.8M for a deep learning approach',
  ),
];
