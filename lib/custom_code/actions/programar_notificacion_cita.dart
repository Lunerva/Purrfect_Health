// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:awesome_notifications/awesome_notifications.dart';

/// inicializa las notificaciones (llamar una vez, por ejemplo en main.dart)
Future<void> initializeAwesomeNotifications() async {
  AwesomeNotifications().initialize(
    null, // usar ícono por defecto
    [
      NotificationChannel(
        channelKey: 'citas_channel',
        channelName: 'Citas de mascotas',
        channelDescription: 'Recordatorios para citas veterinarias',
        defaultColor: Colors.teal,
        ledColor: Colors.white,
        importance: NotificationImportance.High,
        channelShowBadge: true,
      ),
    ],
  );
}

/// acción personalizada para programar notificación con Awesome Notifications
Future<void> programarNotificacionCita(
  DateTime fecha,
  String motivo,
  String lugar,
) async {
  // inicializa notificaciones si no están activas
  await initializeAwesomeNotifications();

  bool isAllowed = await AwesomeNotifications().isNotificationAllowed();
  if (!isAllowed) {
    await AwesomeNotifications().requestPermissionToSendNotifications();
  }

  final int notificationId = fecha.millisecondsSinceEpoch.remainder(100000);

  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: notificationId,
      channelKey: 'citas_channel',
      title: '📅 Recordatorio de cita para tu mascota',
      body: 'Tienes una cita por $motivo en $lugar.',
      notificationLayout: NotificationLayout.Default,
    ),
    schedule: NotificationCalendar.fromDate(date: fecha),
  );
}
