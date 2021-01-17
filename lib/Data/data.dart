class Data {
  final String title;
  final String claiment;
  final String claimDate;
  final String name;
  final dynamic site;
  final dynamic url;
  final dynamic reviewDate;
  final dynamic textualRating;

  Data(
      {this.title,
      this.claiment,
      this.claimDate,
      this.name,
      this.site,
      this.url,
      this.reviewDate,
      this.textualRating,
      d});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      title: json['claims'][0]['text'],
      claiment: json['claims'][0]['claimant'],
      claimDate: json['claims'][0]['claimDate'],
      //claim review

      name: json['claims'][0]['claimReview'][0]['publisher']['name'],
      site: json['claims'][0]['claimReview'][0]['publisher']['site'],
      url: json['claims'][0]['claimReview'][0]['url'],
      reviewDate: json['claims'][0]['claimReview'][0]['reviewDate'],
      textualRating: json['claims'][0]['claimReview'][0]['textualRating'],
    );
  }
}
