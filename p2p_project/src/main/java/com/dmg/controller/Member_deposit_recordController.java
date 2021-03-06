package com.dmg.controller;

import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dmg.bean.Member;
import com.dmg.bean.Member_deposit_record;
import com.dmg.service.MemberService;
import com.dmg.service.Member_accountService;
import com.dmg.service.Member_deposit_recordSevice;

@Controller
@RequestMapping("/member_deposit_record")
public class Member_deposit_recordController {

	@Autowired
	private Member_deposit_recordSevice member_deposit_recordSevice;//充值记录表
	@Autowired
	private MemberService memberService;//用户表
	@Autowired
	private Member_accountService member_accountService;//成员账户表
	
	@RequestMapping("/listMember_deposit_record")
	public String listMember_deposit_record(Model model,
			@RequestParam(required=false)String snumber,
			@RequestParam(required=false)String phone,
			@RequestParam(required=false)String status,
			@RequestParam(required=false)String fynumber,
			@RequestParam(required=false)String create_datem){
		Map map = new HashMap<>();
		map.put("snumber", snumber);
		map.put("phone", phone);
		map.put("status", status);
		map.put("fynumber", fynumber);
		map.put("create_datem", create_datem);
		
		List<Member_deposit_record> listmdr=member_deposit_recordSevice.listMember_deposit_record(map);
		model.addAttribute("listmdr", listmdr);
		
		model.addAttribute("snumber", snumber);
		model.addAttribute("phone", phone);
		model.addAttribute("status", status);
		model.addAttribute("fynumber", fynumber);
		
		return "backJsp/member_deposit_record";
	}
	@RequestMapping(value="listmdr",method = {RequestMethod.POST})
	@ResponseBody//这个方法的ajax返回写的太冗余了，HttpServletResponse response完全可以去掉！
	public void listmdr(HttpServletRequest request,HttpServletResponse response){
		// 设置返回字符编码
		response.setCharacterEncoding("UTF-8");
		String idd = request.getParameter("id");
		System.out.println("listmdrID:"+idd);
		int i=Integer.valueOf(idd);
		//i为user的id  通过user的id查询的到member的id
		int id=memberService.correct(i);
		System.out.println("listmdr-userid:"+id);
		List<Member_deposit_record> mdr=member_deposit_recordSevice.listmdr(id);
		for (Member_deposit_record m : mdr) {
			System.out.println("流水号："+m.getSeril_number()+"--金额："+m.getAmount()+"--状态："+m.getStatus()+"--创建时间："+m.getCreate_date());
		}
		JSONArray jsonArray = new JSONArray();
		jsonArray.put(mdr);
		PrintWriter out=null;
		//在try-catch中把JSON数组写到response输出流
		try {
			out=response.getWriter();
			//返回给page
			out.write(jsonArray.toString());
			System.out.println(jsonArray.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				if (out != null) {
					out.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
	
	//进入支付宝付款信息填写页面
	@RequestMapping("/goAlipayJsp")
	public String goAlipayJsp(Model model,@RequestParam(required=false)String fee,HttpServletRequest request){
		System.out.println("金额:"+fee);
		HttpSession session = request.getSession();
		//参数取自Member_BankcardsController
		String hid= (String) session.getAttribute("idd"); 
		System.out.println("hid:"+hid);
		int idd=Integer.valueOf(hid);
		int s=member_accountService.listid(idd);
		System.out.println("s="+s);
		//判断用户是否绑卡
		if (s == 0) {
			//返回用户未绑卡的信息
			model.addAttribute("msg", 0);
		}
		
		boolean flag=member_accountService.ifnull(idd);
		if (flag == true) {
			System.out.println("创建成员账户信息");
			member_accountService.accnull(idd);
			System.out.println("创建成员账户信息成功");
		}
		
		//将富友充值页面金额写入支付宝付款信息页面
		model.addAttribute("fee", fee);
		return "alipay/index";
	}
	
	//将充值记录信息写入数据库，此时的充值信息为待付款，并且进入支付宝二维码支付页面
	@RequestMapping("/Alipay")
	public String Alipay(HttpServletRequest request) throws ParseException{
		System.out.println("Alipay");
		//商户订单号，商户网站订单系统中唯一订单号，必填
		String out_trade_no = request.getParameter("WIDout_trade_no");
		//付款金额，必填
		String total_amount = request.getParameter("WIDtotal_amount");
		double total_amount2 = Integer.valueOf(total_amount);
		//订单名称，必填
		String subject = request.getParameter("WIDsubject");
		HttpSession session = request.getSession();
		//参数取自Member_BankcardsController
		String hid= (String) session.getAttribute("idd"); 
			
		//将订单号存入sess作用域,在Payment_is_completed方法中取出
		session.setAttribute("out_trade_no", out_trade_no);
		//金额
		session.setAttribute("total_amount2", total_amount2);
		int id=Integer.valueOf(hid);
		System.out.println("id:"+id);
		//根据id得到member对象
		Member member = memberService.getMemberId(id);
		
		String str=""+new Date();//将日期转换为字符串格式
		//Thu May 28 18:23:17 CST 2015
		SimpleDateFormat sdf1 = new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy", Locale.ENGLISH);
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyyMMddHHmmssss");
		SimpleDateFormat sdf3 = new SimpleDateFormat("yyyy-MM-dd");
		String serial=sdf2.format(sdf1.parse(str));//转换
		System.out.println("流水号："+serial);
		
		String time = sdf3.format(new Date().getTime());
		System.out.println("当前时间:"+time);
		
		Member_deposit_record mdr=new Member_deposit_record();
		//充值记录数据注入
		mdr.setSeril_number(serial);
		//将根据id得到的member对象注入到Member_deposit_record表的member_id外键
		mdr.setMember(member);
		mdr.setAmount(total_amount2);
		//status在此处注入数据时状态为0，代表本方法生成的订单处于待付款状态
		mdr.setStatus(0);
		mdr.setPay_channel_name(subject);
		mdr.setPay_channel_order_no(out_trade_no);
		//逻辑删除状态,0为未逻辑删除
		mdr.setDelflag(0);
		mdr.setCreate_date(time);
		member_deposit_recordSevice.mdrSave(mdr);

		System.out.println("out_trade_no:"+out_trade_no);
		System.out.println("total_amount:"+total_amount);
		System.out.println("subject:"+subject);
		System.out.println("hid:"+hid);
		return "alipay/alipay.trade.page.pay";
	}
	//付款完成后
	@RequestMapping("/Payment_is_completed")
	public String Payment_is_completed(HttpServletRequest request){
		System.out.println("Payment_is_completed-------------------------------------------------------------------------------------------");
		HttpSession session = request.getSession();
		//商户订单号，商户网站订单系统中唯一订单号，必填
//		String out_trade_no = request.getParameter("WIDout_trade_no");
		String out_trade_no = (String) session.getAttribute("out_trade_no");
		double amount = (double) session.getAttribute("total_amount2");
		System.out.println("Payment_is_completed-out_trade_no:"+out_trade_no);
		//根据商户订单号查询，得到充值订单数据
		int status=member_deposit_recordSevice.queryPay_channel_order_no(out_trade_no);
		System.out.println("Payment_is_completed--"+status);
		//判断待付款订单项
		if (status == 0) {
			//根据商户订单号修改充值记录表的状态为付款完成
			member_deposit_recordSevice.updateStatus(out_trade_no);
			//再根据用户id增加成员账户表的可用余额并修改update_date（修改时间）的值
			//参数取自Member_BankcardsController,id为user的id
			String hid= (String) session.getAttribute("idd"); 
			int id=Integer.valueOf(hid);
			System.out.println("Payment_is_completed-id:"+id);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String time = sdf.format(new Date().getTime());
			System.out.println("Payment_is_completed-当前时间:"+time);
			//调用成员账户表并修改金额和时间
			member_accountService.top_upAmount(id, amount, time);
		}
		
//		request.getAttribute("SPRid");
//		request.getAttribute("user_name");
		
		//"https://openapi.alipaydev.com/gateway.do"
		System.out.println("Payment_is_completed-------------------------------------------------------------------------------------------");
		return "frontJsp/myaddlibrayy";
	}
	
}
