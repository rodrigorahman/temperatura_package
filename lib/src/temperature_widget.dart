import 'package:flutter/material.dart';

/// Widget simples que apresenta a temperatura atual
class TemperatureWidget extends StatelessWidget {
  /// Temperatura em graus Celsius
  final double temperature;

  /// Cidade/Localização (opcional)
  final String? location;

  /// Cor do texto (opcional)
  final Color? textColor;

  const TemperatureWidget({
    super.key,
    required this.temperature,
    this.location,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (location != null)
          Text(
            location!,
            style: TextStyle(
              fontSize: 16,
              color: textColor ?? Colors.red,
              fontWeight: FontWeight.w500,
            ),
          ),
        if (location != null) const SizedBox(height: 8),
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              temperature.toStringAsFixed(0),
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: textColor ?? Colors.black87,
              ),
            ),
            Text(
              '°C',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w300,
                color: textColor ?? Colors.black54,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
