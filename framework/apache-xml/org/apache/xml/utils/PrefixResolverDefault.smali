.class public Lorg/apache/xml/utils/PrefixResolverDefault;
.super Ljava/lang/Object;
.source "PrefixResolverDefault.java"

# interfaces
.implements Lorg/apache/xml/utils/PrefixResolver;


# instance fields
.field m_context:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 2
    .parameter "xpathExpressionContext"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/xml/utils/PrefixResolverDefault;->m_context:Lorg/w3c/dom/Node;

    .line 51
    return-void
.end method


# virtual methods
.method public getBaseIdentifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "prefix"

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/xml/utils/PrefixResolverDefault;->m_context:Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/utils/PrefixResolverDefault;->getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 16
    .parameter "prefix"
    .parameter "namespaceContext"

    .prologue
    .line 80
    move-object v8, p2

    .line 81
    .local v8, parent:Lorg/w3c/dom/Node;
    const/4 v5, 0x0

    .line 83
    .local v5, namespace:Ljava/lang/String;
    const-string v10, "xml"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4e

    .line 85
    const-string v5, "http://www.w3.org/XML/1998/namespace"

    :cond_c
    move-object v10, v5

    .line 126
    :goto_d
    return-object v10

    .line 99
    .local v9, type:I
    :cond_e
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 101
    .local v6, nnm:Lorg/w3c/dom/NamedNodeMap;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_13
    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v10

    if-ge v2, v10, :cond_4a

    .line 103
    invoke-interface {v6, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 104
    .local v1, attr:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, aname:Ljava/lang/String;
    const-string v10, "xmlns:"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 107
    .local v4, isPrefix:Z
    if-nez v4, :cond_31

    const-string v10, "xmlns"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_85

    .line 109
    :cond_31
    const/16 v10, 0x3a

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 110
    .local v3, index:I
    if-eqz v4, :cond_81

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 112
    .local v7, p:Ljava/lang/String;
    :goto_40
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_85

    .line 114
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 122
    .end local v0           #aname:Ljava/lang/String;
    .end local v1           #attr:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v4           #isPrefix:Z
    .end local v6           #nnm:Lorg/w3c/dom/NamedNodeMap;
    .end local v7           #p:Ljava/lang/String;
    :cond_4a
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v8

    .line 92
    .end local v9           #type:I
    :cond_4e
    if-eqz v8, :cond_c

    if-nez v5, :cond_c

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    .restart local v9       #type:I
    const/4 v10, 0x1

    if-eq v9, v10, :cond_5c

    const/4 v10, 0x5

    if-ne v9, v10, :cond_c

    .line 95
    :cond_5c
    const/4 v10, 0x1

    if-ne v9, v10, :cond_4a

    .line 97
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_e

    .line 98
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    goto :goto_d

    .line 110
    .restart local v0       #aname:Ljava/lang/String;
    .restart local v1       #attr:Lorg/w3c/dom/Node;
    .restart local v2       #i:I
    .restart local v3       #index:I
    .restart local v4       #isPrefix:Z
    .restart local v6       #nnm:Lorg/w3c/dom/NamedNodeMap;
    :cond_81
    const-string v10, ""

    move-object v7, v10

    goto :goto_40

    .line 101
    .end local v3           #index:I
    :cond_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method

.method public handlesNullPrefixes()Z
    .registers 2

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method
