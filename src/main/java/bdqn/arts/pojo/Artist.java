package bdqn.arts.pojo;
/*
艺术家信息表
 */

import java.util.ArrayList;
import java.util.List;

public class Artist {

  private Integer id;
  private Integer gid;
  private String name;
  private String phone;
  private String email;
  private String address;
  private String school;
  private String synopsis;
  private String nationality;
  private String imagePath;
  private Integer visit;
  private Integer attention;
  private Integer uid;
  private User user;
  private List<Product> alist;

  public List<Product> getAlist() {
    return alist;
  }

  public void setAlist(List<Product> alist) {
    this.alist = alist;
  }

  public User getUser() {
    return user;
  }

  public void setUser(User user) {
    this.user = user;
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public Integer getGid() {
    return gid;
  }

  public void setGid(Integer gid) {
    this.gid = gid;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }


  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }


  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }


  public String getSchool() {
    return school;
  }

  public void setSchool(String school) {
    this.school = school;
  }


  public String getSynopsis() {
    return synopsis;
  }

  public void setSynopsis(String synopsis) {
    this.synopsis = synopsis;
  }


  public String getNationality() {
    return nationality;
  }

  public void setNationality(String nationality) {
    this.nationality = nationality;
  }


  public String getImagePath() {
    return imagePath;
  }

  public void setImagePath(String imagePath) {
    this.imagePath = imagePath;
  }


  public Integer getVisit() {
    return visit;
  }

  public void setVisit(Integer visit) {
    this.visit = visit;
  }


  public Integer getAttention() {
    return attention;
  }

  public void setAttention(Integer attention) {
    this.attention = attention;
  }


  public Integer getUid() {
    return uid;
  }

  public void setUid(Integer uid) {
    this.uid = uid;
  }

  @Override
  public String toString() {
    return "Artist{" +
            "id=" + id +
            ", gid=" + gid +
            ", name='" + name + '\'' +
            ", phone='" + phone + '\'' +
            ", email='" + email + '\'' +
            ", address='" + address + '\'' +
            ", school='" + school + '\'' +
            ", synopsis='" + synopsis + '\'' +
            ", nationality='" + nationality + '\'' +
            ", imagePath='" + imagePath + '\'' +
            ", visit=" + visit +
            ", attention=" + attention +
            ", uid=" + uid +
            ", user=" + user +
            ", alist=" + alist +
            '}';
  }
}
