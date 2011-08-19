.class public Lorg/dom4j/tree/BackedList;
.super Ljava/util/ArrayList;
.source "BackedList.java"


# instance fields
.field private branch:Lorg/dom4j/tree/AbstractBranch;

.field private branchContent:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;)V
    .locals 1
    .parameter "branch"
    .parameter "branchContent"

    .prologue
    .line 36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/dom4j/tree/BackedList;-><init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;I)V
    .locals 0
    .parameter "branch"
    .parameter "branchContent"
    .parameter "capacity"

    .prologue
    .line 40
    invoke-direct {p0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    iput-object p1, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    .line 42
    iput-object p2, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter "branch"
    .parameter "branchContent"
    .parameter "initialContent"

    .prologue
    .line 47
    invoke-direct {p0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    iput-object p1, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    .line 49
    iput-object p2, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    .line 50
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 5
    .parameter "index"
    .parameter "object"

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/dom4j/tree/BackedList;->size()I

    move-result v1

    .line 61
    .local v1, size:I
    if-gez p1, :cond_0

    .line 62
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Index value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 63
    const-string v4, " is less than zero"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_0
    if-le p1, v1, :cond_1

    .line 65
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Index value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 66
    const-string v4, " cannot be greater than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "the size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_1
    if-nez v1, :cond_2

    .line 72
    iget-object v2, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 79
    .local v0, realIndex:I
    :goto_0
    iget-object v2, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, p2}, Lorg/dom4j/tree/BackedList;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/dom4j/tree/AbstractBranch;->addNode(ILorg/dom4j/Node;)V

    .line 80
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 81
    return-void

    .line 73
    .end local v0           #realIndex:I
    :cond_2
    if-ge p1, v1, :cond_3

    .line 74
    iget-object v2, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BackedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .restart local v0       #realIndex:I
    goto :goto_0

    .line 76
    .end local v0           #realIndex:I
    :cond_3
    iget-object v2, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Lorg/dom4j/tree/BackedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .restart local v0       #realIndex:I
    goto :goto_0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 53
    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BackedList;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/AbstractBranch;->addNode(Lorg/dom4j/Node;)V

    .line 55
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 5
    .parameter "index"
    .parameter "collection"

    .prologue
    .line 132
    invoke-virtual {p0}, Lorg/dom4j/tree/BackedList;->size()I

    move-result v3

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lorg/dom4j/tree/BackedList;->ensureCapacity(I)V

    .line 134
    invoke-virtual {p0}, Lorg/dom4j/tree/BackedList;->size()I

    move-result v0

    .line 136
    .local v0, count:I
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    if-eqz v0, :cond_1

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 137
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .local v1, index:I
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/dom4j/tree/BackedList;->add(ILjava/lang/Object;)V

    .line 136
    add-int/lit8 v0, v0, -0x1

    move p1, v1

    .end local v1           #index:I
    .restart local p1
    goto :goto_0

    .line 140
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter "collection"

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/dom4j/tree/BackedList;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lorg/dom4j/tree/BackedList;->ensureCapacity(I)V

    .line 122
    invoke-virtual {p0}, Lorg/dom4j/tree/BackedList;->size()I

    move-result v0

    .line 124
    .local v0, count:I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 125
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/tree/BackedList;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 128
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public addLocal(Ljava/lang/Object;)V
    .locals 0
    .parameter "object"

    .prologue
    .line 161
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method protected asNode(Ljava/lang/Object;)Lorg/dom4j/Node;
    .locals 3
    .parameter "object"

    .prologue
    .line 165
    instance-of v0, p1, Lorg/dom4j/Node;

    if-eqz v0, :cond_0

    .line 166
    check-cast p1, Lorg/dom4j/Node;

    .end local p1
    return-object p1

    .line 168
    .restart local p1
    :cond_0
    new-instance v0, Lorg/dom4j/IllegalAddException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "This list must contain instances of Node. Invalid type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-direct {v0, v1}, Lorg/dom4j/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 144
    invoke-virtual {p0}, Lorg/dom4j/tree/BackedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 151
    return-void

    .line 145
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 146
    .local v1, object:Ljava/lang/Object;
    iget-object v2, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 147
    iget-object v2, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, v1}, Lorg/dom4j/tree/BackedList;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/dom4j/tree/AbstractBranch;->childRemoved(Lorg/dom4j/Node;)V

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 3
    .parameter "index"

    .prologue
    .line 110
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, object:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/BackedList;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/dom4j/tree/AbstractBranch;->removeNode(Lorg/dom4j/Node;)Z

    .line 116
    :cond_0
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 104
    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BackedList;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/AbstractBranch;->removeNode(Lorg/dom4j/Node;)Z

    .line 106
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "index"
    .parameter "object"

    .prologue
    .line 84
    iget-object v1, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BackedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 86
    .local v0, realIndex:I
    if-gez v0, :cond_0

    .line 87
    if-nez p1, :cond_1

    const/4 v1, 0x0

    move v0, v1

    .line 90
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 91
    iget-object v1, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BackedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/tree/BackedList;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/dom4j/tree/AbstractBranch;->removeNode(Lorg/dom4j/Node;)Z

    .line 92
    iget-object v1, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, p2}, Lorg/dom4j/tree/BackedList;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/dom4j/tree/AbstractBranch;->addNode(ILorg/dom4j/Node;)V

    .line 98
    :goto_1
    iget-object v1, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, p2}, Lorg/dom4j/tree/BackedList;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/dom4j/tree/AbstractBranch;->childAdded(Lorg/dom4j/Node;)V

    .line 100
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 87
    :cond_1
    const v1, 0x7fffffff

    move v0, v1

    goto :goto_0

    .line 94
    :cond_2
    iget-object v1, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BackedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/tree/BackedList;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/dom4j/tree/AbstractBranch;->removeNode(Lorg/dom4j/Node;)Z

    .line 95
    iget-object v1, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, p2}, Lorg/dom4j/tree/BackedList;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/dom4j/tree/AbstractBranch;->addNode(Lorg/dom4j/Node;)V

    goto :goto_1
.end method
