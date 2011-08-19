.class public Lorg/apache/xml/utils/AttList;
.super Ljava/lang/Object;
.source "AttList.java"

# interfaces
.implements Lorg/xml/sax/Attributes;


# instance fields
.field m_attrs:Lorg/w3c/dom/NamedNodeMap;

.field m_dh:Lorg/apache/xml/utils/DOMHelper;

.field m_lastIndex:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/NamedNodeMap;Lorg/apache/xml/utils/DOMHelper;)V
    .registers 5
    .parameter "attrs"
    .parameter "dh"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    .line 73
    iget-object v0, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/utils/AttList;->m_lastIndex:I

    .line 74
    iput-object p2, p0, Lorg/apache/xml/utils/AttList;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    .line 75
    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .registers 6
    .parameter "qName"

    .prologue
    .line 246
    iget-object v2, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_9
    if-ltz v1, :cond_20

    .line 248
    iget-object v2, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v2, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 249
    .local v0, a:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move v2, v1

    .line 252
    .end local v0           #a:Lorg/w3c/dom/Node;
    :goto_1c
    return v2

    .line 246
    .restart local v0       #a:Lorg/w3c/dom/Node;
    :cond_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 252
    .end local v0           #a:Lorg/w3c/dom/Node;
    :cond_20
    const/4 v2, -0x1

    goto :goto_1c
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "localPart"

    .prologue
    .line 225
    iget-object v3, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_9
    if-ltz v1, :cond_2e

    .line 227
    iget-object v3, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v3, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 228
    .local v0, a:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, u:Ljava/lang/String;
    if-nez v2, :cond_25

    if-nez p1, :cond_2b

    :cond_19
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    move v3, v1

    .line 234
    .end local v0           #a:Lorg/w3c/dom/Node;
    .end local v2           #u:Ljava/lang/String;
    :goto_24
    return v3

    .line 229
    .restart local v0       #a:Lorg/w3c/dom/Node;
    .restart local v2       #u:Ljava/lang/String;
    :cond_25
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 225
    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 234
    .end local v0           #a:Lorg/w3c/dom/Node;
    .end local v2           #u:Ljava/lang/String;
    :cond_2e
    const/4 v3, -0x1

    goto :goto_24
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/xml/utils/AttList;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    iget-object v1, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v1, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-virtual {v0, p0}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQName(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 140
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 166
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "uri"
    .parameter "localName"

    .prologue
    .line 181
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getURI(I)Ljava/lang/String;
    .registers 5
    .parameter "index"

    .prologue
    .line 98
    iget-object v1, p0, Lorg/apache/xml/utils/AttList;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    iget-object v2, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v2, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-virtual {v1, p0}, Lorg/apache/xml/utils/DOMHelper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, ns:Ljava/lang/String;
    if-nez v0, :cond_12

    .line 100
    const-string v0, ""

    .line 101
    :cond_12
    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"

    .prologue
    .line 194
    iget-object v1, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v1, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    .line 195
    .local v0, attr:Lorg/w3c/dom/Attr;
    if-eqz v0, :cond_f

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "uri"
    .parameter "localName"

    .prologue
    .line 210
    iget-object v1, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v1, p1, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 211
    .local v0, a:Lorg/w3c/dom/Node;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method
