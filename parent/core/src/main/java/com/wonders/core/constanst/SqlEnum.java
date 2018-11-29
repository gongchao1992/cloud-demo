package com.wonders.core.constanst;

public enum SqlEnum {

    EQ("= ?"),
    LIKE("like %?%"),
    LIKER("like ?%"),
    LIKEL("like %?"),
    GT("> ?"),
    LT("< ?"),
    GE(">= ?"),
    LE("<= ?"),
    SGT("> '?'"),
    SLT("< '?'"),
    SGE(">= '?'"),
    SLE("<= '?'"),
    DGT("> ? 00:00:00"),
    DLT("< ? 23:59:59"),
    DGE(">= ? 00:00:00"),
    DLE("<= ? 23:59:59"),
    IN("in ?"),
    NE("<> ?"),
    ISNULL("? is null");

    private SqlEnum(String val) {
        this.val = val;
    }
    private String val;
    public String getVal() {
        return val;
    }
    public void setVal(String val) {
        this.val = val;
    }
}
