import 'dart:convert';

RecommendModel recommendFromJson(String str) => RecommendModel.fromJson(json.decode(str));

String recommendToJson(RecommendModel data) => json.encode(data.toJson());


class RecommendModel {
  RecommendModel({
    this.rescode = 0,
    this.ab415,
    this.ts,
    this.recsList,
    this.ab400,
    this.feed = 0
  });

  int? rescode;
  String? ab415;
  int? ts;
  List<RecsModel>? recsList;
  String? ab400;
  int? feed;

  factory RecommendModel.fromJson(Map<String, dynamic> json) => RecommendModel(
    rescode: json["rescode"] == null ? null : json["rescode"],
    ab415: json["ab415"] == null ? null : json["ab415"],
    ts: json["ts"] == null ? null : json["ts"],
    recsList: json["recs"] == null ? null : List<RecsModel>.from(
        json["recs"].map((x) => RecsModel.fromJson(x))),
    ab400: json["ab400"] == null ? null : json["ab400"],
    feed: json["feed"] == null ? null : json["feed"],
  );

  Map<String, dynamic> toJson() =>
      {
        "rescode": rescode == null ? null : rescode,
        "ab415": ab415 == null ? null : ab415,
        "ts": ts == null ? null : ts,
        "recs": recsList == null ? null : List<dynamic>.from(
            recsList!.map((x) => x.toJson())),
        "ab400": ab400 == null ? null : ab400,
        "feed": feed == null ? null : feed,
      };
}

class RecsModel {
  RecsModel({
    this.type,
    this.title,
    this.items,
    this.danmu = 1,
  });

  int? type;
  String? title;
  List<ItemModel>? items;
  int? danmu;

  factory RecsModel.fromJson(Map<String, dynamic> json) => RecsModel(
    type: json["type"] == null ? null : json["type"],
    title: json["title"] == null ? null : json["title"],
    items: json["items"] == null ? null : List<ItemModel>.from(
        json["items"].map((x) => ItemModel.fromJson(x))),
    danmu: json["danmu"] == null ? null : json["danmu"],
  );

  Map<String, dynamic> toJson() =>
      {
        "type": type == null ? null : type,
        "title": title == null ? null : title,
        "items": items == null ? null : List<dynamic>.from(
            items!.map((x) => x.toJson())),
        "danmu": danmu == null ? null : danmu,
      };
}

class ItemModel {
  ItemModel({
    this.vid,
    this.gvid,
    this.title,
    this.sources,
    this.thumb,
    this.intro,
    this.length,
    this.publishTime,
    this.playCount,
    this.danmuCount,
    this.likeCount,
    this.postCount,
    this.videoType,
    this.actType,
    this.copyright,
    this.sid,
    this.name,
    this.rank,
    this.isFinished,
    // this.publishTime,
    // this.intro,
    // this.thumb,
    this.poster,
    this.posterThumb,
    this.count,
    this.source,
    this.category,
    this.isPreview,
    this.shorthand,
    this.crew,
    this.scopeQualities,
    this.memo,
  });

  int? vid;
  String? gvid;
  String? title;
  List<SourceList>? sources;
  String? thumb;
  String? intro;
  int? length;
  int? publishTime;
  int? playCount;
  int? danmuCount;
  int? likeCount;
  int? postCount;
  int? videoType;
  int? actType;
  int? copyright;

  String? sid;
  String? name;
  int? rank;
  bool? isFinished = false;
  // int? publishTime;
  // String? intro;
  // String? thumb;
  String? poster;
  String? posterThumb;
  int? count;
  Source? source;
  int? category;
  bool? isPreview;
  String? shorthand;
  String? crew;
  List<ScopeQuality>? scopeQualities;
  String? memo;

