.class public abstract Lorg/dom4j/util/ProxyDocumentFactory;
.super Ljava/lang/Object;
.source "ProxyDocumentFactory.java"


# instance fields
.field private proxy:Lorg/dom4j/DocumentFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    .line 52
    return-void
.end method


# virtual methods
.method public createAttribute(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 1
    .parameter "owner"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 82
    iget-object v0, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1, p2, p3}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 1
    .parameter "owner"
    .parameter "qname"
    .parameter "value"

    .prologue
    .line 78
    iget-object v0, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1, p2, p3}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public createCDATA(Ljava/lang/String;)Lorg/dom4j/CDATA;
    .locals 1
    .parameter "text"

    .prologue
    .line 86
    iget-object v0, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createCDATA(Ljava/lang/String;)Lorg/dom4j/CDATA;

    move-result-object v0

    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Lorg/dom4j/Comment;
    .locals 1
    .parameter "text"

    .prologue
    .line 90
    iget-object v0, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createComment(Ljava/lang/String;)Lorg/dom4j/Comment;

    move-result-object v0

    return-object v0
.end method

.method public createDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/DocumentType;
    .locals 1
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"

    .prologue
    .line 66
    iget-object v0, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1, p2, p3}, Lorg/dom4j/DocumentFactory;->createDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/DocumentType;

    move-result-object v0

    return-object v0
.end method

.method public createDocument()Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public createDocument(Lorg/dom4j/Element;)Lorg/dom4j/Document;
    .locals 1
    .parameter "rootElement"

    .prologue
    .line 61
    iget-object v0, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createDocument(Lorg/dom4j/Element;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1
    .parameter "name"

    .prologue
    .line 74
    iget-object v0, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 1
    .parameter "qname"

    .prologue
    .line 70
    iget-object v0, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public createEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Entity;
    .locals 1
    .parameter "name"
    .parameter "text"

    .prologue
    .line 98
    iget-object v0, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Entity;

    move-result-object v0

    return-object v0
.end method

.method public createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 1
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 102
    iget-object v0, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public createPattern(Ljava/lang/String;)Lorg/dom4j/rule/Pattern;
    .locals 1
    .parameter "xpathPattern"

    .prologue
    .line 150
    iget-object v0, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createPattern(Ljava/lang/String;)Lorg/dom4j/rule/Pattern;

    move-result-object v0

    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;
    .locals 1
    .parameter "target"
    .parameter "data"

    .prologue
    .line 107
    iget-object v0, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/dom4j/ProcessingInstruction;
    .locals 1
    .parameter "target"
    .parameter "data"

    .prologue
    .line 112
    iget-object v0, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public createQName(Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 1
    .parameter "localName"

    .prologue
    .line 120
    iget-object v0, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public createQName(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 1
    .parameter "qualifiedName"
    .parameter "uri"

    .prologue
    .line 128
    iget-object v0, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 1
    .parameter "name"
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 124
    iget-object v0, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1, p2, p3}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;
    .locals 1
    .parameter "localName"
    .parameter "namespace"

    .prologue
    .line 116
    iget-object v0, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public createText(Ljava/lang/String;)Lorg/dom4j/Text;
    .locals 1
    .parameter "text"

    .prologue
    .line 94
    iget-object v0, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createText(Ljava/lang/String;)Lorg/dom4j/Text;

    move-result-object v0

    return-object v0
.end method

.method public createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;
    .locals 1
    .parameter "xpathExpression"

    .prologue
    .line 132
    iget-object v0, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    return-object v0
.end method

.method public createXPath(Ljava/lang/String;Lorg/jaxen/VariableContext;)Lorg/dom4j/XPath;
    .locals 1
    .parameter "xpathExpression"
    .parameter "variableContext"

    .prologue
    .line 137
    iget-object v0, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createXPath(Ljava/lang/String;Lorg/jaxen/VariableContext;)Lorg/dom4j/XPath;

    move-result-object v0

    return-object v0
.end method

.method public createXPathFilter(Ljava/lang/String;)Lorg/dom4j/NodeFilter;
    .locals 1
    .parameter "xpathFilterExpression"

    .prologue
    .line 146
    iget-object v0, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createXPathFilter(Ljava/lang/String;)Lorg/dom4j/NodeFilter;

    move-result-object v0

    return-object v0
.end method

.method public createXPathFilter(Ljava/lang/String;Lorg/jaxen/VariableContext;)Lorg/dom4j/NodeFilter;
    .locals 1
    .parameter "xpathFilterExpression"
    .parameter "variableContext"

    .prologue
    .line 142
    iget-object v0, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createXPathFilter(Ljava/lang/String;Lorg/jaxen/VariableContext;)Lorg/dom4j/NodeFilter;

    move-result-object v0

    return-object v0
.end method

.method protected getProxy()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method protected setProxy(Lorg/dom4j/DocumentFactory;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 162
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object p1

    .line 165
    :cond_0
    iput-object p1, p0, Lorg/dom4j/util/ProxyDocumentFactory;->proxy:Lorg/dom4j/DocumentFactory;

    .line 166
    return-void
.end method
