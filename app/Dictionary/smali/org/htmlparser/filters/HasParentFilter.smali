.class public Lorg/htmlparser/filters/HasParentFilter;
.super Ljava/lang/Object;
.source "HasParentFilter.java"

# interfaces
.implements Lorg/htmlparser/NodeFilter;


# instance fields
.field protected mParentFilter:Lorg/htmlparser/NodeFilter;

.field protected mRecursive:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/htmlparser/filters/HasParentFilter;-><init>(Lorg/htmlparser/NodeFilter;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/NodeFilter;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/htmlparser/filters/HasParentFilter;-><init>(Lorg/htmlparser/NodeFilter;Z)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/NodeFilter;Z)V
    .locals 0
    .parameter "filter"
    .parameter "recursive"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p0, p1}, Lorg/htmlparser/filters/HasParentFilter;->setParentFilter(Lorg/htmlparser/NodeFilter;)V

    .line 85
    invoke-virtual {p0, p2}, Lorg/htmlparser/filters/HasParentFilter;->setRecursive(Z)V

    .line 86
    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 4
    .parameter "node"

    .prologue
    .line 140
    const/4 v2, 0x0

    .line 141
    .local v2, ret:Z
    instance-of v3, p1, Lorg/htmlparser/Tag;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/htmlparser/Tag;

    move-object v3, v0

    invoke-interface {v3}, Lorg/htmlparser/Tag;->isEndTag()Z

    move-result v3

    if-nez v3, :cond_1

    .line 143
    :cond_0
    invoke-interface {p1}, Lorg/htmlparser/Node;->getParent()Lorg/htmlparser/Node;

    move-result-object v1

    .line 144
    .local v1, parent:Lorg/htmlparser/Node;
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/htmlparser/filters/HasParentFilter;->getParentFilter()Lorg/htmlparser/NodeFilter;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 146
    invoke-virtual {p0}, Lorg/htmlparser/filters/HasParentFilter;->getParentFilter()Lorg/htmlparser/NodeFilter;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/htmlparser/NodeFilter;->accept(Lorg/htmlparser/Node;)Z

    move-result v2

    .line 147
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/htmlparser/filters/HasParentFilter;->getRecursive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    invoke-virtual {p0, v1}, Lorg/htmlparser/filters/HasParentFilter;->accept(Lorg/htmlparser/Node;)Z

    move-result v2

    .line 152
    .end local v1           #parent:Lorg/htmlparser/Node;
    :cond_1
    return v2
.end method

.method public getParentFilter()Lorg/htmlparser/NodeFilter;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/htmlparser/filters/HasParentFilter;->mParentFilter:Lorg/htmlparser/NodeFilter;

    return-object v0
.end method

.method public getRecursive()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lorg/htmlparser/filters/HasParentFilter;->mRecursive:Z

    return v0
.end method

.method public setParentFilter(Lorg/htmlparser/NodeFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 103
    iput-object p1, p0, Lorg/htmlparser/filters/HasParentFilter;->mParentFilter:Lorg/htmlparser/NodeFilter;

    .line 104
    return-void
.end method

.method public setRecursive(Z)V
    .locals 0
    .parameter "recursive"

    .prologue
    .line 122
    iput-boolean p1, p0, Lorg/htmlparser/filters/HasParentFilter;->mRecursive:Z

    .line 123
    return-void
.end method
