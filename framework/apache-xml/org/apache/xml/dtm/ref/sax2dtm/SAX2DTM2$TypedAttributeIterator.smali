.class public final Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAttributeIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedAttributeIterator"
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
    .line 563
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 564
    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAttributeIterator;->_nodeType:I

    .line 565
    return-void
.end method


# virtual methods
.method public next()I
    .registers 3

    .prologue
    .line 599
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAttributeIterator;->_currentNode:I

    .line 603
    .local v0, node:I
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAttributeIterator;->_currentNode:I

    .line 605
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAttributeIterator;->returnNode(I)I

    move-result v1

    return v1
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 4
    .parameter "node"

    .prologue
    .line 579
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAttributeIterator;->_isRestartable:Z

    if-eqz v0, :cond_15

    .line 581
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAttributeIterator;->_startNode:I

    .line 583
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAttributeIterator;->_nodeType:I

    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getTypedAttribute(II)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAttributeIterator;->_currentNode:I

    .line 585
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAttributeIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v0

    .line 588
    :goto_14
    return-object v0

    :cond_15
    move-object v0, p0

    goto :goto_14
.end method