  factory ItemModel.fromJson(Map<String, dynamic> json) => ItemModel(
    vid: json["vid"] == null ? null : json["vid"],
    gvid: json["gvid"] == null ? null : json["gvid"],
    title: json["title"] == null ? null : json["title"],
    sources: json["sources"] == null ? null : List<SourceList>.from(
        json["sources"].map((x) => SourceList.fromJson(x))),
    thumb: json["thumb"] == null ? null : json["thumb"],
    intro: json["intro"] == null ? null : json["intro"],
    length: json["length"] == null ? null : json["length"],
    publishTime: json["publishTime"] == null ? null : json["publishTime"],
    playCount: json["playCount"] == null ? null : json["playCount"],
    danmuCount: json["danmuCount"] == null ? null : json["danmuCount"],
    likeCount: json["likeCount"] == null ? null : json["likeCount"],
    postCount: json["postCount"] == null ? null : json["postCount"],
    videoType: json["videoType"] == null ? null : json["videoType"],
    actType: json["actType"] == null ? null : json["actType"],
    copyright: json["copyright"] == null ? null : json["copyright"],
    sid: json["sid"] == null ? null : json["sid"],
    name: json["name"] == null ? null : json["name"],
    rank: json["rank"] == null ? null : json["rank"],
    isFinished: json["isFinished"] == null ? null : json["isFinished"],
    // publishTime: json["publishTime"] == null ? null : json["publishTime"],
    // intro: json["intro"] == null ? null : json["intro"],
    // thumb: json["thumb"] == null ? null : json["thumb"],
    poster: json["poster"] == null ? null : json["poster"],
    posterThumb: json["posterThumb"] == null ? null : json["posterThumb"],
    count: json["count"] == null ? null : json["count"],
    source:
    json["source"] == null ? null : sourceValues.map[json["source"]],
    category: json["category"] == null ? null : json["category"],
    isPreview: json["isPreview"] == null ? null : json["isPreview"],
    shorthand: json["shorthand"] == null ? null : json["shorthand"],
    crew: json["crew"] == null ? null : json["crew"],
    scopeQualities: json["scopeQualities"] == null
        ? null
        : List<ScopeQuality>.from(
        json["scopeQualities"].map((x) => ScopeQuality.fromJson(x))),
    memo: json["memo"] == null ? null : json["memo"],
  );

  Map<String, dynamic> toJson() => {
    "vid": vid == null ? null : vid,
    "gvid": gvid == null ? null : gvid,
    "title": title == null ? null : title,
    "sources": sources == null ? null : List<dynamic>.from(
        sources!.map((x) => x.toJson())),
    "thumb": thumb == null ? null : thumb,
    "intro": intro == null ? null : intro,
    "length": length == null ? null : length,
    "publishTime": publishTime == null ? null : publishTime,
    "playCount": playCount == null ? null : playCount,
    "danmuCount": danmuCount == null ? null : danmuCount,
    "likeCount": likeCount == null ? null : likeCount,
    "postCount": postCount == null ? null : postCount,
    "videoType": videoType == null ? null : videoType,
    "actType": actType == null ? null : actType,
    "copyright": copyright == null ? null : copyright,

    "sid": sid == null ? null : sid,
    "name": name == null ? null : name,
    "rank": rank == null ? null : rank,
    "isFinished": isFinished == null ? null : isFinished,
    // "publishTime": publishTime == null ? null : publishTime,
    // "intro": intro == null ? null : intro,
    // "thumb": thumb == null ? null : thumb,
    "poster": poster == null ? null : poster,
    "posterThumb": posterThumb == null ? null : posterThumb,
    "count": count == null ? null : count,
    "source": source == null ? null : sourceValues.reverse[source],
    "category": category == null ? null : category,
    "isPreview": isPreview == null ? null : isPreview,
    "shorthand": shorthand == null ? null : shorthand,
    "crew": crew == null ? null : crew,
    "scopeQualities": scopeQualities == null
        ? null
        : List<dynamic>.from(scopeQualities!.map((x) => x.toJson())),
    "memo": memo == null ? null : memo,
  };
}

class SourceList {
  SourceList({
    this.page,
    this.offset,
    this.skip,
    this.prior,
  });

  String? page;
  int? offset;
  int? skip;
  int? prior;

  factory SourceList.fromJson(Map<String, dynamic> json) => SourceList(
    page: json["page"] == null ? null : json["page"],
    offset: json["offset"] == null ? null : json["offset"],
    skip: json["skip"] == null ? null : json["skip"],
    prior: json["page"] == null ? null : json["page"],
  );

  Map<String, dynamic> toJson() => {
    "page": page == null ? null : page,
    "offset": offset == null ? null : offset,
    "skip": skip == null ? null : skip,
    "prior": prior == null ? null : prior,
  };
}

