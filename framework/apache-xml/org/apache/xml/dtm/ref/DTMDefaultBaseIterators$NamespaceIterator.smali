.class public Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NamespaceIterator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .registers 2
    .parameter

    .prologue
    .line 591
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    .line 593
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 594
    return-void
.end method


# virtual methods
.method public next()I
    .registers 5

    .prologue
    .line 628
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->_currentNode:I

    .line 630
    .local v0, node:I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_10

    .line 631
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->_startNode:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getNextNamespaceNode(IIZ)I

    move-result v1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->_currentNode:I

    .line 633
    :cond_10
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->returnNode(I)I

    move-result v1

    return v1
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 4
    .parameter "node"

    .prologue
    .line 607
    if-nez p1, :cond_8

    .line 608
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    move-result p1

    .line 609
    :cond_8
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->_isRestartable:Z

    if-eqz v0, :cond_1c

    .line 611
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->_startNode:I

    .line 612
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getFirstNamespaceNode(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->_currentNode:I

    .line 614
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v0

    .line 617
    :goto_1b
    return-object v0

    :cond_1c
    move-object v0, p0

    goto :goto_1b
.end method
