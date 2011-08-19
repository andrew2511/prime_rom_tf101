.class public Lcom/google/api/client/http/GenericUrl;
.super Lcom/google/api/client/util/GenericData;
.source "GenericUrl.java"


# static fields
.field private static final URI_FRAGMENT_ESCAPER:Lcom/google/api/client/escape/Escaper;


# instance fields
.field public fragment:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public pathParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public port:I

.field public scheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lcom/google/api/client/escape/PercentEscaper;

    const-string v1, "=&-_.!~*\'()@:$,;/?:"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/escape/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/http/GenericUrl;->URI_FRAGMENT_ESCAPER:Lcom/google/api/client/escape/Escaper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/api/client/http/GenericUrl;->port:I

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "encodedUrl"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 66
    const/4 v3, -0x1

    iput v3, p0, Lcom/google/api/client/http/GenericUrl;->port:I

    .line 99
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .local v2, uri:Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/api/client/http/GenericUrl;->scheme:Ljava/lang/String;

    .line 104
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/api/client/http/GenericUrl;->host:Ljava/lang/String;

    .line 105
    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v3

    iput v3, p0, Lcom/google/api/client/http/GenericUrl;->port:I

    .line 106
    invoke-virtual {v2}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/api/client/http/GenericUrl;->toPathParts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    .line 107
    invoke-virtual {v2}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/api/client/http/GenericUrl;->fragment:Ljava/lang/String;

    .line 108
    invoke-virtual {v2}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, query:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 110
    invoke-static {v1, p0}, Lcom/google/api/client/http/UrlEncodedParser;->parse(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    :cond_0
    return-void

    .line 100
    .end local v1           #query:Ljava/lang/String;
    .end local v2           #uri:Ljava/net/URI;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 101
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static appendParam(ZLjava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .parameter "first"
    .parameter "buf"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 323
    if-eqz p0, :cond_1

    .line 324
    const/4 p0, 0x0

    .line 325
    const/16 v1, 0x3f

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/api/client/escape/CharEscapers;->escapeUriQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, stringValue:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    :cond_0
    return p0

    .line 327
    .end local v0           #stringValue:Ljava/lang/String;
    :cond_1
    const/16 v1, 0x26

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private appendRawPathFromParts(Ljava/lang/StringBuilder;)V
    .locals 5
    .parameter "buf"

    .prologue
    .line 308
    iget-object v2, p0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    .line 309
    .local v2, pathParts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 310
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 311
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 312
    .local v1, pathPart:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 313
    const/16 v4, 0x2f

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 316
    invoke-static {v1}, Lcom/google/api/client/escape/CharEscapers;->escapeUriPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    .end local v1           #pathPart:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static toPathParts(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "encodedPath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 287
    :cond_0
    const/4 v5, 0x0

    .line 304
    :goto_0
    return-object v5

    .line 289
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 291
    .local v0, cur:I
    const/4 v1, 0x1

    .line 292
    .local v1, notDone:Z
    :goto_1
    if-eqz v1, :cond_4

    .line 293
    const/16 v5, 0x2f

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 294
    .local v3, slash:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    const/4 v5, 0x1

    move v1, v5

    .line 296
    :goto_2
    if-eqz v1, :cond_3

    .line 297
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 301
    .local v4, sub:Ljava/lang/String;
    :goto_3
    invoke-static {v4}, Lcom/google/api/client/escape/CharEscapers;->decodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    add-int/lit8 v0, v3, 0x1

    .line 303
    goto :goto_1

    .line 294
    .end local v4           #sub:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    move v1, v5

    goto :goto_2

    .line 299
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #sub:Ljava/lang/String;
    goto :goto_3

    .end local v3           #slash:I
    .end local v4           #sub:Ljava/lang/String;
    :cond_4
    move-object v5, v2

    .line 304
    goto :goto_0
.end method


# virtual methods
.method public appendRawPath(Ljava/lang/String;)V
    .locals 7
    .parameter "encodedPath"

    .prologue
    const/4 v6, 0x1

    .line 260
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 261
    iget-object v1, p0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    .line 262
    .local v1, pathParts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/api/client/http/GenericUrl;->toPathParts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 263
    .local v0, appendedPathParts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 264
    :cond_0
    iput-object v0, p0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    .line 273
    .end local v0           #appendedPathParts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #pathParts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local p0
    :cond_1
    :goto_0
    return-void

    .line 266
    .restart local v0       #appendedPathParts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1       #pathParts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local p0
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 267
    .local v2, size:I
    sub-int v3, v2, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v5, v2, v6

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, v6, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final build()Ljava/lang/String;
    .locals 15

    .prologue
    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v1, buf:Ljava/lang/StringBuilder;
    iget-object v13, p0, Lcom/google/api/client/http/GenericUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "://"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/google/api/client/http/GenericUrl;->host:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget v10, p0, Lcom/google/api/client/http/GenericUrl;->port:I

    .line 155
    .local v10, port:I
    const/4 v13, -0x1

    if-eq v10, v13, :cond_0

    .line 156
    const/16 v13, 0x3a

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    :cond_0
    iget-object v9, p0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    .line 159
    .local v9, pathParts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_1

    .line 160
    invoke-direct {p0, v1}, Lcom/google/api/client/http/GenericUrl;->appendRawPathFromParts(Ljava/lang/StringBuilder;)V

    .line 163
    :cond_1
    const/4 v3, 0x1

    .line 164
    .local v3, first:Z
    invoke-virtual {p0}, Lcom/google/api/client/http/GenericUrl;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 165
    .local v8, nameValueEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 166
    .local v12, value:Ljava/lang/Object;
    if-eqz v12, :cond_2

    .line 167
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lcom/google/api/client/escape/CharEscapers;->escapeUriQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 168
    .local v7, name:Ljava/lang/String;
    instance-of v13, v12, Ljava/util/Collection;

    if-eqz v13, :cond_3

    .line 169
    move-object v0, v12

    check-cast v0, Ljava/util/Collection;

    move-object v2, v0

    .line 170
    .local v2, collectionValue:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 171
    .local v11, repeatedValue:Ljava/lang/Object;
    invoke-static {v3, v1, v7, v11}, Lcom/google/api/client/http/GenericUrl;->appendParam(ZLjava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    .line 174
    .end local v2           #collectionValue:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v11           #repeatedValue:Ljava/lang/Object;
    :cond_3
    invoke-static {v3, v1, v7, v12}, Lcom/google/api/client/http/GenericUrl;->appendParam(ZLjava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 179
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #nameValueEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12           #value:Ljava/lang/Object;
    :cond_4
    iget-object v4, p0, Lcom/google/api/client/http/GenericUrl;->fragment:Ljava/lang/String;

    .line 180
    .local v4, fragment:Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 181
    const/16 v13, 0x23

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/google/api/client/http/GenericUrl;->URI_FRAGMENT_ESCAPER:Lcom/google/api/client/escape/Escaper;

    invoke-virtual {v14, v4}, Lcom/google/api/client/escape/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method public clone()Lcom/google/api/client/http/GenericUrl;
    .locals 3

    .prologue
    .line 140
    invoke-super {p0}, Lcom/google/api/client/util/GenericData;->clone()Lcom/google/api/client/util/GenericData;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/GenericUrl;

    .line 141
    .local v0, result:Lcom/google/api/client/http/GenericUrl;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    .line 142
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/api/client/http/GenericUrl;->clone()Lcom/google/api/client/http/GenericUrl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/api/client/http/GenericUrl;->clone()Lcom/google/api/client/http/GenericUrl;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .line 122
    if-ne p0, p1, :cond_0

    .line 123
    const/4 v2, 0x1

    .line 130
    :goto_0
    return v2

    .line 125
    :cond_0
    invoke-super {p0, p1}, Lcom/google/api/client/util/GenericData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, p1, Lcom/google/api/client/http/GenericUrl;

    if-nez v2, :cond_2

    .line 126
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 128
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/google/api/client/http/GenericUrl;

    move-object v1, v0

    .line 130
    .local v1, other:Lcom/google/api/client/http/GenericUrl;
    invoke-virtual {p0}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/api/client/http/GenericUrl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/Collection;
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/GenericUrl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 211
    .local v2, value:Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 212
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 219
    :goto_0
    return-object v3

    .line 214
    :cond_0
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_1

    .line 216
    move-object v0, v2

    check-cast v0, Ljava/util/Collection;

    move-object v1, v0

    .line 217
    .local v1, collectionValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    goto :goto_0

    .line 219
    .end local v1           #collectionValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    goto :goto_0
.end method

.method public getFirst(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "name"

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/GenericUrl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 194
    .local v3, value:Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_1

    .line 196
    move-object v0, v3

    check-cast v0, Ljava/util/Collection;

    move-object v1, v0

    .line 197
    .local v1, collectionValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 198
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 200
    .end local v1           #collectionValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    return-object v4

    .line 198
    .restart local v1       #collectionValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v2       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .end local v1           #collectionValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_1
    move-object v4, v3

    .line 200
    goto :goto_0
.end method

.method public getRawPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 229
    iget-object v1, p0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    .line 230
    .local v1, pathParts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 231
    const/4 v2, 0x0

    .line 235
    :goto_0
    return-object v2

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/google/api/client/http/GenericUrl;->appendRawPathFromParts(Ljava/lang/StringBuilder;)V

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setRawPath(Ljava/lang/String;)V
    .locals 1
    .parameter "encodedPath"

    .prologue
    .line 245
    invoke-static {p1}, Lcom/google/api/client/http/GenericUrl;->toPathParts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    .line 246
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
