.class public abstract Lorg/dom4j/tree/AbstractNode;
.super Ljava/lang/Object;
.source "AbstractNode.java"

# interfaces
.implements Lorg/dom4j/Node;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

.field protected static final NODE_TYPE_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Node"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Element"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 34
    const-string v2, "Attribute"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Text"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CDATA"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Entity"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Entity"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 35
    const-string v2, "ProcessingInstruction"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Comment"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Document"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DocumentType"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 36
    const-string v2, "DocumentFragment"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Notation"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Namespace"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    .line 33
    sput-object v0, Lorg/dom4j/tree/AbstractNode;->NODE_TYPE_NAMES:[Ljava/lang/String;

    .line 40
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    .line 39
    sput-object v0, Lorg/dom4j/tree/AbstractNode;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public asXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;
    .locals 1
    .parameter "parent"

    .prologue
    .line 219
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->supportsParent()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractNode;->createXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p0

    .line 104
    :goto_0
    return-object v2

    .line 100
    :cond_0
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 101
    .local v0, answer:Lorg/dom4j/Node;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/dom4j/Node;->setParent(Lorg/dom4j/Element;)V

    .line 102
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/dom4j/Node;->setDocument(Lorg/dom4j/Document;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 104
    goto :goto_0

    .line 105
    .end local v0           #answer:Lorg/dom4j/Node;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 107
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "This should never happen. Caught: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createPattern(Ljava/lang/String;)Lorg/dom4j/rule/Pattern;
    .locals 1
    .parameter "patternText"

    .prologue
    .line 215
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createPattern(Ljava/lang/String;)Lorg/dom4j/rule/Pattern;

    move-result-object v0

    return-object v0
.end method

.method public createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;
    .locals 1
    .parameter "xpathExpression"

    .prologue
    .line 207
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    return-object v0
.end method

.method public createXPathFilter(Ljava/lang/String;)Lorg/dom4j/NodeFilter;
    .locals 1
    .parameter "patternText"

    .prologue
    .line 211
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createXPathFilter(Ljava/lang/String;)Lorg/dom4j/NodeFilter;

    move-result-object v0

    return-object v0
.end method

.method protected createXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;
    .locals 3
    .parameter "parent"

    .prologue
    .line 231
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "asXPathResult() not yet implemented fully for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public detach()Lorg/dom4j/Node;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->getParent()Lorg/dom4j/Element;

    move-result-object v1

    .line 116
    .local v1, parent:Lorg/dom4j/Element;
    if-eqz v1, :cond_1

    .line 117
    invoke-interface {v1, p0}, Lorg/dom4j/Element;->remove(Lorg/dom4j/Node;)Z

    .line 126
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lorg/dom4j/tree/AbstractNode;->setParent(Lorg/dom4j/Element;)V

    .line 127
    invoke-virtual {p0, v2}, Lorg/dom4j/tree/AbstractNode;->setDocument(Lorg/dom4j/Document;)V

    .line 129
    return-object p0

    .line 119
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 121
    .local v0, document:Lorg/dom4j/Document;
    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0, p0}, Lorg/dom4j/Document;->remove(Lorg/dom4j/Node;)Z

    goto :goto_0
.end method

.method public getDocument()Lorg/dom4j/Document;
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    .line 62
    .local v0, element:Lorg/dom4j/Element;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lorg/dom4j/tree/AbstractNode;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0xe

    return v0
.end method

.method public getNodeTypeName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->getNodeType()S

    move-result v0

    .line 52
    .local v0, type:I
    if-ltz v0, :cond_0

    sget-object v1, Lorg/dom4j/tree/AbstractNode;->NODE_TYPE_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 53
    :cond_0
    const-string v1, "Unknown"

    .line 56
    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Lorg/dom4j/tree/AbstractNode;->NODE_TYPE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public getParent()Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractNode;->getPath(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUniquePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractNode;->getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 2
    .parameter "patternText"

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractNode;->createXPathFilter(Ljava/lang/String;)Lorg/dom4j/NodeFilter;

    move-result-object v0

    .line 203
    .local v0, filter:Lorg/dom4j/NodeFilter;
    invoke-interface {v0, p0}, Lorg/dom4j/NodeFilter;->matches(Lorg/dom4j/Node;)Z

    move-result v1

    return v1
.end method

.method public numberValueOf(Ljava/lang/String;)Ljava/lang/Number;
    .locals 2
    .parameter "xpathExpression"

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractNode;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    .line 197
    .local v0, xpath:Lorg/dom4j/XPath;
    invoke-interface {v0, p0}, Lorg/dom4j/XPath;->numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v1

    return-object v1
.end method

.method public selectNodes(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "xpathExpression"

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractNode;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    .line 166
    .local v0, xpath:Lorg/dom4j/XPath;
    invoke-interface {v0, p0}, Lorg/dom4j/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public selectNodes(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "xpathExpression"
    .parameter "comparisonXPathExpression"

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/tree/AbstractNode;->selectNodes(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public selectNodes(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 3
    .parameter "xpathExpression"
    .parameter "comparisonXPathExpression"
    .parameter "removeDuplicates"

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractNode;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v1

    .line 177
    .local v1, xpath:Lorg/dom4j/XPath;
    invoke-virtual {p0, p2}, Lorg/dom4j/tree/AbstractNode;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    .line 179
    .local v0, sortBy:Lorg/dom4j/XPath;
    invoke-interface {v1, p0, v0, p3}, Lorg/dom4j/XPath;->selectNodes(Ljava/lang/Object;Lorg/dom4j/XPath;Z)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public selectObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "xpathExpression"

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractNode;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    .line 160
    .local v0, xpath:Lorg/dom4j/XPath;
    invoke-interface {v0, p0}, Lorg/dom4j/XPath;->evaluate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;
    .locals 2
    .parameter "xpathExpression"

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractNode;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    .line 185
    .local v0, xpath:Lorg/dom4j/XPath;
    invoke-interface {v0, p0}, Lorg/dom4j/XPath;->selectSingleNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v1

    return-object v1
.end method

.method public setDocument(Lorg/dom4j/Document;)V
    .locals 0
    .parameter "document"

    .prologue
    .line 66
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This node cannot be modified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setParent(Lorg/dom4j/Element;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 73
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 149
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This node cannot be modified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsParent()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public valueOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "xpathExpression"

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractNode;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    .line 191
    .local v0, xpath:Lorg/dom4j/XPath;
    invoke-interface {v0, p0}, Lorg/dom4j/XPath;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write(Ljava/io/Writer;)V
    .locals 1
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->asXML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 154
    return-void
.end method
