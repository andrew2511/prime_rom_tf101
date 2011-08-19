.class public Lorg/apache/xpath/CachedXPathAPI;
.super Ljava/lang/Object;
.source "CachedXPathAPI.java"


# instance fields
.field protected xpathSupport:Lorg/apache/xpath/XPathContext;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lorg/apache/xpath/XPathContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/xpath/CachedXPathAPI;->xpathSupport:Lorg/apache/xpath/XPathContext;

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/CachedXPathAPI;)V
    .registers 3
    .parameter "priorXPathAPI"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iget-object v0, p1, Lorg/apache/xpath/CachedXPathAPI;->xpathSupport:Lorg/apache/xpath/XPathContext;

    iput-object v0, p0, Lorg/apache/xpath/CachedXPathAPI;->xpathSupport:Lorg/apache/xpath/XPathContext;

    .line 96
    return-void
.end method


# virtual methods
.method public eval(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/apache/xpath/objects/XObject;
    .registers 4
    .parameter "contextNode"
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-virtual {p0, p1, p2, p1}, Lorg/apache/xpath/CachedXPathAPI;->eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;
    .registers 12
    .parameter "contextNode"
    .parameter "str"
    .parameter "prefixResolver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 329
    new-instance v0, Lorg/apache/xpath/XPath;

    move-object v1, p2

    move-object v3, p3

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 333
    .local v0, xpath:Lorg/apache/xpath/XPath;
    new-instance v7, Lorg/apache/xpath/XPathContext;

    invoke-direct {v7, v4}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    .line 336
    .local v7, xpathSupport:Lorg/apache/xpath/XPathContext;
    invoke-virtual {v7, p1}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v6

    .line 338
    .local v6, ctxtNode:I
    invoke-virtual {v0, v7, v6, p3}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    return-object v1
.end method

.method public eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;
    .registers 11
    .parameter "contextNode"
    .parameter "str"
    .parameter "namespaceNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 283
    new-instance v3, Lorg/apache/xml/utils/PrefixResolverDefault;

    invoke-interface {p3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/16 v4, 0x9

    if-ne v1, v4, :cond_29

    check-cast p3, Lorg/w3c/dom/Document;

    .end local p3
    invoke-interface {p3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    :goto_11
    invoke-direct {v3, v1}, Lorg/apache/xml/utils/PrefixResolverDefault;-><init>(Lorg/w3c/dom/Node;)V

    .line 288
    .local v3, prefixResolver:Lorg/apache/xml/utils/PrefixResolverDefault;
    new-instance v0, Lorg/apache/xpath/XPath;

    const/4 v4, 0x0

    move-object v1, p2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 292
    .local v0, xpath:Lorg/apache/xpath/XPath;
    iget-object v1, p0, Lorg/apache/xpath/CachedXPathAPI;->xpathSupport:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v1, p1}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v6

    .line 294
    .local v6, ctxtNode:I
    iget-object v1, p0, Lorg/apache/xpath/CachedXPathAPI;->xpathSupport:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0, v1, v6, v3}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    return-object v1

    .end local v0           #xpath:Lorg/apache/xpath/XPath;
    .end local v3           #prefixResolver:Lorg/apache/xml/utils/PrefixResolverDefault;
    .end local v6           #ctxtNode:I
    .restart local p3
    :cond_29
    move-object v1, p3

    .line 283
    goto :goto_11
.end method

.method public getXPathContext()Lorg/apache/xpath/XPathContext;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/xpath/CachedXPathAPI;->xpathSupport:Lorg/apache/xpath/XPathContext;

    return-object v0
.end method

.method public selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/traversal/NodeIterator;
    .registers 4
    .parameter "contextNode"
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p0, p1, p2, p1}, Lorg/apache/xpath/CachedXPathAPI;->selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v0

    return-object v0
.end method

.method public selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;
    .registers 6
    .parameter "contextNode"
    .parameter "str"
    .parameter "namespaceNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/CachedXPathAPI;->eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 186
    .local v0, list:Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v1

    return-object v1
.end method

.method public selectNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 4
    .parameter "contextNode"
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p0, p1, p2, p1}, Lorg/apache/xpath/CachedXPathAPI;->selectNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public selectNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;
    .registers 6
    .parameter "contextNode"
    .parameter "str"
    .parameter "namespaceNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/CachedXPathAPI;->eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 225
    .local v0, list:Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object v1

    return-object v1
.end method

.method public selectSingleNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 4
    .parameter "contextNode"
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0, p1, p2, p1}, Lorg/apache/xpath/CachedXPathAPI;->selectSingleNode(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public selectSingleNode(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 6
    .parameter "contextNode"
    .parameter "str"
    .parameter "namespaceNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/CachedXPathAPI;->selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v0

    .line 147
    .local v0, nl:Lorg/w3c/dom/traversal/NodeIterator;
    invoke-interface {v0}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object v1

    return-object v1
.end method
