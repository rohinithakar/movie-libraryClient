package edu.sjsu.videolibrary.util;

import java.text.DateFormat;
import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class DateUtils {
	public Calendar cal = null;
	DateFormat df = null;
	DateFormatSymbols dateFormatSymbols = null;

	static DateUtils INSTANCE = null;
	private DateUtils() {
		cal = Calendar.getInstance();
		dateFormatSymbols = new DateFormatSymbols();
		df = new SimpleDateFormat("yyyy-mm-dd");
	}

	static public DateUtils getInstance() {
		if( INSTANCE == null ) {
			INSTANCE = new DateUtils();
		}
		return INSTANCE;
	}

	/**
	 * Given a start date this method returns the number of months between that date and 
	 * current date
	 * @param startDate
	 * @return
	 */
	public List<Integer> getMonthsFromStartDate(String strStartDate) {
		List<Integer> list = new ArrayList<Integer>();
		list.add(1);
		list.add(2);
		list.add(3);
		list.add(4);
		list.add(5);
		list.add(6);
		list.add(7);
		list.add(8);
		list.add(9);
		list.add(10);
		list.add(11);
		list.add(12);
		return list;
	}

	public List<Integer> getYearFromStartDate(String strStartDate ) {
		List<Integer> list = new ArrayList<Integer>();
		list.add(2012);
		return list;
	}

	public String getMonthName( Integer month ) {
		if( month < 13 && month > 0 ) {
			return dateFormatSymbols.getMonths()[month.intValue()-1];
		} else {
			return null;
		}
	}
}