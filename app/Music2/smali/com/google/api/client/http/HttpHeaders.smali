.class public Lcom/google/api/client/http/HttpHeaders;
.super Lcom/google/api/client/util/GenericData;
.source "HttpHeaders.java"


# instance fields
.field public accept:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Accept"
    .end annotation
.end field

.field public acceptEncoding:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Accept-Encoding"
    .end annotation
.end field

.field public authenticate:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "WWW-Authenticate"
    .end annotation
.end field

.field public authorization:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Authorization"
    .end annotation
.end field

.field public cacheControl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Cache-Control"
    .end annotation
.end field

.field public contentEncoding:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Content-Encoding"
    .end annotation
.end field

.field public contentLength:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Content-Length"
    .end annotation
.end field

.field public contentMD5:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Content-MD5"
    .end annotation
.end field

.field public contentRange:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Content-Range"
    .end annotation
.end field

.field public contentType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Content-Type"
    .end annotation
.end field

.field public date:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Date"
    .end annotation
.end field

.field public etag:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "ETag"
    .end annotation
.end field

.field public expires:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Expires"
    .end annotation
.end field

.field public ifMatch:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "If-Match"
    .end annotation
.end field

.field public ifModifiedSince:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "If-Modified-Since"
    .end annotation
.end field

.field public ifNoneMatch:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "If-None-Match"
    .end annotation
.end field

.field public ifUnmodifiedSince:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "If-Unmodified-Since"
    .end annotation
.end field

.field public lastModified:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Last-Modified"
    .end annotation
.end field

.field public location:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Location"
    .end annotation
.end field

.field public mimeVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "MIME-Version"
    .end annotation
.end field

.field public range:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Range"
    .end annotation
.end field

.field public retryAfter:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Retry-After"
    .end annotation
.end field

.field public userAgent:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "User-Agent"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 46
    const-string v0, "gzip"

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->acceptEncoding:Ljava/lang/String;

    return-void
.end method

.method static getFieldNameMap(Ljava/lang/Class;)Ljava/util/HashMap;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/api/client/http/HttpHeaders;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, headersClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/api/client/http/HttpHeaders;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 175
    .local v0, fieldNameMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/client/util/ClassInfo;->getKeyNames()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 176
    .local v2, keyName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 178
    .end local v2           #keyName:Ljava/lang/String;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public canonicalMap()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 146
    .local v5, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/Object;>;>;"
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpHeaders;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local p0
    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 147
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, canonicalName:Ljava/lang/String;
    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 149
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "multiple headers of the same name (headers are case insensitive): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 153
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 154
    .local v6, value:Ljava/lang/Object;
    if-eqz v6, :cond_0

    .line 155
    instance-of v7, v6, Ljava/util/Collection;

    if-eqz v7, :cond_2

    .line 157
    move-object v0, v6

    check-cast v0, Ljava/util/Collection;

    move-object v2, v0

    .line 158
    .local v2, collectionValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v5, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 161
    .end local v2           #collectionValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v5, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 165
    .end local v1           #canonicalName:Ljava/lang/String;
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #value:Ljava/lang/Object;
    :cond_3
    return-object v5
.end method

.method public clone()Lcom/google/api/client/http/HttpHeaders;
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Lcom/google/api/client/util/GenericData;->clone()Lcom/google/api/client/util/GenericData;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/api/client/http/HttpHeaders;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpHeaders;->clone()Lcom/google/api/client/http/HttpHeaders;

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
    .line 39
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpHeaders;->clone()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method
