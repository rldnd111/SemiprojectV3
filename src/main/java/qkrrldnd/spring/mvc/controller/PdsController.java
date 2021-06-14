package qkrrldnd.spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import qkrrldnd.spring.mvc.service.PdsService;
import qkrrldnd.spring.mvc.utils.FileUpDownUtil;
import qkrrldnd.spring.mvc.vo.Pds;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
public class PdsController {

    @Autowired private PdsService psrv;

    @GetMapping("/pds/list")
    public String list() {
        return "pds/list.tiles";
    }

    @GetMapping("/pds/view")
    public String view() {
        return "pds/view.tiles";
    }

    @GetMapping("/pds/write")
    public String write() {
        return "pds/write.tiles";
    }

    // commons file upload로 구현한 자료실
//    @PostMapping("/pds/write")
//    public String writeok(Pds p, HttpServletRequest req) {
//
//        // commons file upload로 업로드 처리 및 폼데이터 가져오기
//        FileUpDownUtil fud = new FileUpDownUtil();
//        Map<String, String> frmdata = fud.procUpload(req);
//
//        System.out.println(frmdata.get("title"));
//        System.out.println(frmdata.get("contents"));
//        System.out.println(frmdata.get("file1"));
//        System.out.println(frmdata.get("filesize"));
//        System.out.println(frmdata.get("filetype"));
//
//        // Pds 객체를 이용하는 경우 폼 데이터가 자동으로 주입되지 않음
//        System.out.println(p.getTitle());
//        System.out.println(p.getContents());
//
//        return "redirect:/pds/list";
//    }
    
    // MultiPartFile로 구현한 자료실
    @PostMapping("/pds/write")
    public String writeok(Pds p, MultipartFile[] file) {

        psrv.newPds(p, file);

        return "redirect:/pds/list";
    }
    
}
