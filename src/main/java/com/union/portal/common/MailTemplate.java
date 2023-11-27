/**
 * 
 */
package com.union.portal.common;

import java.text.DecimalFormat;

/**
 * 메일 메시지 제목과 내용정보를 조회해서 가져올수 있도록 처리.
 * @author tryn
 *
 */
public class MailTemplate {
	
	private static String footer = "Thank you for your interest.\n"
			+ "If you have any questions or connect with us on phone.\n"
			+ "Email : support@unionmks.com\n"
			+ "Union MK";
	
	/**
	 * 계좌 계설시 메일 템플릿
	 * 2021-09-25 다운로드 링크 작업
	 * 2021-09-29 plantype add
	 * @param mtype 제목/내용 (title/contents)
	 * @param login
	 * @param main_password
	 * @param investor_password
	 * @param downloadlink
	 * @param planType
	 * @return
	 */
	public static String getAccountCreate(String mtype, Long login, String main_password, String investor_password, String downloadlink, String planType) {
		
		String resultStr = "";

		if (mtype.equals("title")) {
			resultStr = "Union MK Account Issuance Completion Notice";
		} else {
			StringBuffer htmlstr = new StringBuffer();
			htmlstr.append("<html>\n");
			htmlstr.append("<body>\n");
			htmlstr.append("<pre>\n");
			htmlstr.append("Dear Valued Client,\n");
			htmlstr.append("\n");
			htmlstr.append("Your account has been opened.\n");
			htmlstr.append("\n");
			htmlstr.append("Login information is as follows.\n");
			htmlstr.append("\n");
			htmlstr.append("Information\n");
			htmlstr.append("\n");
			htmlstr.append("<table border=1>\n");
			htmlstr.append("<tr>\n");
			htmlstr.append("	<th width=\"200px\">Login</th>\n");
			htmlstr.append("	<td width=\"200px\">"+login+"</td>\n");
			htmlstr.append("</tr>\n");
			if (planType != null && !planType.equals("Basic") && !planType.equals("Dadream"))  {
				htmlstr.append("<tr>\n");
				htmlstr.append("	<th>Password</th>\n");
				htmlstr.append("	<td>"+main_password+"</td>\n");
				htmlstr.append("</tr>\n");
			}
			htmlstr.append("<tr>\n");
			htmlstr.append("	<th>Investor Password</th>\n");
			htmlstr.append("	<td>"+investor_password+"</td>\n");
			htmlstr.append("</tr>\n");
			htmlstr.append("<tr>\n");
			htmlstr.append("	<th>Server</th>\n");
			htmlstr.append("	<td>UnionMKLLC-Live</td>\n");
			htmlstr.append("</tr>\n");
			htmlstr.append("</table>\n");
			htmlstr.append("\n");
			htmlstr.append("<a href='https://download.mql5.com/cdn/web/union.mk.llc/mt5/unionmkllc5setup.exe'>MT5 Terminal Download</a>\n");
			htmlstr.append("		\n");
			htmlstr.append(footer);
			htmlstr.append("		\n");
			htmlstr.append("</pre>\n");	
			htmlstr.append("</body>\n");
			htmlstr.append("</html>\n");
			
			resultStr = htmlstr.toString(); 
		}
		
		return resultStr; 
	}
	
	/**
	 * 지갑에서 mt5 계좌로 입금 처리하는 경우 메일 발송 템플릿
	 * @param mtype
	 * @param login
	 * @param price
	 * @return
	 */
	public static String getWalletToAccount(String mtype, Long login, Double price) {
		
		String resultStr = "";

		if (mtype.equals("title")) {
			resultStr = "Deposit has been completed from your wallet to MT5 "+login+" account.";
		} else {
			DecimalFormat formatter = new DecimalFormat("###,###.####");
			String pricestr = formatter.format(price);
			
			StringBuffer htmlstr = new StringBuffer();
			htmlstr.append("<html>\n");
			htmlstr.append("<body>\n");
			htmlstr.append("<pre>\n");
			htmlstr.append(" "+pricestr+" USD has been deposited from your wallet to MT5 Account "+login+".\n");
			htmlstr.append("		\n");
			htmlstr.append(footer);
			htmlstr.append("		\n");
			htmlstr.append("</pre>\n");	
			htmlstr.append("</body>\n");
			htmlstr.append("</html>\n");
			
			resultStr = htmlstr.toString(); 
		}
		
		return resultStr; 
	}
	
