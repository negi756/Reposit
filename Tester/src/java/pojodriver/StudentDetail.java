/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pojodriver;

/**
 *
 * @author Narender Singh Negi
 */
public class StudentDetail {
    private String email;
    private String age;
    private String college;
    private String qualification;
    private String language;
    private String technical;
     
    public StudentDetail() {
    }

    public StudentDetail(String email, String age, String college, String qualification, String language, String technical) {
        this.email = email;
        this.age = age;
        this.college = college;
        this.qualification = qualification;
        this.language = language;
        this.technical = technical;
    }
    
    

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getTechnical() {
        return technical;
    }

    public void setTechnical(String technical) {
        this.technical = technical;
    }

   
}
