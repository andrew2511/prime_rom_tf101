.class public final Lorg/apache/harmony/xml/dom/DocumentImpl;
.super Lorg/apache/harmony/xml/dom/InnerNodeImpl;
.source "DocumentImpl.java"

# interfaces
.implements Lorg/w3c/dom/Document;


# instance fields
.field private documentUri:Ljava/lang/String;

.field private domConfiguration:Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

.field private domImplementation:Lorg/w3c/dom/DOMImplementation;

.field private inputEncoding:Ljava/lang/String;

.field private nodeToUserData:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lorg/apache/harmony/xml/dom/NodeImpl;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/xml/dom/NodeImpl$UserData;",
            ">;>;"
        }
    .end annotation
.end field

.field private strictErrorChecking:Z

.field private xmlEncoding:Ljava/lang/String;

.field private xmlStandalone:Z

.field private xmlVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/xml/dom/DOMImplementationImpl;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;Ljava/lang/String;)V
    .registers 7
    .parameter "impl"
    .parameter "namespaceURI"
    .parameter "qualifiedName"
    .parameter "doctype"
    .parameter "inputEncoding"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 60
    const-string v0, "1.0"

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlVersion:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlStandalone:Z

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->strictErrorChecking:Z

    .line 79
    iput-object p0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    .line 80
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->domImplementation:Lorg/w3c/dom/DOMImplementation;

    .line 81
    iput-object p5, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->inputEncoding:Ljava/lang/String;

    .line 83
    if-eqz p4, :cond_19

    .line 84
    invoke-virtual {p0, p4}, Lorg/apache/harmony/xml/dom/DocumentImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 87
    :cond_19
    if-eqz p3, :cond_22

    .line 88
    invoke-virtual {p0, p2, p3}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 90
    :cond_22
    return-void
.end method

