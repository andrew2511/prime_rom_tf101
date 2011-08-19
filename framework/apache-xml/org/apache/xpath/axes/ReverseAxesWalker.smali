.class public Lorg/apache/xpath/axes/ReverseAxesWalker;
.super Lorg/apache/xpath/axes/AxesWalker;
.source "ReverseAxesWalker.java"


# static fields
.field static final serialVersionUID:J = 0x27829a5f21e481adL


# instance fields
.field protected m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;


# direct methods
.method constructor <init>(Lorg/apache/xpath/axes/LocPathIterator;I)V
    .registers 3
    .parameter "locPathIterator"
    .parameter "axis"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 43
    return-void
.end method


# virtual methods
.method protected countProximityPosition(I)V
    .registers 5
    .parameter "i"

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_proximityPositions:[I

    array-length v0, v0

    if-ge p1, v0, :cond_d

    .line 181
    iget-object v0, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_proximityPositions:[I

    aget v1, v0, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aput v1, v0, p1

    .line 182
    :cond_d
    return-void
.end method

.method public detach()V
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 66
    invoke-super {p0}, Lorg/apache/xpath/axes/AxesWalker;->detach()V

    .line 67
    return-void
.end method

.method public getLastPos(Lorg/apache/xpath/XPathContext;)I
    .registers 8
    .parameter "xctxt"

    .prologue
    .line 196
    const/4 v1, 0x0

    .line 197
    .local v1, count:I
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/xpath/axes/WalkingIterator;->getLastUsedWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v3

    .line 201
    .local v3, savedWalker:Lorg/apache/xpath/axes/AxesWalker;
    :try_start_9
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    .line 203
    .local v0, clone:Lorg/apache/xpath/axes/ReverseAxesWalker;
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->getRoot()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setRoot(I)V

    .line 205
    iget v4, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_predicateIndex:I

    invoke-virtual {v0, v4}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setPredicateCount(I)V

    .line 207
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 208
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 209
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 215
    :goto_2a
    const/4 v4, -0x1

    invoke-virtual {v0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->nextNode()I
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_45
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_9 .. :try_end_2e} :catch_3c

    move-result v2

    .local v2, next:I
    if-eq v4, v2, :cond_34

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 227
    :cond_34
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 230
    .end local v0           #clone:Lorg/apache/xpath/axes/ReverseAxesWalker;
    .end local v2           #next:I
    :goto_3b
    return v1

    .line 220
    :catch_3c
    move-exception v4

    .line 227
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    goto :goto_3b

    :catchall_45
    move-exception v4

    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    throw v4
.end method

.method protected getNextNode()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 76
    iget-boolean v1, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_foundLast:Z

    if-eqz v1, :cond_7

    move v1, v2

    .line 87
    :goto_6
    return v1

    .line 79
    :cond_7
    iget-object v1, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMAxisIterator;->next()I

    move-result v0

    .line 81
    .local v0, next:I
    iget-boolean v1, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_isFresh:Z

    if-eqz v1, :cond_14

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_isFresh:Z

    .line 84
    :cond_14
    if-ne v2, v0, :cond_19

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_foundLast:Z

    :cond_19
    move v1, v0

    .line 87
    goto :goto_6
.end method

.method protected getProximityPosition(I)I
    .registers 8
    .parameter "predicateIndex"

    .prologue
    const/4 v5, -0x1

    .line 127
    if-gez p1, :cond_5

    move v4, v5

    .line 170
    :goto_4
    return v4

    .line 130
    :cond_5
    iget-object v4, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_proximityPositions:[I

    aget v1, v4, p1

    .line 132
    .local v1, count:I
    if-gtz v1, :cond_48

    .line 134
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/xpath/axes/WalkingIterator;->getLastUsedWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v3

    .line 138
    .local v3, savedWalker:Lorg/apache/xpath/axes/AxesWalker;
    :try_start_13
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    .line 140
    .local v0, clone:Lorg/apache/xpath/axes/ReverseAxesWalker;
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->getRoot()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setRoot(I)V

    .line 142
    invoke-virtual {v0, p1}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setPredicateCount(I)V

    .line 144
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 145
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 146
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 149
    add-int/lit8 v1, v1, 0x1

    .line 152
    :goto_34
    invoke-virtual {v0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->nextNode()I

    move-result v2

    .local v2, next:I
    if-eq v5, v2, :cond_3d

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 157
    :cond_3d
    iget-object v4, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_proximityPositions:[I

    aput v1, v4, p1
    :try_end_41
    .catchall {:try_start_13 .. :try_end_41} :catchall_53
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_13 .. :try_end_41} :catch_4a

    .line 166
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .end local v0           #clone:Lorg/apache/xpath/axes/ReverseAxesWalker;
    .end local v2           #next:I
    .end local v3           #savedWalker:Lorg/apache/xpath/axes/AxesWalker;
    :cond_48
    :goto_48
    move v4, v1

    .line 170
    goto :goto_4

    .line 159
    .restart local v3       #savedWalker:Lorg/apache/xpath/axes/AxesWalker;
    :catch_4a
    move-exception v4

    .line 166
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    goto :goto_48

    :catchall_53
    move-exception v4

    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    throw v4
.end method

.method public isDocOrdered()Z
    .registers 2

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public isReverseAxes()Z
    .registers 2

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public setRoot(I)V
    .registers 4
    .parameter "root"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/AxesWalker;->setRoot(I)V

    .line 54
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/ReverseAxesWalker;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_axis:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getAxisIterator(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 55
    iget-object v0, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTMAxisIterator;->setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 56
    return-void
.end method
