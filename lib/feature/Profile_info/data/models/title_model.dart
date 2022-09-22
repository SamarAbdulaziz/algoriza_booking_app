
import 'package:algoriza_booking_app/feature/Profile_info/domain/entities/title.dart';

class TitleModel extends Titles {
  const TitleModel({
    required String arMessage,
    required String enMessage,
  }) : super(
          arMessage: arMessage,
          enMessage: enMessage,
        );

  factory TitleModel.fromJson(Map<String, dynamic> json) {
    return TitleModel(arMessage: json['ar'], enMessage: json['en'],);
  }
}
