.class public Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypedRootIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;I)V
    .registers 3
    .parameter
    .parameter "nodeType"

    .prologue
    .line 360
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    .line 361
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 362
    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_nodeType:I

    .line 363
    return-void
.end method


# virtual methods
.method public next()I
    .registers 7

    .prologue
    const/16 v5, 0xe

    const/4 v4, -0x1

    .line 372
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_startNode:I

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_currentNode:I

    if-ne v2, v3, :cond_b

    move v2, v4

    .line 398
    :goto_a
    return v2

    .line 375
    :cond_b
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_startNode:I

    .line 376
    .local v1, node:I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v0

    .line 378
    .local v0, expType:I
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_currentNode:I

    .line 380
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_nodeType:I

    if-lt v2, v5, :cond_28

    .line 381
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_nodeType:I

    if-ne v2, v0, :cond_46

    .line 382
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->returnNode(I)I

    move-result v2

    goto :goto_a

    .line 386
    :cond_28
    if-ge v0, v5, :cond_33

    .line 387
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_nodeType:I

    if-ne v0, v2, :cond_46

    .line 388
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->returnNode(I)I

    move-result v2

    goto :goto_a

    .line 392
    :cond_33
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget-object v2, v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result v2

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_nodeType:I

    if-ne v2, v3, :cond_46

    .line 393
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->returnNode(I)I

    move-result v2

    goto :goto_a

    :cond_46
    move v2, v4

    .line 398
    goto :goto_a
.end method