class BannerItemModel {
  BannerItemModel({
    this.sid,
    this.name,
    this.rank,
    this.isFinished,
    this.publishTime,
    this.intro,
    this.thumb,
    this.poster,
    this.posterThumb,
    this.count,
    this.source,
    this.category,
    this.isPreview,
    this.shorthand,
    this.crew,
    this.scopeQualities,
    this.memo,
  });

  String? sid;
  String? name;
  int? rank;
  bool? isFinished = false;
  int? publishTime;
  String? intro;
  String? thumb;
  String? poster;
  String? posterThumb;
  int? count;
  Source? source;
  int? category;
  bool? isPreview;
  String? shorthand;
  String? crew;
  List<ScopeQuality>? scopeQualities;
  String? memo;

  factory BannerItemModel.fromJson(Map<String, dynamic> json) => BannerItemModel (
    sid: json["sid"] == null ? null : json["sid"],
    name: json["name"] == null ? null : json["name"],
    rank: json["rank"] == null ? null : json["rank"],
    isFinished: json["isFinished"] == null ? null : json["isFinished"],
    publishTime: json["publishTime"] == null ? null : json["publishTime"],
    intro: json["intro"] == null ? null : json["intro"],
    thumb: json["thumb"] == null ? null : json["thumb"],
    poster: json["poster"] == null ? null : json["poster"],
    posterThumb: json["posterThumb"] == null ? null : json["posterThumb"],
    count: json["count"] == null ? null : json["count"],
    source:
    json["source"] == null ? null : sourceValues.map[json["source"]],
    category: json["category"] == null ? null : json["category"],
    isPreview: json["isPreview"] == null ? null : json["isPreview"],
    shorthand: json["shorthand"] == null ? null : json["shorthand"],
    crew: json["crew"] == null ? null : json["crew"],
    scopeQualities: json["scopeQualities"] == null
        ? null
        : List<ScopeQuality>.from(
        json["scopeQualities"].map((x) => ScopeQuality.fromJson(x))),
    memo: json["memo"] == null ? null : json["memo"],
  );

  Map<String, dynamic> toJson() => {
    "sid": sid == null ? null : sid,
    "name": name == null ? null : name,
    "rank": rank == null ? null : rank,
    "isFinished": isFinished == null ? null : isFinished,
    "publishTime": publishTime == null ? null : publishTime,
    "intro": intro == null ? null : intro,
    "thumb": thumb == null ? null : thumb,
    "poster": poster == null ? null : poster,
    "posterThumb": posterThumb == null ? null : posterThumb,
    "count": count == null ? null : count,
    "source": source == null ? null : sourceValues.reverse[source],
    "category": category == null ? null : category,
    "isPreview": isPreview == null ? null : isPreview,
    "shorthand": shorthand == null ? null : shorthand,
    "crew": crew == null ? null : crew,
    "scopeQualities": scopeQualities == null
        ? null
        : List<dynamic>.from(scopeQualities!.map((x) => x.toJson())),
    "memo": memo == null ? null : memo,
  };
}

class ScopeQuality {
  ScopeQuality({
    this.name,
    this.resolution,
    this.value,
    this.vtype,
  });

  Name? name;
  Resolution? resolution;
  int? value;
  int? vtype;

  factory ScopeQuality.fromJson(Map<String, dynamic> json) => ScopeQuality(
    name: json["name"] == null ? null : nameValues.map[json["name"]],
    resolution: json["resolution"] == null
        ? null
        : resolutionValues.map[json["resolution"]],
    value: json["value"] == null ? null : json["value"],
    vtype: json["vtype"] == null ? null : json["vtype"],
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : nameValues.reverse[name],
    "resolution":
    resolution == null ? null : resolutionValues.reverse[resolution],
    "value": value == null ? null : value,
    "vtype": vtype == null ? null : vtype,
  };
}


enum Name { EMPTY, NAME, PURPLE }

final nameValues =
EnumValues({"蓝光": Name.EMPTY, "高清": Name.NAME, "标清": Name.PURPLE});

enum Resolution { THE_1080_P, THE_720_P, THE_480_P }

final resolutionValues = EnumValues({
  "1080P": Resolution.THE_1080_P,
  "480P": Resolution.THE_480_P,
  "720P": Resolution.THE_720_P
});

enum Source { EMPTY, SOURCE, PURPLE }

final sourceValues =
EnumValues({"网络": Source.EMPTY, "小玩剧": Source.PURPLE, "百度": Source.SOURCE});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}

