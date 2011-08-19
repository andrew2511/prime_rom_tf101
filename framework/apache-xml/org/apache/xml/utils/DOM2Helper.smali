.class public Lorg/apache/xml/utils/DOM2Helper;
.super Lorg/apache/xml/utils/DOMHelper;
.source "DOM2Helper.java"


# instance fields
.field private m_doc:Lorg/w3c/dom/Document;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/apache/xml/utils/DOMHelper;-><init>()V

    return-void
.end method

.method public static getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 4
    .parameter "node"

    .prologue
    .line 264
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 265
    .local v0, parent:Lorg/w3c/dom/Node;
    if-nez v0, :cond_13

    const/4 v1, 0x2

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v1, v2, :cond_13

    .line 266
    check-cast p0, Lorg/w3c/dom/Attr;

    .end local p0
    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 267
    :cond_13
    return-object v0
.end method

.method public static isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .registers 5
    .parameter "node1"
    .parameter "node2"

    .prologue
    .line 234
    instance-of v2, p0, Lorg/apache/xml/utils/DOMOrder;

    if-eqz v2, :cond_1a

    instance-of v2, p1, Lorg/apache/xml/utils/DOMOrder;

    if-eqz v2, :cond_1a

    .line 236
    check-cast p0, Lorg/apache/xml/utils/DOMOrder;

    .end local p0
    invoke-interface {p0}, Lorg/apache/xml/utils/DOMOrder;->getUid()I

    move-result v0

    .line 237
    .local v0, index1:I
    check-cast p1, Lorg/apache/xml/utils/DOMOrder;

    .end local p1
    invoke-interface {p1}, Lorg/apache/xml/utils/DOMOrder;->getUid()I

    move-result v1

    .line 239
    .local v1, index2:I
    if-gt v0, v1, :cond_18

    const/4 v2, 0x1

    .line 246
    .end local v0           #index1:I
    .end local v1           #index2:I
    :goto_17
    return v2

    .line 239
    .restart local v0       #index1:I
    .restart local v1       #index2:I
    :cond_18
    const/4 v2, 0x0

    goto :goto_17

    .line 246
    .end local v0           #index1:I
    .end local v1           #index2:I
    .restart local p0
    .restart local p1
    :cond_1a
    invoke-static {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v2

    goto :goto_17
.end method


# virtual methods
.method public checkNode(Lorg/w3c/dom/Node;)V
    .registers 2
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 69
    return-void
.end method

.method public getDocument()Lorg/w3c/dom/Document;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/xml/utils/DOM2Helper;->m_doc:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public getElementByID(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .registers 4
    .parameter "id"
    .parameter "doc"

    .prologue
    .line 208
    invoke-interface {p2, p1}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 4
    .parameter "n"

    .prologue
    .line 284
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_b

    invoke-super {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    move-object v1, v0

    goto :goto_a
.end method

.method public getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 3
    .parameter "n"

    .prologue
    .line 306
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .registers 8
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 142
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 145
    .local v0, builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 146
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 148
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 165
    .local v2, parser:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v5, Lorg/apache/xml/utils/DefaultErrorHandler;

    invoke-direct {v5}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>()V

    invoke-virtual {v2, v5}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 173
    invoke-virtual {v2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/xml/utils/DOM2Helper;->setDocument(Lorg/w3c/dom/Document;)V
    :try_end_1f
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_1f} :catch_20
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_1f} :catch_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1f} :catch_30

    .line 189
    return-void

    .line 175
    .end local v0           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2           #parser:Ljavax/xml/parsers/DocumentBuilder;
    :catch_20
    move-exception v5

    move-object v4, v5

    .line 177
    .local v4, se:Lorg/xml/sax/SAXException;
    new-instance v5, Ljavax/xml/transform/TransformerException;

    invoke-direct {v5, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 179
    .end local v4           #se:Lorg/xml/sax/SAXException;
    :catch_28
    move-exception v5

    move-object v3, v5

    .line 181
    .local v3, pce:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v5, Ljavax/xml/transform/TransformerException;

    invoke-direct {v5, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 183
    .end local v3           #pce:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_30
    move-exception v5

    move-object v1, v5

    .line 185
    .local v1, ioe:Ljava/io/IOException;
    new-instance v5, Ljavax/xml/transform/TransformerException;

    invoke-direct {v5, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public setDocument(Lorg/w3c/dom/Document;)V
    .registers 2
    .parameter "doc"

    .prologue
    .line 97
    iput-object p1, p0, Lorg/apache/xml/utils/DOM2Helper;->m_doc:Lorg/w3c/dom/Document;

    .line 98
    return-void
.end method

.method public supportsSAX()Z
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method
