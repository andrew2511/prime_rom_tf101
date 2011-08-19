.class public Lorg/dom4j/dom/DOMNodeHelper;
.super Ljava/lang/Object;
.source "DOMNodeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/dom4j/dom/DOMNodeHelper$EmptyNodeList;
    }
.end annotation


# static fields
.field public static final EMPTY_NODE_LIST:Lorg/w3c/dom/NodeList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lorg/dom4j/dom/DOMNodeHelper$EmptyNodeList;

    invoke-direct {v0}, Lorg/dom4j/dom/DOMNodeHelper$EmptyNodeList;-><init>()V

    sput-object v0, Lorg/dom4j/dom/DOMNodeHelper;->EMPTY_NODE_LIST:Lorg/w3c/dom/NodeList;

    .line 32
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static appendChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 7
    .parameter "node"
    .parameter "newChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 186
    instance-of v3, p0, Lorg/dom4j/Branch;

    if-eqz v3, :cond_1

    .line 187
    move-object v0, p0

    check-cast v0, Lorg/dom4j/Branch;

    move-object v1, v0

    .line 188
    .local v1, branch:Lorg/dom4j/Branch;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 190
    .local v2, previousParent:Lorg/w3c/dom/Node;
    if-eqz v2, :cond_0

    .line 191
    invoke-interface {v2, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 194
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/dom4j/Node;

    move-object v3, v0

    invoke-interface {v1, v3}, Lorg/dom4j/Branch;->add(Lorg/dom4j/Node;)V

    .line 196
    return-object p1

    .line 199
    .end local v1           #branch:Lorg/dom4j/Branch;
    .end local v2           #previousParent:Lorg/w3c/dom/Node;
    :cond_1
    new-instance v3, Lorg/w3c/dom/DOMException;

    const/4 v4, 0x3

    .line 200
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Children not allowed for this node: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 199
    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3
.end method

.method public static appendData(Lorg/dom4j/CharacterData;Ljava/lang/String;)V
    .locals 5
    .parameter "charData"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/4 v2, 0x7

    .line 270
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "CharacterData node is read only: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 269
    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 272
    :cond_0
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, text:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 275
    invoke-interface {p0, v0}, Lorg/dom4j/CharacterData;->setText(Ljava/lang/String;)V

    .line 280
    :goto_0
    return-void

    .line 277
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/dom4j/CharacterData;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static appendElementsByTagName(Ljava/util/List;Lorg/dom4j/Branch;Ljava/lang/String;)V
    .locals 7
    .parameter "list"
    .parameter "parent"
    .parameter "name"

    .prologue
    .line 367
    const-string v6, "*"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 369
    .local v3, isStar:Z
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {p1}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v5

    .local v5, size:I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 382
    return-void

    .line 370
    :cond_0
    invoke-interface {p1, v2}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v4

    .line 372
    .local v4, node:Lorg/dom4j/Node;
    instance-of v6, v4, Lorg/dom4j/Element;

    if-eqz v6, :cond_3

    .line 373
    move-object v0, v4

    check-cast v0, Lorg/dom4j/Element;

    move-object v1, v0

    .line 375
    .local v1, element:Lorg/dom4j/Element;
    if-nez v3, :cond_1

    invoke-interface {v1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 376
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_2
    invoke-static {p0, v1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->appendElementsByTagName(Ljava/util/List;Lorg/dom4j/Branch;Ljava/lang/String;)V

    .line 369
    .end local v1           #element:Lorg/dom4j/Element;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static appendElementsByTagNameNS(Ljava/util/List;Lorg/dom4j/Branch;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "list"
    .parameter "parent"
    .parameter "namespace"
    .parameter "localName"

    .prologue
    .line 386
    const-string v7, "*"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 387
    .local v4, isStarNS:Z
    const-string v7, "*"

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 389
    .local v3, isStar:Z
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {p1}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v6

    .local v6, size:I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 409
    return-void

    .line 390
    :cond_0
    invoke-interface {p1, v2}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v5

    .line 392
    .local v5, node:Lorg/dom4j/Node;
    instance-of v7, v5, Lorg/dom4j/Element;

    if-eqz v7, :cond_6

    .line 393
    move-object v0, v5

    check-cast v0, Lorg/dom4j/Element;

    move-object v1, v0

    .line 395
    .local v1, element:Lorg/dom4j/Element;
    if-nez v4, :cond_3

    .line 396
    if-eqz p2, :cond_1

    .line 397
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 398
    :cond_1
    invoke-interface {v1}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    .line 397
    if-eqz v7, :cond_3

    .line 399
    invoke-interface {v1}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 398
    if-eqz v7, :cond_3

    .line 400
    :cond_2
    if-eqz p2, :cond_5

    .line 401
    invoke-interface {v1}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 402
    :cond_3
    if-nez v3, :cond_4

    invoke-interface {v1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 403
    :cond_4
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_5
    invoke-static {p0, v1, p2, p3}, Lorg/dom4j/dom/DOMNodeHelper;->appendElementsByTagNameNS(Ljava/util/List;Lorg/dom4j/Branch;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .end local v1           #element:Lorg/dom4j/Element;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static asDOMAttr(Lorg/dom4j/Node;)Lorg/w3c/dom/Attr;
    .locals 2
    .parameter "attribute"

    .prologue
    const/4 v1, 0x0

    .line 512
    if-nez p0, :cond_0

    move-object v0, v1

    .line 522
    .end local p0
    :goto_0
    return-object v0

    .line 516
    .restart local p0
    :cond_0
    instance-of v0, p0, Lorg/w3c/dom/Attr;

    if-eqz v0, :cond_1

    .line 517
    check-cast p0, Lorg/w3c/dom/Attr;

    .end local p0
    move-object v0, p0

    goto :goto_0

    .line 520
    .restart local p0
    :cond_1
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    move-object v0, v1

    .line 522
    goto :goto_0
.end method

.method public static asDOMDocument(Lorg/dom4j/Document;)Lorg/w3c/dom/Document;
    .locals 2
    .parameter "document"

    .prologue
    const/4 v1, 0x0

    .line 452
    if-nez p0, :cond_0

    move-object v0, v1

    .line 462
    .end local p0
    :goto_0
    return-object v0

    .line 456
    .restart local p0
    :cond_0
    instance-of v0, p0, Lorg/w3c/dom/Document;

    if-eqz v0, :cond_1

    .line 457
    check-cast p0, Lorg/w3c/dom/Document;

    .end local p0
    move-object v0, p0

    goto :goto_0

    .line 460
    .restart local p0
    :cond_1
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    move-object v0, v1

    .line 462
    goto :goto_0
.end method

.method public static asDOMDocumentType(Lorg/dom4j/DocumentType;)Lorg/w3c/dom/DocumentType;
    .locals 2
    .parameter "dt"

    .prologue
    const/4 v1, 0x0

    .line 467
    if-nez p0, :cond_0

    move-object v0, v1

    .line 477
    .end local p0
    :goto_0
    return-object v0

    .line 471
    .restart local p0
    :cond_0
    instance-of v0, p0, Lorg/w3c/dom/DocumentType;

    if-eqz v0, :cond_1

    .line 472
    check-cast p0, Lorg/w3c/dom/DocumentType;

    .end local p0
    move-object v0, p0

    goto :goto_0

    .line 475
    .restart local p0
    :cond_1
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    move-object v0, v1

    .line 477
    goto :goto_0
.end method

.method public static asDOMElement(Lorg/dom4j/Node;)Lorg/w3c/dom/Element;
    .locals 2
    .parameter "element"

    .prologue
    const/4 v1, 0x0

    .line 497
    if-nez p0, :cond_0

    move-object v0, v1

    .line 507
    .end local p0
    :goto_0
    return-object v0

    .line 501
    .restart local p0
    :cond_0
    instance-of v0, p0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_1

    .line 502
    check-cast p0, Lorg/w3c/dom/Element;

    .end local p0
    move-object v0, p0

    goto :goto_0

    .line 505
    .restart local p0
    :cond_1
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    move-object v0, v1

    .line 507
    goto :goto_0
.end method

.method public static asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;
    .locals 4
    .parameter "node"

    .prologue
    const/4 v3, 0x0

    .line 435
    if-nez p0, :cond_0

    move-object v0, v3

    .line 447
    .end local p0
    :goto_0
    return-object v0

    .line 439
    .restart local p0
    :cond_0
    instance-of v0, p0, Lorg/w3c/dom/Node;

    if-eqz v0, :cond_1

    .line 440
    check-cast p0, Lorg/w3c/dom/Node;

    .end local p0
    move-object v0, p0

    goto :goto_0

    .line 443
    .restart local p0
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Cannot convert: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 444
    const-string v2, " into a W3C DOM Node"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 445
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    move-object v0, v3

    .line 447
    goto :goto_0
.end method

.method public static asDOMText(Lorg/dom4j/CharacterData;)Lorg/w3c/dom/Text;
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 482
    if-nez p0, :cond_0

    move-object v0, v1

    .line 492
    .end local p0
    :goto_0
    return-object v0

    .line 486
    .restart local p0
    :cond_0
    instance-of v0, p0, Lorg/w3c/dom/Text;

    if-eqz v0, :cond_1

    .line 487
    check-cast p0, Lorg/w3c/dom/Text;

    .end local p0
    move-object v0, p0

    goto :goto_0

    .line 490
    .restart local p0
    :cond_1
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    move-object v0, v1

    .line 492
    goto :goto_0
.end method

.method public static cloneNode(Lorg/dom4j/Node;Z)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "node"
    .parameter "deep"

    .prologue
    .line 208
    invoke-interface {p0}, Lorg/dom4j/Node;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/dom4j/Node;

    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public static createNodeList(Ljava/util/List;)Lorg/w3c/dom/NodeList;
    .locals 1
    .parameter "list"

    .prologue
    .line 414
    new-instance v0, Lorg/dom4j/dom/DOMNodeHelper$1;

    invoke-direct {v0, p0}, Lorg/dom4j/dom/DOMNodeHelper$1;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static deleteData(Lorg/dom4j/CharacterData;II)V
    .locals 7
    .parameter "charData"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 309
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    new-instance v3, Lorg/w3c/dom/DOMException;

    const/4 v4, 0x7

    .line 311
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "CharacterData node is read only: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 310
    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 313
    :cond_0
    if-gez p2, :cond_1

    .line 314
    new-instance v3, Lorg/w3c/dom/DOMException;

    .line 315
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Illegal value for count: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 314
    invoke-direct {v3, v6, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 318
    :cond_1
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, text:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 321
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 323
    .local v1, length:I
    if-ltz p1, :cond_2

    if-lt p1, v1, :cond_3

    .line 324
    :cond_2
    new-instance v3, Lorg/w3c/dom/DOMException;

    .line 325
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "No text at offset: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 324
    invoke-direct {v3, v6, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 327
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, buffer:Ljava/lang/StringBuffer;
    add-int v3, p1, p2

    invoke-virtual {v0, p1, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Lorg/dom4j/CharacterData;->setText(Ljava/lang/String;)V

    .line 333
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #length:I
    :cond_4
    return-void
.end method

.method public static getAttributes(Lorg/dom4j/Node;)Lorg/w3c/dom/NamedNodeMap;
    .locals 1
    .parameter "node"

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getChildNodes(Lorg/dom4j/Node;)Lorg/w3c/dom/NodeList;
    .locals 1
    .parameter "node"

    .prologue
    .line 74
    sget-object v0, Lorg/dom4j/dom/DOMNodeHelper;->EMPTY_NODE_LIST:Lorg/w3c/dom/NodeList;

    return-object v0
.end method

.method public static getData(Lorg/dom4j/CharacterData;)Ljava/lang/String;
    .locals 1
    .parameter "charData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstChild(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "node"

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLastChild(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "node"

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLength(Lorg/dom4j/CharacterData;)I
    .locals 2
    .parameter "charData"

    .prologue
    .line 239
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLocalName(Lorg/dom4j/Node;)Ljava/lang/String;
    .locals 1
    .parameter "node"

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNamespaceURI(Lorg/dom4j/Node;)Ljava/lang/String;
    .locals 1
    .parameter "node"

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNextSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;
    .locals 4
    .parameter "node"

    .prologue
    .line 102
    invoke-interface {p0}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v2

    .line 104
    .local v2, parent:Lorg/dom4j/Element;
    if-eqz v2, :cond_0

    .line 105
    invoke-interface {v2, p0}, Lorg/dom4j/Element;->indexOf(Lorg/dom4j/Node;)I

    move-result v0

    .line 107
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 108
    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2}, Lorg/dom4j/Element;->nodeCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 109
    invoke-interface {v2, v0}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v1

    .line 111
    .local v1, next:Lorg/dom4j/Node;
    invoke-static {v1}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 116
    .end local v0           #index:I
    .end local v1           #next:Lorg/dom4j/Node;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getNodeValue(Lorg/dom4j/Node;)Ljava/lang/String;
    .locals 1
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-interface {p0}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOwnerDocument(Lorg/dom4j/Node;)Lorg/w3c/dom/Document;
    .locals 1
    .parameter "node"

    .prologue
    .line 124
    invoke-interface {p0}, Lorg/dom4j/Node;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMDocument(Lorg/dom4j/Document;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static getParentNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "node"

    .prologue
    .line 70
    invoke-interface {p0}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public static getPrefix(Lorg/dom4j/Node;)Ljava/lang/String;
    .locals 1
    .parameter "node"

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPreviousSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;
    .locals 4
    .parameter "node"

    .prologue
    .line 86
    invoke-interface {p0}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v1

    .line 88
    .local v1, parent:Lorg/dom4j/Element;
    if-eqz v1, :cond_0

    .line 89
    invoke-interface {v1, p0}, Lorg/dom4j/Element;->indexOf(Lorg/dom4j/Node;)I

    move-result v0

    .line 91
    .local v0, index:I
    if-lez v0, :cond_0

    .line 92
    const/4 v3, 0x1

    sub-int v3, v0, v3

    invoke-interface {v1, v3}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v2

    .line 94
    .local v2, previous:Lorg/dom4j/Node;
    invoke-static {v2}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 98
    .end local v0           #index:I
    .end local v2           #previous:Lorg/dom4j/Node;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static hasAttributes(Lorg/dom4j/Node;)Z
    .locals 2
    .parameter "node"

    .prologue
    const/4 v1, 0x0

    .line 220
    if-eqz p0, :cond_1

    instance-of v0, p0, Lorg/dom4j/Element;

    if-eqz v0, :cond_1

    .line 221
    check-cast p0, Lorg/dom4j/Element;

    .end local p0
    invoke-interface {p0}, Lorg/dom4j/Element;->attributeCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 223
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 221
    goto :goto_0

    .restart local p0
    :cond_1
    move v0, v1

    .line 223
    goto :goto_0
.end method

.method public static hasChildNodes(Lorg/dom4j/Node;)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public static insertBefore(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 8
    .parameter "node"
    .parameter "newChild"
    .parameter "refChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 130
    instance-of v4, p0, Lorg/dom4j/Branch;

    if-eqz v4, :cond_1

    .line 131
    move-object v0, p0

    check-cast v0, Lorg/dom4j/Branch;

    move-object v1, v0

    .line 132
    .local v1, branch:Lorg/dom4j/Branch;
    invoke-interface {v1}, Lorg/dom4j/Branch;->content()Ljava/util/List;

    move-result-object v3

    .line 133
    .local v3, list:Ljava/util/List;
    invoke-interface {v3, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 135
    .local v2, index:I
    if-gez v2, :cond_0

    .line 136
    move-object v0, p1

    check-cast v0, Lorg/dom4j/Node;

    move-object v4, v0

    invoke-interface {v1, v4}, Lorg/dom4j/Branch;->add(Lorg/dom4j/Node;)V

    .line 141
    :goto_0
    return-object p1

    .line 138
    :cond_0
    invoke-interface {v3, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 143
    .end local v1           #branch:Lorg/dom4j/Branch;
    .end local v2           #index:I
    .end local v3           #list:Ljava/util/List;
    :cond_1
    new-instance v4, Lorg/w3c/dom/DOMException;

    const/4 v5, 0x3

    .line 144
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Children not allowed for this node: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 143
    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4
.end method

.method public static insertData(Lorg/dom4j/CharacterData;ILjava/lang/String;)V
    .locals 7
    .parameter "data"
    .parameter "offset"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    new-instance v3, Lorg/w3c/dom/DOMException;

    const/4 v4, 0x7

    .line 286
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "CharacterData node is read only: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 285
    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 288
    :cond_0
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, text:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 291
    invoke-interface {p0, p2}, Lorg/dom4j/CharacterData;->setText(Ljava/lang/String;)V

    .line 305
    :goto_0
    return-void

    .line 293
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 295
    .local v1, length:I
    if-ltz p1, :cond_2

    if-le p1, v1, :cond_3

    .line 296
    :cond_2
    new-instance v3, Lorg/w3c/dom/DOMException;

    const/4 v4, 0x1

    .line 297
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "No text at offset: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 296
    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 299
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Lorg/dom4j/CharacterData;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isSupported(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "n"
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public static normalize(Lorg/dom4j/Node;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 212
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    .line 213
    return-void
.end method

.method public static notSupported()V
    .locals 3

    .prologue
    .line 533
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    .line 534
    const-string v2, "Not supported yet"

    .line 533
    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public static removeChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 6
    .parameter "node"
    .parameter "oldChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 173
    instance-of v2, p0, Lorg/dom4j/Branch;

    if-eqz v2, :cond_0

    .line 174
    move-object v0, p0

    check-cast v0, Lorg/dom4j/Branch;

    move-object v1, v0

    .line 175
    .local v1, branch:Lorg/dom4j/Branch;
    move-object v0, p1

    check-cast v0, Lorg/dom4j/Node;

    move-object v2, v0

    invoke-interface {v1, v2}, Lorg/dom4j/Branch;->remove(Lorg/dom4j/Node;)Z

    .line 177
    return-object p1

    .line 180
    .end local v1           #branch:Lorg/dom4j/Branch;
    :cond_0
    new-instance v2, Lorg/w3c/dom/DOMException;

    const/4 v3, 0x3

    .line 181
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Children not allowed for this node: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-direct {v2, v3, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2
.end method

.method public static replaceChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 8
    .parameter "node"
    .parameter "newChild"
    .parameter "oldChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 151
    instance-of v4, p0, Lorg/dom4j/Branch;

    if-eqz v4, :cond_1

    .line 152
    move-object v0, p0

    check-cast v0, Lorg/dom4j/Branch;

    move-object v1, v0

    .line 153
    .local v1, branch:Lorg/dom4j/Branch;
    invoke-interface {v1}, Lorg/dom4j/Branch;->content()Ljava/util/List;

    move-result-object v3

    .line 154
    .local v3, list:Ljava/util/List;
    invoke-interface {v3, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 156
    .local v2, index:I
    if-gez v2, :cond_0

    .line 157
    new-instance v4, Lorg/w3c/dom/DOMException;

    const/16 v5, 0x8

    .line 158
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Tried to replace a non existing child for node: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 158
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 157
    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 162
    :cond_0
    invoke-interface {v3, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-object p2

    .line 166
    .end local v1           #branch:Lorg/dom4j/Branch;
    .end local v2           #index:I
    .end local v3           #list:Ljava/util/List;
    :cond_1
    new-instance v4, Lorg/w3c/dom/DOMException;

    const/4 v5, 0x3

    .line 167
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Children not allowed for this node: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 166
    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4
.end method

.method public static replaceData(Lorg/dom4j/CharacterData;IILjava/lang/String;)V
    .locals 7
    .parameter "charData"
    .parameter "offset"
    .parameter "count"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 337
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    new-instance v3, Lorg/w3c/dom/DOMException;

    const/4 v4, 0x7

    .line 339
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "CharacterData node is read only: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 338
    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 341
    :cond_0
    if-gez p2, :cond_1

    .line 342
    new-instance v3, Lorg/w3c/dom/DOMException;

    .line 343
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Illegal value for count: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 342
    invoke-direct {v3, v6, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 346
    :cond_1
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, text:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 349
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 351
    .local v1, length:I
    if-ltz p1, :cond_2

    if-lt p1, v1, :cond_3

    .line 352
    :cond_2
    new-instance v3, Lorg/w3c/dom/DOMException;

    .line 353
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "No text at offset: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 352
    invoke-direct {v3, v6, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 355
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, buffer:Ljava/lang/StringBuffer;
    add-int v3, p1, p2

    invoke-virtual {v0, p1, v3, p3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Lorg/dom4j/CharacterData;->setText(Ljava/lang/String;)V

    .line 361
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #length:I
    :cond_4
    return-void
.end method

.method public static setData(Lorg/dom4j/CharacterData;Ljava/lang/String;)V
    .locals 0
    .parameter "charData"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-interface {p0, p1}, Lorg/dom4j/CharacterData;->setText(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public static setNodeValue(Lorg/dom4j/Node;Ljava/lang/String;)V
    .locals 0
    .parameter "node"
    .parameter "nodeValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-interface {p0, p1}, Lorg/dom4j/Node;->setText(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static setPrefix(Lorg/dom4j/Node;Ljava/lang/String;)V
    .locals 0
    .parameter "node"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    .line 58
    return-void
.end method

.method public static substringData(Lorg/dom4j/CharacterData;II)Ljava/lang/String;
    .locals 6
    .parameter "charData"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 246
    if-gez p2, :cond_0

    .line 247
    new-instance v2, Lorg/w3c/dom/DOMException;

    .line 248
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Illegal value for count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-direct {v2, v5, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 251
    :cond_0
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, text:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v2

    .line 254
    .local v0, length:I
    :goto_0
    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_3

    .line 255
    :cond_1
    new-instance v2, Lorg/w3c/dom/DOMException;

    .line 256
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "No text at offset: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 255
    invoke-direct {v2, v5, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 252
    .end local v0           #length:I
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 259
    .restart local v0       #length:I
    :cond_3
    add-int v2, p1, p2

    if-le v2, v0, :cond_4

    .line 260
    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 263
    :goto_1
    return-object v2

    :cond_4
    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static supports(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "node"
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method
