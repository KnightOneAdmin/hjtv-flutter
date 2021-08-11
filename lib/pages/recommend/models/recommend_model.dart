import 'dart:convert';

Recomment recommentFromJson(String str) => Recomment.fromJson(json.decode(str));

String recommentToJson(Recomment data) => json.encode(data.toJson());

class Recomment {
  Recomment({
    this.rescode = 0,
    this.ab415,
    this.ts = 0,
    required this.recs,
    this.ab400,
    this.feed,
  });

  int rescode;
  String? ab415;
  int ts;
  List<Rec> recs;
  String? ab400;
  int? feed;

  factory Recomment.fromJson(Map<String, dynamic> json) => Recomment(
    rescode: json["rescode"] == null ? 0 : json["rescode"],
    ab415: json["ab415"] == null ? null : json["ab415"],
    ts: json["ts"] == null ? null : json["ts"],
    recs: json["recs"] == null
        ? []
        : List<Rec>.from(json["recs"].map((x) => Rec.fromJson(x))),
    ab400: json["ab400"] == null ? null : json["ab400"],
    feed: json["feed"] == null ? null : json["feed"],
  );

  Map<String, dynamic> toJson() => {
    "rescode": rescode == null ? null : rescode,
    "ab415": ab415 == null ? null : ab415,
    "ts": ts == null ? null : ts,
    "recs": recs == null
        ? null
        : List<dynamic>.from(recs.map((x) => x.toJson())),
    "ab400": ab400 == null ? null : ab400,
    "feed": feed == null ? null : feed,
  };
}

class Rec {
  Rec({
    this.type = 0,
    this.title = '',
    required this.items,
    this.danmu = 0,
  });

  int? type;
  String? title;
  List<Item> items;
  int danmu;

  factory Rec.fromJson(Map<String, dynamic> json) => Rec(
    type: json["type"] == null ? null : json["type"],
    title: json["title"] == null ? null : json["title"],
    items: json["items"] == null
        ? []
        : List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
    danmu: json["danmu"] == null ? null : json["danmu"],
  );

  Map<String, dynamic> toJson() => {
    "type": type == null ? null : type,
    "title": title == null ? null : title,
    "items": items == null
        ? []
        : List<dynamic>.from(items.map((x) => x.toJson())),
    "danmu": danmu == null ? 0 : danmu,
  };
}

class Item {
  Item({
    this.sid,
    this.name,
    this.rank,
    this.isFinished,
    this.publishTime,
    this.intro,
    this.thumb='',
    this.poster,
    this.posterThumb,
    this.count,
    this.source,
    this.category,
    this.isPreview,
    required this.scopeQualities,
    this.vid,
    this.gvid,
    this.title,
    required this.sources,
    this.length,
    this.playCount,
    this.danmuCount,
    this.likeCount,
    this.postCount,
    this.videoType,
    this.actType,
    this.copyright,
  });

  String? sid;
  String? name;
  int? rank;
  bool? isFinished;
  int? publishTime;
  String? intro;
  String thumb;
  String? poster;
  String? posterThumb;
  int? count;
  String? source;
  int? category;
  bool? isPreview;
  List<ScopeQuality> scopeQualities;
  int? vid;
  String? gvid;
  String? title;
  List<Source> sources;
  int? length;
  int? playCount;
  int? danmuCount;
  int? likeCount;
  int? postCount;
  int? videoType;
  int? actType;
  int? copyright;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    sid: json["sid"] == null ? null : json["sid"],
    name: json["name"] == null ? '' : json["name"],
    rank: json["rank"] == null ? 0 : json["rank"],
    isFinished: json["isFinished"] == null ? false : json["isFinished"],
    publishTime: json["publishTime"] == null ? 0 : json["publishTime"],
    intro: json["intro"] == null ? null : json["intro"],
    thumb: json["thumb"] == null ? '' : json["thumb"],
    poster: json["poster"] == null ? null : json["poster"],
    posterThumb: json["posterThumb"] == null ? null : json["posterThumb"],
    count: json["count"] == null ? null : json["count"],
    source: json["source"] == null ? null : json["source"],
    category: json["category"] == null ? null : json["category"],
    isPreview: json["isPreview"] == null ? null : json["isPreview"],
    scopeQualities: json["scopeQualities"] == null
        ? []
        : List<ScopeQuality>.from(
        json["scopeQualities"].map((x) => ScopeQuality.fromJson(x))),
    vid: json["vid"] == null ? null : json["vid"],
    gvid: json["gvid"] == null ? null : json["gvid"],
    title: json["title"] == null ? null : json["title"],
    sources: json["sources"] == null
        ? []
        : List<Source>.from(json["sources"].map((x) => Source.fromJson(x))),
    length: json["length"] == null ? null : json["length"],
    playCount: json["playCount"] == null ? null : json["playCount"],
    danmuCount: json["danmuCount"] == null ? null : json["danmuCount"],
    likeCount: json["likeCount"] == null ? null : json["likeCount"],
    postCount: json["postCount"] == null ? null : json["postCount"],
    videoType: json["videoType"] == null ? null : json["videoType"],
    actType: json["actType"] == null ? null : json["actType"],
    copyright: json["copyright"] == null ? null : json["copyright"],
  );

  Map<String, dynamic> toJson() => {
    "sid": sid == null ? null : sid,
    "name": name == null ? null : name,
    "rank": rank == null ? null : rank,
    "isFinished": isFinished == null ? null : isFinished,
    "publishTime": publishTime == null ? null : publishTime,
    "intro": intro == null ? null : intro,
    "thumb": thumb == null ? '' : thumb,
    "poster": poster == null ? null : poster,
    "posterThumb": posterThumb == null ? null : posterThumb,
    "count": count == null ? null : count,
    "source": source == null ? null : source,
    "category": category == null ? null : category,
    "isPreview": isPreview == null ? null : isPreview,
    "scopeQualities": scopeQualities == null
        ? null
        : List<dynamic>.from(scopeQualities.map((x) => x.toJson())),
    "vid": vid == null ? null : vid,
    "gvid": gvid == null ? null : gvid,
    "title": title == null ? null : title,
    "sources": sources == null
        ? null
        : List<dynamic>.from(sources.map((x) => x.toJson())),
    "length": length == null ? null : length,
    "playCount": playCount == null ? null : playCount,
    "danmuCount": danmuCount == null ? null : danmuCount,
    "likeCount": likeCount == null ? null : likeCount,
    "postCount": postCount == null ? null : postCount,
    "videoType": videoType == null ? null : videoType,
    "actType": actType == null ? null : actType,
    "copyright": copyright == null ? null : copyright,
  };
}

class ScopeQuality {
  ScopeQuality({
    required this.name,
    required this.resolution,
    this.value = 0,
    this.vtype = 0,
  });

  Name? name;
  Resolution? resolution;
  int value;
  int vtype;

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

class Source {
  Source({
    this.page = '',
    this.offset = 0,
    this.skip = 0,
    this.prior = 0,
  });

  String page;
  int offset;
  int skip;
  int prior;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
    page: json["page"] == null ? '' : json["page"],
    offset: json["offset"] == null ? 0 : json["offset"],
    skip: json["skip"] == null ? 0 : json["skip"],
    prior: json["prior"] == null ? 0 : json["prior"],
  );

  Map<String, dynamic> toJson() => {
    "page": page == null ? null : page,
    "offset": offset == null ? null : offset,
    "skip": skip == null ? null : skip,
    "prior": prior == null ? null : prior,
  };
}

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
