.class public abstract Lorg/apache/harmony/xml/dom/NodeImpl;
.super Ljava/lang/Object;
.source "NodeImpl.java"

# interfaces
.implements Lorg/w3c/dom/Node;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Lorg/w3c/dom/NodeList;

.field static final NULL_TYPE_INFO:Lorg/w3c/dom/TypeInfo;


# instance fields
.field document:Lorg/apache/harmony/xml/dom/DocumentImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    sput-object v0, Lorg/apache/harmony/xml/dom/NodeImpl;->EMPTY_LIST:Lorg/w3c/dom/NodeList;

    .line 51
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeImpl$1;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeImpl$1;-><init>()V

    sput-object v0, Lorg/apache/harmony/xml/dom/NodeImpl;->NULL_TYPE_INFO:Lorg/w3c/dom/TypeInfo;

    return-void
.end method

.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V
    .registers 2
    .parameter "document"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    .line 72
    return-void
.end method

.method private static createEqualityKey(Lorg/w3c/dom/Node;)Ljava/util/List;
    .registers 7
    .parameter "node"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 601
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .local v4, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .local v1, child:Lorg/w3c/dom/Node;
    :goto_37
    if-eqz v1, :cond_41

    .line 609
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_37

    .line 612
    :cond_41
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    sparse-switch v5, :sswitch_data_7e

    .line 628
    :goto_48
    return-object v4

    .line 614
    :sswitch_49
    move-object v0, p0

    check-cast v0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;

    move-object v2, v0

    .line 615
    .local v2, doctype:Lorg/apache/harmony/xml/dom/DocumentTypeImpl;
    invoke-virtual {v2}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    invoke-virtual {v2}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    invoke-virtual {v2}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    invoke-virtual {v2}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    invoke-virtual {v2}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->getNotations()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 623
    .end local v2           #doctype:Lorg/apache/harmony/xml/dom/DocumentTypeImpl;
    :sswitch_71
    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v3, v0

    .line 624
    .local v3, element:Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 612
    nop

    :sswitch_data_7e
    .sparse-switch
        0x1 -> :sswitch_71
        0xa -> :sswitch_49
    .end sparse-switch
.end method

.method private getContainingElement()Lorg/apache/harmony/xml/dom/NodeImpl;
    .registers 4

    .prologue
    .line 482
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, p:Lorg/w3c/dom/Node;
    :goto_4
    if-eqz v0, :cond_16

    .line 483
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 484
    check-cast v0, Lorg/apache/harmony/xml/dom/NodeImpl;

    .end local v0           #p:Lorg/w3c/dom/Node;
    move-object v1, v0

    .line 487
    :goto_10
    return-object v1

    .line 482
    .restart local v0       #p:Lorg/w3c/dom/Node;
    :cond_11
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_4

    .line 487
    :cond_16
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private getNamespacingElement()Lorg/apache/harmony/xml/dom/NodeImpl;
    .registers 5

    .prologue
    .line 449
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_44

    .line 473
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported node type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :pswitch_26
    move-object v0, p0

    .line 470
    .end local p0
    :goto_27
    return-object v0

    .line 454
    .restart local p0
    :pswitch_28
    check-cast p0, Lorg/w3c/dom/Document;

    .end local p0
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    check-cast p0, Lorg/apache/harmony/xml/dom/NodeImpl;

    move-object v0, p0

    goto :goto_27

    .line 460
    .restart local p0
    :pswitch_32
    const/4 v0, 0x0

    goto :goto_27

    .line 463
    :pswitch_34
    check-cast p0, Lorg/w3c/dom/Attr;

    .end local p0
    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object p0

    check-cast p0, Lorg/apache/harmony/xml/dom/NodeImpl;

    move-object v0, p0

    goto :goto_27

    .line 470
    .restart local p0
    :pswitch_3e
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getContainingElement()Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v0

    goto :goto_27

    .line 449
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_26
        :pswitch_34
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_32
        :pswitch_3e
        :pswitch_3e
        :pswitch_28
        :pswitch_32
        :pswitch_32
        :pswitch_32
    .end packed-switch
.end method

