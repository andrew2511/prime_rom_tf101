.class public Lorg/dom4j/io/DOMReader;
.super Ljava/lang/Object;
.source "DOMReader.java"


# instance fields
.field private factory:Lorg/dom4j/DocumentFactory;

.field private namespaceStack:Lorg/dom4j/tree/NamespaceStack;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/DOMReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 39
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    iget-object v1, p0, Lorg/dom4j/io/DOMReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-direct {v0, v1}, Lorg/dom4j/tree/NamespaceStack;-><init>(Lorg/dom4j/DocumentFactory;)V

    iput-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .locals 1
    .parameter "factory"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/dom4j/io/DOMReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 44
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0, p1}, Lorg/dom4j/tree/NamespaceStack;-><init>(Lorg/dom4j/DocumentFactory;)V

    iput-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 45
    return-void
.end method

.method private getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "xmlnsDecl"

    .prologue
    .line 268
    const/16 v1, 0x3a

    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 270
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 271
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 273
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method protected clearNamespaceStack()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->clear()V

    .line 262
    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->contains(Lorg/dom4j/Namespace;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 265
    :cond_0
    return-void
.end method

.method protected createDocument()Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lorg/dom4j/io/DOMReader;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->factory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method protected getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 1
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 252
    invoke-virtual {p0}, Lorg/dom4j/io/DOMReader;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public read(Lorg/w3c/dom/Document;)Lorg/dom4j/Document;
    .locals 5
    .parameter "domDocument"

    .prologue
    .line 74
    instance-of v4, p1, Lorg/dom4j/Document;

    if-eqz v4, :cond_0

    .line 75
    check-cast p1, Lorg/dom4j/Document;

    .end local p1
    move-object v4, p1

    .line 88
    :goto_0
    return-object v4

    .line 78
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/io/DOMReader;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 80
    .local v0, document:Lorg/dom4j/Document;
    invoke-virtual {p0}, Lorg/dom4j/io/DOMReader;->clearNamespaceStack()V

    .line 82
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 84
    .local v2, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .local v3, size:I
    :goto_1
    if-lt v1, v3, :cond_1

    move-object v4, v0

    .line 88
    goto :goto_0

    .line 85
    :cond_1
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lorg/dom4j/io/DOMReader;->readTree(Lorg/w3c/dom/Node;Lorg/dom4j/Branch;)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected readElement(Lorg/w3c/dom/Node;Lorg/dom4j/Branch;)V
    .locals 25
    .parameter "node"
    .parameter "current"

    .prologue
    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v17

    .line 179
    .local v17, previouslyDeclaredNamespaces:I
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v15

    .line 180
    .local v15, namespaceUri:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v11

    .line 182
    .local v11, elementPrefix:Ljava/lang/String;
    if-nez v11, :cond_0

    .line 183
    const-string v11, ""

    .line 186
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    .line 188
    .local v5, attributeList:Lorg/w3c/dom/NamedNodeMap;
    if-eqz v5, :cond_1

    if-nez v15, :cond_1

    .line 190
    const-string v21, "xmlns"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 192
    .local v4, attribute:Lorg/w3c/dom/Node;
    if-eqz v4, :cond_1

    .line 193
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    .line 194
    const-string v11, ""

    .line 198
    .end local v4           #attribute:Lorg/w3c/dom/Node;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    move-object/from16 v21, v0

    .line 199
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v23

    .line 198
    move-object/from16 v0, v21

    move-object v1, v15

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lorg/dom4j/tree/NamespaceStack;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v18

    .line 200
    .local v18, qName:Lorg/dom4j/QName;
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/dom4j/Branch;->addElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v10

    .line 202
    .local v10, element:Lorg/dom4j/Element;
    if-eqz v5, :cond_2

    .line 203
    invoke-interface {v5}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v19

    .line 204
    .local v19, size:I
    new-instance v7, Ljava/util/ArrayList;

    move-object v0, v7

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    .local v7, attributes:Ljava/util/List;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move v0, v12

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 225
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v19

    .line 227
    const/4 v12, 0x0

    :goto_1
    move v0, v12

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    .line 238
    .end local v7           #attributes:Ljava/util/List;
    .end local v12           #i:I
    .end local v19           #size:I
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 240
    .local v9, children:Lorg/w3c/dom/NodeList;
    const/4 v12, 0x0

    .restart local v12       #i:I
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    .restart local v19       #size:I
    :goto_2
    move v0, v12

    move/from16 v1, v19

    if-lt v0, v1, :cond_6

    .line 246
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v17

    if-gt v0, v1, :cond_7

    .line 249
    return-void

    .line 207
    .end local v9           #children:Lorg/w3c/dom/NodeList;
    .restart local v7       #attributes:Ljava/util/List;
    :cond_3
    invoke-interface {v5, v12}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 210
    .restart local v4       #attribute:Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    .line 212
    .local v13, name:Ljava/lang/String;
    const-string v21, "xmlns"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 213
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lorg/dom4j/io/DOMReader;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 214
    .local v16, prefix:Ljava/lang/String;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v20

    .line 216
    .local v20, uri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/dom4j/tree/NamespaceStack;->addNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v14

    .line 218
    .local v14, namespace:Lorg/dom4j/Namespace;
    invoke-interface {v10, v14}, Lorg/dom4j/Element;->add(Lorg/dom4j/Namespace;)V

    .line 206
    .end local v14           #namespace:Lorg/dom4j/Namespace;
    .end local v16           #prefix:Ljava/lang/String;
    .end local v20           #uri:Ljava/lang/String;
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 220
    :cond_4
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 229
    .end local v4           #attribute:Lorg/w3c/dom/Node;
    .end local v13           #name:Ljava/lang/String;
    :cond_5
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 228
    check-cast v4, Lorg/w3c/dom/Node;

    .line 230
    .restart local v4       #attribute:Lorg/w3c/dom/Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    move-object/from16 v21, v0

    .line 231
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v22

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v23

    .line 232
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v24

    .line 230
    invoke-virtual/range {v21 .. v24}, Lorg/dom4j/tree/NamespaceStack;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v6

    .line 233
    .local v6, attributeQName:Lorg/dom4j/QName;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v21

    move-object v0, v10

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/dom4j/Element;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 227
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 241
    .end local v4           #attribute:Lorg/w3c/dom/Node;
    .end local v6           #attributeQName:Lorg/dom4j/QName;
    .end local v7           #attributes:Ljava/util/List;
    .restart local v9       #children:Lorg/w3c/dom/NodeList;
    :cond_6
    invoke-interface {v9, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 242
    .local v8, child:Lorg/w3c/dom/Node;
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lorg/dom4j/io/DOMReader;->readTree(Lorg/w3c/dom/Node;Lorg/dom4j/Branch;)V

    .line 240
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 247
    .end local v8           #child:Lorg/w3c/dom/Node;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/dom4j/tree/NamespaceStack;->pop()Lorg/dom4j/Namespace;

    goto/16 :goto_3
.end method

.method protected readTree(Lorg/w3c/dom/Node;Lorg/dom4j/Branch;)V
    .locals 10
    .parameter "node"
    .parameter "current"

    .prologue
    .line 93
    const/4 v5, 0x0

    .line 94
    .local v5, element:Lorg/dom4j/Element;
    const/4 v3, 0x0

    .line 96
    .local v3, document:Lorg/dom4j/Document;
    instance-of v7, p2, Lorg/dom4j/Element;

    if-eqz v7, :cond_0

    .line 97
    move-object v0, p2

    check-cast v0, Lorg/dom4j/Element;

    move-object v5, v0

    .line 102
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 171
    :pswitch_0
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "WARNING: Unknown DOM node type: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 171
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 174
    .end local p2
    :goto_1
    return-void

    .line 99
    .restart local p2
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/dom4j/Document;

    move-object v3, v0

    goto :goto_0

    .line 104
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/io/DOMReader;->readElement(Lorg/w3c/dom/Node;Lorg/dom4j/Branch;)V

    goto :goto_1

    .line 110
    :pswitch_2
    instance-of v7, p2, Lorg/dom4j/Element;

    if-eqz v7, :cond_1

    .line 111
    move-object v0, p2

    check-cast v0, Lorg/dom4j/Element;

    move-object v2, v0

    .line 112
    .local v2, currentEl:Lorg/dom4j/Element;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    .line 113
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 112
    invoke-interface {v2, v7, v8}, Lorg/dom4j/Element;->addProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_1

    .line 115
    .end local v2           #currentEl:Lorg/dom4j/Element;
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/dom4j/Document;

    move-object v1, v0

    .line 116
    .local v1, currentDoc:Lorg/dom4j/Document;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    .line 117
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 116
    invoke-interface {v1, v7, v8}, Lorg/dom4j/Document;->addProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Document;

    goto :goto_1

    .line 124
    .end local v1           #currentDoc:Lorg/dom4j/Document;
    :pswitch_3
    instance-of v7, p2, Lorg/dom4j/Element;

    if-eqz v7, :cond_2

    .line 125
    check-cast p2, Lorg/dom4j/Element;

    .end local p2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7}, Lorg/dom4j/Element;->addComment(Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_1

    .line 127
    .restart local p2
    :cond_2
    check-cast p2, Lorg/dom4j/Document;

    .end local p2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7}, Lorg/dom4j/Document;->addComment(Ljava/lang/String;)Lorg/dom4j/Document;

    goto :goto_1

    .line 135
    .restart local p2
    :pswitch_4
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/DocumentType;

    move-object v4, v0

    .line 136
    .local v4, domDocType:Lorg/w3c/dom/DocumentType;
    invoke-interface {v4}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v7

    .line 137
    invoke-interface {v4}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v9

    .line 136
    invoke-interface {v3, v7, v8, v9}, Lorg/dom4j/Document;->addDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Document;

    goto :goto_1

    .line 142
    .end local v4           #domDocType:Lorg/w3c/dom/DocumentType;
    :pswitch_5
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_1

    .line 147
    :pswitch_6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/dom4j/Element;->addCDATA(Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_1

    .line 154
    :pswitch_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    .line 156
    .local v6, firstChild:Lorg/w3c/dom/Node;
    if-eqz v6, :cond_3

    .line 157
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    .line 158
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 157
    invoke-interface {v5, v7, v8}, Lorg/dom4j/Element;->addEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_1

    .line 160
    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Lorg/dom4j/Element;->addEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    goto/16 :goto_1

    .line 166
    .end local v6           #firstChild:Lorg/w3c/dom/Node;
    :pswitch_8
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lorg/dom4j/Element;->addEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    goto/16 :goto_1

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .locals 2
    .parameter "docFactory"

    .prologue
    .line 69
    iput-object p1, p0, Lorg/dom4j/io/DOMReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 70
    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    iget-object v1, p0, Lorg/dom4j/io/DOMReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->setDocumentFactory(Lorg/dom4j/DocumentFactory;)V

    .line 71
    return-void
.end method
