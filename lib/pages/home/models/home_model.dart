import 'dart:convert';

HomeModel splashFromJson(String str) => HomeModel.fromJson(json.decode(str));

String splashToJson(HomeModel data) => json.encode(data.toJson());


class HomeModel {
  HomeModel({
    this.rescode = 0,
    this.ts,
    this.seriesList,
    this.album = 0,
    this.more = 0,
    this.albumCfg,
  });

  int rescode;
  int? ts;
  List<SeriesList>? seriesList;
  int album;
  int more;
  AlbumCfg? albumCfg;

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        rescode: json["rescode"] == null ? null : json["rescode"],
        ts: json["ts"] == null ? null : json["ts"],
        seriesList: json["seriesList"] == null ? null : List<SeriesList>.from(
            json["seriesList"].map((x) => SeriesList.fromJson(x))),
        album: json["album"] == null ? null : json["album"],
        more: json["more"] == null ? null : json["more"],
        albumCfg: json["albumCfg"] == null ? null : AlbumCfg.fromJson(
            json["albumCfg"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "rescode": rescode == null ? null : rescode,
        "ts": ts == null ? null : ts,
        "seriesList": seriesList == null ? null : List<dynamic>.from(
            seriesList!.map((x) => x.toJson())),
        "album": album == null ? null : album,
        "more": more == null ? null : more,
        "albumCfg": albumCfg == null ? null : albumCfg?.toJson(),
      };
}

class AlbumCfg {
  AlbumCfg({
    this.famineUpdate,
  });

  int? famineUpdate;

  factory AlbumCfg.fromJson(Map<String, dynamic> json) =>
      AlbumCfg(
        famineUpdate: json["famineUpdate"] == null
            ? null
            : json["famineUpdate"],
      );

  Map<String, dynamic> toJson() =>
      {
        "famineUpdate": famineUpdate == null ? null : famineUpdate,
      };
}

class SeriesList {
  SeriesList({
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

  factory SeriesList.fromJson(Map<String, dynamic> json) => SeriesList(
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