	/**
	 * mt5 계좌에서 지갑으로 출금 처리하는 경우 메일 발송 템플릿
	 * @param mtype
	 * @param login
	 * @param price
	 * @return
	 */
	public static String getAccountToWallet(String mtype, Long login, Double price) {
		
		String resultStr = "";

		if (mtype.equals("title")) {
			resultStr = "Withdrawal from your MT5 Account "+login+" to your wallet.";
		} else {
			DecimalFormat formatter = new DecimalFormat("###,###.####");
			String pricestr = formatter.format(price);
			
			StringBuffer htmlstr = new StringBuffer();
			htmlstr.append("<html>\n");
			htmlstr.append("<body>\n");
			htmlstr.append("<pre>\n");
			htmlstr.append(" "+pricestr+" USD has been withdrawn from your MT5 "+login+" account to your wallet. \n");
			htmlstr.append("		\n");
			htmlstr.append(" You can withdraw to cryptocurrency wallet or deposit to another MT5 Account. \n");
			htmlstr.append("		\n");
			htmlstr.append(footer);
			htmlstr.append("		\n");
			htmlstr.append("</pre>\n");	
			htmlstr.append("</body>\n");
			htmlstr.append("</html>\n");
			
			resultStr = htmlstr.toString(); 
		}
		
		return resultStr; 
	}	
	
	/**
	 * 은행으로 입금을 하고, 관리자에서 입금 처리가 완료되면 메일 발송
	 * @param mtype
	 * @param price
	 * @return
	 */
	public static String getBankToWallet(String mtype, Double price) {
		
		String resultStr = "";

		if (mtype.equals("title")) {
			resultStr = "Your bank transfer has arrived.";
		} else {
			DecimalFormat formatter = new DecimalFormat("###,###.####");
			String pricestr = formatter.format(price);
			
			StringBuffer htmlstr = new StringBuffer();
			htmlstr.append("<html>\n");
			htmlstr.append("<body>\n");
			htmlstr.append("<pre>\n");
			htmlstr.append(" Your bank transfer "+pricestr+" USD has arrived.\n");
			htmlstr.append("		\n");
			htmlstr.append(" After logging into Union MK CRM you check your wallet.\n");
			htmlstr.append("		\n");
			htmlstr.append(" Trade after depositing in the Wallet to MT5 Account menu. \n");
			htmlstr.append("		\n");
			htmlstr.append(" Thanks you.\n");
			htmlstr.append("		\n");
			htmlstr.append(footer);
			htmlstr.append("		\n");
			htmlstr.append("</pre>\n");	
			htmlstr.append("</body>\n");
			htmlstr.append("</html>\n");
			
			resultStr = htmlstr.toString(); 
		}
		
		return resultStr; 
	}	
	
	/**
	 * 출금요청 처리 관련 메일.
	 * @param mtype
	 * @return
	 */
	public static String getWalletToBank(String mtype) {
		
		String resultStr = "";

		if (mtype.equals("title")) {
			resultStr = "The withdrawal request has been completed.";
		} else {
			//DecimalFormat formatter = new DecimalFormat("###,###.####");
			//String pricestr = formatter.format(price);
			
			StringBuffer htmlstr = new StringBuffer();
			htmlstr.append("<html>\n");
			htmlstr.append("<body>\n");
			htmlstr.append("<pre>\n");
			htmlstr.append(" The withdrawal request from your wallet to the your cryptocurrency wallet has been completed. \n");
			htmlstr.append("		\n");
			htmlstr.append(" Remittance between cryptocurrency takes 10-60 minutes.\n");
			htmlstr.append("		\n");
			htmlstr.append(footer);
			htmlstr.append("		\n");
			htmlstr.append("</pre>\n");	
			htmlstr.append("</body>\n");
			htmlstr.append("</html>\n");
			
			resultStr = htmlstr.toString(); 
		}
		
		return resultStr; 
	}
	

