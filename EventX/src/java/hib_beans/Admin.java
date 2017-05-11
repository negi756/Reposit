package hib_beans;

public class Admin {
    private int aid;
    private String aname;
    private String aemail;
    private String apass;
    private String adob;

    public Admin() {
    }

    public Admin(String aname, String aemail, String apass, String adob) {
        this.aname = aname;
        this.aemail = aemail;
        this.apass = apass;
        this.adob = adob;
    }

    public int getAid() {
        return aid;
    }

    public String getAname() {
        return aname;
    }

    public String getAemail() {
        return aemail;
    }

    public String getApass() {
        return apass;
    }

    public String getAdob() {
        return adob;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public void setAemail(String aemail) {
        this.aemail = aemail;
    }

    public void setApass(String apass) {
        this.apass = apass;
    }

    public void setAdob(String adob) {
        this.adob = adob;
    }
    
    
}
