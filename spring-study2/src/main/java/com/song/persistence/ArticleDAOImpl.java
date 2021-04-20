package com.song.persistence;

import java.util.List;
import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.song.commons.paging.Criteria;
import com.song.domain.ArticleVO;

@Repository
public class ArticleDAOImpl implements ArticleDAO {
	private static final String NAMESPACE = "com.song.mapper.article.ArticleMapper";
	private final SqlSession sqlSession;

	@Inject
	public ArticleDAOImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void create(ArticleVO articleVO) throws Exception {
		sqlSession.insert(NAMESPACE + ".create", articleVO);
	}

	@Override
	public ArticleVO read(Integer article_no) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".read", article_no);
	}

	@Override
	public void update(ArticleVO articleVO) throws Exception {
		sqlSession.update(NAMESPACE + ".update", articleVO);
	}

	@Override
	public void delete(Integer article_no) throws Exception {
		sqlSession.delete(NAMESPACE + ".delete", article_no);
	}

	@Override
	public List<ArticleVO> listAll() throws Exception {
		return sqlSession.selectList(NAMESPACE + ".listAll");
	}

	// 페이징 처리를 위한 추상메소드 구현
	@Override
	public List<ArticleVO> listPaging(int page) throws Exception {
		if (page <= 0) {
			page = 1;
		}
		page = (page - 1) * 10;
		return sqlSession.selectList(NAMESPACE + ".listPaging", page);
	}
	@Override
	public List<ArticleVO> listCriteria(Criteria criteria) throws Exception {
		return sqlSession.selectList(NAMESPACE + ".listCriteria", criteria);
	}

}
