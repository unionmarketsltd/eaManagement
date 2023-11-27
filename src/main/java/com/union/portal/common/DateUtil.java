/**
 * 
 */
package com.union.portal.common;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;


/**
 * �궇吏쒓��젴�맂 媛곸쥌 method瑜� �젣怨듯븯�뒗 class
 * @author choi
 *
 */
public class DateUtil {
	/**
	 * �쁽�옱 �씪�옄�뿉 ���븳 �궇吏�(�뀈/�썡/�씪/�떆/遺�/珥�) 援ы븯湲�
	 * @param foramt �궇吏쒗룷留� 
	 * @return 吏��젙�맂�룷留룹쑝濡�(湲곕낯 : yyyy/MM/dd HH:mm:ss) 諛섑솚
	 */
	public static String getDateFormat (String foramt) {
		if (foramt == null || foramt.trim().equals("")) {
			foramt = "yyyy/MM/dd HH:mm:ss";
		}
		SimpleDateFormat formatter = new SimpleDateFormat ( foramt, Locale.KOREA );
		Date currentTime = new Date ( );
		String dTime = formatter.format ( currentTime );
		return dTime;
	}
	
	/**
	 * �듅�젙 �궇吏� �룷留� 臾몄옄(yyyyMMddHHmm) 瑜� �듅�젙 �룷留룹쑝濡� 蹂�寃쏀븯�뒗 寃�.
	 * @param str yyyyMMddHHmm �룷留룹쓽 �씪�옄
	 * @param format �궇吏쒗룷留�
	 * @return yyyyMMddHHmm �룷留룹쓽 �씪�옄�젙蹂대�� �듅�젙�룷留�(湲곕낯 : yyyy/MM/dd HH:mm)�쑝濡� 蹂��솚
	 */
	public static String getDateFormat(String str, String format) {
		
		if (format == null || format.trim().equals("")) {
			format = "yyyy/MM/dd HH:mm";
		}
		
	    SimpleDateFormat iFormatter = new SimpleDateFormat("yyyyMMddHHmm", Locale.KOREA);
	    SimpleDateFormat oFormatter = new SimpleDateFormat(format, Locale.KOREA);
	 
	    Date date = null;
	 
	    long lDate = 0;
	 
	    try {
	 
	        date = iFormatter.parse(str);
	 
	        lDate = date.getTime();
	 
	    } catch (ParseException e) {
	 
	        e.printStackTrace();
	 
	    }
	 
	    return oFormatter.format(lDate);
	 
	}

	
	/**
	 * <pre>
	 * �듅�젙�씪�옄濡� 遺��꽣 �썡 媛�媛� 怨꾩궛
	 * </pre>
	 * @param datestr format 蹂��닔�뿉 �엯�젰�맂 �궇吏� String�젙蹂�
	 * @param addInt 媛�媛먰븷 �썡�젙蹂�
	 * @param foramt �궇吏쒖젙蹂댄룷留�
	 * @return �듅�젙�룷留룹쓽�궇吏�(湲곕낯 : yyyy/MM/dd)�뿉�꽌 �썡 媛�媛먭퀎�궛�븯�뿬 諛섑솚.
	 */
	public static String addMonth (String datestr, int addInt, String foramt) {
		if (foramt == null || foramt.trim().equals("")) {
			foramt = "yyyy/MM/dd";
		}
		SimpleDateFormat format = new SimpleDateFormat(foramt);
		Date date;
		String dTime = "";
		Calendar cal = Calendar.getInstance ( );
		try {
			date = format.parse ( datestr );
			cal.setTime ( date );
			cal.add ( Calendar.MONTH, addInt ); //2媛쒖썡 �쟾....

			SimpleDateFormat formatter = new SimpleDateFormat ( foramt, Locale.KOREA );
			dTime = formatter.format ( cal.getTime() );

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return dTime;
		
	}

	/**
	 * �듅�젙�떖�쓽 留덉�留됱씪�옄 援ы븯湲�
	 * @param year �뀈�룄
	 * @param month �썡�젙蹂�
	 * @param foramt 諛섑솚�븷 �궇吏쒗룷留�
	 * @return 諛섑솚�븷 �궇吏쒗룷留� (湲곕낯 : yyyy.MM.dd HH:mm:ss)
	 */
	public static String getLastDay(int year, int month, String foramt) {
		if (foramt == null || foramt.trim().equals("")) {
			foramt = "yyyy.MM.dd HH:mm:ss";
		}
		GregorianCalendar cld = new GregorianCalendar ( year, month - 1, 1 );
		
		cld.set(year, month, cld.getActualMaximum ( Calendar.DAY_OF_MONTH ) );

		SimpleDateFormat formatter = new SimpleDateFormat ( foramt, Locale.KOREA );
		String dTime = formatter.format ( cld.getTime() );
		return dTime;
		
	}

	/**
	 * <pre>
	 * �듅�젙�씪�옄濡� 遺��꽣 �씪�젙蹂� 媛�媛� 怨꾩궛
	 * </pre>
	 * @param datestr format 蹂��닔�뿉 �엯�젰�맂 �궇吏� String�젙蹂�
	 * @param addday 媛�媛먰븷 �씪�젙蹂�
	 * @param foramt �궇吏쒖젙蹂댄룷留�
	 * @return �듅�젙�룷留룹쓽�궇吏�(湲곕낯 : yyyy/MM/dd)�뿉�꽌 �엯�젰�맂 �씪�쓣 媛�媛먭퀎�궛�븯�뿬 諛섑솚.
	 * @return String �씪�옄媛�怨꾩궛�맂�궇吏쒕Ц�옄�뿴
	 */
	public static String addDay(String datestr, int addday, String foramt) {
		if (foramt == null || foramt.trim().equals("")) {
			foramt = "yyyy/MM/dd";
		}
		SimpleDateFormat format = new SimpleDateFormat(foramt);
		Date date;
		String dTime = "";
		Calendar cal = Calendar.getInstance ( );
		try {
			date = format.parse ( datestr );
			cal.setTime ( date );
			cal.add ( Calendar.DATE, addday ); //2媛쒖썡 �쟾....

			SimpleDateFormat formatter = new SimpleDateFormat ( foramt, Locale.KOREA );
			dTime = formatter.format ( cal.getTime() );

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return dTime;
	}
	
	/**
	 * <pre>
	 * �듅�젙�씪�옄�쓽 �슂�씪 援ы븯湲�
	 * </pre>
	 * @param cal Calendar Object
	 * @return �씪/�썡/�솕/�닔/紐�/湲�/�넗�슂�씪 諛섑솚
	 */
	public static String getDayOfWeek(Calendar cal) {
		String m_week = "";
		int day_of_week = cal.get ( Calendar.DAY_OF_WEEK );
		if ( day_of_week == 1 )
			m_week="�씪�슂�씪";
		else if ( day_of_week == 2 )
			m_week="�썡�슂�씪";
		else if ( day_of_week == 3 )
			m_week="�솕�슂�씪";
		else if ( day_of_week == 4 )
			m_week="�닔�슂�씪";
		else if ( day_of_week == 5 )
			m_week="紐⑹슂�씪";
		else if ( day_of_week == 6 )
			m_week="湲덉슂�씪";
		else if ( day_of_week == 7 )
			m_week="�넗�슂�씪";
		
		
		return m_week;
	}
	
	/**
	 * <pre>
	 * �몢 �궇吏쒓컙 李⑥씠 援ы븯湲� 
	 * </pre>
	 * @param cal1 怨꾩궛�븷 Calendar Object1
	 * @param cal2 怨꾩궛�븷 Calendar Object2
	 * @return �몢 �궇吏� 李⑥씠諛섑솚
	 */
	public static int getTermDay(Calendar cal1, Calendar cal2) {
		int count = 0;
		while ( !cal2.after ( cal1 ) )
		{
			count++;
			cal2.add ( Calendar.DATE, 1 ); // �떎�쓬�궇濡� 諛붾��
		}
		
		return count;
	}
	
	/**
	 * <pre>
	 * �궇吏� �삎�깭 諛� �궇吏� 媛믪씠 �쑀�슚�븳吏� 泥댄겕�븯�뿬 諛섑솚
	 * </pre>
	 * @param dateStr �궇吏쏶tring媛�
	 * @param foramt �궇吏쒗룷留�
	 * @return �궇吏쒓��쑀�슚�븯硫� true 洹몃젃吏� �븡�쑝硫� false
	 */
	public static boolean getValidDate(String dateStr, String foramt) {
		boolean dateValidity = true;
		try 
		{
			SimpleDateFormat format = new SimpleDateFormat(foramt);
			Date dt2 = format.parse ( dateStr ); 
		}
		catch ( ParseException e ) 
		{ 
				dateValidity = false; 
		}
		catch ( IllegalArgumentException e ) { 
				dateValidity = false; 
		}
		return dateValidity;

	}
	

    /**
     * SimpleDateFormat �씠 yyyy/MM/dd �쓣 �궗�슜.
     */
    public static SimpleDateFormat dateSqlFormat = new SimpleDateFormat("yyyy/MM/dd");

    /**
     * SimpleDateFormat �씠 yyyyMMdd �쓣 �궗�슜.
     */
    public static SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");

    // FN_NZZ_PRINTLOCALDATE

    /**
     * <pre>
     * ddMMyyyyHHmmss �삎�깭�쓽 �궇吏쒗룷留룹쓣 yyyy/MM/dd HH:mm:ss 濡� 蹂��솚
     * </pre>
     * @param input ddMMyyyyHHmmss�삎�깭�쓽 �궇吏� string 
     * @return yyyy/MM/dd HH:mm:ss�삎�깭�쓽 �궇吏쒕줈 蹂��솚
     */
    public static String FN_NZZ_PRINTLOCALDATETIME(String input) {
        String result = "";
        if (input.length() == 14) {
            result = (input.substring(6, 8) + "/" + input.substring(4, 6) + "/" + input.substring(0, 4) + " " + input.substring(8, 10) + ":" + input.substring(10, 12) + ":" + input.substring(12, 14));
        } else {
            result = "";
        }
        return result;
    }

    /**
     * <pre>
     * �쁽�옱�쓽 �썡�젙蹂대�� 諛섑솚
     * </pre>
     * @return �썡�젙蹂� 諛섑솚 (�몢�옄由щ줈 諛섑솚, ex: 1�� 01 , 10�� 10)
     */
    public static String getCurrentMonthOnly() {
        int month = getMonth(getCurrentDate());
        String result = "";
        if (month < 10)
            result = "0" + month;
        else
            result = Integer.toString(month);
        return result;
    }

    /**
     * <pre>
     * �엯�젰�맂 �씪�옄�쓽 �썡�젙蹂대�� 諛섑솚.
     * �엯�젰�맂 �씪�옄 �젙蹂댁뿉 - , / 媛� �엳�쑝硫� �씠遺�遺꾩쓣 �젣嫄고븯�뿬 yyyyMMdd 媛숈� �룷留룹쑝濡� 蹂�寃쏀븯�뿬 �썡�젙蹂대컲�솚
     * </pre>
     * @param date �씪�옄 String
     * @return �썡�젙蹂� (�몢�옄由щ줈 諛섑솚, ex: 1�� 01 , 10�� 10) 
     */
    public static int getMonth(String date) {
        date = deleteSlash(date);
        date = deleteDash(date);
        return Integer.parseInt(date.substring(4, 6));
    }

    /**
     * <pre>
     * �쁽�옱 �씪�옄 諛섑솚
     * </pre>
     * @return yyyy/MM/dd �삎�깭濡� 諛섑솚
     */
    public static String getCurrentDate() {
        DateFormat df = new SimpleDateFormat("yyyy" + "/" + "MM" + "/" + "dd");
        return df.format(new Date(System.currentTimeMillis()));
    }

    /**
     * <pre>
     * �엯�젰�맂 �씪�옄以묒뿉 / 臾몄옄媛� �엳�쑝硫� �궘�젣 泥섎━瑜� �븿 
     * </pre>
     * @param dateStr �씪�옄 String
     * @return / �궘�젣�썑 諛섑솚
     */
    private static String deleteSlash(String dateStr) {
        return dateStr.replaceAll("/", "");
    }

    /**
     * <pre>
     * �엯�젰�맂 �씪�옄以묒뿉 - 臾몄옄媛� �엳�쑝硫� �궘�젣 泥섎━瑜� �븿
     * </pre>
     * @param dateStr �씪�옄 String
     * @return - �궘�젣�썑 諛섑솚
     */
    private static String deleteDash(String dateStr) {
        return dateStr.replaceAll("-", "");
    }

    /**
     * <pre>
     * �쁽�옱 �씪�옄 �젙蹂대�� yyMMddHHmmssSSS �룷留룹쑝濡� 諛섑솚
     * </pre>
     * @return yyMMddHHmmssSSS �룷留룹쑝濡� 諛섑솚
     */
    public static String getShortTimeStampString() {
        java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyMMddHHmmssSSS", java.util.Locale.KOREA);
        return formatter.format(new java.util.Date());
    }

    /**
     * <pre>
     * �쁽�옱 �씪�옄 �젙蹂대�� yyyyMMddHHmmss �룷留룹쑝濡� 諛섑솚
     * </pre>
     * @return yyyyMMddHHmmss �룷留룹쑝濡� 諛섑솚
     */
    public static String getShortTimeStampString2() {
        java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyyMMddHHmmss", java.util.Locale.KOREA);
        return formatter.format(new java.util.Date());
    }

    /**
     * ddmmyyyy�삎�떇�쓽 �궇吏� 臾몄옄�뿴�쓣 諛쏆븘 yyyymmdd�삎�쑝濡� 諛섑솚�븳�떎.
     * 
     * @param ddmmyyyy ddmmyyyy�삎�떇 �궇吏쒖젙蹂�
     * @return yyyymmdd �삎�떇�쑝濡� 諛섑솚. 臾몄젣媛� �엳�쑝硫� 0�쑝濡� 諛섑솚
     */
    public static int getDate2(String ddmmyyyy) {
        if (ddmmyyyy != null && ddmmyyyy.length() == 8 && isDigit(ddmmyyyy)) {
            return Integer.parseInt(ddmmyyyy.substring(4, 8) + ddmmyyyy.substring(2, 4) + ddmmyyyy.substring(0, 2));
        }
        return 0;
    }

    /**
     * yyyymmdd�삎�떇�쓽 �궇吏� 臾몄옄�뿴�쓣 諛쏆븘 ddmmyyyy�삎�떇�쑝濡� 諛섑솚�븳�떎
     * 
     * @param yyyymmdd yyyymmdd �삎�떇�쓽 �궇吏쒖젙蹂�
     * @return ddmmyyyy �삎�떇�쑝濡� 諛섑솚. 臾몄젣媛� �엳�쑝硫� 0�쑝濡� 諛섑솚
     */
    public static int getDateCovYYYYMMDD(String yyyymmdd) {
        if (yyyymmdd != null && yyyymmdd.length() == 8 && isDigit(yyyymmdd)) {
            return Integer.parseInt(yyyymmdd.substring(6, 8) + yyyymmdd.substring(4, 6) + yyyymmdd.substring(0, 4));
        }
        return 0;
    }

    /**
     * ddmmyyyy�삎�떇�쓽 �궇吏� 臾몄옄�뿴�쓣 諛쏆븘 Date�삎�쑝濡� 諛섑솚�븳�떎.
     * 
     * @param ddmmyyyy �뀈�썡�씪(�삁:29032003 �쓣 2003�뀈 3�썡 29�씪 �쑝濡� 蹂��솚)
     * @return �궇吏� �몴湲곗뿉 �쟻�젅移� �븡�� 臾몄옄�뿴 �씠�씪硫� null�쓣 諛섑솚�븳�떎.
     */
    public static Date getDate(String ddmmyyyy) {
        if (ddmmyyyy != null && ddmmyyyy.length() == 8 && isDigit(ddmmyyyy)) {
            Calendar cal = Calendar.getInstance();
            cal.set(Integer.parseInt(ddmmyyyy.substring(4, 8)), Integer.parseInt(ddmmyyyy.substring(2, 4)) - 1, Integer.parseInt(ddmmyyyy.substring(0, 2)));
            return cal.getTime();
        }
        return null;
    }

    /**
     * 臾몄옄�뿴�씠 �닽�옄�씤吏� 泥댄겕
     * 
     * @param digitStr �닽�옄濡� 援ъ꽦�맂 臾몄옄�뿴
     * @return �닽�옄濡� 援ъ꽦�릺�뼱 �엳�쑝硫� true, �븘�땲硫� false
     */
    private static boolean isDigit(String digitStr) {
        if (digitStr != null) {
            for (int i = 0; i < digitStr.length(); i++)
                if (!Character.isDigit(digitStr.charAt(i)))
                    return false;
        }
        return true;
    }

    /**
     * 2022-01-16 unixtime을 date string으로 변환.
     * @param timestampStr
     * @param timezone ( ex : "GMT+9")
     * @return
     */
    public static String getTimestampToDate(String timestampStr, String timezone){
        long timestamp = Long.parseLong(timestampStr);
        Date date = new java.util.Date(timestamp*1000L); 
        SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
        sdf.setTimeZone(java.util.TimeZone.getTimeZone(timezone)); 
        String formattedDate = sdf.format(date);
        return formattedDate;
    } 
}
