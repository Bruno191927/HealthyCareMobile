class FunctionsUtils{
  static String getDayOfTheWeek({required int dayOfTheWeek}){
    String day = "";
    switch (dayOfTheWeek) {
      case 1:
        day = "Lun";
      break;
      case 2:
        day = "Mar";
      break;
      case 3:
        day = "Mierc";
      break;
      case 4:
        day = "Juev";
      break;
      case 5:
        day = "Vier";
      break;
      case 6:
        day = "Sáb";
      break;
      case 7:
        day = "Dom";
      break;
      default:
    }
    return day;
  }


   static String getMonths({required int monthsInt}){
    String month = "";
    switch (monthsInt) {
      case 1:
      month = "Ene";
      break;
      case 2:
        month = "Feb";
      break;
      case 3:
        month = "Mar";
      break;
      case 4:
        month = "Abr";
      break;
      case 5:
        month = "May";
      break;
      case 6:
       month = "Jun";
      break;
      case 7:
        month = "Jul";
      break;
      case 8:
        month = "Ago";
      break;
      case 9:
        month = "Sept";
      break;
      case 10:
       month = "Oct";
      break;
      case 11:
        month = "Nov";
      break;
      case 12:
        month = "Dic";
      break;
      default:
    }
    return month;
  }

  static bool compareDates(DateTime date1,DateTime date2){
    if(date1.day == date2.day && date1.month == date2.month && date1.year == date2.year){
      return true;
    }
    else{
      return false;
    }
  }
}

