package com.meeting.core.servlet;

import java.io.*;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.*;
import org.apache.tools.zip.ZipEntry;
import org.apache.tools.zip.ZipOutputStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meeting.core.bean.Register;
import com.meeting.core.service.AuthorityService;
import com.meeting.core.service.RegisterService;

/**
 * 2016/9/13 00:39:21
 * @author 白云飞
 *
 */
public class AuthorityServlet extends BaseServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public String index(HttpServletRequest req , HttpServletResponse resp){
		return "index.jsp";
	}

	/**
	 * 签到
	 * @param req
	 * @param resp
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public String signinByTel(HttpServletRequest req , HttpServletResponse resp){
		RegisterService service = new RegisterService();
		String telphone = req.getParameter("telphone");
		Register reg = new Register();
		reg.setTelphone(telphone);
		try {
			if(service.registerSignin(reg)){
				Map register = service.getRegisterByTelphone(telphone);
				req.setAttribute("telphone", telphone);
				if(!register.isEmpty()){
					req.setAttribute("register", register);
					return "ctx:signinSuccess.jsp";
				}else{
					req.setAttribute("errormsg", "对不起，用户不存在！");
					return "ctx:signinError.jsp";
				}
			}else{
				req.setAttribute("errormsg", "对不起，用户不存在！");
				return "ctx:signinError.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("errormsg", "对不起，用户不存在！");
			return "ctx:signinError.jsp";
		}
	}
	/**
	 * 登录
	 * @param req
	 * @param resp
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public String login(HttpServletRequest req , HttpServletResponse resp){
		AuthorityService service = new AuthorityService();
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		Map user = service.getUser(username, password);
		if(user!=null){
			req.getSession().setAttribute("user", user);
			List<Map<String,Object>> userFuncs = service.getUserFuncs(user.get("id").toString());
			if(userFuncs==null||userFuncs.size()==0){
				req.setAttribute("errormsg", "对不起，该用户无权访问系统，请联系管理员予以授权！");
				return "login.jsp";
			}
			Set<String> userUrls = new HashSet<String>();
			for(Map<String,Object> uf : userFuncs){
				if(uf.get("url")!=null)
					userUrls.add(uf.get("url").toString());
			}
			req.getSession().setAttribute("auths", userUrls);
			return "redirect:report.do?method=report";
		} else {
			req.setAttribute("errormsg", "对不起，用户不存在！");
			return "login.jsp";
		}
	}
	
	/**
	 * 退出
	 * @param req
	 * @param resp
	 * @return
	 */
	public String logout(HttpServletRequest req , HttpServletResponse resp){
		req.getSession().invalidate();
		return "login.jsp";
	}
	
	/**
	 * 没有权限时跳转的页面
	 * @param req
	 * @param resp
	 * @return
	 */
	public String noauth(HttpServletRequest req , HttpServletResponse resp){
		return "noauth.jsp";
	}
	
	/**
	 * 跳转到用户管理页
	 * @param req
	 * @param resp
	 * @return
	 */
	public String user(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/user.jsp";
	}
	
	/**
	 * 跳转到角色管理页
	 * @param req
	 * @param resp
	 * @return
	 */
	public String role(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/role.jsp";
	}
	
	/**
	 * 跳转到模块管理页
	 * @param req
	 * @param resp
	 * @return
	 */
	public String func(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/func.jsp";
	}
	
	/**
	 * 跳转到修改密码页
	 * @param req
	 * @param resp
	 * @return
	 */
	public String pwd(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/pwd.jsp";
	}
	
	/**
	 * 跳转到会员管理页
	 * @param req
	 * @param resp
	 * @return
	 */
	public String register(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/register.jsp";
	}
	
	/**
	 * 跳转到订单管理页
	 * @param req
	 * @param resp
	 * @return
	 */
	public String order(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/order.jsp";
	}
	
	/**
	 * 跳转到订单管理(BC)
	 * @param req
	 * @param resp
	 * @return
	 */
	public String bcorder(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/bcorder.jsp";
	}
	/**
	 * 跳转到邮件管理
	 * @param req
	 * @param resp
	 * @return
	 */
	public String email(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/email.jsp";
	}
	
	/**
	 * 跳转到通知管理
	 * @param req
	 * @param resp
	 * @return
	 */
	public String notice(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/notice.jsp";
	}
	/**
	 * 跳转到邮箱设置
	 * @param req
	 * @param resp
	 * @return
	 */
	public String mailSet(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/mailSet.jsp";
	}

	/**
	 * 跳转到后台资料管理
	 * @param req
	 * @param resp
	 * @return
	 */
	public String resource(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/resource.jsp";
	}
	
	/**
	 * 跳转到后台工作人员签到模块
	 * @param req
	 * @param resp
	 * @return
	 */
	public String signin(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/signin.jsp";
	}

	/**
	 * 论文下载
	 * @param req
	 * @param resp
	 * @return
	 */
	public String download(HttpServletRequest req , HttpServletResponse resp){
		String fileid = req.getParameter("fileid");
		RegisterService service = new RegisterService();
		InputStream in = null;
		OutputStream out = null;
		Map file = null;
		try {
			file = service.getThesis(fileid);
			if(file==null){
				req.getSession().removeAttribute("lunwen");
				return "redirect:index.jsp?nofile=true";
			}
			in = ((Blob)file.get("file")).getBinaryStream();
			out = resp.getOutputStream();
			resp.setContentType("application/octet-stream");
			String filename = file.get("filename")+"."+file.get("type");
			//以下两行处理下载文件名为注册人员姓名
			Map reg = service.getRegisterById(file.get("registerid").toString());
			filename = reg.get("nickname")+"."+file.get("type");

			filename = new String(filename.getBytes("utf-8"),"ISO-8859-1");
			resp.addHeader("Content-Disposition", "attachment; filename="+filename);
			resp.setCharacterEncoding("UTF-8");
			int b = -1;
			while((b=in.read())!=-1){
				out.write(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public String forgotPwd(HttpServletRequest req , HttpServletResponse resp){
		RegisterService service = new RegisterService();
		String email = req.getParameter("email");
		if(service.sendEmailToRegister(email)){
			req.setAttribute("resetPwdEmail", email);
			return "ctx:forgotPwdSuccess.jsp";
		} else {
			req.setAttribute("errormsg", "<b style='color:red;'>对不起，该邮箱注册用户不存在！</b><br/>");
			return "ctx:forgotPwd.jsp";
		}
	}
	
	public String resetPwd(HttpServletRequest req , HttpServletResponse resp){
		String registerid = req.getParameter("regid");
		RegisterService service = new RegisterService();
		Map register = service.getRegisterById(registerid);
		req.setAttribute("regid", registerid);
		req.setAttribute("regemail", register.get("email").toString());
		return "ctx:resetPwd.jsp";
	}
	
	public String resetPwdOK(HttpServletRequest req , HttpServletResponse resp){
		String regid = req.getParameter("regid");
		String regpwd = req.getParameter("regpwd");
		
		RegisterService service = new RegisterService();
		if(service.updateRegisterPwd(regid,regpwd))
			return "ctx:resetPwdSuccess.jsp";
		else {
			req.setAttribute("errormsg", "修改密码失败！");
			return "ctx:resetPwd.jsp";
		}
	}

	/**
	 * 批量下载文件
	 */
	public void downloadFiles(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("UTF-8");
			String regids = request.getParameter("regids");
			RegisterService service = new RegisterService();

			List<Map> fileList = service.getThesisByRegisterIds(regids);

			List<File> files = new ArrayList<File>();
			for(Map file : fileList){
				InputStream in = ((Blob)file.get("file")).getBinaryStream();
				File f = new File(file.get("filename")+"."+file.get("type"));
				inputstreamtofile(in,f);
				files.add(f);
			}
			String fileName = UUID.randomUUID().toString() + ".zip";
			//在服务器端创建打包下载的临时文件
			String outFilePath =  fileName;
			File file = new File(outFilePath);
			//文件输出流
			FileOutputStream outStream = new FileOutputStream(file);
			//压缩流
			ZipOutputStream toClient = new ZipOutputStream(outStream);
			toClient.setEncoding("gbk");
			zipFile(files, toClient);
			toClient.close();
			outStream.close();
			this.downloadZip(file, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	/**
	 * 压缩文件列表中的文件
	 * @param files
	 * @param outputStream
	 * @throws IOException
	 */
	public static void zipFile(List files, ZipOutputStream outputStream) throws IOException,ServletException
	{
		try
		{
			int size = files.size();
			//压缩列表中的文件
			for(int i = 0; i < size; i++)
			{
				File file = (File) files.get(i);
				zipFile(file, outputStream);
				file.delete();//删除文件
			}
		}
		catch(IOException e)
		{
			throw e;
		}
	}
	/**
	 * 将文件写入到zip文件中
	 * @param inputFile
	 * @param outputstream
	 * @throws Exception
	 */
	public static void zipFile(File inputFile, ZipOutputStream outputstream) throws IOException,ServletException
	{
		try{
			if(inputFile.exists())
			{
				if(inputFile.isFile())
				{
					FileInputStream inStream = new FileInputStream(inputFile);
					BufferedInputStream bInStream = new BufferedInputStream(inStream);
					ZipEntry entry = new ZipEntry(inputFile.getName());
					outputstream.putNextEntry(entry);

					final int MAX_BYTE = 10 * 1024 *1024;    //最大的流为10M
					long streamTotal = 0;                      //接受流的容量
					int streamNum = 0;                      //流需要分开的数量
					int leaveByte = 0;                      //文件剩下的字符数
					byte[] inOutbyte;                          //byte数组接受文件的数据

					streamTotal = bInStream.available();                        //通过available方法取得流的最大字符数
					streamNum = (int)Math.floor(streamTotal / MAX_BYTE);    //取得流文件需要分开的数量
					leaveByte = (int)streamTotal % MAX_BYTE;                //分开文件之后,剩余的数量

					if (streamNum > 0)
					{
						for(int j = 0; j < streamNum; ++j)
						{
							inOutbyte = new byte[MAX_BYTE];
							//读入流,保存在byte数组
							bInStream.read(inOutbyte, 0, MAX_BYTE);
							outputstream.write(inOutbyte, 0, MAX_BYTE);  //写出流
						}
					}
					//写出剩下的流数据
					inOutbyte = new byte[leaveByte];
					bInStream.read(inOutbyte, 0, leaveByte);
					outputstream.write(inOutbyte);
					outputstream.closeEntry();     //Closes the current ZIP entry and positions the stream for writing  next entry
					bInStream.close();    //关闭
					inStream.close();
				}
			}
			else
			{
				throw new ServletException("文件不存在！");
			}
		}
		catch(IOException e)
		{
			throw e;
		}
	}
	/**
	 * 下载打包的文件
	 * @param file
	 * @param response
	 */
	public void downloadZip(File file,HttpServletResponse response) {
		try {
			// 以流的形式下载文件。
			BufferedInputStream fis = new BufferedInputStream(new FileInputStream(file.getPath()));
			byte[] buffer = new byte[fis.available()];
			fis.read(buffer);
			fis.close();
			// 清空response
			response.reset();

			OutputStream toClient = new BufferedOutputStream(response.getOutputStream());
			response.setContentType("application/octet-stream");
			response.setHeader("Content-Disposition", "attachment;filename=" + file.getName());
			toClient.write(buffer);
			toClient.flush();
			toClient.close();
			file.delete();        //将生成的服务器端文件删除
		}
		catch (IOException ex) {
			ex.printStackTrace();
		}
	}
	public static String toUtf8String(String s){
		StringBuffer sb = new StringBuffer();
		for (int i = 0;i < s.length(); i++){
			char c = s.charAt(i);
			if (c >= 0 && c <= 255)
			{
				sb.append(c);
			}
			else{
				byte[] b;
				try
				{
					b = Character.toString(c).getBytes("utf-8");
				}
				catch (Exception ex) {
					b = new byte[0];
				}
				for (int j = 0; j < b.length; j++) {
					int k = b[j];
					if (k < 0) k += 256;
					sb.append("%" + Integer.toHexString(k).toUpperCase());
				}
			}
		}
		return sb.toString();
	}
	public void inputstreamtofile(InputStream ins,File file) {
		try {
			OutputStream os = new FileOutputStream(file);
			int bytesRead = 0;
			byte[] buffer = new byte[8192];
			while ((bytesRead = ins.read(buffer, 0, 8192)) != -1) {
				os.write(buffer, 0, bytesRead);
			}
			os.close();
			ins.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
