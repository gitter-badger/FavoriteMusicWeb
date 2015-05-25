package mplanweb.music.web.test;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import mplanweb.music.web.test.Member;
import mplanweb.music.web.test.MemberDAOService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MybatisController {

	@Autowired
	private MemberDAOService memberDAOService;

	private static final Logger logger = LoggerFactory
			.getLogger(MybatisController.class);

	// ����ȭ��
	@RequestMapping("/main")
	public ModelAndView main(Locale locale, Model model) {
		logger.info("Welcome main", locale);

		// view ȭ���� main.jsp�� DB�� ���� �о�� �����͸� �����ش�.
		ModelAndView result = new ModelAndView();
		// addObject View�� �Ѿ�� ������
		List<Member> memberList = memberDAOService.getMembers();
		result.addObject("result", memberList);
		result.setViewName("main");
		return result;

	}

	// insert ��ư Ŭ���� ���� �����ͼ� result.jsp�� ȭ����ȯ ���ش�.
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public ModelAndView insert(HttpServletRequest request) {

		// HttpServletRequest�� �̿��Ͽ� main.jsp�� ���� ���� �����´�. getParameter�δ� id����
		// ������

		Member member = new Member();
		member.setName((String) request.getParameter("name"));
		member.setEmail((String) request.getParameter("email"));
		member.setPhone((String) request.getParameter("phone"));

		memberDAOService.insertMember(member);
		System.out.println("insert complet");

		// �Ʒ��κ��� select���� result.jsp ���Ͽ� �����ֱ� ���� �� ���
		ModelAndView result = new ModelAndView();
		List<Member> memberList = memberDAOService.getMembers();
		result.addObject("result", memberList);
		result.setViewName("result");
		return result;

	}
}
