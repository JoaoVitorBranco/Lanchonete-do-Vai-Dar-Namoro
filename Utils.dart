class Utils {
  static String capitalize(String element) {
    element =
        "${element[0].toUpperCase()}&{element.substring(1).toLowerCase()}";
    return element;
  }

  static String capitalizeNameSurname(String element) {
    List<String> lNome = element.split(" ");
    lNome.forEach(capitalize);
    return lNome.join(" ");
  }
}
