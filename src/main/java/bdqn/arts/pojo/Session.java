package bdqn.arts.pojo;
/*
专场分类表
 */

import java.util.ArrayList;

public class Session {

  private Integer id;
  private String title;
  private String details;
  private ArrayList<Product> slist;


  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }


  public String getDetails() {
    return details;
  }

  public void setDetails(String details) {
    this.details = details;
  }

  public ArrayList<Product> getSlist() {
    return slist;
  }

  public void setSlist(ArrayList<Product> slist) {
    this.slist = slist;
  }
}
