.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChildrenIterator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .registers 2
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    return-void
.end method


# virtual methods
.method public next()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 327
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->_currentNode:I

    if-eq v1, v2, :cond_1a

    .line 328
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->_currentNode:I

    .line 329
    .local v0, node:I
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_nextsib(I)I

    move-result v1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->_currentNode:I

    .line 330
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->returnNode(I)I

    move-result v1

    .line 333
    .end local v0           #node:I
    :goto_19
    return v1

    :cond_1a
    move v1, v2

    goto :goto_19
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 4
    .parameter "node"

    .prologue
    const/4 v1, -0x1

    .line 305
    if-nez p1, :cond_9

    .line 306
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    move-result p1

    .line 307
    :cond_9
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->_isRestartable:Z

    if-eqz v0, :cond_26

    .line 309
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->_startNode:I

    .line 310
    if-ne p1, v1, :cond_19

    move v0, v1

    :goto_12
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->_currentNode:I

    .line 313
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v0

    .line 316
    :goto_18
    return-object v0

    .line 310
    :cond_19
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeIdentity(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_firstch(I)I

    move-result v0

    goto :goto_12

    :cond_26
    move-object v0, p0

    .line 316
    goto :goto_18
.end method