	/**
	 * 내부이체 처리 메일
	 * @param mtype
	 * @param withdrawalLogin
	 * @param depositLogin
	 * @param price
	 * @return
	 */
	public static String getAccountToAccount(String mtype, Long withdrawalLogin, Long depositLogin, Double price) {
		
		String resultStr = "";

		if (mtype.equals("title")) {
			resultStr = "The transfer between accounts has been completed.";
		} else {
			DecimalFormat formatter = new DecimalFormat("###,###.####");
			String pricestr = formatter.format(price);
			
			StringBuffer htmlstr = new StringBuffer();
			htmlstr.append("<html>\n");
			htmlstr.append("<body>\n");
			htmlstr.append("<pre>\n");
			htmlstr.append(" The transfer between your accounts has been completed \n");
			htmlstr.append("		\n");
			htmlstr.append(" The transfer details are as follows.\n");
			htmlstr.append("		\n");
			htmlstr.append(" - "+withdrawalLogin+" MT5 account to "+depositLogin+ " account "+pricestr+" USD\n");
			htmlstr.append("		\n");
			htmlstr.append(footer);
			htmlstr.append("		\n");
			htmlstr.append("</pre>\n");	
			htmlstr.append("</body>\n");
			htmlstr.append("</html>\n");
			
			resultStr = htmlstr.toString(); 
		}
		
		return resultStr; 
	}
	
	
	/**
	 * Email 인증 URL 발송.
	 * @param mtype
	 * @param authURL
	 * @return
	 */
	public static String getEmailAuth(String mtype, String authURL) {
		
		String resultStr = "";

		if (mtype.equals("title")) {
			resultStr = "Union MK : Please confirm your email";
		} else {

			StringBuffer htmlstr = new StringBuffer();
			htmlstr.append("<html>\n");
			htmlstr.append("<body>\n");
			htmlstr.append("<pre>\n");
			htmlstr.append(" Thank you for creating your account. Please confirm your email address by clicking Confirm below: \n");
			htmlstr.append("		\n");
			htmlstr.append(" Email Authentication URL : <a href='"+authURL+"' target='_blank'>"+authURL+ "</a> \n");
			htmlstr.append("		\n");
			htmlstr.append(footer);
			htmlstr.append("		\n");
			htmlstr.append("</pre>\n");	
			htmlstr.append("</body>\n");
			htmlstr.append("</html>\n");
			
			resultStr = htmlstr.toString(); 
		}
		
		return resultStr; 
	}
	
	
public static String getEmailAuthCode(String mtype, String Code) {
		
		String resultStr = "";

		if (mtype.equals("title")) {
			resultStr = "Union MK : Account Create Verification Code";
		} else {

			StringBuffer htmlstr = new StringBuffer();
			htmlstr.append("<html>\n");
			htmlstr.append("<body>\n");
			htmlstr.append("<pre>\n");
			htmlstr.append(" Thank you for creating your account. Your Verification Code is: ");
			htmlstr.append("		\n");
			htmlstr.append("<h4>"+Code+"</h4>\n");
			htmlstr.append("		\n");
			htmlstr.append(footer);
			htmlstr.append("		\n");
			htmlstr.append("</pre>\n");	
			htmlstr.append("</body>\n");
			htmlstr.append("</html>\n");
			
			resultStr = htmlstr.toString(); 
		}
		
		return resultStr; 
	}


	
	/**
	 * 임시 비밀번호 발행.
	 * @param mtype
	 * @param passwordstr
	 * @return
	 */
	public static String getChangeTempPassword(String mtype, String passwordstr) {
		
		String resultStr = "";

		if (mtype.equals("title")) {
			resultStr = "A temporary password has been generated.";
		} else {

			StringBuffer htmlstr = new StringBuffer();
			htmlstr.append("<html>\n");
			htmlstr.append("<body>\n");
			htmlstr.append("<pre>\n");
			htmlstr.append(" A temporary password has been generated. \n");
			htmlstr.append("		\n");
			htmlstr.append(" Temporary password: "+passwordstr+"  \n");
			htmlstr.append("		\n");
			htmlstr.append(" Please change your password after logging in. \n");
			htmlstr.append("		\n");
			htmlstr.append(footer);
			htmlstr.append("		\n");
			htmlstr.append("</pre>\n");	
			htmlstr.append("</body>\n");
			htmlstr.append("</html>\n");
			
			resultStr = htmlstr.toString(); 
		}
		
		return resultStr; 
	}		
	

	/**
	 * 회원승인 완료 메일
	 * @param mtype
	 * @return
	 */
	public static String getUserApproved(String mtype) {
		
		String resultStr = "";

		if (mtype.equals("title")) {
			resultStr = "Your information has been approved.";
		} else {

			StringBuffer htmlstr = new StringBuffer();
			htmlstr.append("<html>\n");
			htmlstr.append("<body>\n");
			htmlstr.append("<pre>\n");
			htmlstr.append(" Your information has been approved. \n");
			htmlstr.append("		\n");
			htmlstr.append(" If you can log into Union MK CRM, you can create an account.\n");
			htmlstr.append("		\n");
			htmlstr.append(footer);
			htmlstr.append("		\n");
			htmlstr.append("</pre>\n");	
			htmlstr.append("</body>\n");
			htmlstr.append("</html>\n");
			
			resultStr = htmlstr.toString(); 
		}
		
		return resultStr; 
	}		
	
	/**
	 * 해지 안내 이메일
	 * @param mtype
	 * @param login
	 * @param planType (Basic /Dadrim)
	 * @return
	 */
	public static String getClosedAccount(String mtype, Long login, String planType) {
		
		String resultStr = "";

		if (mtype.equals("title")) {
			resultStr = "Your "+planType+" Plan account has been terminated.";
		} else {

			StringBuffer htmlstr = new StringBuffer();
			htmlstr.append("<html>\n");
			htmlstr.append("<body>\n");
			htmlstr.append("<pre>\n");
			htmlstr.append(" Your "+planType+" Account "+login+" has been canceled. \n");
			htmlstr.append("		\n");
			htmlstr.append(" Closed accounts cannot be recovered. \n");
			htmlstr.append("		\n");
			htmlstr.append(footer);
			htmlstr.append("		\n");
			htmlstr.append("</pre>\n");	
			htmlstr.append("</body>\n");
			htmlstr.append("</html>\n");
			
			resultStr = htmlstr.toString(); 
		}
		
		return resultStr; 
	}		
}
