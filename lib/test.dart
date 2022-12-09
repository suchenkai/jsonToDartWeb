class CloudFileBean {
  String? _code;
  PhotoFileList? _photoFileList;
  String? _message;

  CloudFileBean({String? code, PhotoFileList? photoFileList, String? message}) {
    if (code != null) {
      this._code = code;
    }
    if (photoFileList != null) {
      this._photoFileList = photoFileList;
    }
    if (message != null) {
      this._message = message;
    }
  }

  String? get code => _code;
  set code(String? code) => _code = code;
  PhotoFileList? get photoFileList => _photoFileList;
  set photoFileList(PhotoFileList? photoFileList) =>
      _photoFileList = photoFileList;
  String? get message => _message;
  set message(String? message) => _message = message;

  CloudFileBean.fromJson(Map<String, dynamic> json) {
    _code = json['code'];
    _photoFileList = json['photoFileList'] != null
        ? new PhotoFileList.fromJson(json['photoFileList'])
        : null;
    _message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this._code;
    if (this._photoFileList != null) {
      data['photoFileList'] = this._photoFileList!.toJson();
    }
    data['message'] = this._message;
    return data;
  }
}

class PhotoFileList {
  int? _count;
  List<PhotoFile>? _photoFile;

  PhotoFileList({int? count, List<PhotoFile>? photoFile}) {
    if (count != null) {
      this._count = count;
    }
    if (photoFile != null) {
      this._photoFile = photoFile;
    }
  }

  int? get count => _count;
  set count(int? count) => _count = count;
  List<PhotoFile>? get photoFile => _photoFile;
  set photoFile(List<PhotoFile>? photoFile) => _photoFile = photoFile;

