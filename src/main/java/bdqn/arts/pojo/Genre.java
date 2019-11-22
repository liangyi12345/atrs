package bdqn.arts.pojo;
/*
商品分类表
 */

import java.util.List;

public class Genre {

  private Integer id;
  private String name;
  private List<Artist> genres;

  public List<Artist> getGenres() {
    return genres;
  }

  public void setGenres(List<Artist> genres) {
    this.genres = genres;
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  @Override
  public String toString() {
    return "Genre{" +
            "id=" + id +
            ", name='" + name + '\'' +
            ", genres=" + genres +
            '}';
  }
}