.method private getParentBaseUri()Ljava/lang/String;
    .registers 3

    .prologue
    .line 370
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 371
    .local v0, parentNode:Lorg/w3c/dom/Node;
    if-eqz v0, :cond_b

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getBaseURI()Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private namedNodeMapsEqual(Lorg/w3c/dom/NamedNodeMap;Lorg/w3c/dom/NamedNodeMap;)Z
    .registers 9
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v5, 0x0

    .line 679
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    invoke-interface {p2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-eq v3, v4, :cond_d

    move v3, v5

    .line 691
    :goto_c
    return v3

    .line 682
    :cond_d
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_42

    .line 683
    invoke-interface {p1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 684
    .local v0, aNode:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_31

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v1, v3

    .line 687
    .local v1, bNode:Lorg/w3c/dom/Node;
    :goto_27
    if-eqz v1, :cond_2f

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->isEqualNode(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-nez v3, :cond_3f

    :cond_2f
    move v3, v5

    .line 688
    goto :goto_c

    .line 684
    .end local v1           #bNode:Lorg/w3c/dom/Node;
    :cond_31
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v1, v3

    goto :goto_27

    .line 682
    .restart local v1       #bNode:Lorg/w3c/dom/Node;
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 691
    .end local v0           #aNode:Lorg/w3c/dom/Node;
    .end local v1           #bNode:Lorg/w3c/dom/Node;
    :cond_42
    const/4 v3, 0x1

    goto :goto_c
.end method

.method private sanitizeUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 378
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    :cond_9
    move-object v1, v2

    .line 384
    :goto_a
    return-object v1

    .line 382
    :cond_b
    :try_start_b
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_13
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_13} :catch_15

    move-result-object v1

    goto :goto_a

    .line 383
    :catch_15
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/net/URISyntaxException;
    move-object v1, v2

    .line 384
    goto :goto_a
.end method

.method static setName(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;)V
    .registers 12
    .parameter "node"
    .parameter "name"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 278
    const-string v6, ":"

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 279
    .local v5, prefixSeparator:I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_27

    .line 280
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, prefix:Ljava/lang/String;
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, localName:Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-static {v3}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 283
    :cond_21
    new-instance v6, Lorg/w3c/dom/DOMException;

    invoke-direct {v6, v8, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    .line 285
    .end local v3           #localName:Ljava/lang/String;
    .end local v4           #prefix:Ljava/lang/String;
    :cond_27
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 286
    new-instance v6, Lorg/w3c/dom/DOMException;

    invoke-direct {v6, v8, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    .line 289
    :cond_33
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v6

    packed-switch v6, :pswitch_data_6c

    .line 303
    new-instance v6, Lorg/w3c/dom/DOMException;

    const/16 v7, 0x9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot rename nodes of type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    .line 291
    :pswitch_59
    move-object v0, p0

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    move-object v1, v0

    .line 292
    .local v1, attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    iput-boolean v7, v1, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    .line 293
    iput-object p1, v1, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    .line 306
    .end local v1           #attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    :goto_61
    return-void

    .line 297
    :pswitch_62
    move-object v0, p0

    check-cast v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    move-object v2, v0

    .line 298
    .local v2, element:Lorg/apache/harmony/xml/dom/ElementImpl;
    iput-boolean v7, v2, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    .line 299
    iput-object p1, v2, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    goto :goto_61

    .line 289
    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_62
        :pswitch_59
    .end packed-switch
.end method

.method static setNameNS(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "node"
    .parameter "namespaceURI"
    .parameter "qualifiedName"

    .prologue
    const/16 v7, 0xe

    const/4 v6, 0x1

    .line 229
    if-nez p2, :cond_b

    .line 230
    new-instance v5, Lorg/w3c/dom/DOMException;

    invoke-direct {v5, v7, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 233
    :cond_b
    const/4 v4, 0x0

    .line 234
    .local v4, prefix:Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 235
    .local v3, p:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_24

    .line 236
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->validatePrefix(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 237
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 240
    :cond_24
    invoke-static {p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_31

    .line 241
    new-instance v5, Lorg/w3c/dom/DOMException;

    const/4 v6, 0x5

    invoke-direct {v5, v6, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 244
    :cond_31
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v5

    packed-switch v5, :pswitch_data_88

    .line 267
    new-instance v5, Lorg/w3c/dom/DOMException;

    const/16 v6, 0x9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot rename nodes of type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 246
    :pswitch_57
    const-string v5, "xmlns"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    const-string v5, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    .line 248
    new-instance v5, Lorg/w3c/dom/DOMException;

    invoke-direct {v5, v7, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 251
    :cond_6d
    move-object v0, p0

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    move-object v1, v0

    .line 252
    .local v1, attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    iput-boolean v6, v1, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    .line 253
    iput-object p1, v1, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceURI:Ljava/lang/String;

    .line 254
    iput-object v4, v1, Lorg/apache/harmony/xml/dom/AttrImpl;->prefix:Ljava/lang/String;

    .line 255
    iput-object p2, v1, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    .line 270
    .end local v1           #attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    :goto_79
    return-void

    .line 259
    :pswitch_7a
    move-object v0, p0

    check-cast v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    move-object v2, v0

    .line 260
    .local v2, element:Lorg/apache/harmony/xml/dom/ElementImpl;
    iput-boolean v6, v2, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    .line 261
    iput-object p1, v2, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceURI:Ljava/lang/String;

    .line 262
    iput-object v4, v2, Lorg/apache/harmony/xml/dom/ElementImpl;->prefix:Ljava/lang/String;

    .line 263
    iput-object p2, v2, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    goto :goto_79

    .line 244
    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_57
    .end packed-switch
.end method

.method static validatePrefix(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "prefix"
    .parameter "namespaceAware"
    .parameter "namespaceURI"

    .prologue
    const/16 v1, 0xe

    .line 204
    if-nez p1, :cond_a

    .line 205
    new-instance v0, Lorg/w3c/dom/DOMException;

    invoke-direct {v0, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 208
    :cond_a
    if-eqz p0, :cond_3a

    .line 209
    if-eqz p2, :cond_34

    invoke-static {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_24
    const-string v0, "xmlns"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 213
    :cond_34
    new-instance v0, Lorg/w3c/dom/DOMException;

    invoke-direct {v0, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 217
    :cond_3a
    return-object p0
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 5
    .parameter "newChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public final cloneNode(Z)Lorg/w3c/dom/Node;
    .registers 4
    .parameter "deep"

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->cloneOrImportNode(SLorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .registers 3
    .parameter "other"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 390
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBaseURI()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 309
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v5

    packed-switch v5, :pswitch_data_80

    .line 364
    new-instance v5, Lorg/w3c/dom/DOMException;

    const/16 v6, 0x9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported node type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 311
    :pswitch_27
    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/Document;

    move-object v5, v0

    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentURI()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/harmony/xml/dom/NodeImpl;->sanitizeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 361
    :goto_33
    return-object v5

    .line 314
    :pswitch_34
    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v2, v0

    .line 315
    .local v2, element:Lorg/w3c/dom/Element;
    const-string v5, "http://www.w3.org/XML/1998/namespace"

    const-string v6, "base"

    invoke-interface {v2, v5, v6}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, uri:Ljava/lang/String;
    if-eqz v4, :cond_48

    :try_start_42
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 321
    :cond_48
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentBaseUri()Ljava/lang/String;

    move-result-object v5

    goto :goto_33

    .line 325
    :cond_4d
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URI;->isAbsolute()Z

    move-result v5

    if-eqz v5, :cond_5a

    move-object v5, v4

    .line 326
    goto :goto_33

    .line 331
    :cond_5a
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentBaseUri()Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, parentUri:Ljava/lang/String;
    if-nez v3, :cond_62

    move-object v5, v7

    .line 333
    goto :goto_33

    .line 336
    :cond_62
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_6e
    .catch Ljava/net/URISyntaxException; {:try_start_42 .. :try_end_6e} :catch_70

    move-result-object v5

    goto :goto_33

    .line 337
    .end local v3           #parentUri:Ljava/lang/String;
    :catch_70
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/net/URISyntaxException;
    move-object v5, v7

    .line 338
    goto :goto_33

    .line 342
    .end local v1           #e:Ljava/net/URISyntaxException;
    .end local v2           #element:Lorg/w3c/dom/Element;
    .end local v4           #uri:Ljava/lang/String;
    :pswitch_74
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentBaseUri()Ljava/lang/String;

    move-result-object v5

    goto :goto_33

    :pswitch_79
    move-object v5, v7

    .line 348
    goto :goto_33

    :pswitch_7b
    move-object v5, v7

    .line 353
    goto :goto_33

    :pswitch_7d
    move-object v5, v7

    .line 361
    goto :goto_33

    .line 309
    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_34
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_7b
        :pswitch_79
        :pswitch_74
        :pswitch_7d
        :pswitch_27
        :pswitch_7d
        :pswitch_7d
        :pswitch_79
    .end packed-switch
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .registers 2

    .prologue
    .line 87
    sget-object v0, Lorg/apache/harmony/xml/dom/NodeImpl;->EMPTY_LIST:Lorg/w3c/dom/NodeList;

    return-object v0
.end method

.method public final getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 695
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/NodeImpl;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getNodeType()S
.end method

.method public getNodeValue()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOwnerDocument()Lorg/w3c/dom/Document;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    goto :goto_5
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTextContent(Ljava/lang/StringBuilder;)V
    .registers 3
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, content:Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 400
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :cond_9
    return-void
.end method

.method public final getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .parameter "key"

    .prologue
    .line 710
    if-nez p1, :cond_8

    .line 711
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 713
    :cond_8
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v2, p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getUserDataMapForRead(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;

    move-result-object v0

    .line 714
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;

    .line 715
    .local v1, userData:Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
    if-eqz v1, :cond_19

    iget-object v2, v1, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;->value:Ljava/lang/Object;

    :goto_18
    return-object v2

    :cond_19
    const/4 v2, 0x0

    goto :goto_18
.end method

.method public hasAttributes()Z
    .registers 2

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public hasChildNodes()Z
    .registers 2

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 6
    .parameter "newChild"
    .parameter "refChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public final isDefaultNamespace(Ljava/lang/String;)Z
    .registers 4
    .parameter "namespaceURI"

    .prologue
    .line 551
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, actual:Ljava/lang/String;
    if-nez p1, :cond_d

    if-nez v0, :cond_b

    const/4 v1, 0x1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a

    :cond_d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_a
.end method

.method public final isEqualNode(Lorg/w3c/dom/Node;)Z
    .registers 11
    .parameter "arg"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 632
    if-ne p1, p0, :cond_6

    move v5, v8

    .line 675
    :goto_5
    return v5

    .line 636
    :cond_6
    invoke-static {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->createEqualityKey(Lorg/w3c/dom/Node;)Ljava/util/List;

    move-result-object v3

    .line 637
    .local v3, listA:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->createEqualityKey(Lorg/w3c/dom/Node;)Ljava/util/List;

    move-result-object v4

    .line 639
    .local v4, listB:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_1a

    move v5, v7

    .line 640
    goto :goto_5

    .line 643
    :cond_1a
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_72

    .line 644
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 645
    .local v0, a:Ljava/lang/Object;
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 647
    .local v1, b:Ljava/lang/Object;
    if-ne v0, v1, :cond_2e

    .line 643
    .end local v0           #a:Ljava/lang/Object;
    .end local v1           #b:Ljava/lang/Object;
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 650
    .restart local v0       #a:Ljava/lang/Object;
    .restart local v1       #b:Ljava/lang/Object;
    :cond_2e
    if-eqz v0, :cond_32

    if-nez v1, :cond_34

    :cond_32
    move v5, v7

    .line 651
    goto :goto_5

    .line 653
    :cond_34
    instance-of v5, v0, Ljava/lang/String;

    if-nez v5, :cond_3c

    instance-of v5, v0, Ljava/lang/Short;

    if-eqz v5, :cond_44

    .line 654
    :cond_3c
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    move v5, v7

    .line 655
    goto :goto_5

    .line 658
    :cond_44
    instance-of v5, v0, Lorg/w3c/dom/NamedNodeMap;

    if-eqz v5, :cond_58

    .line 659
    instance-of v5, v1, Lorg/w3c/dom/NamedNodeMap;

    if-eqz v5, :cond_56

    check-cast v0, Lorg/w3c/dom/NamedNodeMap;

    .end local v0           #a:Ljava/lang/Object;
    check-cast v1, Lorg/w3c/dom/NamedNodeMap;

    .end local v1           #b:Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->namedNodeMapsEqual(Lorg/w3c/dom/NamedNodeMap;Lorg/w3c/dom/NamedNodeMap;)Z

    move-result v5

    if-nez v5, :cond_2b

    :cond_56
    move v5, v7

    .line 661
    goto :goto_5

    .line 664
    .restart local v0       #a:Ljava/lang/Object;
    .restart local v1       #b:Ljava/lang/Object;
    :cond_58
    instance-of v5, v0, Lorg/w3c/dom/Node;

    if-eqz v5, :cond_6c

    .line 665
    instance-of v5, v1, Lorg/w3c/dom/Node;

    if-eqz v5, :cond_6a

    check-cast v0, Lorg/w3c/dom/Node;

    .end local v0           #a:Ljava/lang/Object;
    check-cast v1, Lorg/w3c/dom/Node;

    .end local v1           #b:Ljava/lang/Object;
    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->isEqualNode(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-nez v5, :cond_2b

    :cond_6a
    move v5, v7

    .line 667
    goto :goto_5

    .line 671
    .restart local v0       #a:Ljava/lang/Object;
    .restart local v1       #b:Ljava/lang/Object;
    :cond_6c
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .end local v0           #a:Ljava/lang/Object;
    .end local v1           #b:Ljava/lang/Object;
    :cond_72
    move v5, v8

    .line 675
    goto :goto_5
.end method

.method isPrefixMappedToUri(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 542
    if-nez p1, :cond_4

    .line 543
    const/4 v1, 0x0

    .line 547
    :goto_3
    return v1

    .line 546
    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, actual:Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .registers 3
    .parameter "other"

    .prologue
    .line 441
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 149
    invoke-static {}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->getInstance()Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "prefix"

    .prologue
    const/4 v10, 0x0

    .line 558
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespacingElement()Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v6

    .line 559
    .local v6, target:Lorg/apache/harmony/xml/dom/NodeImpl;
    move-object v4, v6

    .local v4, node:Lorg/apache/harmony/xml/dom/NodeImpl;
    :goto_6
    if-eqz v4, :cond_7d

    .line 561
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v5

    .line 562
    .local v5, nodePrefix:Ljava/lang/String;
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_21

    .line 563
    if-nez p1, :cond_1b

    if-nez v5, :cond_21

    .line 566
    :cond_16
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    .line 591
    .end local v5           #nodePrefix:Ljava/lang/String;
    :goto_1a
    return-object v8

    .line 563
    .restart local v5       #nodePrefix:Ljava/lang/String;
    :cond_1b
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    .line 573
    :cond_21
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->hasAttributes()Z

    move-result v8

    if-nez v8, :cond_2c

    .line 559
    :cond_27
    invoke-direct {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getContainingElement()Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v4

    goto :goto_6

    .line 576
    :cond_2c
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 577
    .local v1, attributes:Lorg/w3c/dom/NamedNodeMap;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    .local v3, length:I
    :goto_35
    if-ge v2, v3, :cond_27

    .line 578
    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 579
    .local v0, attr:Lorg/w3c/dom/Node;
    const-string v8, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4a

    .line 577
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 582
    :cond_4a
    if-nez p1, :cond_64

    const-string v8, "xmlns"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 585
    :goto_58
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 586
    .local v7, value:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7b

    move-object v8, v7

    goto :goto_1a

    .line 582
    .end local v7           #value:Ljava/lang/String;
    :cond_64
    const-string v8, "xmlns"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_47

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_47

    goto :goto_58

    .restart local v7       #value:Ljava/lang/String;
    :cond_7b
    move-object v8, v10

    .line 586
    goto :goto_1a

    .end local v0           #attr:Lorg/w3c/dom/Node;
    .end local v1           #attributes:Lorg/w3c/dom/NamedNodeMap;
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v5           #nodePrefix:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_7d
    move-object v8, v10

    .line 591
    goto :goto_1a
.end method

.method public final lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "namespaceURI"

    .prologue
    const/4 v8, 0x0

    .line 491
    if-nez p1, :cond_5

    move-object v6, v8

    .line 525
    :goto_4
    return-object v6

    .line 498
    :cond_5
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespacingElement()Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v5

    .line 499
    .local v5, target:Lorg/apache/harmony/xml/dom/NodeImpl;
    move-object v4, v5

    .local v4, node:Lorg/apache/harmony/xml/dom/NodeImpl;
    :goto_a
    if-eqz v4, :cond_73

    .line 501
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->isPrefixMappedToUri(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 503
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 508
    :cond_25
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->hasAttributes()Z

    move-result v6

    if-nez v6, :cond_30

    .line 499
    :cond_2b
    invoke-direct {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getContainingElement()Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v4

    goto :goto_a

    .line 511
    :cond_30
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 512
    .local v1, attributes:Lorg/w3c/dom/NamedNodeMap;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    .local v3, length:I
    :goto_39
    if-ge v2, v3, :cond_2b

    .line 513
    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 514
    .local v0, attr:Lorg/w3c/dom/Node;
    const-string v6, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    const-string v6, "xmlns"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_64

    .line 512
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 519
    :cond_64
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->isPrefixMappedToUri(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 520
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .end local v0           #attr:Lorg/w3c/dom/Node;
    .end local v1           #attributes:Lorg/w3c/dom/NamedNodeMap;
    .end local v2           #i:I
    .end local v3           #length:I
    :cond_73
    move-object v6, v8

    .line 525
    goto :goto_4
.end method

.method public normalize()V
    .registers 1

    .prologue
    .line 153
    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 5
    .parameter "oldChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 6
    .parameter "newChild"
    .parameter "oldChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public final setNodeValue(Ljava/lang/String;)V
    .registers 6
    .parameter "nodeValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_38

    .line 189
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported node type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 168
    :pswitch_26
    check-cast p0, Lorg/w3c/dom/CharacterData;

    .end local p0
    invoke-interface {p0, p1}, Lorg/w3c/dom/CharacterData;->setData(Ljava/lang/String;)V

    .line 186
    :goto_2b
    :pswitch_2b
    return-void

    .line 172
    .restart local p0
    :pswitch_2c
    check-cast p0, Lorg/w3c/dom/ProcessingInstruction;

    .end local p0
    invoke-interface {p0, p1}, Lorg/w3c/dom/ProcessingInstruction;->setData(Ljava/lang/String;)V

    goto :goto_2b

    .line 176
    .restart local p0
    :pswitch_32
    check-cast p0, Lorg/w3c/dom/Attr;

    .end local p0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    goto :goto_2b

    .line 164
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_32
        :pswitch_26
        :pswitch_26
        :pswitch_2b
        :pswitch_2b
        :pswitch_2c
        :pswitch_26
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 2
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 195
    return-void
.end method

.method public final setTextContent(Ljava/lang/String;)V
    .registers 7
    .parameter "textContent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 405
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_46

    .line 435
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported node type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 416
    :goto_26
    :pswitch_26
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, child:Lorg/w3c/dom/Node;
    if-eqz v0, :cond_30

    .line 417
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/NodeImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_26

    .line 420
    :cond_30
    if-eqz p1, :cond_41

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_41

    .line 421
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 432
    .end local v0           #child:Lorg/w3c/dom/Node;
    :cond_41
    :goto_41
    :pswitch_41
    return-void

    .line 431
    :pswitch_42
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->setNodeValue(Ljava/lang/String;)V

    goto :goto_41

    .line 405
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_26
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_26
        :pswitch_26
        :pswitch_42
        :pswitch_42
        :pswitch_41
        :pswitch_41
        :pswitch_26
        :pswitch_42
    .end packed-switch
.end method

.method public final setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .registers 7
    .parameter "key"
    .parameter "data"
    .parameter "handler"

    .prologue
    .line 699
    if-nez p1, :cond_8

    .line 700
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 702
    :cond_8
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v2, p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getUserDataMap(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;

    move-result-object v0

    .line 703
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    if-nez p2, :cond_1c

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;

    move-object v1, p0

    .line 706
    .local v1, previous:Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
    :goto_17
    if-eqz v1, :cond_29

    iget-object v2, v1, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;->value:Ljava/lang/Object;

    :goto_1b
    return-object v2

    .line 703
    .end local v1           #previous:Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
    .restart local p0
    :cond_1c
    new-instance v2, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;

    invoke-direct {v2, p2, p3}, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;-><init>(Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;

    move-object v1, p0

    goto :goto_17

    .line 706
    .restart local v1       #previous:Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
    :cond_29
    const/4 v2, 0x0

    goto :goto_1b
.end method
