.class public Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;
.super Ljava/lang/Object;
.source "DOM2DTMdefaultNamespaceDeclarationNode.java"

# interfaces
.implements Lorg/w3c/dom/Attr;
.implements Lorg/w3c/dom/TypeInfo;


# instance fields
.field final NOT_SUPPORTED_ERR:Ljava/lang/String;

.field handle:I

.field nodename:Ljava/lang/String;

.field prefix:Ljava/lang/String;

.field pseudoparent:Lorg/w3c/dom/Element;

.field uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter "pseudoparent"
    .parameter "prefix"
    .parameter "uri"
    .parameter "handle"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "Unsupported operation on pseudonode"

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->NOT_SUPPORTED_ERR:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->pseudoparent:Lorg/w3c/dom/Element;

    .line 63
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->prefix:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->uri:Ljava/lang/String;

    .line 65
    iput p4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->handle:I

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->nodename:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 4
    .parameter "a"

    .prologue
    .line 95
    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    const-string v1, "Unsupported operation on pseudonode"

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .registers 4
    .parameter "deep"

    .prologue
    .line 98
    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    const-string v1, "Unsupported operation on pseudonode"

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 648
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 676
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 188
    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

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
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandleOfNode()I
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->handle:I

    return v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->nodename:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    const-string v0, "http://www.w3.org/2000/xmlns/"

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->nodename:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x2

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->pseudoparent:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->pseudoparent:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .registers 1

    .prologue
    .line 129
    return-object p0
.end method

.method public getSpecified()Z
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getTextContent()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 636
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "key"

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttributes()Z
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public hasChildNodes()Z
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 5
    .parameter "a"
    .parameter "b"

    .prologue
    .line 93
    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    const-string v1, "Unsupported operation on pseudonode"

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .registers 3
    .parameter "namespaceURI"

    .prologue
    .line 461
    const/4 v0, 0x0

    return v0
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .parameter "ns"
    .parameter "localName"
    .parameter "derivationMethod"

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .registers 6
    .parameter "arg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 234
    if-ne p1, p0, :cond_6

    move v0, v3

    .line 297
    :goto_5
    return v0

    .line 237
    :cond_6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeType()S

    move-result v1

    if-eq v0, v1, :cond_12

    move v0, v2

    .line 238
    goto :goto_5

    .line 242
    :cond_12
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    .line 243
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    move v0, v2

    .line 244
    goto :goto_5

    .line 247
    :cond_20
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    move v0, v2

    .line 248
    goto :goto_5

    .line 251
    :cond_30
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3e

    .line 252
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    move v0, v2

    .line 253
    goto :goto_5

    .line 256
    :cond_3e
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    move v0, v2

    .line 257
    goto :goto_5

    .line 260
    :cond_4e
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5c

    .line 261
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6c

    move v0, v2

    .line 262
    goto :goto_5

    .line 265
    :cond_5c
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    move v0, v2

    .line 266
    goto :goto_5

    .line 269
    :cond_6c
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7a

    .line 270
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8b

    move v0, v2

    .line 271
    goto :goto_5

    .line 274
    :cond_7a
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    move v0, v2

    .line 275
    goto/16 :goto_5

    .line 278
    :cond_8b
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9a

    .line 279
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ab

    move v0, v2

    .line 280
    goto/16 :goto_5

    .line 283
    :cond_9a
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    move v0, v2

    .line 284
    goto/16 :goto_5

    :cond_ab
    move v0, v3

    .line 297
    goto/16 :goto_5
.end method

