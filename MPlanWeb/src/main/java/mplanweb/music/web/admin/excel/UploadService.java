package mplanweb.music.web.admin.excel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/*
 * 
 * 
 *  Excel 완료
 * 
 * 
 */

public interface UploadService {
	public  void addExcel(List<Excel> list);

}