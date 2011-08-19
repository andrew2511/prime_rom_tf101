.class public Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NthDescendantIterator"
.end annotation


# instance fields
.field _pos:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .registers 3
    .parameter
    .parameter "pos"

    .prologue
    .line 1989
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 1990
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->_pos:I

    .line 1991
    return-void
.end method


# virtual methods
.method public next()I
    .registers 8

    .prologue
    const/4 v6, -0x1

    .line 2004
    :cond_1
    invoke-super {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->next()I

    move-result v1

    .local v1, node:I
    if-eq v1, v6, :cond_35

    .line 2006
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v5, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeIdentity(I)I

    move-result v1

    .line 2008
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v5, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_parent(I)I

    move-result v2

    .line 2009
    .local v2, parent:I
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_firstch(I)I

    move-result v0

    .line 2010
    .local v0, child:I
    const/4 v3, 0x0

    .line 2014
    .local v3, pos:I
    :cond_1a
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v5, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_type(I)S

    move-result v4

    .line 2016
    .local v4, type:I
    const/4 v5, 0x1

    if-ne v5, v4, :cond_25

    .line 2017
    add-int/lit8 v3, v3, 0x1

    .line 2019
    :cond_25
    iget v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->_pos:I

    if-ge v3, v5, :cond_31

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v5, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_nextsib(I)I

    move-result v0

    if-ne v0, v6, :cond_1a

    .line 2021
    :cond_31
    if-ne v1, v0, :cond_1

    move v5, v1

    .line 2025
    .end local v0           #child:I
    .end local v2           #parent:I
    .end local v3           #pos:I
    .end local v4           #type:I
    :goto_34
    return v5

    :cond_35
    move v5, v6

    goto :goto_34
.end method
