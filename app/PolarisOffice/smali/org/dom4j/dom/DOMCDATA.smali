.class public Lorg/dom4j/dom/DOMCDATA;
.super Lorg/dom4j/tree/DefaultCDATA;
.source "DOMCDATA.java"

# interfaces
.implements Lorg/w3c/dom/CDATASection;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultCDATA;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;Ljava/lang/String;)V
    .locals 0
    .parameter "parent"
    .parameter "text"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/DefaultCDATA;-><init>(Lorg/dom4j/Element;Ljava/lang/String;)V

    .line 35
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
    .line 134
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    .line 135
    const-string v2, "CDATASection nodes cannot have children"

    .line 134
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
    .line 127
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMCDATA;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 129
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
    .line 177
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->appendData(Lorg/dom4j/CharacterData;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "deep"

    .prologue
    .line 143
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->cloneNode(Lorg/dom4j/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method protected createCDATA(Ljava/lang/String;)Lorg/dom4j/CDATA;
    .locals 1
    .parameter "text"

    .prologue
    .line 226
    new-instance v0, Lorg/dom4j/dom/DOMCDATA;

    invoke-direct {v0, p1}, Lorg/dom4j/dom/DOMCDATA;-><init>(Ljava/lang/String;)V

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
    .line 185
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->deleteData(Lorg/dom4j/CharacterData;II)V

    .line 186
    return-void
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 79
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
    .line 161
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getData(Lorg/dom4j/CharacterData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 83
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getFirstChild(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 87
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getLastChild(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 169
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getLength(Lorg/dom4j/CharacterData;)I

    move-result v0

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getLocalName(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getNamespaceURI(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 95
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getNextSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "#cdata-section"

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
    .line 67
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getNodeValue(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 103
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getOwnerDocument(Lorg/dom4j/Node;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 75
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getParentNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getPrefix(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 91
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getPreviousSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 155
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->hasAttributes(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    .prologue
    .line 139
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
    .line 108
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMCDATA;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 110
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
    .line 181
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->insertData(Lorg/dom4j/CharacterData;ILjava/lang/String;)V

    .line 182
    return-void
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 151
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->isSupported(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public normalize()V
    .locals 0

    .prologue
    .line 147
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->normalize(Lorg/dom4j/Node;)V

    .line 148
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
    .line 122
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
    .line 115
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMCDATA;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 117
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
    .line 190
    invoke-static {p0, p1, p2, p3}, Lorg/dom4j/dom/DOMNodeHelper;->replaceData(Lorg/dom4j/CharacterData;IILjava/lang/String;)V

    .line 191
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
    .line 165
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->setData(Lorg/dom4j/CharacterData;Ljava/lang/String;)V

    .line 166
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
    .line 71
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->setNodeValue(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 72
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
    .line 52
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->setPrefix(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public splitText(I)Lorg/w3c/dom/Text;
    .locals 10
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 196
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMCDATA;->isReadOnly()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 197
    new-instance v6, Lorg/w3c/dom/DOMException;

    const/4 v7, 0x7

    .line 198
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "CharacterData node is read only: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 197
    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    .line 200
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMCDATA;->getText()Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, text:Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    move v0, v6

    .line 203
    .local v0, length:I
    :goto_0
    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_3

    .line 204
    :cond_1
    new-instance v6, Lorg/w3c/dom/DOMException;

    const/4 v7, 0x1

    .line 205
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "No text at offset: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 204
    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    .end local v0           #length:I
    :cond_2
    move v0, v7

    .line 201
    goto :goto_0

    .line 207
    .restart local v0       #length:I
    :cond_3
    invoke-virtual {v5, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, start:Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, rest:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/dom4j/dom/DOMCDATA;->setText(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMCDATA;->getParent()Lorg/dom4j/Element;

    move-result-object v2

    .line 212
    .local v2, parent:Lorg/dom4j/Element;
    invoke-virtual {p0, v3}, Lorg/dom4j/dom/DOMCDATA;->createCDATA(Ljava/lang/String;)Lorg/dom4j/CDATA;

    move-result-object v1

    .line 214
    .local v1, newText:Lorg/dom4j/CDATA;
    if-eqz v2, :cond_4

    .line 215
    invoke-interface {v2, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/CDATA;)V

    .line 218
    :cond_4
    invoke-static {v1}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMText(Lorg/dom4j/CharacterData;)Lorg/w3c/dom/Text;

    move-result-object v6

    return-object v6
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
    .line 173
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->substringData(Lorg/dom4j/CharacterData;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public supports(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->supports(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
