package qkrrldnd.spring.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

    @GetMapping("/")
    public  String index() {
        return "index.tiles";
    }

    @GetMapping("/pds")
    public String pds() {
        return "pds.tiles";
    }


}
