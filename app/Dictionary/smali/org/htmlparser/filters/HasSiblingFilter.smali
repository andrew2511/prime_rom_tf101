.class public Lorg/htmlparser/filters/HasSiblingFilter;
.super Ljava/lang/Object;
.source "HasSiblingFilter.java"

# interfaces
.implements Lorg/htmlparser/NodeFilter;


# instance fields
.field protected mSiblingFilter:Lorg/htmlparser/NodeFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/htmlparser/filters/HasSiblingFilter;-><init>(Lorg/htmlparser/NodeFilter;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/NodeFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Lorg/htmlparser/filters/HasSiblingFilter;->setSiblingFilter(Lorg/htmlparser/NodeFilter;)V

    .line 65
    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 8
    .parameter "node"

    .prologue
    .line 98
    const/4 v4, 0x0

    .line 99
    .local v4, ret:Z
    instance-of v6, p1, Lorg/htmlparser/Tag;

    if-eqz v6, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/htmlparser/Tag;

    move-object v6, v0

    invoke-interface {v6}, Lorg/htmlparser/Tag;->isEndTag()Z

    move-result v6

    if-nez v6, :cond_2

    .line 101
    :cond_0
    invoke-interface {p1}, Lorg/htmlparser/Node;->getParent()Lorg/htmlparser/Node;

    move-result-object v3

    .line 102
    .local v3, parent:Lorg/htmlparser/Node;
    if-eqz v3, :cond_2

    .line 104
    invoke-interface {v3}, Lorg/htmlparser/Node;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v5

    .line 105
    .local v5, siblings:Lorg/htmlparser/util/NodeList;
    if-eqz v5, :cond_2

    .line 107
    invoke-virtual {v5}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v1

    .line 108
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-nez v4, :cond_2

    if-ge v2, v1, :cond_2

    .line 109
    invoke-virtual {p0}, Lorg/htmlparser/filters/HasSiblingFilter;->getSiblingFilter()Lorg/htmlparser/NodeFilter;

    move-result-object v6

    invoke-virtual {v5, v2}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/htmlparser/NodeFilter;->accept(Lorg/htmlparser/Node;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 110
    const/4 v4, 0x1

    .line 108
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #parent:Lorg/htmlparser/Node;
    .end local v5           #siblings:Lorg/htmlparser/util/NodeList;
    :cond_2
    return v4
.end method

.method public getSiblingFilter()Lorg/htmlparser/NodeFilter;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/htmlparser/filters/HasSiblingFilter;->mSiblingFilter:Lorg/htmlparser/NodeFilter;

    return-object v0
.end method

.method public setSiblingFilter(Lorg/htmlparser/NodeFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 82
    iput-object p1, p0, Lorg/htmlparser/filters/HasSiblingFilter;->mSiblingFilter:Lorg/htmlparser/NodeFilter;

    .line 83
    return-void
.end method
