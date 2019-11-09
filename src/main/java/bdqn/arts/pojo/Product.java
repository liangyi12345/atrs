package bdqn.arts.pojo;
/*
商品表
 */

public class Product {

  private Integer id;
  private Integer sid;
  private Integer gid;
  private Integer aid;
  private String name;
  private String introduction;
  private String details;
  private String inventory;
  private double original;
  private double current;
  private java.sql.Timestamp byTheTime;
  private java.sql.Timestamp dateIssued;
  private String texture;
  private Integer size;
  private String imagePath;


  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public Integer getSid() {
    return sid;
  }

  public void setSid(Integer sid) {
    this.sid = sid;
  }


  public Integer getGid() {
    return gid;
  }

  public void setGid(Integer gid) {
    this.gid = gid;
  }


  public Integer getAid() {
    return aid;
  }

  public void setAid(Integer aid) {
    this.aid = aid;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public String getIntroduction() {
    return introduction;
  }

  public void setIntroduction(String introduction) {
    this.introduction = introduction;
  }


  public String getDetails() {
    return details;
  }

  public void setDetails(String details) {
    this.details = details;
  }


  public String getInventory() {
    return inventory;
  }

  public void setInventory(String inventory) {
    this.inventory = inventory;
  }


  public double getOriginal() {
    return original;
  }

  public void setOriginal(double original) {
    this.original = original;
  }


  public double getCurrent() {
    return current;
  }

  public void setCurrent(double current) {
    this.current = current;
  }


  public java.sql.Timestamp getByTheTime() {
    return byTheTime;
  }

  public void setByTheTime(java.sql.Timestamp byTheTime) {
    this.byTheTime = byTheTime;
  }


  public java.sql.Timestamp getDateIssued() {
    return dateIssued;
  }

  public void setDateIssued(java.sql.Timestamp dateIssued) {
    this.dateIssued = dateIssued;
  }


  public String getTexture() {
    return texture;
  }

  public void setTexture(String texture) {
    this.texture = texture;
  }


  public Integer getSize() {
    return size;
  }

  public void setSize(Integer size) {
    this.size = size;
  }


  public String getImagePath() {
    return imagePath;
  }

  public void setImagePath(String imagePath) {
    this.imagePath = imagePath;
  }

}
