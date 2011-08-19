.class public Lorg/dom4j/tree/NamespaceStack;
.super Ljava/lang/Object;
.source "NamespaceStack.java"


# instance fields
.field private currentNamespaceCache:Ljava/util/Map;

.field private defaultNamespace:Lorg/dom4j/Namespace;

.field private documentFactory:Lorg/dom4j/DocumentFactory;

.field private namespaceCacheList:Ljava/util/ArrayList;

.field private namespaceStack:Ljava/util/ArrayList;

.field private rootNamespaceCache:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceCacheList:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->rootNamespaceCache:Ljava/util/Map;

    .line 50
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .locals 1
    .parameter "documentFactory"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceCacheList:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->rootNamespaceCache:Ljava/util/Map;

    .line 54
    iput-object p1, p0, Lorg/dom4j/tree/NamespaceStack;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 55
    return-void
.end method


# virtual methods
.method public addNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 1
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 284
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/tree/NamespaceStack;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 285
    .local v0, namespace:Lorg/dom4j/Namespace;
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 287
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 99
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceCacheList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->rootNamespaceCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    .line 102
    return-void
.end method

.method public contains(Lorg/dom4j/Namespace;)Z
    .locals 4
    .parameter "namespace"

    .prologue
    .line 160
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, prefix:Ljava/lang/String;
    const/4 v0, 0x0

    .line 163
    .local v0, current:Lorg/dom4j/Namespace;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 164
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/NamespaceStack;->getDefaultNamespace()Lorg/dom4j/Namespace;

    move-result-object v0

    .line 169
    :goto_0
    if-nez v0, :cond_2

    .line 170
    const/4 v2, 0x0

    .line 177
    :goto_1
    return v2

    .line 166
    :cond_1
    invoke-virtual {p0, v1}, Lorg/dom4j/tree/NamespaceStack;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_2
    if-ne v0, p1, :cond_3

    .line 174
    const/4 v2, 0x1

    goto :goto_1

    .line 177
    :cond_3
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1
.end method

.method protected createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 1
    .parameter "prefix"
    .parameter "namespaceURI"

    .prologue
    .line 396
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->documentFactory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    return-object v0
.end method

