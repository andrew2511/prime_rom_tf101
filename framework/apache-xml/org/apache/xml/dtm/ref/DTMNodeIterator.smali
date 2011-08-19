.class public Lorg/apache/xml/dtm/ref/DTMNodeIterator;
.super Ljava/lang/Object;
.source "DTMNodeIterator.java"

# interfaces
.implements Lorg/w3c/dom/traversal/NodeIterator;


# instance fields
.field private dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

.field private valid:Z


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMIterator;)V
    .registers 4
    .parameter "dtmIterator"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->valid:Z

    .line 74
    :try_start_6
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/dtm/DTMIterator;

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;
    :try_end_e
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_6 .. :try_end_e} :catch_f

    .line 80
    return-void

    .line 76
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 78
    .local v0, cnse:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public detach()V
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->valid:Z

    .line 104
    return-void
.end method

.method public getDTMIterator()Lorg/apache/xml/dtm/DTMIterator;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    return-object v0
.end method

.method public getExpandEntityReferences()Z
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public getFilter()Lorg/w3c/dom/traversal/NodeFilter;
    .registers 3

    .prologue
    .line 130
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public getRoot()Lorg/w3c/dom/Node;
    .registers 3

    .prologue
    .line 139
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->getRoot()I

    move-result v0

    .line 140
    .local v0, handle:I
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTMIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    return-object v1
.end method

.method public getWhatToShow()I
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getWhatToShow()I

    move-result v0

    return v0
.end method

.method public nextNode()Lorg/w3c/dom/Node;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 160
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->valid:Z

    if-nez v1, :cond_c

    .line 161
    new-instance v1, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v1

    .line 163
    :cond_c
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v0

    .line 164
    .local v0, handle:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 165
    const/4 v1, 0x0

    .line 166
    :goto_16
    return-object v1

    :cond_17
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTMIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_16
.end method

.method public previousNode()Lorg/w3c/dom/Node;
    .registers 4

    .prologue
    .line 178
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->valid:Z

    if-nez v1, :cond_c

    .line 179
    new-instance v1, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v1

    .line 181
    :cond_c
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->previousNode()I

    move-result v0

    .line 182
    .local v0, handle:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 183
    const/4 v1, 0x0

    .line 184
    :goto_16
    return-object v1

    :cond_17
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTMIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_16
.end method
