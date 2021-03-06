package com.song.service;

import java.util.List;
import javax.inject.Inject;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.song.commons.paging.Criteria;
import com.song.domain.ArticleVO;
import com.song.persistence.ArticleDAO;

@Service
public class ArticleServiceImpl implements ArticleService {
	private final ArticleDAO articleDAO;

	@Inject
	public ArticleServiceImpl(ArticleDAO articleDAO) {
		this.articleDAO = articleDAO;
	}

	@Override
	public void create(ArticleVO articleVO) throws Exception {
		articleDAO.create(articleVO);
	}
	
	@Transactional(isolation = Isolation.READ_COMMITTED )
	@Override
	public ArticleVO read(Integer article_no) throws Exception {
		articleDAO.updateViewCnt(article_no);
		return articleDAO.read(article_no);
	}

	@Override
	public void update(ArticleVO articleVO) throws Exception {
		articleDAO.update(articleVO);
	}

	@Override
	public void delete(Integer article_no) throws Exception {
		articleDAO.delete(article_no);
	}

	@Override
	public List<ArticleVO> listAll() throws Exception {
		return articleDAO.listAll();
	}

	@Override
	public List<ArticleVO> listCriteria(Criteria criteria) throws Exception {
		return articleDAO.listCriteria(criteria);
	}

}
