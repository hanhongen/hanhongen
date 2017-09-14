package com.dmg.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dmg.bean.Member;
import com.dmg.bean.Member_bankcards;
import com.dmg.service.Member_BankcardsService;
//�󿨹���
@Controller
@RequestMapping("member_bankcards")
public class Member_BankcardsController {
	@Autowired
	private Member_BankcardsService member_BankcardsService;
	/**
	 * �б���ʾ��
     * ��� �ֻ��� �������� ������֤ ������ �󿨿��� �󿨵�ַ ״̬ ����ʱ�� ��
	 * @return
	 */
	@RequestMapping("/listMember_Bankcards")
	public String listMember_Bankcards(Model model,
			@RequestParam(required=false)String phone,
			@RequestParam(required=false)String cardname,
			@RequestParam(required=false)String cardno,
			@RequestParam(required=false)String createdate){
		
		Map map = new HashMap<>();
		map.put("phone", phone);//�ֻ�
		map.put("cardname", cardname);//������
		map.put("cardno", cardno);//����
		map.put("createdate", createdate);//ʱ��
		
		List<Member_bankcards> listmb = member_BankcardsService.listMember_bankcards(map);//����
		for (Member_bankcards mb : listmb) {
			System.out.println("listMember_Bankcards:"+mb.getMember().getMobile_phone());
		}
		model.addAttribute("listmb", listmb);
		
		model.addAttribute("phone", phone);
		model.addAttribute("cardname", cardname);
		model.addAttribute("cardno", cardno);
		
		return "backJsp/member_bankcards";
	}
	
}