package com.yangyao.backoffice.model;

import java.util.List;

public class Page {
    private List list;

    private Integer currPage;//褰撳墠椤�
    private Integer totalPage;//鎬诲叡澶氬皯椤�
    private Integer pageSize=50;//姣忛〉鏄剧ず澶氬皯鏉℃暟鎹�
    private Integer totalCount;//鎬诲叡澶氬皯鏉℃暟鎹�


    public List getList() {
        return list;
    }
    public void setList(List list) {
        this.list = list;
    }
    public Integer getCurrPage() {
        return currPage;
    }
    public void setCurrPage(Integer currPage) {
        this.currPage = currPage;
    }


    public Integer getTotalPage() {
        Double d = (double)totalCount/(double)pageSize;
        totalPage=(int) Math.ceil(d);

        return totalPage;
    }
    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }
    public Integer getPageSize() {
        return pageSize;
    }
    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }
    public Integer getTotalCount() {
        return totalCount;
    }
    public void setTotalCount(Integer totalCount) {
        this.totalCount = totalCount;
    }


    public Integer getBeginRows() {
        return (this.getCurrPage()-1)*this.getPageSize();
    }
}
