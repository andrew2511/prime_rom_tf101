.class public Lorg/dom4j/dom/DOMAttributeNodeMap;
.super Ljava/lang/Object;
.source "DOMAttributeNodeMap.java"

# interfaces
.implements Lorg/w3c/dom/NamedNodeMap;


# instance fields
.field private element:Lorg/dom4j/dom/DOMElement;


# direct methods
.method public constructor <init>(Lorg/dom4j/dom/DOMElement;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/dom4j/dom/DOMAttributeNodeMap;->element:Lorg/dom4j/dom/DOMElement;

    .line 28
    return-void
.end method


# virtual methods
.method public foo()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    .line 34
    return-void
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/dom4j/dom/DOMAttributeNodeMap;->element:Lorg/dom4j/dom/DOMElement;

    invoke-virtual {v0}, Lorg/dom4j/dom/DOMElement;->attributeCount()I

    move-result v0

    return v0
.end method

.method public getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "name"

    .prologue
    .line 37
    iget-object v0, p0, Lorg/dom4j/dom/DOMAttributeNodeMap;->element:Lorg/dom4j/dom/DOMElement;

    invoke-virtual {v0, p1}, Lorg/dom4j/dom/DOMElement;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 69
    iget-object v0, p0, Lorg/dom4j/dom/DOMAttributeNodeMap;->element:Lorg/dom4j/dom/DOMElement;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/dom/DOMElement;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "index"

    .prologue
    .line 61
    iget-object v0, p0, Lorg/dom4j/dom/DOMAttributeNodeMap;->element:Lorg/dom4j/dom/DOMElement;

    invoke-virtual {v0, p1}, Lorg/dom4j/dom/DOMElement;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMAttr(Lorg/dom4j/Node;)Lorg/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method

.method public removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v1, p0, Lorg/dom4j/dom/DOMAttributeNodeMap;->element:Lorg/dom4j/dom/DOMElement;

    invoke-virtual {v1, p1}, Lorg/dom4j/dom/DOMElement;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 52
    .local v0, attr:Lorg/w3c/dom/Attr;
    if-nez v0, :cond_0

    .line 53
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x8

    .line 54
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "No attribute named "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 57
    :cond_0
    iget-object v1, p0, Lorg/dom4j/dom/DOMAttributeNodeMap;->element:Lorg/dom4j/dom/DOMElement;

    invoke-virtual {v1, v0}, Lorg/dom4j/dom/DOMElement;->removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v1

    return-object v1
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2
    .parameter "namespaceURI"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v1, p0, Lorg/dom4j/dom/DOMAttributeNodeMap;->element:Lorg/dom4j/dom/DOMElement;

    invoke-virtual {v1, p1, p2}, Lorg/dom4j/dom/DOMElement;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 86
    .local v0, attr:Lorg/w3c/dom/Attr;
    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lorg/dom4j/dom/DOMAttributeNodeMap;->element:Lorg/dom4j/dom/DOMElement;

    invoke-virtual {v1, v0}, Lorg/dom4j/dom/DOMElement;->removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v1

    .line 90
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 4
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 41
    instance-of v0, p1, Lorg/w3c/dom/Attr;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lorg/dom4j/dom/DOMAttributeNodeMap;->element:Lorg/dom4j/dom/DOMElement;

    check-cast p1, Lorg/w3c/dom/Attr;

    .end local p1
    invoke-virtual {v0, p1}, Lorg/dom4j/dom/DOMElement;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v0

    return-object v0

    .line 44
    .restart local p1
    :cond_0
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    .line 45
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Node is not an Attr: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 4
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 73
    instance-of v0, p1, Lorg/w3c/dom/Attr;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lorg/dom4j/dom/DOMAttributeNodeMap;->element:Lorg/dom4j/dom/DOMElement;

    check-cast p1, Lorg/w3c/dom/Attr;

    .end local p1
    invoke-virtual {v0, p1}, Lorg/dom4j/dom/DOMElement;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v0

    return-object v0

    .line 76
    .restart local p1
    :cond_0
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    .line 77
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Node is not an Attr: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method
