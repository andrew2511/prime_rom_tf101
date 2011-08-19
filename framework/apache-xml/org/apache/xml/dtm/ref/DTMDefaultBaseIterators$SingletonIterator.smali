.class public Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SingletonIterator"
.end annotation


# instance fields
.field private _isConstant:Z

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .registers 4
    .parameter

    .prologue
    .line 2044
    const/high16 v0, -0x8000

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;IZ)V

    .line 2045
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .registers 4
    .parameter
    .parameter "node"

    .prologue
    .line 2055
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;IZ)V

    .line 2056
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;IZ)V
    .registers 4
    .parameter
    .parameter "node"
    .parameter "constant"

    .prologue
    .line 2066
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 2067
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_startNode:I

    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_currentNode:I

    .line 2068
    iput-boolean p3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_isConstant:Z

    .line 2069
    return-void
.end method


# virtual methods
.method public next()I
    .registers 3

    .prologue
    .line 2137
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_currentNode:I

    .line 2139
    .local v0, result:I
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_currentNode:I

    .line 2141
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->returnNode(I)I

    move-result v1

    return v1
.end method

.method public reset()Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 3

    .prologue
    .line 2109
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_isConstant:Z

    if-eqz v1, :cond_d

    .line 2111
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_startNode:I

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_currentNode:I

    .line 2113
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v1

    .line 2126
    :goto_c
    return-object v1

    .line 2117
    :cond_d
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_isRestartable:Z

    .line 2119
    .local v0, temp:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_isRestartable:Z

    .line 2121
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_startNode:I

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 2123
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_isRestartable:Z

    move-object v1, p0

    .line 2126
    goto :goto_c
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 3
    .parameter "node"

    .prologue
    .line 2082
    if-nez p1, :cond_8

    .line 2083
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    move-result p1

    .line 2084
    :cond_8
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_isConstant:Z

    if-eqz v0, :cond_15

    .line 2086
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_startNode:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_currentNode:I

    .line 2088
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v0

    .line 2097
    :goto_14
    return-object v0

    .line 2090
    :cond_15
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_isRestartable:Z

    if-eqz v0, :cond_22

    .line 2092
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_startNode:I

    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_currentNode:I

    .line 2094
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v0

    goto :goto_14

    :cond_22
    move-object v0, p0

    .line 2097
    goto :goto_14
.end method
