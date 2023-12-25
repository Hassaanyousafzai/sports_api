class sportsModel {
  Data? data;
  Meta? meta;

  sportsModel({this.data, this.meta});

  sportsModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    if (meta != null) {
      data['meta'] = meta!.toJson();
    }
    return data;
  }
}

class Data {
  int? playerId;
  Null? teamId;
  int? countryId;
  int? positionId;
  String? commonName;
  String? displayName;
  String? fullname;
  String? firstname;
  String? lastname;
  String? nationality;
  String? birthdate;
  String? birthcountry;
  String? birthplace;
  String? height;
  String? weight;
  String? imagePath;
  Stats? stats;
  Stats? lineups;

  Data(
      {this.playerId,
      this.teamId,
      this.countryId,
      this.positionId,
      this.commonName,
      this.displayName,
      this.fullname,
      this.firstname,
      this.lastname,
      this.nationality,
      this.birthdate,
      this.birthcountry,
      this.birthplace,
      this.height,
      this.weight,
      this.imagePath,
      this.stats,
      this.lineups});

  Data.fromJson(Map<String, dynamic> json) {
    playerId = json['player_id'];
    teamId = json['team_id'];
    countryId = json['country_id'];
    positionId = json['position_id'];
    commonName = json['common_name'];
    displayName = json['display_name'];
    fullname = json['fullname'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    nationality = json['nationality'];
    birthdate = json['birthdate'];
    birthcountry = json['birthcountry'];
    birthplace = json['birthplace'];
    height = json['height'];
    weight = json['weight'];
    imagePath = json['image_path'];
    stats = json['stats'] != null ? new Stats.fromJson(json['stats']) : null;
    lineups =
        json['lineups'] != null ? new Stats.fromJson(json['lineups']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['player_id'] = playerId;
    data['team_id'] = teamId;
    data['country_id'] = countryId;
    data['position_id'] = positionId;
    data['common_name'] = commonName;
    data['display_name'] = displayName;
    data['fullname'] = fullname;
    data['firstname'] = firstname;
    data['lastname'] = lastname;
    data['nationality'] = nationality;
    data['birthdate'] = birthdate;
    data['birthcountry'] = birthcountry;
    data['birthplace'] = birthplace;
    data['height'] = height;
    data['weight'] = weight;
    data['image_path'] = imagePath;
    if (stats != null) {
      data['stats'] = stats!.toJson();
    }
    if (lineups != null) {
      data['lineups'] = lineups!.toJson();
    }
    return data;
  }
}

class Stats {
  List<Data>? data;

  Stats({this.data});

  Stats.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? playerId;
  int? teamId;
  int? leagueId;
  int? seasonId;
  int? captain;
  int? minutes;
  int? appearences;
  int? lineups;
  int? substituteIn;
  int? substituteOut;
  int? substitutesOnBench;
  int? goals;
  int? owngoals;
  int? assists;
  int? saves;
  int? insideBoxSaves;
  int? dispossesed;
  int? interceptions;
  int? yellowcards;
  int? yellowred;
  int? redcards;
  String? type;
  Null? tackles;
  Null? blocks;
  Null? hitPost;
  int? cleansheets;
  Null? rating;
  Fouls? fouls;
  Crosses? crosses;
  Dribbles? dribbles;
  Shots? shots;
  Duels? duels;
  Passes? passes;
  Penalties? penalties;

  Data(
      {this.playerId,
      this.teamId,
      this.leagueId,
      this.seasonId,
      this.captain,
      this.minutes,
      this.appearences,
      this.lineups,
      this.substituteIn,
      this.substituteOut,
      this.substitutesOnBench,
      this.goals,
      this.owngoals,
      this.assists,
      this.saves,
      this.insideBoxSaves,
      this.dispossesed,
      this.interceptions,
      this.yellowcards,
      this.yellowred,
      this.redcards,
      this.type,
      this.tackles,
      this.blocks,
      this.hitPost,
      this.cleansheets,
      this.rating,
      this.fouls,
      this.crosses,
      this.dribbles,
      this.shots,
      this.duels,
      this.passes,
      this.penalties});

  Data.fromJson(Map<String, dynamic> json) {
    playerId = json['player_id'];
    teamId = json['team_id'];
    leagueId = json['league_id'];
    seasonId = json['season_id'];
    captain = json['captain'];
    minutes = json['minutes'];
    appearences = json['appearences'];
    lineups = json['lineups'];
    substituteIn = json['substitute_in'];
    substituteOut = json['substitute_out'];
    substitutesOnBench = json['substitutes_on_bench'];
    goals = json['goals'];
    owngoals = json['owngoals'];
    assists = json['assists'];
    saves = json['saves'];
    insideBoxSaves = json['inside_box_saves'];
    dispossesed = json['dispossesed'];
    interceptions = json['interceptions'];
    yellowcards = json['yellowcards'];
    yellowred = json['yellowred'];
    redcards = json['redcards'];
    type = json['type'];
    tackles = json['tackles'];
    blocks = json['blocks'];
    hitPost = json['hit_post'];
    cleansheets = json['cleansheets'];
    rating = json['rating'];
    fouls = json['fouls'] != null ? new Fouls.fromJson(json['fouls']) : null;
    crosses =
        json['crosses'] != null ? new Crosses.fromJson(json['crosses']) : null;
    dribbles = json['dribbles'] != null
        ? new Dribbles.fromJson(json['dribbles'])
        : null;
    shots = json['shots'] != null ? new Shots.fromJson(json['shots']) : null;
    duels = json['duels'] != null ? new Duels.fromJson(json['duels']) : null;
    passes =
        json['passes'] != null ? new Passes.fromJson(json['passes']) : null;
    penalties = json['penalties'] != null
        ? new Penalties.fromJson(json['penalties'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['player_id'] = playerId;
    data['team_id'] = teamId;
    data['league_id'] = this.leagueId;
    data['season_id'] = this.seasonId;
    data['captain'] = this.captain;
    data['minutes'] = this.minutes;
    data['appearences'] = this.appearences;
    data['lineups'] = lineups;
    data['substitute_in'] = this.substituteIn;
    data['substitute_out'] = this.substituteOut;
    data['substitutes_on_bench'] = this.substitutesOnBench;
    data['goals'] = this.goals;
    data['owngoals'] = this.owngoals;
    data['assists'] = this.assists;
    data['saves'] = this.saves;
    data['inside_box_saves'] = this.insideBoxSaves;
    data['dispossesed'] = this.dispossesed;
    data['interceptions'] = this.interceptions;
    data['yellowcards'] = this.yellowcards;
    data['yellowred'] = this.yellowred;
    data['redcards'] = this.redcards;
    data['type'] = this.type;
    data['tackles'] = this.tackles;
    data['blocks'] = this.blocks;
    data['hit_post'] = this.hitPost;
    data['cleansheets'] = this.cleansheets;
    data['rating'] = this.rating;
    if (this.fouls != null) {
      data['fouls'] = this.fouls!.toJson();
    }
    if (this.crosses != null) {
      data['crosses'] = this.crosses!.toJson();
    }
    if (this.dribbles != null) {
      data['dribbles'] = this.dribbles!.toJson();
    }
    if (this.shots != null) {
      data['shots'] = this.shots!.toJson();
    }
    if (this.duels != null) {
      data['duels'] = this.duels!.toJson();
    }
    if (this.passes != null) {
      data['passes'] = this.passes!.toJson();
    }
    if (this.penalties != null) {
      data['penalties'] = this.penalties!.toJson();
    }
    return data;
  }
}

class Fouls {
  Null? committed;
  Null? drawn;

  Fouls({this.committed, this.drawn});

  Fouls.fromJson(Map<String, dynamic> json) {
    committed = json['committed'];
    drawn = json['drawn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['committed'] = committed;
    data['drawn'] = drawn;
    return data;
  }
}

class Crosses {
  Null? total;
  Null? accurate;

  Crosses({this.total, this.accurate});

  Crosses.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    accurate = json['accurate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = total;
    data['accurate'] = accurate;
    return data;
  }
}

class Dribbles {
  Null? attempts;
  Null? success;
  Null? dribbledPast;

  Dribbles({this.attempts, this.success, this.dribbledPast});

  Dribbles.fromJson(Map<String, dynamic> json) {
    attempts = json['attempts'];
    success = json['success'];
    dribbledPast = json['dribbled_past'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['attempts'] = attempts;
    data['success'] = success;
    data['dribbled_past'] = dribbledPast;
    return data;
  }
}

class Shots {
  Null? shotsTotal;
  Null? shotsOnTarget;

  Shots({this.shotsTotal, this.shotsOnTarget});

  Shots.fromJson(Map<String, dynamic> json) {
    shotsTotal = json['shots_total'];
    shotsOnTarget = json['shots_on_target'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['shots_total'] = shotsTotal;
    data['shots_on_target'] = shotsOnTarget;
    return data;
  }
}

class Duels {
  Null? total;
  Null? won;

  Duels({this.total, this.won});

  Duels.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    won = json['won'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = total;
    data['won'] = won;
    return data;
  }
}

class Passes {
  Null? total;
  Null? accuracy;
  Null? keyPasses;

  Passes({this.total, this.accuracy, this.keyPasses});

  Passes.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    accuracy = json['accuracy'];
    keyPasses = json['key_passes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = total;
    data['accuracy'] = accuracy;
    data['key_passes'] = keyPasses;
    return data;
  }
}

class Penalties {
  Null? won;
  Null? scores;
  Null? missed;
  Null? committed;
  Null? saves;

  Penalties({this.won, this.scores, this.missed, this.committed, this.saves});

  Penalties.fromJson(Map<String, dynamic> json) {
    won = json['won'];
    scores = json['scores'];
    missed = json['missed'];
    committed = json['committed'];
    saves = json['saves'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['won'] = won;
    data['scores'] = scores;
    data['missed'] = missed;
    data['committed'] = committed;
    data['saves'] = saves;
    return data;
  }
}

class Data {
  int? teamId;
  int? fixtureId;
  int? playerId;
  String? playerName;
  int? number;
  String? position;
  Null? additionalPosition;
  int? formationPosition;
  Null? posx;
  Null? posy;
  bool? captain;
  String? type;
  Stats? stats;

  Data(
      {this.teamId,
      this.fixtureId,
      this.playerId,
      this.playerName,
      this.number,
      this.position,
      this.additionalPosition,
      this.formationPosition,
      this.posx,
      this.posy,
      this.captain,
      this.type,
      this.stats});

  Data.fromJson(Map<String, dynamic> json) {
    teamId = json['team_id'];
    fixtureId = json['fixture_id'];
    playerId = json['player_id'];
    playerName = json['player_name'];
    number = json['number'];
    position = json['position'];
    additionalPosition = json['additional_position'];
    formationPosition = json['formation_position'];
    posx = json['posx'];
    posy = json['posy'];
    captain = json['captain'];
    type = json['type'];
    stats = json['stats'] != null ? new Stats.fromJson(json['stats']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['team_id'] = teamId;
    data['fixture_id'] = this.fixtureId;
    data['player_id'] = playerId;
    data['player_name'] = this.playerName;
    data['number'] = this.number;
    data['position'] = this.position;
    data['additional_position'] = this.additionalPosition;
    data['formation_position'] = this.formationPosition;
    data['posx'] = this.posx;
    data['posy'] = this.posy;
    data['captain'] = this.captain;
    data['type'] = this.type;
    if (stats != null) {
      data['stats'] = stats!.toJson();
    }
    return data;
  }
}

class Stats {
  Shots? shots;
  Goals? goals;
  Fouls? fouls;
  Cards? cards;
  Passing? passing;
  Dribbles? dribbles;
  Duels? duels;
  Other? other;
  Null? rating;

  Stats(
      {this.shots,
      this.goals,
      this.fouls,
      this.cards,
      this.passing,
      this.dribbles,
      this.duels,
      this.other,
      this.rating});

  Stats.fromJson(Map<String, dynamic> json) {
    shots = json['shots'] != null ? new Shots.fromJson(json['shots']) : null;
    goals = json['goals'] != null ? new Goals.fromJson(json['goals']) : null;
    fouls = json['fouls'] != null ? new Fouls.fromJson(json['fouls']) : null;
    cards = json['cards'] != null ? new Cards.fromJson(json['cards']) : null;
    passing =
        json['passing'] != null ? new Passing.fromJson(json['passing']) : null;
    dribbles = json['dribbles'] != null
        ? new Dribbles.fromJson(json['dribbles'])
        : null;
    duels = json['duels'] != null ? new Duels.fromJson(json['duels']) : null;
    other = json['other'] != null ? new Other.fromJson(json['other']) : null;
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.shots != null) {
      data['shots'] = this.shots!.toJson();
    }
    if (this.goals != null) {
      data['goals'] = this.goals!.toJson();
    }
    if (this.fouls != null) {
      data['fouls'] = this.fouls!.toJson();
    }
    if (this.cards != null) {
      data['cards'] = this.cards!.toJson();
    }
    if (this.passing != null) {
      data['passing'] = this.passing!.toJson();
    }
    if (this.dribbles != null) {
      data['dribbles'] = this.dribbles!.toJson();
    }
    if (this.duels != null) {
      data['duels'] = this.duels!.toJson();
    }
    if (this.other != null) {
      data['other'] = this.other!.toJson();
    }
    data['rating'] = this.rating;
    return data;
  }
}

class Shots {
  Null? shotsTotal;
  Null? shotsOnGoal;

  Shots({this.shotsTotal, this.shotsOnGoal});

  Shots.fromJson(Map<String, dynamic> json) {
    shotsTotal = json['shots_total'];
    shotsOnGoal = json['shots_on_goal'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['shots_total'] = shotsTotal;
    data['shots_on_goal'] = this.shotsOnGoal;
    return data;
  }
}

class Goals {
  int? scored;
  Null? assists;
  Null? conceded;
  int? owngoals;
  Null? teamConceded;

  Goals(
      {this.scored,
      this.assists,
      this.conceded,
      this.owngoals,
      this.teamConceded});

  Goals.fromJson(Map<String, dynamic> json) {
    scored = json['scored'];
    assists = json['assists'];
    conceded = json['conceded'];
    owngoals = json['owngoals'];
    teamConceded = json['team_conceded'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['scored'] = scored;
    data['assists'] = assists;
    data['conceded'] = conceded;
    data['owngoals'] = owngoals;
    data['team_conceded'] = teamConceded;
    return data;
  }
}

class Cards {
  int? yellowcards;
  Null? redcards;
  Null? yellowredcards;

  Cards({this.yellowcards, this.redcards, this.yellowredcards});

  Cards.fromJson(Map<String, dynamic> json) {
    yellowcards = json['yellowcards'];
    redcards = json['redcards'];
    yellowredcards = json['yellowredcards'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['yellowcards'] = yellowcards;
    data['redcards'] = redcards;
    data['yellowredcards'] = yellowredcards;
    return data;
  }
}

class Passing {
  Null? totalCrosses;
  Null? crossesAccuracy;
  Null? passes;
  Null? accuratePasses;
  Null? passesAccuracy;
  Null? keyPasses;

  Passing(
      {this.totalCrosses,
      this.crossesAccuracy,
      this.passes,
      this.accuratePasses,
      this.passesAccuracy,
      this.keyPasses});

  Passing.fromJson(Map<String, dynamic> json) {
    totalCrosses = json['total_crosses'];
    crossesAccuracy = json['crosses_accuracy'];
    passes = json['passes'];
    accuratePasses = json['accurate_passes'];
    passesAccuracy = json['passes_accuracy'];
    keyPasses = json['key_passes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_crosses'] = totalCrosses;
    data['crosses_accuracy'] = crossesAccuracy;
    data['passes'] = passes;
    data['accurate_passes'] = accuratePasses;
    data['passes_accuracy'] = passesAccuracy;
    data['key_passes'] = keyPasses;
    return data;
  }
}

class Other {
  Null? aerialsWon;
  Null? punches;
  Null? offsides;
  Null? saves;
  Null? insideBoxSaves;
  Null? penScored;
  Null? penMissed;
  Null? penSaved;
  Null? penCommitted;
  Null? penWon;
  Null? hitWoodwork;
  Null? tackles;
  Null? blocks;
  Null? interceptions;
  Null? clearances;
  Null? dispossesed;
  int? minutesPlayed;

  Other(
      {this.aerialsWon,
      this.punches,
      this.offsides,
      this.saves,
      this.insideBoxSaves,
      this.penScored,
      this.penMissed,
      this.penSaved,
      this.penCommitted,
      this.penWon,
      this.hitWoodwork,
      this.tackles,
      this.blocks,
      this.interceptions,
      this.clearances,
      this.dispossesed,
      this.minutesPlayed});

  Other.fromJson(Map<String, dynamic> json) {
    aerialsWon = json['aerials_won'];
    punches = json['punches'];
    offsides = json['offsides'];
    saves = json['saves'];
    insideBoxSaves = json['inside_box_saves'];
    penScored = json['pen_scored'];
    penMissed = json['pen_missed'];
    penSaved = json['pen_saved'];
    penCommitted = json['pen_committed'];
    penWon = json['pen_won'];
    hitWoodwork = json['hit_woodwork'];
    tackles = json['tackles'];
    blocks = json['blocks'];
    interceptions = json['interceptions'];
    clearances = json['clearances'];
    dispossesed = json['dispossesed'];
    minutesPlayed = json['minutes_played'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aerials_won'] = aerialsWon;
    data['punches'] = punches;
    data['offsides'] = offsides;
    data['saves'] = saves;
    data['inside_box_saves'] = insideBoxSaves;
    data['pen_scored'] = penScored;
    data['pen_missed'] = penMissed;
    data['pen_saved'] = penSaved;
    data['pen_committed'] = penCommitted;
    data['pen_won'] = penWon;
    data['hit_woodwork'] = hitWoodwork;
    data['tackles'] = tackles;
    data['blocks'] = blocks;
    data['interceptions'] = interceptions;
    data['clearances'] = clearances;
    data['dispossesed'] = dispossesed;
    data['minutes_played'] = minutesPlayed;
    return data;
  }
}

class Meta {
  List<Plans>? plans;
  List<Sports>? sports;

  Meta({this.plans, this.sports});

  Meta.fromJson(Map<String, dynamic> json) {
    if (json['plans'] != null) {
      plans = <Plans>[];
      json['plans'].forEach((v) {
        plans!.add(new Plans.fromJson(v));
      });
    }
    if (json['sports'] != null) {
      sports = <Sports>[];
      json['sports'].forEach((v) {
        sports!.add(new Sports.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (plans != null) {
      data['plans'] = plans!.map((v) => v.toJson()).toList();
    }
    if (sports != null) {
      data['sports'] = sports!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Plans {
  String? name;
  String? features;
  String? priceMonthly;
  String? priceYearly;
  String? requestLimit;
  String? sport;

  Plans(
      {this.name,
      this.features,
      this.priceMonthly,
      this.priceYearly,
      this.requestLimit,
      this.sport});

  Plans.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    features = json['features'];
    priceMonthly = json['price_monthly'];
    priceYearly = json['price_yearly'];
    requestLimit = json['request_limit'];
    sport = json['sport'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = name;
    data['features'] = features;
    data['price_monthly'] = priceMonthly;
    data['price_yearly'] = priceYearly;
    data['request_limit'] = requestLimit;
    data['sport'] = sport;
    return data;
  }
}

class Sports {
  int? id;
  String? name;
  bool? current;

  Sports({this.id, this.name, this.current});

  Sports.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    current = json['current'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['current'] = current;
    return data;
  }
}
