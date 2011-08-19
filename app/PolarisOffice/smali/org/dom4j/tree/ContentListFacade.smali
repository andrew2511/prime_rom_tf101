.class public Lorg/dom4j/tree/ContentListFacade;
.super Ljava/util/AbstractList;
.source "ContentListFacade.java"


# instance fields
.field private branch:Lorg/dom4j/tree/AbstractBranch;

.field private branchContent:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;)V
    .locals 0
    .parameter "branch"
    .parameter "branchContent"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/dom4j/tree/ContentListFacade;->branch:Lorg/dom4j/tree/AbstractBranch;

    .line 40
    iput-object p2, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter "object"

    .prologue
    .line 50
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, p2}, Lorg/dom4j/tree/ContentListFacade;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/AbstractBranch;->childAdded(Lorg/dom4j/Node;)V

    .line 51
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 52
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 44
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/ContentListFacade;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/AbstractBranch;->childAdded(Lorg/dom4j/Node;)V

    .line 46
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .parameter "index"
    .parameter "collection"

    .prologue
    .line 87
    iget-object v3, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 89
    .local v0, count:I
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    iget-object v3, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 90
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .local v1, index:I
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/dom4j/tree/ContentListFacade;->add(ILjava/lang/Object;)V

    .line 89
    add-int/lit8 v0, v0, -0x1

    move p1, v1

    .end local v1           #index:I
    .restart local p1
    goto :goto_0

    .line 93
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter "collection"

    .prologue
    .line 77
    iget-object v2, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 79
    .local v0, count:I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    iget-object v2, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 80
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/tree/ContentListFacade;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected asNode(Ljava/lang/Object;)Lorg/dom4j/Node;
    .locals 3
    .parameter "object"

    .prologue
    .line 151
    instance-of v0, p1, Lorg/dom4j/Node;

    if-eqz v0, :cond_0

    .line 152
    check-cast p1, Lorg/dom4j/Node;

    .end local p1
    return-object p1

    .line 154
    .restart local p1
    :cond_0
    new-instance v0, Lorg/dom4j/IllegalAddException;

    .line 155
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "This list must contain instances of Node. Invalid type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-direct {v0, v1}, Lorg/dom4j/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/dom4j/tree/ContentListFacade;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    iget-object v2, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 103
    return-void

    .line 98
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 99
    .local v1, object:Ljava/lang/Object;
    iget-object v2, p0, Lorg/dom4j/tree/ContentListFacade;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, v1}, Lorg/dom4j/tree/ContentListFacade;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/dom4j/tree/AbstractBranch;->childRemoved(Lorg/dom4j/Node;)V

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 123
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 135
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 139
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getBackingList()Ljava/util/List;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "o"

    .prologue
    .line 143
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "o"

    .prologue
    .line 147
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 3
    .parameter "index"

    .prologue
    .line 67
    iget-object v1, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 69
    .local v0, object:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lorg/dom4j/tree/ContentListFacade;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/ContentListFacade;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/dom4j/tree/AbstractBranch;->childRemoved(Lorg/dom4j/Node;)V

    .line 73
    :cond_0
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 61
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/ContentListFacade;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/AbstractBranch;->childRemoved(Lorg/dom4j/Node;)V

    .line 63
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter "c"

    .prologue
    .line 106
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    iget-object v2, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    return v2

    .line 107
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 108
    .local v1, object:Ljava/lang/Object;
    iget-object v2, p0, Lorg/dom4j/tree/ContentListFacade;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, v1}, Lorg/dom4j/tree/ContentListFacade;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/dom4j/tree/AbstractBranch;->childRemoved(Lorg/dom4j/Node;)V

    goto :goto_0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .parameter "object"

    .prologue
    .line 55
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, p2}, Lorg/dom4j/tree/ContentListFacade;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/AbstractBranch;->childAdded(Lorg/dom4j/Node;)V

    .line 57
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter "a"

    .prologue
    .line 131
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
