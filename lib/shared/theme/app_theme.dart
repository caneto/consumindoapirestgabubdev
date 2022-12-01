
import 'colors.dart';
import 'text_styles.dart';

abstract class AppTheme {
  AppTheme();
  static AppColors get colors => AppColorsDefault();
  static AppTextStyles get textStyles => AppTextStylesDefault();
}