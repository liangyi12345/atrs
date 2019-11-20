package bdqn.arts.utils;

public class Paging {
    //总页数
    private Integer pageCount;
    //每页显示条数
    private Integer pageSize ;
    //总条数
    private Integer pageTotal;
    //当前页码
    private Integer currentPage;
    //开始条数
    private Integer begin;

    public Integer getBegin() {
        return begin;
    }

    public void setBegin(Integer begin) {
        this.begin = begin;
    }

    public Integer getPageCount() {
        return pageCount;
    }

    public void setPageCount(Integer pageCount) {
        this.pageCount = pageCount;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getPageTotal() {
        return pageTotal;
    }

    public void setPageTotal(Integer pageTotal) {
        this.pageTotal = pageTotal;
        this.pageCount=pageTotal%pageSize<=0 ? pageTotal/pageSize : pageTotal/pageSize+1;
    }

    public Integer getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
            this.currentPage = currentPage;
    }

    @Override
    public String toString() {
        return "Paging{" +
                "pageCount=" + pageCount +
                ", pageSize=" + pageSize +
                ", pageTotal=" + pageTotal +
                ", currentPage=" + currentPage +
                ", begin=" + begin +
                '}';
    }
}
