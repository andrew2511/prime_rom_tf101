.class public Lorg/apache/harmony/xml/dom/TextImpl;
.super Lorg/apache/harmony/xml/dom/CharacterDataImpl;
.source "TextImpl.java"

# interfaces
.implements Lorg/w3c/dom/Text;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .registers 3
    .parameter "document"
    .parameter "data"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/CharacterDataImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private firstTextNodeInCurrentRun()Lorg/apache/harmony/xml/dom/TextImpl;
    .registers 6

    .prologue
    .line 116
    move-object v1, p0

    .line 117
    .local v1, firstTextInCurrentRun:Lorg/apache/harmony/xml/dom/TextImpl;
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    .local v3, p:Lorg/w3c/dom/Node;
    :goto_5
    if-eqz v3, :cond_1a

    .line 118
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    .line 119
    .local v2, nodeType:S
    const/4 v4, 0x3

    if-eq v2, v4, :cond_11

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1a

    .line 120
    :cond_11
    move-object v0, v3

    check-cast v0, Lorg/apache/harmony/xml/dom/TextImpl;

    move-object v1, v0

    .line 117
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_5

    .line 125
    .end local v2           #nodeType:S
    :cond_1a
    return-object v1
.end method

.method private nextTextNode()Lorg/apache/harmony/xml/dom/TextImpl;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 133
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 134
    .local v0, nextSibling:Lorg/w3c/dom/Node;
    if-nez v0, :cond_9

    move-object v2, v3

    .line 139
    .end local v0           #nextSibling:Lorg/w3c/dom/Node;
    :goto_8
    return-object v2

    .line 138
    .restart local v0       #nextSibling:Lorg/w3c/dom/Node;
    :cond_9
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    .line 139
    .local v1, nodeType:S
    const/4 v2, 0x3

    if-eq v1, v2, :cond_13

    const/4 v2, 0x4

    if-ne v1, v2, :cond_17

    :cond_13
    check-cast v0, Lorg/apache/harmony/xml/dom/TextImpl;

    .end local v0           #nextSibling:Lorg/w3c/dom/Node;
    move-object v2, v0

    goto :goto_8

    .restart local v0       #nextSibling:Lorg/w3c/dom/Node;
    :cond_17
    move-object v2, v3

    goto :goto_8
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    const-string v0, "#text"

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x3

    return v0
.end method

.method public final getWholeText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v1, result:Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->firstTextNodeInCurrentRun()Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v0

    .local v0, n:Lorg/apache/harmony/xml/dom/TextImpl;
    :goto_9
    if-eqz v0, :cond_13

    .line 79
    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/dom/TextImpl;->appendDataTo(Ljava/lang/StringBuilder;)V

    .line 78
    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/TextImpl;->nextTextNode()Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v0

    goto :goto_9

    .line 81
    :cond_13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final isElementContentWhitespace()Z
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public final minimize()Lorg/apache/harmony/xml/dom/TextImpl;
    .registers 6

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getLength()I

    move-result v3

    if-nez v3, :cond_d

    .line 158
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/TextImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    invoke-virtual {v3, p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 159
    const/4 v3, 0x0

    .line 170
    :goto_c
    return-object v3

    .line 162
    :cond_d
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 163
    .local v1, previous:Lorg/w3c/dom/Node;
    if-eqz v1, :cond_1a

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1c

    :cond_1a
    move-object v3, p0

    .line 164
    goto :goto_c

    .line 167
    :cond_1c
    move-object v0, v1

    check-cast v0, Lorg/apache/harmony/xml/dom/TextImpl;

    move-object v2, v0

    .line 168
    .local v2, previousText:Lorg/apache/harmony/xml/dom/TextImpl;
    iget-object v3, v2, Lorg/apache/harmony/xml/dom/TextImpl;->buffer:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/apache/harmony/xml/dom/TextImpl;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 169
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/TextImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    invoke-virtual {v3, p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object v3, v2

    .line 170
    goto :goto_c
.end method

.method public final replaceWholeText(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .registers 7
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 90
    .local v1, parent:Lorg/w3c/dom/Node;
    const/4 v2, 0x0

    .line 93
    .local v2, result:Lorg/w3c/dom/Text;
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->firstTextNodeInCurrentRun()Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v0

    .local v0, n:Lorg/apache/harmony/xml/dom/TextImpl;
    :goto_9
    if-eqz v0, :cond_27

    .line 96
    if-ne v0, p0, :cond_1e

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1e

    .line 97
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/TextImpl;->setData(Ljava/lang/String;)V

    .line 98
    move-object v2, p0

    .line 99
    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/TextImpl;->nextTextNode()Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v0

    goto :goto_9

    .line 102
    :cond_1e
    move-object v3, v0

    .line 103
    .local v3, toRemove:Lorg/w3c/dom/Node;
    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/TextImpl;->nextTextNode()Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v0

    .line 104
    invoke-interface {v1, v3}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_9

    .line 108
    .end local v3           #toRemove:Lorg/w3c/dom/Node;
    :cond_27
    return-object v2
.end method

.method public final splitText(I)Lorg/w3c/dom/Text;
    .registers 6
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/TextImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getLength()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {p0, p1, v3}, Lorg/apache/harmony/xml/dom/TextImpl;->substringData(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v0

    .line 52
    .local v0, newText:Lorg/w3c/dom/Text;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lorg/apache/harmony/xml/dom/TextImpl;->deleteData(II)V

    .line 54
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 55
    .local v1, refNode:Lorg/w3c/dom/Node;
    if-nez v1, :cond_21

    .line 56
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 61
    :goto_20
    return-object p0

    .line 58
    :cond_21
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_20
.end method
