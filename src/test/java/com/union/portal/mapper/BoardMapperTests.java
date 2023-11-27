package com.union.portal.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.union.portal.domain.Board;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTests {

	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;
	
	@Test
	public void testGetList() {
		log.info("### testGetList....");
		mapper.getList().forEach(board -> log.info(board));
	}
	
	
	@Test
	public void testInsert() {
		log.info("### testInsert....");
		Board board = new Board();
		board.setTitle("test 제목1");
		board.setWriter("test user1");
		board.setContent("test 내용1");
		
		mapper.insert(board);
		
		log.info(board);
	}
	
	@Test
	public void testRead() {
		log.info("### testRead....");
		Board board = mapper.read(5L);
		log.info(board);
	}
	
	@Test
	public void testDelete() {
		log.info("### testDelete....");
		int count = mapper.delete(8L);
		log.info("delete count : " + count);
	}

	@Test
	public void testUpdate() {
		log.info("### testUpdate....");
		Board board = new Board();
		board.setTitle("test ���� ����1");
		board.setWriter("test user����1");
		board.setContent("test �������1");
		board.setBno(6L);
		
		int count = mapper.update(board);
		log.info("update count : " + count);
		
		log.info(board);
		log.info("delete count : " + count);
	}

}
