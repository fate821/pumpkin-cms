package com.pumpkin.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * 分类实体对象
 */
public class Category implements Serializable {
    /**
     * 序列化编号
     */
    private static final long serialVersionUID = 1575184852L;

    private Long id;

    private Long parent;

    private String name;

    /**
     * 创建日期
     */
    private Date createDate;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getParent() {
        return parent;
    }

    public void setParent(Long parent) {
        this.parent = parent;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
}