.method public isId()Z
    .registers 2

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .registers 3
    .parameter "other"

    .prologue
    .line 537
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
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "specifiedPrefix"

    .prologue
    const/4 v11, 0x0

    .line 310
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeType()S

    move-result v7

    .line 311
    .local v7, type:S
    packed-switch v7, :pswitch_data_94

    :pswitch_8
    move-object v9, v11

    .line 385
    :goto_9
    return-object v9

    .line 314
    :pswitch_a
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    .line 315
    .local v5, namespace:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getPrefix()Ljava/lang/String;

    move-result-object v6

    .line 316
    .local v6, prefix:Ljava/lang/String;
    if-eqz v5, :cond_24

    .line 318
    if-nez p1, :cond_1a

    if-ne v6, p1, :cond_1a

    move-object v9, v5

    .line 320
    goto :goto_9

    .line 321
    :cond_1a
    if-eqz v6, :cond_24

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    move-object v9, v5

    .line 323
    goto :goto_9

    .line 326
    :cond_24
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->hasAttributes()Z

    move-result v9

    if-eqz v9, :cond_78

    .line 327
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 328
    .local v4, map:Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    .line 329
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_33
    if-ge v2, v3, :cond_78

    .line 330
    invoke-interface {v4, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 331
    .local v0, attr:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, attrPrefix:Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 333
    .local v8, value:Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    .line 334
    if-eqz v5, :cond_75

    const-string v9, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    .line 336
    if-nez p1, :cond_5f

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "xmlns"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5f

    move-object v9, v8

    .line 339
    goto :goto_9

    .line 340
    :cond_5f
    if-eqz v1, :cond_75

    const-string v9, "xmlns"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    move-object v9, v8

    .line 344
    goto :goto_9

    .line 329
    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .end local v0           #attr:Lorg/w3c/dom/Node;
    .end local v1           #attrPrefix:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #map:Lorg/w3c/dom/NamedNodeMap;
    .end local v8           #value:Ljava/lang/String;
    :cond_78
    move-object v9, v11

    .line 356
    goto :goto_9

    .end local v5           #namespace:Ljava/lang/String;
    .end local v6           #prefix:Ljava/lang/String;
    :pswitch_7a
    move-object v9, v11

    .line 370
    goto :goto_9

    .line 372
    :pswitch_7c
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Element;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_91

    .line 373
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v9, p1}, Lorg/w3c/dom/Element;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_9

    :cond_91
    move-object v9, v11

    .line 376
    goto/16 :goto_9

    .line 311
    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_a
        :pswitch_7c
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7a
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7a
        :pswitch_7a
        :pswitch_7a
    .end packed-switch
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "namespaceURI"

    .prologue
    const/4 v3, 0x0

    .line 478
    if-nez p1, :cond_5

    move-object v1, v3

    .line 516
    :goto_4
    return-object v1

    .line 482
    :cond_5
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeType()S

    move-result v0

    .line 484
    .local v0, type:S
    packed-switch v0, :pswitch_data_26

    :pswitch_c
    move-object v1, v3

    .line 516
    goto :goto_4

    :pswitch_e
    move-object v1, v3

    .line 501
    goto :goto_4

    .line 503
    :pswitch_10
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_24

    .line 504
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/w3c/dom/Element;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_24
    move-object v1, v3

    .line 507
    goto :goto_4

    .line 484
    :pswitch_data_26
    .packed-switch 0x2
        :pswitch_10
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public normalize()V
    .registers 1

    .prologue
    .line 86
    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 4
    .parameter "a"

    .prologue
    .line 96
    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    const-string v1, "Unsupported operation on pseudonode"

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 5
    .parameter "a"
    .parameter "b"

    .prologue
    .line 94
    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    const-string v1, "Unsupported operation on pseudonode"

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 90
    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    const-string v1, "Unsupported operation on pseudonode"

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 92
    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    const-string v1, "Unsupported operation on pseudonode"

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTextContent(Ljava/lang/String;)V
    .registers 2
    .parameter "textContent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 587
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->setNodeValue(Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .registers 5
    .parameter "key"
    .parameter "data"
    .parameter "handler"

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/w3c/dom/Document;->setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 91
    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    const-string v1, "Unsupported operation on pseudonode"

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
