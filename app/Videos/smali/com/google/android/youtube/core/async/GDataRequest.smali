.class public final Lcom/google/android/youtube/core/async/GDataRequest;
.super Ljava/lang/Object;
.source "GDataRequest.java"


# instance fields
.field public final content:[B

.field private volatile hashCode:I

.field public final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final uri:Landroid/net/Uri;

.field public final userAuth:Lcom/google/android/youtube/core/model/UserAuth;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V
    .locals 2
    .parameter "uri"
    .parameter "userAuth"
    .parameter
    .parameter "content"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "uri can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    if-eqz p2, :cond_0

    const-string v0, "http"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "dev.gdata.youtube.com"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "stage.gdata.youtube.com"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    .line 49
    :goto_0
    iput-object p2, p0, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 50
    if-nez p3, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/youtube/core/async/GDataRequest;->headers:Ljava/util/Map;

    .line 52
    iput-object p4, p0, Lcom/google/android/youtube/core/async/GDataRequest;->content:[B

    .line 53
    return-void

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    goto :goto_0

    .line 50
    :cond_1
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1
.end method

.method private static cloneContent(Lcom/google/android/youtube/core/async/GDataRequest;)[B
    .locals 4
    .parameter "template"

    .prologue
    const/4 v3, 0x0

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, contentCopy:[B
    iget-object v2, p0, Lcom/google/android/youtube/core/async/GDataRequest;->content:[B

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/google/android/youtube/core/async/GDataRequest;->content:[B

    array-length v1, v2

    .line 143
    .local v1, contentLength:I
    new-array v0, v1, [B

    .line 144
    iget-object v2, p0, Lcom/google/android/youtube/core/async/GDataRequest;->content:[B

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    .end local v1           #contentLength:I
    :cond_0
    return-object v0
.end method

.method public static create(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 2
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 60
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/google/android/youtube/core/async/GDataRequest;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-object v0
.end method

.method public static create(Landroid/net/Uri;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 4
    .parameter "uri"
    .parameter "template"

    .prologue
    .line 125
    const-string v0, "template can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, p1, Lcom/google/android/youtube/core/async/GDataRequest;->headers:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/youtube/core/async/GDataRequest;->cloneContent(Lcom/google/android/youtube/core/async/GDataRequest;)[B

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/youtube/core/async/GDataRequest;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-object v0
.end method

.method public static create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 2
    .parameter "uri"
    .parameter "userAuth"

    .prologue
    const/4 v1, 0x0

    .line 68
    const-string v0, "userAuth can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/google/android/youtube/core/async/GDataRequest;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-object v0
.end method

.method public static create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 2
    .parameter "uri"
    .parameter "userAuth"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/youtube/core/async/GDataRequest;"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "userAuth can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "headers can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/youtube/core/async/GDataRequest;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-object v0
.end method

.method public static create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1
    .parameter "uri"
    .parameter "userAuth"
    .parameter
    .parameter "content"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/google/android/youtube/core/async/GDataRequest;"
        }
    .end annotation

    .prologue
    .line 100
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "userAuth can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "headers can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "content can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/youtube/core/async/GDataRequest;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-object v0
.end method

.method public static create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;[B)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 2
    .parameter "uri"
    .parameter "userAuth"
    .parameter "content"

    .prologue
    .line 86
    const-string v0, "userAuth can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v0, "content can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/google/android/youtube/core/async/GDataRequest;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-object v0
.end method

.method public static create(Landroid/net/Uri;[B)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 2
    .parameter "uri"
    .parameter "content"

    .prologue
    const/4 v1, 0x0

    .line 77
    const-string v0, "content can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {v0, p0, v1, v1, p1}, Lcom/google/android/youtube/core/async/GDataRequest;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-object v0
.end method

.method public static create(Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 4
    .parameter "userAuth"
    .parameter "template"

    .prologue
    .line 135
    const-string v0, "template can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/google/android/youtube/core/async/GDataRequest;->headers:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/youtube/core/async/GDataRequest;->cloneContent(Lcom/google/android/youtube/core/async/GDataRequest;)[B

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/google/android/youtube/core/async/GDataRequest;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 158
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 165
    :goto_0
    return v2

    .line 161
    :cond_0
    instance-of v2, p1, Lcom/google/android/youtube/core/async/GDataRequest;

    if-nez v2, :cond_1

    move v2, v4

    .line 162
    goto :goto_0

    .line 164
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequest;

    move-object v1, v0

    .line 165
    .local v1, other:Lcom/google/android/youtube/core/async/GDataRequest;
    iget-object v2, p0, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    iget-object v3, v1, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/google/android/youtube/core/async/GDataRequest;->headers:Ljava/util/Map;

    iget-object v3, v1, Lcom/google/android/youtube/core/async/GDataRequest;->headers:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/youtube/core/async/GDataRequest;->content:[B

    iget-object v3, v1, Lcom/google/android/youtube/core/async/GDataRequest;->content:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v5

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v3, v1, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/model/UserAuth;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    move v2, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    iget v0, p0, Lcom/google/android/youtube/core/async/GDataRequest;->hashCode:I

    .line 185
    .local v0, result:I
    if-nez v0, :cond_0

    .line 186
    const/16 v0, 0x11

    .line 187
    mul-int/lit8 v1, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 188
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int v0, v1, v2

    .line 189
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/youtube/core/async/GDataRequest;->headers:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 190
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/youtube/core/async/GDataRequest;->content:[B

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    add-int v0, v1, v2

    .line 191
    iput v0, p0, Lcom/google/android/youtube/core/async/GDataRequest;->hashCode:I

    .line 193
    :cond_0
    return v0

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/UserAuth;->hashCode()I

    move-result v2

    goto :goto_0

    .line 190
    :cond_2
    iget-object v2, p0, Lcom/google/android/youtube/core/async/GDataRequest;->content:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    goto :goto_1
.end method

.method public pathEquals(Lcom/google/android/youtube/core/async/GDataRequest;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 172
    iget-object v0, p1, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public pathIsPrefixOf(Lcom/google/android/youtube/core/async/GDataRequest;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 176
    iget-object v0, p1, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "\', "

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{uri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "userAuth=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "headers=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/GDataRequest;->headers:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/GDataRequest;->content:[B

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/GDataRequest;->content:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "null"

    goto :goto_0
.end method
