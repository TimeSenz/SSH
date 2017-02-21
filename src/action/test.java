package action;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.aspectj.weaver.patterns.ThisOrTargetAnnotationPointcut;

/**
 * @author Administrator
 *
 */
public class test {
/********************* ****************************************begin**************************************************************
*******************************************************贾凡-定时器spring-2015-01-14***********************************************
*********************************************************************************************************************************/
	public static void a(){
		int num = -1;
		SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
		while(num!=0){
			Timestamp nowtime = new Timestamp(System.currentTimeMillis());
			DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
			Date date1=nowtime;   
			Date beginDate = new Date();		
			Calendar date = Calendar.getInstance();		
			date.setTime(beginDate);		
			date.set(Calendar.DATE, date.get(Calendar.DATE) + 1);	
			String timea = f.format(date.getTime())+" 00:00:00";
			try {
				//Date date2=sdf.parse(timea);  
				Date date2=sdf.parse("2015-01-16 13:17:00"); 
				long l = date2.getTime() - date1.getTime();  
				num = (int)l;
				System.out.println(num);
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		System.out.println("num="+num);
		if(num==0){
			System.out.println("时间为24点，调用方法");
			try {
				//两分钟后再次调用此方法
				System.out.println("定时方法执行");
				Thread.sleep(120000);
				a();
			} catch (InterruptedException e) {
					e.printStackTrace();
			}
			
			/*new Thread(new Runnable(){
				@Override
				public void run(){
					boolean isRun = true;
					int a = 1;
					while(isRun){
						Timestamp nowtime = new Timestamp(System.currentTimeMillis());
						SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
						String time = sdf.format(nowtime);
						//if(a == 1){
							System.out.println("定时器触发");
							//ResultSetsql();
							try {
								Thread.sleep(2000);
								System.out.println(time);
							} catch (InterruptedException e) {
									e.printStackTrace();
							}
						//}
					}  
				}
			}).start();*/
		}
	}
/*************************************************************end****************************************************************
*******************************************************贾凡-定时器spring-2015-01-14***********************************************
*********************************************************************************************************************************/
		
	public static void main(String[] args) {

		a();
	
		
		// TODO Auto-generated method stub
		
//		System.out.println(nowtime);
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		String datestr = sdf.format(nowtime);
//		System.out.println(datestr);
//		
		/*SimpleDateFormat dft = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");	
		
		String c = "2015-01-08 15:47:15";
		dft.setLenient(false);
		try {
			Timestamp d = new Timestamp(dft.parse(c).getTime());
			System.out.println(d);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		//Date beginDate = new Date();		
		Calendar date = Calendar.getInstance();	*/	
		//date.setTime(beginDate);		
		//date.set(Calendar.DATE, date.get(Calendar.DATE) - 30);		
		//Date endDate = dft.parse(dft.format(date.getTime()));//获取七天之前的日期
//		System.out.println(dft.format(date.getTime()));
//		System.out.println(dft.format(nowtime));
//		  String datestr = sdf.format(nowdate);
//		Timestamp nowtime1 = new Timestamp(System.currentTimeMillis()-30*24*60 * 60 * 1000);
//		System.out.println(nowtime1);
	}

}
