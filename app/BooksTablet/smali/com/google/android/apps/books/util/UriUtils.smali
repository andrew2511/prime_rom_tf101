.class public Lcom/google/android/apps/books/util/UriUtils;
.super Ljava/lang/Object;
.source "UriUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static varargs dropQueryParam(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;
    .locals 11
    .parameter "uri"
    .parameter "paramNames"

    .prologue
    const-string v10, ""

    .line 74
    invoke-static {p0}, Lcom/google/android/apps/books/util/UriUtils;->getQueryParameterNames(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v8

    invoke-static {v8}, Lcom/google/common/collect/Sets;->newLinkedHashSet(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v5

    .line 75
    .local v5, names:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 76
    .local v1, dropNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 77
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v10}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 78
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 79
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 80
    .local v7, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 82
    :cond_1
    const-string v8, ""

    invoke-virtual {v0, v4, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 84
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 85
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v0, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 89
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #name:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    .end local v7           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    return-object v8
.end method

.method public static varargs dropQueryParam(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"
    .parameter "paramNames"

    .prologue
    .line 66
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 67
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0, p1}, Lcom/google/android/apps/books/util/UriUtils;->dropQueryParam(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getQueryParameterNames(Landroid/net/Uri;)Ljava/util/Set;
    .locals 1
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {p0}, Lcom/google/android/apps/books/util/AospUri;->getQueryParameterNames(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 6
    .parameter "query"
    .parameter "index"
    .parameter "value"
    .parameter "ignoreCase"

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, length:I
    move-object v0, p0

    move v1, p3

    move v2, p1

    move-object v3, p2

    .line 58
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, v5

    if-eq v0, v1, :cond_0

    add-int v0, p1, v5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method public static readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z
    .locals 5
    .parameter "uri"
    .parameter "parameter"
    .parameter "defaultValue"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, query:Ljava/lang/String;
    if-nez v1, :cond_0

    move v2, p2

    .line 50
    :goto_0
    return v2

    .line 43
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 44
    .local v0, index:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move v2, p2

    .line 45
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 50
    const-string v2, "=0"

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/apps/books/util/UriUtils;->matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "=false"

    invoke-static {v1, v0, v2, v4}, Lcom/google/android/apps/books/util/UriUtils;->matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method
