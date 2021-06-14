package qkrrldnd.spring.mvc.service;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import qkrrldnd.spring.mvc.vo.Pds;

import java.util.List;

@Service("psrv")
public class PdsServiceImpl implements PdsService{
    @Override
    public boolean newPds(Pds p, MultipartFile[] file) {

        return false;
    }

    @Override
    public List<Pds> readPds(String cp) {
        return null;
    }

    @Override
    public int countPds() {
        return 0;
    }

    @Override
    public Pds readOnePds(String pno) {
        return null;
    }

    @Override
    public Pds readOneFname(String pno, String order) {
        return null;
    }

    @Override
    public boolean downCountPds(String pno, String order) {
        return false;
    }
}
