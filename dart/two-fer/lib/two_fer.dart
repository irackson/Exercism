String twoFer([String str]) {
  if (str is String && str.isNotEmpty) {
    return "One for ${str}, one for me.";
  }
  return "One for you, one for me.";
}
