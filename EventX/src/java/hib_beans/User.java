package hib_beans;

public class User {
    private int uid;
    private String ufname;
    private String ulname;
    private String udob;
    private long uphone;
    private String uemail;
    private String upass;
    private String upic;
    private String uactive;
    public User(){}
    
    public User(String ufname, String ulname, String udob, long uphone, String uemail, String upass) {
        this.ufname = ufname;
        this.ulname = ulname;
        this.udob = udob;
        this.uphone = uphone;
        this.uemail = uemail;
        this.upass = upass;
        this.upic="profile.png";
    }

    
    
    public int getUid() {
        return uid;
    }

    public String getUfname() {
        return ufname;
    }

    public String getUlname() {
        return ulname;
    }

    public String getUdob() {
        return udob;
    }

    public long getUphone() {
        return uphone;
    }

    public String getUemail() {
        return uemail;
    }

    public String getUpass() {
        return upass;
    }

    public String getUpic() {
        return upic;
    }

    public String getUactive() {
        return uactive;
    }
    
    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setUfname(String ufname) {
        this.ufname = ufname;
    }

    public void setUlname(String ulname) {
        this.ulname = ulname;
    }

    public void setUdob(String udob) {
        this.udob = udob;
    }

    public void setUphone(long uphone) {
        this.uphone = uphone;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail;
    }

    public void setUpass(String upass) {
        this.upass = upass;
    }
    public void setUpic(String upic) {
        this.upic = upic;
    }

    public void setUactive(String uactive) {
        this.uactive = uactive;
    }
    
        

}
