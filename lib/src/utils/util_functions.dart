String getTimeAgo(DateTime date1, DateTime date2) {
  final Duration durdef = date1.difference(date2);

  if (durdef.inDays > 1) {
    return '${durdef.inDays.round()}d';
  } else if (durdef.inHours > 1) {
    return '${durdef.inHours.round()}h';
  } else if (durdef.inMinutes > 1) {
    return '${durdef.inMinutes.round()}m';
  } else {
    return '${durdef.inSeconds.round()}s';
  }
}
