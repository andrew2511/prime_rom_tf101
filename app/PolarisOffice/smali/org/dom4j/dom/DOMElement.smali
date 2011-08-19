.class public Lorg/dom4j/dom/DOMElement;
.super Lorg/dom4j/tree/DefaultElement;
.source "DOMElement.java"

# interfaces
.implements Lorg/w3c/dom/Element;


# static fields
.field private static final DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lorg/dom4j/dom/DOMDocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    .line 36
    sput-object v0, Lorg/dom4j/dom/DOMElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultElement;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V
    .locals 0
    .parameter "name"
    .parameter "namespace"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/DefaultElement;-><init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;)V
    .locals 0
    .parameter "qname"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultElement;-><init>(Lorg/dom4j/QName;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;I)V
    .locals 0
    .parameter "qname"
    .parameter "attributeCount"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/DefaultElement;-><init>(Lorg/dom4j/QName;I)V

    .line 49
    return-void
.end method

.method private checkNewChildNode(Lorg/w3c/dom/Node;)V
    .locals 4
    .parameter "newChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 151
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    .line 153
    .local v0, nodeType:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-eq v0, v3, :cond_0

    .line 154
    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 155
    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 156
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 157
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 158
    new-instance v1, Lorg/w3c/dom/DOMException;

    .line 159
    const-string v2, "Given node cannot be a child of element"

    .line 158
    invoke-direct {v1, v3, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "newChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMElement;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 146
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->appendChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method protected attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 5
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 345
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->attributeList()Ljava/util/List;

    move-result-object v1

    .line 346
    .local v1, attributes:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 348
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 361
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 349
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    .line 351
    .local v0, attribute:Lorg/dom4j/Attribute;
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 352
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 353
    :cond_1
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 354
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 355
    :cond_2
    if-eqz p1, :cond_4

    .line 356
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move-object v4, v0

    .line 357
    goto :goto_1

    .line 348
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected attribute(Lorg/w3c/dom/Attr;)Lorg/dom4j/Attribute;
    .locals 4
    .parameter "attr"

    .prologue
    .line 340
    sget-object v0, Lorg/dom4j/dom/DOMElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    .line 340
    invoke-virtual {p0, v0}, Lorg/dom4j/dom/DOMElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "deep"

    .prologue
    .line 168
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->cloneNode(Lorg/dom4j/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method protected createAttribute(Lorg/w3c/dom/Attr;)Lorg/dom4j/Attribute;
    .locals 6
    .parameter "newAttr"

    .prologue
    .line 365
    const/4 v2, 0x0

    .line 366
    .local v2, qname:Lorg/dom4j/QName;
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 369
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, prefix:Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, uri:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v3}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v2

    .line 377
    .end local v1           #prefix:Ljava/lang/String;
    .end local v3           #uri:Ljava/lang/String;
    :goto_0
    new-instance v4, Lorg/dom4j/dom/DOMAttribute;

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lorg/dom4j/dom/DOMAttribute;-><init>(Lorg/dom4j/QName;Ljava/lang/String;)V

    return-object v4

    .line 373
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v2

    goto :goto_0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lorg/dom4j/dom/DOMElement;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, answer:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 249
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/dom/DOMElement;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v1

    .line 251
    .local v1, attribute:Lorg/dom4j/Attribute;
    if-eqz v1, :cond_0

    .line 252
    invoke-interface {v1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, answer:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 259
    .end local v0           #answer:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .parameter "name"

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lorg/dom4j/dom/DOMElement;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMAttr(Lorg/dom4j/Node;)Lorg/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 2
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 285
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/dom/DOMElement;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 287
    .local v0, attribute:Lorg/dom4j/Attribute;
    if-eqz v0, :cond_0

    .line 288
    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMAttr(Lorg/dom4j/Node;)Lorg/w3c/dom/Attr;

    .line 291
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lorg/dom4j/dom/DOMAttributeNodeMap;

    invoke-direct {v0, p0}, Lorg/dom4j/dom/DOMAttributeNodeMap;-><init>(Lorg/dom4j/dom/DOMElement;)V

    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->content()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->createNodeList(Ljava/util/List;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method protected getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 2

    .prologue
    .line 334
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/dom4j/QName;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    .line 336
    .local v0, factory:Lorg/dom4j/DocumentFactory;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lorg/dom4j/dom/DOMElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    goto :goto_0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 2
    .parameter "name"

    .prologue
    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v0, list:Ljava/util/ArrayList;
    invoke-static {v0, p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->appendElementsByTagName(Ljava/util/List;Lorg/dom4j/Branch;Ljava/lang/String;)V

    .line 313
    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->createNodeList(Ljava/util/List;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    return-object v1
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 2
    .parameter "namespace"
    .parameter "lName"

    .prologue
    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v0, list:Ljava/util/ArrayList;
    invoke-static {v0, p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->appendElementsByTagNameNS(Ljava/util/List;Lorg/dom4j/Branch;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->createNodeList(Ljava/util/List;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    return-object v1
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/dom4j/dom/DOMElement;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->nodeCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/dom4j/dom/DOMElement;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 112
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getNextSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 120
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getOwnerDocument(Lorg/dom4j/Node;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 92
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getParentNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 108
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getPreviousSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method protected getQName(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 4
    .parameter "namespace"
    .parameter "qualifiedName"

    .prologue
    .line 381
    const/16 v3, 0x3a

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 382
    .local v0, index:I
    const-string v2, ""

    .line 383
    .local v2, prefix:Ljava/lang/String;
    move-object v1, p2

    .line 385
    .local v1, localName:Ljava/lang/String;
    if-ltz v0, :cond_0

    .line 386
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 387
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 390
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v3

    invoke-virtual {v3, v1, v2, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v3

    return-object v3
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Lorg/dom4j/dom/DOMElement;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 328
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/dom/DOMElement;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 176
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->hasAttributes(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->nodeCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "newChild"
    .parameter "refChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMElement;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 127
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->insertBefore(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 172
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->isSupported(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lorg/dom4j/dom/DOMElement;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 198
    .local v0, attribute:Lorg/dom4j/Attribute;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0, v0}, Lorg/dom4j/dom/DOMElement;->remove(Lorg/dom4j/Attribute;)Z

    .line 201
    :cond_0
    return-void
.end method

.method public removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "namespaceURI"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/dom/DOMElement;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 278
    .local v0, attribute:Lorg/dom4j/Attribute;
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0, v0}, Lorg/dom4j/dom/DOMElement;->remove(Lorg/dom4j/Attribute;)Z

    .line 281
    :cond_0
    return-void
.end method

.method public removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 4
    .parameter "oldAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lorg/dom4j/dom/DOMElement;->attribute(Lorg/w3c/dom/Attr;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 238
    .local v0, attribute:Lorg/dom4j/Attribute;
    if-eqz v0, :cond_0

    .line 239
    invoke-interface {v0}, Lorg/dom4j/Attribute;->detach()Lorg/dom4j/Node;

    .line 241
    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMAttr(Lorg/dom4j/Node;)Lorg/w3c/dom/Attr;

    move-result-object v1

    return-object v1

    .line 243
    :cond_0
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x8

    .line 244
    const-string v3, "No such attribute"

    .line 243
    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "oldChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->removeChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "newChild"
    .parameter "oldChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMElement;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 134
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->replaceChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/dom/DOMElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 193
    return-void
.end method

.method public setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "namespaceURI"
    .parameter "qualifiedName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/dom/DOMElement;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 266
    .local v0, attribute:Lorg/dom4j/Attribute;
    if-eqz v0, :cond_0

    .line 267
    invoke-interface {v0, p3}, Lorg/dom4j/Attribute;->setValue(Ljava/lang/String;)V

    .line 272
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/dom/DOMElement;->getQName(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v1

    .line 270
    .local v1, qname:Lorg/dom4j/QName;
    invoke-virtual {p0, v1, p3}, Lorg/dom4j/dom/DOMElement;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_0
.end method

.method public setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 5
    .parameter "newAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    new-instance v2, Lorg/w3c/dom/DOMException;

    const/4 v3, 0x7

    .line 211
    const-string v4, "No modification allowed"

    .line 210
    invoke-direct {v2, v3, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 214
    :cond_0
    invoke-virtual {p0, p1}, Lorg/dom4j/dom/DOMElement;->attribute(Lorg/w3c/dom/Attr;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 216
    .local v0, attribute:Lorg/dom4j/Attribute;
    if-eq v0, p1, :cond_3

    .line 217
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 218
    new-instance v2, Lorg/w3c/dom/DOMException;

    const/16 v3, 0xa

    .line 219
    const-string v4, "Attribute is already in use"

    .line 218
    invoke-direct {v2, v3, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 222
    :cond_1
    invoke-virtual {p0, p1}, Lorg/dom4j/dom/DOMElement;->createAttribute(Lorg/w3c/dom/Attr;)Lorg/dom4j/Attribute;

    move-result-object v1

    .line 224
    .local v1, newAttribute:Lorg/dom4j/Attribute;
    if-eqz v0, :cond_2

    .line 225
    invoke-interface {v0}, Lorg/dom4j/Attribute;->detach()Lorg/dom4j/Node;

    .line 228
    :cond_2
    invoke-virtual {p0, v1}, Lorg/dom4j/dom/DOMElement;->add(Lorg/dom4j/Attribute;)V

    .line 231
    .end local v1           #newAttribute:Lorg/dom4j/Attribute;
    :cond_3
    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMAttr(Lorg/dom4j/Node;)Lorg/w3c/dom/Attr;

    move-result-object v2

    return-object v2
.end method

.method public setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 3
    .parameter "newAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-virtual {p0, v1, v2}, Lorg/dom4j/dom/DOMElement;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 299
    .local v0, attribute:Lorg/dom4j/Attribute;
    if-eqz v0, :cond_0

    .line 300
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/dom4j/Attribute;->setValue(Ljava/lang/String;)V

    .line 306
    :goto_0
    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMAttr(Lorg/dom4j/Node;)Lorg/w3c/dom/Attr;

    move-result-object v1

    return-object v1

    .line 302
    :cond_0
    invoke-virtual {p0, p1}, Lorg/dom4j/dom/DOMElement;->createAttribute(Lorg/w3c/dom/Attr;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 303
    invoke-virtual {p0, v0}, Lorg/dom4j/dom/DOMElement;->add(Lorg/dom4j/Attribute;)V

    goto :goto_0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0
    .parameter "nodeValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 89
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->setPrefix(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public supports(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 58
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->supports(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
