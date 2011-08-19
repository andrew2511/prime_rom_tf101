.class public final Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;
.super Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedPrecedingIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;I)V
    .registers 3
    .parameter
    .parameter "type"

    .prologue
    .line 972
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;-><init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V

    .line 973
    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_nodeType:I

    .line 974
    return-void
.end method


# virtual methods
.method public next()I
    .registers 9

    .prologue
    const/16 v7, 0xe

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 983
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_currentNode:I

    .line 984
    .local v1, node:I
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_nodeType:I

    .line 986
    .local v2, nodeType:I
    if-lt v2, v7, :cond_31

    .line 988
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 990
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_sp:I

    if-gez v3, :cond_17

    .line 991
    const/4 v1, -0x1

    .line 1037
    :goto_11
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_currentNode:I

    .line 1039
    if-ne v1, v5, :cond_62

    move v3, v5

    :goto_16
    return v3

    .line 994
    :cond_17
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_stack:[I

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_sp:I

    aget v3, v3, v4

    if-lt v1, v3, :cond_28

    .line 995
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_sp:I

    sub-int/2addr v3, v6

    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_sp:I

    if-gez v3, :cond_a

    .line 996
    const/4 v1, -0x1

    .line 997
    goto :goto_11

    .line 1000
    :cond_28
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v3

    if-ne v3, v2, :cond_a

    goto :goto_11

    .line 1009
    :cond_31
    add-int/lit8 v1, v1, 0x1

    .line 1011
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_sp:I

    if-gez v3, :cond_39

    .line 1012
    const/4 v1, -0x1

    .line 1013
    goto :goto_11

    .line 1015
    :cond_39
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_stack:[I

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_sp:I

    aget v3, v3, v4

    if-lt v1, v3, :cond_4a

    .line 1016
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_sp:I

    sub-int/2addr v3, v6

    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_sp:I

    if-gez v3, :cond_31

    .line 1017
    const/4 v1, -0x1

    .line 1018
    goto :goto_11

    .line 1022
    :cond_4a
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v0

    .line 1023
    .local v0, expType:I
    if-ge v0, v7, :cond_55

    .line 1024
    if-ne v0, v2, :cond_31

    goto :goto_11

    .line 1029
    :cond_55
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget-object v3, v3, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result v3

    if-ne v3, v2, :cond_31

    goto :goto_11

    .line 1039
    .end local v0           #expType:I
    :cond_62
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->returnNode(I)I

    move-result v3

    goto :goto_16
.end method
