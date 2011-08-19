.class public Lorg/apache/xpath/XPathAPI;
.super Ljava/lang/Object;
.source "XPathAPI.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eval(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .parameter "contextNode"
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {p0, p1, p0}, Lorg/apache/xpath/XPathAPI;->eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public static eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;
    .registers 11
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

    .line 277
    new-instance v0, Lorg/apache/xpath/XPath;

    move-object v1, p1

    move-object v3, p2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 281
    .local v0, xpath:Lorg/apache/xpath/XPath;
    new-instance v7, Lorg/apache/xpath/XPathContext;

    invoke-direct {v7, v4}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    .line 284
    .local v7, xpathSupport:Lorg/apache/xpath/XPathContext;
    invoke-virtual {v7, p0}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v6

    .line 286
    .local v6, ctxtNode:I
    invoke-virtual {v0, v7, v6, p2}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    return-object v1
.end method

.method public static eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;
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

    const/4 v4, 0x0

    .line 225
    new-instance v7, Lorg/apache/xpath/XPathContext;

    invoke-direct {v7, v4}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    .line 231
    .local v7, xpathSupport:Lorg/apache/xpath/XPathContext;
    new-instance v3, Lorg/apache/xml/utils/PrefixResolverDefault;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/16 v5, 0x9

    if-ne v1, v5, :cond_2a

    check-cast p2, Lorg/w3c/dom/Document;

    .end local p2
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    :goto_17
    invoke-direct {v3, v1}, Lorg/apache/xml/utils/PrefixResolverDefault;-><init>(Lorg/w3c/dom/Node;)V

    .line 236
    .local v3, prefixResolver:Lorg/apache/xml/utils/PrefixResolverDefault;
    new-instance v0, Lorg/apache/xpath/XPath;

    move-object v1, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 240
    .local v0, xpath:Lorg/apache/xpath/XPath;
    invoke-virtual {v7, p0}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v6

    .line 242
    .local v6, ctxtNode:I
    invoke-virtual {v0, v7, v6, v3}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    return-object v1

    .end local v0           #xpath:Lorg/apache/xpath/XPath;
    .end local v3           #prefixResolver:Lorg/apache/xml/utils/PrefixResolverDefault;
    .end local v6           #ctxtNode:I
    .restart local p2
    :cond_2a
    move-object v1, p2

    .line 231
    goto :goto_17
.end method

.method public static selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/traversal/NodeIterator;
    .registers 3
    .parameter "contextNode"
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {p0, p1, p0}, Lorg/apache/xpath/XPathAPI;->selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v0

    return-object v0
.end method

.method public static selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;
    .registers 5
    .parameter "contextNode"
    .parameter "str"
    .parameter "namespaceNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {p0, p1, p2}, Lorg/apache/xpath/XPathAPI;->eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 131
    .local v0, list:Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v1

    return-object v1
.end method

.method public static selectNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 3
    .parameter "contextNode"
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {p0, p1, p0}, Lorg/apache/xpath/XPathAPI;->selectNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public static selectNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;
    .registers 5
    .parameter "contextNode"
    .parameter "str"
    .parameter "namespaceNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {p0, p1, p2}, Lorg/apache/xpath/XPathAPI;->eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 170
    .local v0, list:Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object v1

    return-object v1
.end method

.method public static selectSingleNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 3
    .parameter "contextNode"
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {p0, p1, p0}, Lorg/apache/xpath/XPathAPI;->selectSingleNode(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public static selectSingleNode(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 5
    .parameter "contextNode"
    .parameter "str"
    .parameter "namespaceNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {p0, p1, p2}, Lorg/apache/xpath/XPathAPI;->selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v0

    .line 92
    .local v0, nl:Lorg/w3c/dom/traversal/NodeIterator;
    invoke-interface {v0}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object v1

    return-object v1
.end method
