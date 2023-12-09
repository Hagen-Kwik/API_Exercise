part of 'models.dart';

// class Costs extends Equatable {
//   final String? code;
//   final String? name;
//   final List<Cost>? costs;

//   const Costs({this.code, this.name, this.costs});

//   factory Costs.fromJson(Map<String, dynamic> json) => Costs(
//         code: json['code'] as String?,
//         name: json['name'] as String?,
//         costs: (json['costs'] as List<dynamic>?)
//             ?.map((e) => Cost.fromJson(e as Map<String, dynamic>))
//             .toList(),
//       );

//   Map<String, dynamic> toJson() => {
//         'code': code,
//         'name': name,
//         'costs': costs?.map((e) => e.toJson()).toList(),
//       };

//   @override
//   bool get stringify => true;

//   @override
//   List<Object?> get props => [code, name, costs];
// }



class Costs {
    final String service;
    final String description;
    final List<Cost> cost;

    Costs({
        required this.service,
        required this.description,
        required this.cost,
    });

    factory Costs.fromRawJson(String str) => Costs.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Costs.fromJson(Map<String, dynamic> json) => Costs(
        service: json["service"],
        description: json["description"],
        cost: List<Cost>.from(json["cost"].map((x) => Cost.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "service": service,
        "description": description,
        "cost": List<dynamic>.from(cost.map((x) => x.toJson())),
    };
}

class Cost {
    final int value;
    final String etd;
    final String note;

    Cost({
        required this.value,
        required this.etd,
        required this.note,
    });

    factory Cost.fromRawJson(String str) => Cost.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Cost.fromJson(Map<String, dynamic> json) => Cost(
        value: json["value"],
        etd: json["etd"],
        note: json["note"],
    );

    Map<String, dynamic> toJson() => {
        "value": value,
        "etd": etd,
        "note": note,
    };
}