  PhotoFileList.fromJson(Map<String, dynamic> json) {
    _count = json['count'];
    if (json['photoFile'] != null) {
      _photoFile = <PhotoFile>[];
      json['photoFile'].forEach((v) {
        _photoFile!.add(new PhotoFile.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this._count;
    if (this._photoFile != null) {
      data['photoFile'] = this._photoFile!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PhotoFile {
  int? _phFileId;
  String? _md5;
  String? _name;
  int? _parentId;
  String? _createTime;
  int? _size;
  dynamic? _length;
  dynamic? _width;
  String? _shootTime;
  String? _modifyTime;
  double? _address;
  dynamic? _country;
  dynamic? _province;
  dynamic? _city;
  dynamic? _district;
  dynamic? _business;
  dynamic? _poiName;
  String? _fileType;
  dynamic? _path;
  dynamic? _yuntuClassList;
  dynamic? _festivalList;
  dynamic? _userAlbumIdList;
  dynamic? _userTagList;
  int? _starLabel;
  dynamic? _phUrl;
  int? _duration;

  PhotoFile(
      {int? phFileId,
        String? md5,
        String? name,
        int? parentId,
        String? createTime,
        int? size,
        dynamic? length,
        dynamic? width,
        String? shootTime,
        String? modifyTime,
        double? address,
        dynamic? country,
        dynamic? province,
        dynamic? city,
        dynamic? district,
        dynamic? business,
        dynamic? poiName,
        String? fileType,
        dynamic? path,
        dynamic? yuntuClassList,
        dynamic? festivalList,
        dynamic? userAlbumIdList,
        dynamic? userTagList,
        int? starLabel,
        dynamic? phUrl,
        int? duration}) {
    if (phFileId != null) {
      this._phFileId = phFileId;
    }
    if (md5 != null) {
      this._md5 = md5;
    }
    if (name != null) {
      this._name = name;
    }
    if (parentId != null) {
      this._parentId = parentId;
    }
    if (createTime != null) {
      this._createTime = createTime;
    }
    if (size != null) {
      this._size = size;
    }
    if (length != null) {
      this._length = length;
    }
    if (width != null) {
      this._width = width;
    }
    if (shootTime != null) {
      this._shootTime = shootTime;
    }
    if (modifyTime != null) {
      this._modifyTime = modifyTime;
    }
    if (address != null) {
      this._address = address;
    }
    if (country != null) {
      this._country = country;
    }
    if (province != null) {
      this._province = province;
    }
    if (city != null) {
      this._city = city;
    }
    if (district != null) {
      this._district = district;
    }
    if (business != null) {
      this._business = business;
    }
    if (poiName != null) {
      this._poiName = poiName;
    }
    if (fileType != null) {
      this._fileType = fileType;
    }
    if (path != null) {
      this._path = path;
    }
    if (yuntuClassList != null) {
      this._yuntuClassList = yuntuClassList;
    }
    if (festivalList != null) {
      this._festivalList = festivalList;
    }
    if (userAlbumIdList != null) {
      this._userAlbumIdList = userAlbumIdList;
    }
    if (userTagList != null) {
      this._userTagList = userTagList;
    }
    if (starLabel != null) {
      this._starLabel = starLabel;
    }
    if (phUrl != null) {
      this._phUrl = phUrl;
    }
    if (duration != null) {
      this._duration = duration;
    }
  }

  int? get phFileId => _phFileId;
  set phFileId(int? phFileId) => _phFileId = phFileId;
  String? get md5 => _md5;
  set md5(String? md5) => _md5 = md5;
  String? get name => _name;
  set name(String? name) => _name = name;
  int? get parentId => _parentId;
  set parentId(int? parentId) => _parentId = parentId;
  String? get createTime => _createTime;
  set createTime(String? createTime) => _createTime = createTime;
  int? get size => _size;
  set size(int? size) => _size = size;
  dynamic? get length => _length;
  set length(dynamic? length) => _length = length;
  dynamic? get width => _width;
  set width(dynamic? width) => _width = width;
  String? get shootTime => _shootTime;
  set shootTime(String? shootTime) => _shootTime = shootTime;
  String? get modifyTime => _modifyTime;
  set modifyTime(String? modifyTime) => _modifyTime = modifyTime;
  double? get address => _address;
  set address(double? address) => _address = address;
  dynamic? get country => _country;
  set country(dynamic? country) => _country = country;
  dynamic? get province => _province;
  set province(dynamic? province) => _province = province;
  dynamic? get city => _city;
  set city(dynamic? city) => _city = city;
  dynamic? get district => _district;
  set district(dynamic? district) => _district = district;
  dynamic? get business => _business;
  set business(dynamic? business) => _business = business;
  dynamic? get poiName => _poiName;
  set poiName(dynamic? poiName) => _poiName = poiName;
  String? get fileType => _fileType;
  set fileType(String? fileType) => _fileType = fileType;
  dynamic? get path => _path;
  set path(dynamic? path) => _path = path;
  dynamic? get yuntuClassList => _yuntuClassList;
  set yuntuClassList(dynamic? yuntuClassList) =>
      _yuntuClassList = yuntuClassList;
  dynamic? get festivalList => _festivalList;
  set festivalList(dynamic? festivalList) => _festivalList = festivalList;
  dynamic? get userAlbumIdList => _userAlbumIdList;
  set userAlbumIdList(dynamic? userAlbumIdList) =>
      _userAlbumIdList = userAlbumIdList;
  dynamic? get userTagList => _userTagList;
  set userTagList(dynamic? userTagList) => _userTagList = userTagList;
  int? get starLabel => _starLabel;
  set starLabel(int? starLabel) => _starLabel = starLabel;
  dynamic? get phUrl => _phUrl;
  set phUrl(dynamic? phUrl) => _phUrl = phUrl;
  int? get duration => _duration;
  set duration(int? duration) => _duration = duration;

  PhotoFile.fromJson(Map<String, dynamic> json) {
    _phFileId = json['phFileId'];
    _md5 = json['md5'];
    _name = json['name'];
    _parentId = json['parentId'];
    _createTime = json['createTime'];
    _size = json['size'];
    _length = json['length'];
    _width = json['width'];
    _shootTime = json['shootTime'];
    _modifyTime = json['modifyTime'];
    _address = json['address'];
    _country = json['country'];
    _province = json['province'];
    _city = json['city'];
    _district = json['district'];
    _business = json['business'];
    _poiName = json['poiName'];
    _fileType = json['fileType'];
    _path = json['path'];
    _yuntuClassList = json['yuntuClassList'];
    _festivalList = json['festivalList'];
    _userAlbumIdList = json['userAlbumIdList'];
    _userTagList = json['userTagList'];
    _starLabel = json['starLabel'];
    _phUrl = json['phUrl'];
    _duration = json['duration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['phFileId'] = this._phFileId;
    data['md5'] = this._md5;
    data['name'] = this._name;
    data['parentId'] = this._parentId;
    data['createTime'] = this._createTime;
    data['size'] = this._size;
    data['length'] = this._length;
    data['width'] = this._width;
    data['shootTime'] = this._shootTime;
    data['modifyTime'] = this._modifyTime;
    data['address'] = this._address;
    data['country'] = this._country;
    data['province'] = this._province;
    data['city'] = this._city;
    data['district'] = this._district;
    data['business'] = this._business;
    data['poiName'] = this._poiName;
    data['fileType'] = this._fileType;
    data['path'] = this._path;
    data['yuntuClassList'] = this._yuntuClassList;
    data['festivalList'] = this._festivalList;
    data['userAlbumIdList'] = this._userAlbumIdList;
    data['userTagList'] = this._userTagList;
    data['starLabel'] = this._starLabel;
    data['phUrl'] = this._phUrl;
    data['duration'] = this._duration;
    return data;
  }
}