.method protected createQName(Ljava/lang/String;Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;
    .locals 1
    .parameter "localName"
    .parameter "qualifiedName"
    .parameter "namespace"

    .prologue
    .line 382
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->documentFactory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1, p3}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method protected findDefaultNamespace()Lorg/dom4j/Namespace;
    .locals 5

    .prologue
    .line 406
    iget-object v3, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 407
    iget-object v3, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Namespace;

    .line 409
    .local v1, namespace:Lorg/dom4j/Namespace;
    if-eqz v1, :cond_1

    .line 410
    invoke-virtual {v1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, prefix:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v1

    .line 418
    .end local v1           #namespace:Lorg/dom4j/Namespace;
    .end local v2           #prefix:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 406
    .restart local v1       #namespace:Lorg/dom4j/Namespace;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 418
    .end local v1           #namespace:Lorg/dom4j/Namespace;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getAttributeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 7
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qualifiedName"

    .prologue
    .line 212
    if-eqz p3, :cond_0

    const-string v6, ""

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 213
    :cond_0
    move-object p3, p2

    .line 216
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/tree/NamespaceStack;->getNamespaceCache()Ljava/util/Map;

    move-result-object v3

    .line 217
    .local v3, map:Ljava/util/Map;
    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/QName;

    .line 219
    .local v0, answer:Lorg/dom4j/QName;
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 254
    .end local v0           #answer:Lorg/dom4j/QName;
    .local v1, answer:Lorg/dom4j/QName;
    :goto_0
    return-object v1

    .line 223
    .end local v1           #answer:Lorg/dom4j/QName;
    .restart local v0       #answer:Lorg/dom4j/QName;
    :cond_2
    if-nez p2, :cond_3

    .line 224
    move-object p2, p3

    .line 227
    :cond_3
    if-nez p1, :cond_4

    .line 228
    const-string p1, ""

    .line 231
    :cond_4
    const/4 v4, 0x0

    .line 232
    .local v4, namespace:Lorg/dom4j/Namespace;
    const-string v5, ""

    .line 233
    .local v5, prefix:Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 235
    .local v2, index:I
    if-lez v2, :cond_6

    .line 236
    const/4 v6, 0x0

    invoke-virtual {p3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 237
    invoke-virtual {p0, v5, p1}, Lorg/dom4j/tree/NamespaceStack;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v4

    .line 239
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    .line 240
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 251
    :cond_5
    :goto_1
    invoke-virtual {p0, p2, p3, v4, v5}, Lorg/dom4j/tree/NamespaceStack;->pushQName(Ljava/lang/String;Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    .line 252
    invoke-interface {v3, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 254
    .end local v0           #answer:Lorg/dom4j/QName;
    .restart local v1       #answer:Lorg/dom4j/QName;
    goto :goto_0

    .line 244
    .end local v1           #answer:Lorg/dom4j/QName;
    .restart local v0       #answer:Lorg/dom4j/QName;
    :cond_6
    sget-object v4, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    .line 246
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    .line 247
    move-object p2, p3

    goto :goto_1
.end method

.method public getDefaultNamespace()Lorg/dom4j/Namespace;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->defaultNamespace:Lorg/dom4j/Namespace;

    if-nez v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lorg/dom4j/tree/NamespaceStack;->findDefaultNamespace()Lorg/dom4j/Namespace;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->defaultNamespace:Lorg/dom4j/Namespace;

    .line 340
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->defaultNamespace:Lorg/dom4j/Namespace;

    return-object v0
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->documentFactory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getNamespace(I)Lorg/dom4j/Namespace;
    .locals 1
    .parameter "index"

    .prologue
    .line 112
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/dom4j/Namespace;

    return-object p0
.end method

.method protected getNamespaceCache()Ljava/util/Map;
    .locals 3

    .prologue
    .line 438
    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 439
    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 441
    .local v0, index:I
    if-gez v0, :cond_1

    .line 442
    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->rootNamespaceCache:Ljava/util/Map;

    iput-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    .line 453
    .end local v0           #index:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    return-object v1

    .line 444
    .restart local v0       #index:I
    :cond_1
    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    .line 446
    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 447
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    .line 448
    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceCacheList:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 4
    .parameter "prefix"

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    const-string p1, ""

    .line 128
    :cond_0
    iget-object v2, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 129
    iget-object v2, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Namespace;

    .line 131
    .local v1, namespace:Lorg/dom4j/Namespace;
    invoke-virtual {v1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 136
    .end local v1           #namespace:Lorg/dom4j/Namespace;
    :goto_1
    return-object v2

    .line 128
    .restart local v1       #namespace:Lorg/dom4j/Namespace;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 136
    .end local v1           #namespace:Lorg/dom4j/Namespace;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 4
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qualifiedName"

    .prologue
    .line 182
    if-nez p2, :cond_3

    .line 183
    move-object p2, p3

    .line 188
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 189
    const-string p1, ""

    .line 192
    :cond_1
    const-string v2, ""

    .line 193
    .local v2, prefix:Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 195
    .local v0, index:I
    if-lez v0, :cond_5

    .line 196
    const/4 v3, 0x0

    invoke-virtual {p3, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 199
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 205
    :cond_2
    :goto_1
    invoke-virtual {p0, v2, p1}, Lorg/dom4j/tree/NamespaceStack;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    .line 207
    .local v1, namespace:Lorg/dom4j/Namespace;
    invoke-virtual {p0, p2, p3, v1, v2}, Lorg/dom4j/tree/NamespaceStack;->pushQName(Ljava/lang/String;Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v3

    return-object v3

    .line 184
    .end local v0           #index:I
    .end local v1           #namespace:Lorg/dom4j/Namespace;
    .end local v2           #prefix:Ljava/lang/String;
    :cond_3
    if-eqz p3, :cond_4

    const-string v3, ""

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    :cond_4
    move-object p3, p2

    goto :goto_0

    .line 201
    .restart local v0       #index:I
    .restart local v2       #prefix:Ljava/lang/String;
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 202
    move-object p2, p3

    goto :goto_1
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "prefix"

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/NamespaceStack;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 149
    .local v0, namespace:Lorg/dom4j/Namespace;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pop()Lorg/dom4j/Namespace;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/NamespaceStack;->remove(I)Lorg/dom4j/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public pop(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 6
    .parameter "prefix"

    .prologue
    .line 298
    if-nez p1, :cond_0

    .line 299
    const-string p1, ""

    .line 302
    :cond_0
    const/4 v1, 0x0

    .line 304
    .local v1, namespace:Lorg/dom4j/Namespace;
    iget-object v3, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 305
    iget-object v3, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Namespace;

    .line 307
    .local v2, ns:Lorg/dom4j/Namespace;
    invoke-virtual {v2}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 308
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/NamespaceStack;->remove(I)Lorg/dom4j/Namespace;

    .line 309
    move-object v1, v2

    .line 315
    .end local v2           #ns:Lorg/dom4j/Namespace;
    :cond_1
    if-nez v1, :cond_2

    .line 316
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Warning: missing namespace prefix ignored: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 320
    :cond_2
    return-object v1

    .line 304
    .restart local v2       #ns:Lorg/dom4j/Namespace;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public push(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 266
    if-nez p2, :cond_0

    .line 267
    const-string p2, ""

    .line 270
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/tree/NamespaceStack;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 271
    .local v0, namespace:Lorg/dom4j/Namespace;
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 272
    return-void
.end method

.method public push(Lorg/dom4j/Namespace;)V
    .locals 3
    .parameter "namespace"

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iput-object v2, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    .line 69
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, prefix:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 72
    :cond_0
    iput-object p1, p0, Lorg/dom4j/tree/NamespaceStack;->defaultNamespace:Lorg/dom4j/Namespace;

    .line 74
    :cond_1
    return-void
.end method

.method protected pushQName(Ljava/lang/String;Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 1
    .parameter "localName"
    .parameter "qualifiedName"
    .parameter "namespace"
    .parameter "prefix"

    .prologue
    .line 361
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 362
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->defaultNamespace:Lorg/dom4j/Namespace;

    .line 365
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/dom4j/tree/NamespaceStack;->createQName(Ljava/lang/String;Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method protected remove(I)Lorg/dom4j/Namespace;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 429
    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Namespace;

    .line 430
    .local v0, namespace:Lorg/dom4j/Namespace;
    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 431
    iput-object v2, p0, Lorg/dom4j/tree/NamespaceStack;->defaultNamespace:Lorg/dom4j/Namespace;

    .line 432
    iput-object v2, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    .line 434
    return-object v0
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .locals 0
    .parameter "documentFactory"

    .prologue
    .line 332
    iput-object p1, p0, Lorg/dom4j/tree/NamespaceStack;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 333
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 324
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " Stack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
