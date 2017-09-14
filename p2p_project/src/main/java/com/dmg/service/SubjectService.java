package com.dmg.service;

import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dmg.bean.Subject;
import com.dmg.dao.SubjectDao;
//��Ϣ�ƻ�
@Service
@Transactional
public class SubjectService {
	@Autowired
	private SubjectDao subjectDao;
	/**
	 * �б���ʾ��
  	 * ��� ��ͬ��� ������ ������� ����ܽ��  ��Ͷ��� ��Ͷ���� 
     * ������� �껯���� ���״̬ ���������
	 * @return
	 */
	public List<Subject> listSubject(Map map){
		List<Subject> list = subjectDao.listSubject(map);
		return list;
	}

}