.method private changeDocumentToThis(Lorg/apache/harmony/xml/dom/NodeImpl;)V
    .registers 8
    .parameter "node"

    .prologue
    .line 292
    iget-object v4, p1, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v4, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getUserDataMapForRead(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;

    move-result-object v3

    .line 293
    .local v3, userData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    .line 294
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getUserDataMap(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 296
    :cond_13
    iput-object p0, p1, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    .line 299
    invoke-virtual {p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 300
    .local v2, list:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_2c

    .line 301
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/apache/harmony/xml/dom/NodeImpl;

    invoke-direct {p0, v4}, Lorg/apache/harmony/xml/dom/DocumentImpl;->changeDocumentToThis(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 305
    :cond_2c
    invoke-virtual {p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4a

    .line 306
    invoke-virtual {p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 307
    .local v0, attributes:Lorg/w3c/dom/NamedNodeMap;
    const/4 v1, 0x0

    :goto_38
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_4a

    .line 308
    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/apache/harmony/xml/dom/AttrImpl;

    invoke-direct {p0, v4}, Lorg/apache/harmony/xml/dom/DocumentImpl;->changeDocumentToThis(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 311
    .end local v0           #attributes:Lorg/w3c/dom/NamedNodeMap;
    :cond_4a
    return-void
.end method

.method static isXMLIdentifier(Ljava/lang/String;)Z
    .registers 4
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    .line 115
    :goto_8
    return v1

    .line 105
    :cond_9
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifierStart(C)Z

    move-result v1

    if-nez v1, :cond_15

    move v1, v2

    .line 106
    goto :goto_8

    .line 109
    :cond_15
    const/4 v0, 0x1

    .local v0, i:I
    :goto_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 110
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifierPart(C)Z

    move-result v1

    if-nez v1, :cond_28

    move v1, v2

    .line 111
    goto :goto_8

    .line 109
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 115
    :cond_2b
    const/4 v1, 0x1

    goto :goto_8
.end method

.method private static isXMLIdentifierPart(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 97
    invoke-static {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_16

    const/16 v0, 0x30

    if-lt p0, v0, :cond_e

    const/16 v0, 0x39

    if-le p0, v0, :cond_16

    :cond_e
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_16

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private static isXMLIdentifierStart(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 93
    const/16 v0, 0x41

    if-lt p0, v0, :cond_8

    const/16 v0, 0x5a

    if-le p0, v0, :cond_14

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_10

    const/16 v0, 0x7a

    if-le p0, v0, :cond_14

    :cond_10
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static notifyUserDataHandlers(SLorg/w3c/dom/Node;Lorg/apache/harmony/xml/dom/NodeImpl;)V
    .registers 14
    .parameter "operation"
    .parameter "source"
    .parameter "destination"

    .prologue
    .line 531
    instance-of v1, p1, Lorg/apache/harmony/xml/dom/NodeImpl;

    if-nez v1, :cond_5

    .line 548
    :cond_4
    return-void

    .line 535
    :cond_5
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/NodeImpl;

    move-object v9, v0

    .line 536
    .local v9, srcImpl:Lorg/apache/harmony/xml/dom/NodeImpl;
    iget-object v1, v9, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    if-eqz v1, :cond_4

    .line 541
    iget-object v1, v9, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v1, v9}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getUserDataMapForRead(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 542
    .local v7, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;

    .line 543
    .local v10, userData:Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
    iget-object v1, v10, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;->handler:Lorg/w3c/dom/UserDataHandler;

    if-eqz v1, :cond_1b

    .line 544
    iget-object v1, v10, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;->handler:Lorg/w3c/dom/UserDataHandler;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v10, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;->value:Ljava/lang/Object;

    move v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lorg/w3c/dom/UserDataHandler;->handle(SLjava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    goto :goto_1b
.end method

.method private shallowCopy(SLorg/w3c/dom/Node;)Lorg/apache/harmony/xml/dom/NodeImpl;
    .registers 17
    .parameter "operation"
    .parameter "node"

    .prologue
    const/16 v13, 0x9

    .line 130
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    packed-switch v10, :pswitch_data_10c

    .line 204
    new-instance v10, Lorg/w3c/dom/DOMException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported node type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v13, v11}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v10

    .line 132
    :pswitch_26
    move-object/from16 v0, p2

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    move-object v1, v0

    .line 134
    .local v1, attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    iget-boolean v10, v1, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    if-eqz v10, :cond_4b

    .line 135
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/AttrImpl;->getLocalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v2

    .line 136
    .local v2, attrCopy:Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/AttrImpl;->getPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/apache/harmony/xml/dom/AttrImpl;->setPrefix(Ljava/lang/String;)V

    .line 140
    :goto_42
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/apache/harmony/xml/dom/AttrImpl;->setNodeValue(Ljava/lang/String;)V

    move-object v10, v2

    .line 201
    .end local v1           #attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    .end local v2           #attrCopy:Lorg/apache/harmony/xml/dom/AttrImpl;
    .end local p2
    :goto_4a
    return-object v10

    .line 138
    .restart local v1       #attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    .restart local p2
    :cond_4b
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/AttrImpl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v2

    .restart local v2       #attrCopy:Lorg/apache/harmony/xml/dom/AttrImpl;
    goto :goto_42

    .line 144
    .end local v1           #attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    .end local v2           #attrCopy:Lorg/apache/harmony/xml/dom/AttrImpl;
    :pswitch_54
    check-cast p2, Lorg/w3c/dom/CharacterData;

    .end local p2
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createCDATASection(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CDATASectionImpl;

    move-result-object v10

    goto :goto_4a

    .line 147
    .restart local p2
    :pswitch_5f
    check-cast p2, Lorg/w3c/dom/Comment;

    .end local p2
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Comment;->getData()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createComment(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CommentImpl;

    move-result-object v10

    goto :goto_4a

    .line 150
    .restart local p2
    :pswitch_6a
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createDocumentFragment()Lorg/apache/harmony/xml/dom/DocumentFragmentImpl;

    move-result-object v10

    goto :goto_4a

    .line 154
    :pswitch_6f
    new-instance v10, Lorg/w3c/dom/DOMException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot copy node of type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v13, v11}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v10

    .line 158
    :pswitch_8c
    move-object/from16 v0, p2

    check-cast v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    move-object v4, v0

    .line 160
    .local v4, element:Lorg/apache/harmony/xml/dom/ElementImpl;
    iget-boolean v10, v4, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    if-eqz v10, :cond_cc

    .line 161
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/ElementImpl;->getLocalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    move-result-object v7

    .line 162
    .local v7, elementCopy:Lorg/apache/harmony/xml/dom/ElementImpl;
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/ElementImpl;->getPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/apache/harmony/xml/dom/ElementImpl;->setPrefix(Ljava/lang/String;)V

    .line 167
    :goto_a8
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 168
    .local v3, attributes:Lorg/w3c/dom/NamedNodeMap;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_ad
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v10

    if-ge v8, v10, :cond_d9

    .line 169
    invoke-interface {v3, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 170
    .local v5, elementAttr:Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-direct {p0, p1, v5}, Lorg/apache/harmony/xml/dom/DocumentImpl;->shallowCopy(SLorg/w3c/dom/Node;)Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 171
    .local v6, elementAttrCopy:Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-static {p1, v5, v6}, Lorg/apache/harmony/xml/dom/DocumentImpl;->notifyUserDataHandlers(SLorg/w3c/dom/Node;Lorg/apache/harmony/xml/dom/NodeImpl;)V

    .line 172
    iget-boolean v10, v5, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    if-eqz v10, :cond_d5

    .line 173
    invoke-virtual {v7, v6}, Lorg/apache/harmony/xml/dom/ElementImpl;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 168
    :goto_c9
    add-int/lit8 v8, v8, 0x1

    goto :goto_ad

    .line 164
    .end local v3           #attributes:Lorg/w3c/dom/NamedNodeMap;
    .end local v5           #elementAttr:Lorg/apache/harmony/xml/dom/AttrImpl;
    .end local v6           #elementAttrCopy:Lorg/apache/harmony/xml/dom/AttrImpl;
    .end local v7           #elementCopy:Lorg/apache/harmony/xml/dom/ElementImpl;
    .end local v8           #i:I
    :cond_cc
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/ElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElement(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    move-result-object v7

    .restart local v7       #elementCopy:Lorg/apache/harmony/xml/dom/ElementImpl;
    goto :goto_a8

    .line 175
    .restart local v3       #attributes:Lorg/w3c/dom/NamedNodeMap;
    .restart local v5       #elementAttr:Lorg/apache/harmony/xml/dom/AttrImpl;
    .restart local v6       #elementAttrCopy:Lorg/apache/harmony/xml/dom/AttrImpl;
    .restart local v8       #i:I
    :cond_d5
    invoke-virtual {v7, v6}, Lorg/apache/harmony/xml/dom/ElementImpl;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    goto :goto_c9

    .end local v5           #elementAttr:Lorg/apache/harmony/xml/dom/AttrImpl;
    .end local v6           #elementAttrCopy:Lorg/apache/harmony/xml/dom/AttrImpl;
    :cond_d9
    move-object v10, v7

    .line 178
    goto/16 :goto_4a

    .line 183
    .end local v3           #attributes:Lorg/w3c/dom/NamedNodeMap;
    .end local v4           #element:Lorg/apache/harmony/xml/dom/ElementImpl;
    .end local v7           #elementCopy:Lorg/apache/harmony/xml/dom/ElementImpl;
    .end local v8           #i:I
    :pswitch_dc
    new-instance v10, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v10}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v10

    .line 194
    :pswitch_e2
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createEntityReference(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/EntityReferenceImpl;

    move-result-object v10

    goto/16 :goto_4a

    .line 197
    :pswitch_ec
    move-object/from16 v0, p2

    check-cast v0, Lorg/w3c/dom/ProcessingInstruction;

    move-object v9, v0

    .line 198
    .local v9, pi:Lorg/w3c/dom/ProcessingInstruction;
    invoke-interface {v9}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;

    move-result-object v10

    goto/16 :goto_4a

    .line 201
    .end local v9           #pi:Lorg/w3c/dom/ProcessingInstruction;
    :pswitch_ff
    check-cast p2, Lorg/w3c/dom/Text;

    .end local p2
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v10

    goto/16 :goto_4a

    .line 130
    nop

    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_8c
        :pswitch_26
        :pswitch_ff
        :pswitch_54
        :pswitch_e2
        :pswitch_dc
        :pswitch_ec
        :pswitch_5f
        :pswitch_6f
        :pswitch_6f
        :pswitch_6a
        :pswitch_dc
    .end packed-switch
.end method


# virtual methods
.method public adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 10
    .parameter "node"

    .prologue
    const/4 v5, 0x0

    const/16 v7, 0x9

    .line 243
    instance-of v4, p1, Lorg/apache/harmony/xml/dom/NodeImpl;

    if-nez v4, :cond_9

    move-object v4, v5

    .line 283
    :goto_8
    return-object v4

    .line 246
    :cond_9
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/NodeImpl;

    move-object v2, v0

    .line 247
    .local v2, nodeImpl:Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v2}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v4

    packed-switch v4, :pswitch_data_6e

    .line 272
    new-instance v4, Lorg/w3c/dom/DOMException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported node type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 249
    :pswitch_31
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    move-object v1, v0

    .line 250
    .local v1, attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    iget-object v4, v1, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    if-eqz v4, :cond_3e

    .line 251
    iget-object v4, v1, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-virtual {v4, v1}, Lorg/apache/harmony/xml/dom/ElementImpl;->removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 276
    .end local v1           #attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    :cond_3e
    :pswitch_3e
    invoke-virtual {v2}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v3

    .line 277
    .local v3, parent:Lorg/w3c/dom/Node;
    if-eqz v3, :cond_47

    .line 278
    invoke-interface {v3, v2}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 281
    :cond_47
    invoke-direct {p0, v2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->changeDocumentToThis(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    .line 282
    const/4 v4, 0x5

    invoke-static {v4, p1, v5}, Lorg/apache/harmony/xml/dom/DocumentImpl;->notifyUserDataHandlers(SLorg/w3c/dom/Node;Lorg/apache/harmony/xml/dom/NodeImpl;)V

    move-object v4, v2

    .line 283
    goto :goto_8

    .line 268
    .end local v3           #parent:Lorg/w3c/dom/Node;
    :pswitch_50
    new-instance v4, Lorg/w3c/dom/DOMException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot adopt nodes of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 247
    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_31
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_50
        :pswitch_3e
        :pswitch_3e
        :pswitch_50
        :pswitch_50
        :pswitch_3e
        :pswitch_50
    .end packed-switch
.end method

.method cloneOrImportNode(SLorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .registers 8
    .parameter "operation"
    .parameter "node"
    .parameter "deep"

    .prologue
    .line 220
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->shallowCopy(SLorg/w3c/dom/Node;)Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v0

    .line 222
    .local v0, copy:Lorg/apache/harmony/xml/dom/NodeImpl;
    if-eqz p3, :cond_1f

    .line 223
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 224
    .local v2, list:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_1f

    .line 225
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p0, p1, v3, p3}, Lorg/apache/harmony/xml/dom/DocumentImpl;->cloneOrImportNode(SLorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/harmony/xml/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 229
    .end local v1           #i:I
    .end local v2           #list:Lorg/w3c/dom/NodeList;
    :cond_1f
    invoke-static {p1, p2, v0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->notifyUserDataHandlers(SLorg/w3c/dom/Node;Lorg/apache/harmony/xml/dom/NodeImpl;)V

    .line 230
    return-object v0
.end method

.method public createAttribute(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;
    .registers 3
    .parameter "name"

    .prologue
    .line 324
    new-instance v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/AttrImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    return-object v0
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;
    .registers 4
    .parameter "namespaceURI"
    .parameter "qualifiedName"

    .prologue
    .line 328
    new-instance v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/harmony/xml/dom/AttrImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    return-object v0
.end method

.method public createCDATASection(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CDATASectionImpl;
    .registers 3
    .parameter "data"

    .prologue
    .line 332
    new-instance v0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createCDATASection(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CDATASectionImpl;

    move-result-object v0

    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CommentImpl;
    .registers 3
    .parameter "data"

    .prologue
    .line 336
    new-instance v0, Lorg/apache/harmony/xml/dom/CommentImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/CommentImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .registers 3
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createComment(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CommentImpl;

    move-result-object v0

    return-object v0
.end method

.method public createDocumentFragment()Lorg/apache/harmony/xml/dom/DocumentFragmentImpl;
    .registers 2

    .prologue
    .line 340
    new-instance v0, Lorg/apache/harmony/xml/dom/DocumentFragmentImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xml/dom/DocumentFragmentImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    return-object v0
.end method

.method public bridge synthetic createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
    .registers 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createDocumentFragment()Lorg/apache/harmony/xml/dom/DocumentFragmentImpl;

    move-result-object v0

    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;
    .registers 3
    .parameter "tagName"

    .prologue
    .line 344
    new-instance v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElement(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    move-result-object v0

    return-object v0
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;
    .registers 4
    .parameter "namespaceURI"
    .parameter "qualifiedName"

    .prologue
    .line 348
    new-instance v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    move-result-object v0

    return-object v0
.end method

.method public createEntityReference(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/EntityReferenceImpl;
    .registers 3
    .parameter "name"

    .prologue
    .line 352
    new-instance v0, Lorg/apache/harmony/xml/dom/EntityReferenceImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/EntityReferenceImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createEntityReference(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/EntityReferenceImpl;

    move-result-object v0

    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;
    .registers 4
    .parameter "target"
    .parameter "data"

    .prologue
    .line 356
    new-instance v0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;

    move-result-object v0

    return-object v0
.end method

.method public createTextNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/TextImpl;
    .registers 3
    .parameter "data"

    .prologue
    .line 360
    new-instance v0, Lorg/apache/harmony/xml/dom/TextImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/TextImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .registers 3
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v0

    return-object v0
.end method

.method public getDoctype()Lorg/w3c/dom/DocumentType;
    .registers 4

    .prologue
    .line 364
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    .line 365
    .local v0, child:Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    instance-of v2, v0, Lorg/w3c/dom/DocumentType;

    if-eqz v2, :cond_6

    .line 366
    check-cast v0, Lorg/w3c/dom/DocumentType;

    .end local v0           #child:Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    move-object v2, v0

    .line 370
    :goto_19
    return-object v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public getDocumentElement()Lorg/w3c/dom/Element;
    .registers 4

    .prologue
    .line 374
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    .line 375
    .local v0, child:Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    instance-of v2, v0, Lorg/w3c/dom/Element;

    if-eqz v2, :cond_6

    .line 376
    check-cast v0, Lorg/w3c/dom/Element;

    .end local v0           #child:Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    move-object v2, v0

    .line 380
    :goto_19
    return-object v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public getDocumentURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 468
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->documentUri:Ljava/lang/String;

    return-object v0
.end method

.method public getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .registers 2

    .prologue
    .line 476
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->domConfiguration:Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    if-nez v0, :cond_b

    .line 477
    new-instance v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->domConfiguration:Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    .line 479
    :cond_b
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->domConfiguration:Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    return-object v0
.end method

.method public getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 4
    .parameter "elementId"

    .prologue
    .line 384
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 386
    .local v0, root:Lorg/apache/harmony/xml/dom/ElementImpl;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    goto :goto_9
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 3
    .parameter "name"

    .prologue
    .line 390
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    .line 391
    .local v0, result:Lorg/apache/harmony/xml/dom/NodeListImpl;
    invoke-virtual {p0, v0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getElementsByTagName(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;)V

    .line 392
    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 4
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 396
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    .line 397
    .local v0, result:Lorg/apache/harmony/xml/dom/NodeListImpl;
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getElementsByTagNameNS(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-object v0
.end method

.method public getImplementation()Lorg/w3c/dom/DOMImplementation;
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->domImplementation:Lorg/w3c/dom/DOMImplementation;

    return-object v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->inputEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 407
    const-string v0, "#document"

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 412
    const/16 v0, 0x9

    return v0
.end method

.method public getStrictErrorChecking()Z
    .registers 2

    .prologue
    .line 460
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->strictErrorChecking:Z

    return v0
.end method

.method public getTextContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 432
    const/4 v0, 0x0

    return-object v0
.end method

.method getUserDataMap(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;
    .registers 4
    .parameter "node"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/xml/dom/NodeImpl;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/xml/dom/NodeImpl$UserData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 496
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->nodeToUserData:Ljava/util/WeakHashMap;

    if-nez v1, :cond_b

    .line 497
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->nodeToUserData:Ljava/util/WeakHashMap;

    .line 499
    :cond_b
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->nodeToUserData:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 500
    .local v0, userDataMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    if-nez v0, :cond_1f

    .line 501
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #userDataMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 502
    .restart local v0       #userDataMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->nodeToUserData:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    :cond_1f
    return-object v0
.end method

.method getUserDataMapForRead(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;
    .registers 4
    .parameter "node"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/xml/dom/NodeImpl;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/xml/dom/NodeImpl$UserData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->nodeToUserData:Ljava/util/WeakHashMap;

    if-nez v1, :cond_9

    .line 513
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 516
    :goto_8
    return-object v1

    .line 515
    :cond_9
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->nodeToUserData:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 516
    .local v0, userDataMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    if-nez v0, :cond_18

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_8

    :cond_18
    move-object v1, v0

    goto :goto_8
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 440
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlStandalone()Z
    .registers 2

    .prologue
    .line 444
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlStandalone:Z

    return v0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 452
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .registers 4
    .parameter "importedNode"
    .parameter "deep"

    .prologue
    .line 234
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->cloneOrImportNode(SLorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;
    .registers 6
    .parameter "toInsert"
    .parameter "index"

    .prologue
    const/4 v2, 0x3

    .line 420
    instance-of v0, p1, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 421
    new-instance v0, Lorg/w3c/dom/DOMException;

    const-string v1, "Only one root element allowed"

    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 424
    :cond_13
    instance-of v0, p1, Lorg/w3c/dom/DocumentType;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 425
    new-instance v0, Lorg/w3c/dom/DOMException;

    const-string v1, "Only one DOCTYPE element allowed"

    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 428
    :cond_25
    invoke-super {p0, p1, p2}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public normalizeDocument()V
    .registers 2

    .prologue
    .line 483
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 484
    .local v0, root:Lorg/w3c/dom/Element;
    if-nez v0, :cond_7

    .line 489
    .end local p0
    :goto_6
    return-void

    .line 488
    .restart local p0
    :cond_7
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getDomConfig()Lorg/w3c/dom/DOMConfiguration;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->normalize(Lorg/w3c/dom/Node;)V

    goto :goto_6
.end method

.method public renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 8
    .parameter "node"
    .parameter "namespaceURI"
    .parameter "qualifiedName"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 314
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    if-eq v1, p0, :cond_e

    .line 315
    new-instance v1, Lorg/w3c/dom/DOMException;

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 318
    :cond_e
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/NodeImpl;

    move-object v1, v0

    invoke-static {v1, p2, p3}, Lorg/apache/harmony/xml/dom/DocumentImpl;->setNameNS(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {v2, p1, v3}, Lorg/apache/harmony/xml/dom/DocumentImpl;->notifyUserDataHandlers(SLorg/w3c/dom/Node;Lorg/apache/harmony/xml/dom/NodeImpl;)V

    .line 320
    return-object p1
.end method

.method public setDocumentURI(Ljava/lang/String;)V
    .registers 2
    .parameter "documentUri"

    .prologue
    .line 472
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->documentUri:Ljava/lang/String;

    .line 473
    return-void
.end method

.method public setStrictErrorChecking(Z)V
    .registers 2
    .parameter "strictErrorChecking"

    .prologue
    .line 464
    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->strictErrorChecking:Z

    .line 465
    return-void
.end method

.method public setXmlStandalone(Z)V
    .registers 2
    .parameter "xmlStandalone"

    .prologue
    .line 448
    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlStandalone:Z

    .line 449
    return-void
.end method

.method public setXmlVersion(Ljava/lang/String;)V
    .registers 2
    .parameter "xmlVersion"

    .prologue
    .line 456
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlVersion:Ljava/lang/String;

    .line 457
    return-void
.end method
