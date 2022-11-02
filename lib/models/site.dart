class Site {
  var _uid;
  var _photo;
  var _nameSite;
  var _generalDescription;
  var _rating;
  var _town;
  var _department;
  var _detailedDescription;
  var _moreInformation;


  Site(this._uid, this._photo, this._nameSite, this._generalDescription,
      this._rating, this._town, this._department, this._detailedDescription,
      this._moreInformation);

  Site.fromJson(Map<String, dynamic> json)
      :
        _uid = json['id'],
        _photo = json['photo'],
        _nameSite = json['nameSite'],
        _generalDescription = json['littleDescription'],
        _rating = json['rating'],
        _town = json['town'],
        _department = json['department'],
        _detailedDescription = json['detailedDescription'],
        _moreInformation = json['moreInformation'];

  Map<String, dynamic> toJson() =>
      {
        'id': _uid,
        'name': _photo,
        'author': _nameSite,
        'pages': _generalDescription,
        'rating': _rating,
        'town': _town,
        'department': _department,
        'detailedDescription': _detailedDescription,
        'moreInformation': _moreInformation,

      };

  get town => _town;

  set town(value) {
    _town = value;
  }

  get moreInformation => _moreInformation;

  set moreInformation(value) {
    _moreInformation = value;
  }

  get detailedDescription => _detailedDescription;

  set detailedDescription(value) {
    _detailedDescription = value;
  }

  get department => _department;

  set department(value) {
    _department = value;
  }

  get rating => _rating;

  set rating(value) {
    _rating = value;
  }

  get generalDescription => _generalDescription;

  set generalDescription(value) {
    _generalDescription = value;
  }

  get nameSite => _nameSite;

  set nameSite(value) {
    _nameSite = value;
  }

  get photo => _photo;

  set photo(value) {
    _photo = value;
  }

  get uid => _uid;

  set uid(value) {
    _uid = value;
  }

}