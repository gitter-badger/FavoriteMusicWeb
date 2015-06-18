package mplanweb.music.web.board;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class YboardController extends YboardLogger {

	@Autowired
	private YboardService yboardService;

	/**
	 * jquery용 페이지호출
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/jquery", method = RequestMethod.GET)
	protected String showJqueryPage(HttpServletRequest request, Model model) {
		
		 Device device = DeviceUtils.getCurrentDevice(request);
		 model.addAttribute("yboard", new Yboard()); // 초기세션처리를 위해 디폴트 처리
	
		 return "/jquery/yboard";	
		 
		
	}

	/**
	 * angular.js 용 페이지호출
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/angular", method = RequestMethod.GET)
	protected String showAngularPage(Model model) {
		model.addAttribute("yboard", new Yboard()); // 초기세션처리를 위해 디폴트 처리
		return "/angular/yboard";
	}

	/**
	 * yboard리스트: 파라미터를 json형태로 받고 결과를 json형태로 출력
	 * 
	 * @param yboard
	 * @return
	 */
	@RequestMapping(value = "/select", method = RequestMethod.POST)
	@ResponseBody
	public ResultJSON selectYboard(@RequestBody YboardSearch yboardSearch) {
		ResultJSON resultJSON = new ResultJSON();
		int totalCount = yboardService.selectTotalCountYboard(yboardSearch);
		System.out.println("yboardSearch : " + yboardSearch);
		System.out.println("totalCount : " + totalCount);
		List<Yboard> yboardList = yboardService.selectYboard(yboardSearch);
		resultJSON.setTotal(totalCount);
		resultJSON.setItems(yboardList);
		resultJSON.setSuccess(true);
		System.out.println("resultJSON : " + resultJSON);
		return resultJSON;
	}
	
	
	/**
	 * yboard 입력
	 * @param yboard
	 * @return
	 */
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	@ResponseBody
	public ResultJSON insertYboard(@RequestBody Yboard yboard) {
		System.out.println("yboard : " + yboard);
		ResultJSON resultJSON = new ResultJSON();
		yboardService.insertYboard(yboard);
		System.out.println("resultJSON : " + resultJSON);
		resultJSON.setSuccess(true);
		return resultJSON;
	}
	
	
	/**
	 * yboard에서 체크된 값들 삭제처리 
	 * @param boardIDs
	 * @return
	 */
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	@ResponseBody
	public ResultJSON deleteYboard(@RequestBody Map<String, Object> param) {
		ResultJSON resultJSON = new ResultJSON();
		String boardIDs = String.valueOf(param.get("boardIDs"));
		List<Map<String, Object>> mapList = new ArrayList<Map<String, Object>>();
		String[] boardIDEncrypts = boardIDs.split(",");
		for (String boardIDEncrypt: boardIDEncrypts) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("boardID", YKStringUtil.getTmsDecryptoAesForInt(boardIDEncrypt));
			mapList.add(map);
		}
		yboardService.deleteYboard(mapList);
		resultJSON.setSuccess(true);
		return resultJSON;
	}
	
	/**
	 * yboard 보기 
	 * @param boardIDs
	 * @return
	 */
	@RequestMapping(value = "/view/{boardIDEncrypt}", method = RequestMethod.GET)
	@ResponseBody
	public ResultJSON viewYboard(@PathVariable String boardIDEncrypt) {
		System.out.println("boardIDEncrypt : " + boardIDEncrypt);
		ResultJSON resultJSON = new ResultJSON();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("boardID", YKStringUtil.getTmsDecryptoAesForInt(boardIDEncrypt));
		resultJSON.setData(yboardService.viewYboard(map));
		resultJSON.setSuccess(true);
		System.out.println("resultJSON : " + resultJSON);
		return resultJSON;
	}
	
	
	/**
	 * yboard 수정처리
	 * @param boardIDs
	 * @return
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public ResultJSON updateYboard(@RequestBody Yboard yboard) {
		ResultJSON resultJSON = new ResultJSON();
		yboard.setBoardID(YKStringUtil.getTmsDecryptoAesForInt(yboard.getBoardIDEncrypt()));
		yboardService.updateYboard(yboard);
		resultJSON.setSuccess(true);
		return resultJSON;
	}

}
