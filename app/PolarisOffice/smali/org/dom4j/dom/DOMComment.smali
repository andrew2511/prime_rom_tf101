.class public Lorg/dom4j/dom/DOMComment;
.super Lorg/dom4j/tree/DefaultComment;
.source "DOMComment.java"

# interfaces
.implements Lorg/w3c/dom/Comment;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultComment;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;Ljava/lang/String;)V
    .locals 0
    .parameter "parent"
    .parameter "text"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/DefaultComment;-><init>(Lorg/dom4j/Element;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private checkNewChildNode(Lorg/w3c/dom/Node;)V
    .locals 3
    .parameter "newChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    .line 133
    const-string v2, "Comment nodes cannot have children"

    .line 132
    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
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
    .line 125
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMComment;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 127
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->appendChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public appendData(Ljava/lang/String;)V
    .locals 0
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->appendData(Lorg/dom4j/CharacterData;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "deep"

    .prologue
    .line 141
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->cloneNode(Lorg/dom4j/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public deleteData(II)V
    .locals 0
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->deleteData(Lorg/dom4j/CharacterData;II)V

    .line 184
    return-void
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 77
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getChildNodes(Lorg/dom4j/Node;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getData(Lorg/dom4j/CharacterData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 81
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getFirstChild(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 85
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getLastChild(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 167
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getLength(Lorg/dom4j/CharacterData;)I

    move-result v0

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getLocalName(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getNamespaceURI(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 93
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getNextSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "#comment"

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
    .line 65
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getNodeValue(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 101
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getOwnerDocument(Lorg/dom4j/Node;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 73
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getParentNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getPrefix(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 89
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getPreviousSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 153
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->hasAttributes(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    .prologue
    .line 137
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->hasChildNodes(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
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
    .line 106
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMComment;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 108
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->insertBefore(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public insertData(ILjava/lang/String;)V
    .locals 0
    .parameter "offset"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->insertData(Lorg/dom4j/CharacterData;ILjava/lang/String;)V

    .line 180
    return-void
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 149
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->isSupported(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public normalize()V
    .locals 0

    .prologue
    .line 145
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->normalize(Lorg/dom4j/Node;)V

    .line 146
    return-void
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
    .line 120
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
    .line 113
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMComment;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 115
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->replaceChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public replaceData(IILjava/lang/String;)V
    .locals 0
    .parameter "offset"
    .parameter "count"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {p0, p1, p2, p3}, Lorg/dom4j/dom/DOMNodeHelper;->replaceData(Lorg/dom4j/CharacterData;IILjava/lang/String;)V

    .line 189
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->setData(Lorg/dom4j/CharacterData;Ljava/lang/String;)V

    .line 164
    return-void
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
    .line 69
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->setNodeValue(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 70
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
    .line 50
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->setPrefix(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public substringData(II)Ljava/lang/String;
    .locals 1
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->substringData(Lorg/dom4j/CharacterData;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public supports(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->supports(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
