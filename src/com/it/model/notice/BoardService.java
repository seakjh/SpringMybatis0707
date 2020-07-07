package com.it.model.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardService {
	
	@Autowired
	private NoticeDAO noticeDAO;
	
	public List selectAll() {		
		return noticeDAO.selectAll();
	}
}
