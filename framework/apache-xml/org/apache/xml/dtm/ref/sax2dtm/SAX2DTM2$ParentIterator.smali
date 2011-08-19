.class public final Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ParentIterator"
.end annotation


# instance fields
.field private _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V
    .registers 3
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public next()I
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 186
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_currentNode:I

    .line 187
    .local v0, result:I
    if-ne v0, v3, :cond_7

    move v1, v3

    .line 208
    :goto_6
    return v1

    .line 191
    :cond_7
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_nodeType:I

    if-ne v1, v3, :cond_18

    .line 192
    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_currentNode:I

    .line 193
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->returnNode(I)I

    move-result v1

    goto :goto_6

    .line 195
    :cond_18
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_nodeType:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_35

    .line 196
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_nodeType:I

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v2

    if-ne v1, v2, :cond_4c

    .line 197
    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_currentNode:I

    .line 198
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->returnNode(I)I

    move-result v1

    goto :goto_6

    .line 202
    :cond_35
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_nodeType:I

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v2

    if-ne v1, v2, :cond_4c

    .line 203
    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_currentNode:I

    .line 204
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->returnNode(I)I

    move-result v1

    goto :goto_6

    :cond_4c
    move v1, v3

    .line 208
    goto :goto_6
.end method

.method public setNodeType(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 2
    .parameter "type"

    .prologue
    .line 173
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_nodeType:I

    .line 175
    return-object p0
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 4
    .parameter "node"

    .prologue
    const/4 v1, -0x1

    .line 143
    if-nez p1, :cond_9

    .line 144
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getDocument()I

    move-result p1

    .line 145
    :cond_9
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_isRestartable:Z

    if-eqz v0, :cond_27

    .line 147
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_startNode:I

    .line 149
    if-eq p1, v1, :cond_24

    .line 150
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_currentNode:I

    .line 154
    :goto_1f
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v0

    .line 157
    :goto_23
    return-object v0

    .line 152
    :cond_24
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_currentNode:I

    goto :goto_1f

    :cond_27
    move-object v0, p0

    .line 157
    goto :goto_23
.end method
