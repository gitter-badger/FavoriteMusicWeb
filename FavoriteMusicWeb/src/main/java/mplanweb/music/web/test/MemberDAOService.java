package mplanweb.music.web.test;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


//Service Ŭ������ Repository�� ����Էμ� Bean Ŭ������ ��밡���ϰ� �Ѵ�.
@Repository
public class MemberDAOService implements MemberDAO{

	//Autowired�� ����Ͽ� sqlSession�� ����Ҽ� �ִ�.
	@Autowired
	private SqlSession sqlSession;
	@Override
	public ArrayList<Member> getMembers() {
		// TODO Auto-generated method stub
		ArrayList<Member> result = new ArrayList<Member>();
		//sqlSession�� ���Ͽ� �����Ѵ�.
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		//getMember()�� �޼ҵ��� Mapper.xml�� id�� ����
		result = memberMapper.getMembers();
		
		return result;
	}

	@Override
	public void insertMember(Member member) {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		memberMapper.insertMember(member);
		
	}

	@Override
	public void updateMember(String name) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteMember(String name) {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		memberMapper.deleteMember(name);
	}
	
	

}
