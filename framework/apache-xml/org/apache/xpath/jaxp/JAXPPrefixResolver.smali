.class public Lorg/apache/xpath/jaxp/JAXPPrefixResolver;
.super Ljava/lang/Object;
.source "JAXPPrefixResolver.java"

# interfaces
.implements Lorg/apache/xml/utils/PrefixResolver;


# static fields
.field public static final S_XMLNAMESPACEURI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field private namespaceContext:Ljavax/xml/namespace/NamespaceContext;


# direct methods
.method public constructor <init>(Ljavax/xml/namespace/NamespaceContext;)V
    .registers 2
    .parameter "nsContext"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/xpath/jaxp/JAXPPrefixResolver;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    .line 43
    return-void
.end method


# virtual methods
.method public getBaseIdentifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "prefix"

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/xpath/jaxp/JAXPPrefixResolver;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    invoke-interface {v0, p1}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 15
    .parameter "prefix"
    .parameter "namespaceContext"

    .prologue
    const/4 v11, 0x1

    .line 88
    move-object v8, p2

    .line 89
    .local v8, parent:Lorg/w3c/dom/Node;
    const/4 v5, 0x0

    .line 91
    .local v5, namespace:Ljava/lang/String;
    const-string v10, "xml"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 92
    const-string v5, "http://www.w3.org/XML/1998/namespace"

    .line 123
    :cond_d
    return-object v5

    .line 97
    :cond_e
    :goto_e
    if-eqz v8, :cond_d

    if-nez v5, :cond_d

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    .local v9, type:I
    if-eq v9, v11, :cond_1b

    const/4 v10, 0x5

    if-ne v9, v10, :cond_d

    .line 100
    :cond_1b
    if-ne v9, v11, :cond_59

    .line 101
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 103
    .local v6, nnm:Lorg/w3c/dom/NamedNodeMap;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_22
    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v10

    if-ge v2, v10, :cond_59

    .line 104
    invoke-interface {v6, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 105
    .local v1, attr:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, aname:Ljava/lang/String;
    const-string v10, "xmlns:"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 108
    .local v4, isPrefix:Z
    if-nez v4, :cond_40

    const-string v10, "xmlns"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_62

    .line 109
    :cond_40
    const/16 v10, 0x3a

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 110
    .local v3, index:I
    if-eqz v4, :cond_5e

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 112
    .local v7, p:Ljava/lang/String;
    :goto_4f
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_62

    .line 113
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 120
    .end local v0           #aname:Ljava/lang/String;
    .end local v1           #attr:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v4           #isPrefix:Z
    .end local v6           #nnm:Lorg/w3c/dom/NamedNodeMap;
    .end local v7           #p:Ljava/lang/String;
    :cond_59
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v8

    goto :goto_e

    .line 110
    .restart local v0       #aname:Ljava/lang/String;
    .restart local v1       #attr:Lorg/w3c/dom/Node;
    .restart local v2       #i:I
    .restart local v3       #index:I
    .restart local v4       #isPrefix:Z
    .restart local v6       #nnm:Lorg/w3c/dom/NamedNodeMap;
    :cond_5e
    const-string v10, ""

    move-object v7, v10

    goto :goto_4f

    .line 103
    .end local v3           #index:I
    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_22
.end method

.method public handlesNullPrefixes()Z
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method
