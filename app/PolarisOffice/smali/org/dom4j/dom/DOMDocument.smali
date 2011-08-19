.class public Lorg/dom4j/dom/DOMDocument;
.super Lorg/dom4j/tree/DefaultDocument;
.source "DOMDocument.java"

# interfaces
.implements Lorg/w3c/dom/Document;


# static fields
.field private static final DOCUMENT_FACTORY:Lorg/dom4j/dom/DOMDocumentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lorg/dom4j/dom/DOMDocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    check-cast v0, Lorg/dom4j/dom/DOMDocumentFactory;

    .line 36
    sput-object v0, Lorg/dom4j/dom/DOMDocument;->DOCUMENT_FACTORY:Lorg/dom4j/dom/DOMDocumentFactory;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/dom4j/tree/DefaultDocument;-><init>()V

    .line 40
    invoke-direct {p0}, Lorg/dom4j/dom/DOMDocument;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultDocument;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lorg/dom4j/dom/DOMDocument;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/dom/DOMElement;Lorg/dom4j/dom/DOMDocumentType;)V
    .locals 0
    .parameter "name"
    .parameter "rootElement"
    .parameter "docType"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lorg/dom4j/tree/DefaultDocument;-><init>(Ljava/lang/String;Lorg/dom4j/Element;Lorg/dom4j/DocumentType;)V

    .line 66
    invoke-direct {p0}, Lorg/dom4j/dom/DOMDocument;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/dom/DOMDocumentType;)V
    .locals 0
    .parameter "docType"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultDocument;-><init>(Lorg/dom4j/DocumentType;)V

    .line 55
    invoke-direct {p0}, Lorg/dom4j/dom/DOMDocument;->init()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/dom/DOMElement;)V
    .locals 0
    .parameter "rootElement"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultDocument;-><init>(Lorg/dom4j/Element;)V

    .line 50
    invoke-direct {p0}, Lorg/dom4j/dom/DOMDocument;->init()V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/dom/DOMElement;Lorg/dom4j/dom/DOMDocumentType;)V
    .locals 0
    .parameter "rootElement"
    .parameter "docType"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/DefaultDocument;-><init>(Lorg/dom4j/Element;Lorg/dom4j/DocumentType;)V

    .line 60
    invoke-direct {p0}, Lorg/dom4j/dom/DOMDocument;->init()V

    .line 61
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
    .line 169
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    .line 171
    .local v0, nodeType:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 172
    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 173
    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 174
    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 175
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/4 v2, 0x3

    .line 176
    const-string v3, "Given node cannot be a child of document"

    .line 175
    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 178
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lorg/dom4j/dom/DOMDocument;->DOCUMENT_FACTORY:Lorg/dom4j/dom/DOMDocumentFactory;

    invoke-virtual {p0, v0}, Lorg/dom4j/dom/DOMDocument;->setDocumentFactory(Lorg/dom4j/DocumentFactory;)V

    .line 71
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
    .line 162
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMDocument;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 164
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->appendChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "deep"

    .prologue
    .line 185
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->cloneNode(Lorg/dom4j/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    .line 259
    .local v0, qname:Lorg/dom4j/QName;
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 3
    .parameter "namespaceURI"
    .parameter "qualifiedName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 284
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    .line 287
    .local v0, qname:Lorg/dom4j/QName;
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, v2, v0, v2}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createCDATA(Ljava/lang/String;)Lorg/dom4j/CDATA;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/CDATASection;

    return-object p0
.end method

.method public createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .locals 1
    .parameter "data"

    .prologue
    .line 243
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createComment(Ljava/lang/String;)Lorg/dom4j/Comment;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Comment;

    return-object p0
.end method

.method public createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    .line 235
    const/4 v0, 0x0

    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2
    .parameter "namespaceURI"
    .parameter "qualifiedName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    .line 279
    .local v0, qname:Lorg/dom4j/QName;
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/dom4j/DocumentFactory;->createEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Entity;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/EntityReference;

    return-object p0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .locals 1
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    .line 253
    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;

    move-result-object p0

    .line 252
    .end local p0
    check-cast p0, Lorg/w3c/dom/ProcessingInstruction;

    return-object p0
.end method

.method public createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 1
    .parameter "data"

    .prologue
    .line 239
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createText(Ljava/lang/String;)Lorg/dom4j/Text;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Text;

    return-object p0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->content()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->createNodeList(Ljava/util/List;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public getDoctype()Lorg/w3c/dom/DocumentType;
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMDocumentType(Lorg/dom4j/DocumentType;)Lorg/w3c/dom/DocumentType;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentElement()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMElement(Lorg/dom4j/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method protected getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Lorg/dom4j/tree/DefaultDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 299
    sget-object v0, Lorg/dom4j/dom/DOMDocument;->DOCUMENT_FACTORY:Lorg/dom4j/dom/DOMDocumentFactory;

    .line 301
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/dom4j/tree/DefaultDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    goto :goto_0
.end method

.method public getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1
    .parameter "elementId"

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lorg/dom4j/dom/DOMDocument;->elementByID(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMElement(Lorg/dom4j/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 2
    .parameter "name"

    .prologue
    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v0, list:Ljava/util/ArrayList;
    invoke-static {v0, p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->appendElementsByTagName(Ljava/util/List;Lorg/dom4j/Branch;Ljava/lang/String;)V

    .line 202
    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->createNodeList(Ljava/util/List;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    return-object v1
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 2
    .parameter "namespace"
    .parameter "name"

    .prologue
    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v0, list:Ljava/util/ArrayList;
    invoke-static {v0, p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->appendElementsByTagNameNS(Ljava/util/List;Lorg/dom4j/Branch;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->createNodeList(Ljava/util/List;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    return-object v1
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/dom4j/dom/DOMDocument;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    instance-of v0, v0, Lorg/w3c/dom/DOMImplementation;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/DOMImplementation;

    move-object v0, p0

    .line 220
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    sget-object v0, Lorg/dom4j/dom/DOMDocument;->DOCUMENT_FACTORY:Lorg/dom4j/dom/DOMDocumentFactory;

    goto :goto_0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->nodeCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/dom4j/dom/DOMDocument;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getLocalName(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getNamespaceURI(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 130
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getNextSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "#document"

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
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 110
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getParentNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getPrefix(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 126
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getPreviousSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 193
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->hasAttributes(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->nodeCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "importedNode"
    .parameter "deep"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    .line 271
    const/4 v0, 0x0

    return-object v0
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
    .line 143
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMDocument;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 145
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->insertBefore(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 189
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->isSupported(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
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
    .line 157
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
    .line 150
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMDocument;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 152
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->replaceChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
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
    .line 107
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
    .line 88
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->setPrefix(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public supports(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 76
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->supports(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
