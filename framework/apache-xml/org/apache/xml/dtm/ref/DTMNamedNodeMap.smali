.class public Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;
.super Ljava/lang/Object;
.source "DTMNamedNodeMap.java"

# interfaces
.implements Lorg/w3c/dom/NamedNodeMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;
    }
.end annotation


# instance fields
.field dtm:Lorg/apache/xml/dtm/DTM;

.field element:I

.field m_count:S


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTM;I)V
    .registers 4
    .parameter "dtm"
    .parameter "element"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput-short v0, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->m_count:S

    .line 64
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    .line 65
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->element:I

    .line 66
    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 76
    iget-short v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->m_count:S

    if-ne v2, v4, :cond_1c

    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, count:S
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->element:I

    invoke-interface {v2, v3}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result v1

    .local v1, n:I
    :goto_e
    if-eq v1, v4, :cond_1a

    .line 83
    add-int/lit8 v2, v0, 0x1

    int-to-short v0, v2

    .line 81
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    move-result v1

    goto :goto_e

    .line 86
    :cond_1a
    iput-short v0, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->m_count:S

    .line 89
    .end local v0           #count:S
    .end local v1           #n:I
    :cond_1c
    iget-short v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->m_count:S

    return v2
.end method

.method public getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 5
    .parameter "name"

    .prologue
    .line 102
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->element:I

    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result v0

    .local v0, n:I
    :goto_8
    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    .line 105
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 106
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 109
    :goto_1d
    return-object v1

    .line 103
    :cond_1e
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    move-result v0

    goto :goto_8

    .line 109
    :cond_25
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 8
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 199
    const/4 v2, 0x0

    .line 200
    .local v2, retNode:Lorg/w3c/dom/Node;
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->element:I

    invoke-interface {v3, v4}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result v0

    .local v0, n:I
    :goto_9
    const/4 v3, -0x1

    if-eq v0, v3, :cond_30

    .line 203
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 205
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, nsURI:Ljava/lang/String;
    if-nez p1, :cond_22

    if-eqz v1, :cond_2a

    :cond_22
    if-eqz p1, :cond_31

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 209
    :cond_2a
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 214
    .end local v1           #nsURI:Ljava/lang/String;
    :cond_30
    return-object v2

    .line 201
    :cond_31
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    move-result v0

    goto :goto_9
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .registers 6
    .parameter "i"

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, count:I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->element:I

    invoke-interface {v2, v3}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result v1

    .local v1, n:I
    :goto_9
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    .line 128
    if-ne v0, p1, :cond_15

    .line 129
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 134
    :goto_14
    return-object v2

    .line 131
    :cond_15
    add-int/lit8 v0, v0, 0x1

    .line 126
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    move-result v1

    goto :goto_9

    .line 134
    :cond_1e
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 4
    .parameter "name"

    .prologue
    .line 183
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;-><init>(Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;S)V

    throw v0
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 5
    .parameter "namespaceURI"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 268
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;-><init>(Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;S)V

    throw v0
.end method

.method public setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 4
    .parameter "newNode"

    .prologue
    .line 163
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;-><init>(Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;S)V

    throw v0
.end method

.method public setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 4
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;-><init>(Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;S)V

    throw v0
.end method
