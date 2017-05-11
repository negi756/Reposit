package hib_beans;

import javax.persistence.Column;

public class Events {

    private int eid;
    private String ename;
    private String etype;
    private String esdate;
    private String eedate;
    private String estime;
    private String eetime;
    private String evenue;
    private String edescription;
    private String epic;
    private int uid;
    private String pdate;
             
    public Events() {
    }

    public Events(int eid, String ename, String etype, String esdate, String eedate, String estime, String eetime, String evenue, String edescription, int uid,String pdate) {
        this.eid = eid;
        this.ename = ename;
        this.etype = etype;
        this.esdate = esdate;
        this.eedate = eedate;
        this.estime = estime;
        this.eetime = eetime;
        this.evenue = evenue;
        this.edescription = edescription;
        this.uid=uid;
        this.pdate=pdate;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    
    public int getEid() {
        return eid;
    }

    public String getEname() {
        return ename;
    }

    public String getEtype() {
        return etype;
    }

    public String getEsdate() {
        return esdate;
    }

    public String getEedate() {
        return eedate;
    }

    public String getEstime() {
        return estime;
    }

    public String getEetime() {
        return eetime;
    }

    public String getEvenue() {
        return evenue;
    }

    public String getEdescription() {
        return edescription;
    }

    public String getEpic() {
        return epic;
    }

    public String getPdate() {
        return pdate;
    }
    
    public void setEid(int eid) {
        this.eid = eid;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public void setEtype(String etype) {
        this.etype = etype;
    }

    public void setEsdate(String esdate) {
        this.esdate = esdate;
    }

    public void setEedate(String eedate) {
        this.eedate = eedate;
    }

    public void setEstime(String estime) {
        this.estime = estime;
    }

    public void setEetime(String eetime) {
        this.eetime = eetime;
    }

    public void setEvenue(String evenue) {
        this.evenue = evenue;
    }

    public void setEdescription(String edescription) {
        this.edescription = edescription;
    }

    public void setEpic(String epic) {
        this.epic = epic;
    }

    public void setPdate(String pdate) {
        this.pdate = pdate;
    }
    
}
 
    
