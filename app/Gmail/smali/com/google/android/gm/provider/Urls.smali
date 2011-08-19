.class public Lcom/google/android/gm/provider/Urls;
.super Ljava/lang/Object;
.source "Urls.java"


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mUri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/google/android/gm/provider/Urls;->mAccount:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lcom/google/android/gm/provider/Urls;->getUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Urls;->mUri:Ljava/net/URI;

    .line 92
    return-void
.end method

.method private static accountDomainIsGmail(Ljava/lang/String;)Z
    .locals 2
    .parameter "domain"

    .prologue
    .line 223
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gmail.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "googlemail.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static accountGetDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 166
    const-string v1, ""

    .line 168
    .local v1, result:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 169
    const-string v2, "@"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 171
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 172
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    .end local v0           #index:I
    :cond_0
    return-object v1
.end method

.method private addStandardParams(ILjava/util/List;)V
    .locals 3
    .parameter "version"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "version"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "clientVersion"

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "allowAnyVersion"

    const-string v2, "1"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method public static varargs buildUri(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "base"
    .parameter "args"

    .prologue
    .line 550
    array-length v0, p1

    .line 551
    .local v0, count:I
    new-instance v2, Ljava/util/ArrayList;

    div-int/lit8 v4, v0, 0x2

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 552
    .local v2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 553
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    aget-object v5, p1, v1

    add-int/lit8 v6, v1, 0x1

    aget-object v6, p1, v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 555
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 556
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v4, "?"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 557
    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :cond_1
    :goto_1
    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 558
    :cond_2
    const-string v4, "&"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 559
    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private fillEntity(Landroid/content/ContentResolver;Lcom/google/common/io/protocol/ProtoBuf;Lorg/apache/http/client/methods/HttpPost;)V
    .locals 6
    .parameter "contentResolver"
    .parameter "requestProto"
    .parameter "httpPost"

    .prologue
    .line 144
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 145
    .local v3, os:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 147
    const-string v4, "gmail_max_gzip_size_bytes"

    const v5, 0x3d090

    invoke-static {p1, v4, v5}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 154
    .local v2, maxSize:I
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    if-gt v4, v2, :cond_0

    .line 155
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4, p1}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v1

    .line 159
    .local v1, entity:Lorg/apache/http/entity/AbstractHttpEntity;
    :goto_0
    invoke-virtual {p3, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 163
    return-void

    .line 157
    .end local v1           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    :cond_0
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1       #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    goto :goto_0

    .line 160
    .end local v1           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    .end local v2           #maxSize:I
    .end local v3           #os:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 161
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Should not get IO errors while writing to ram"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getCookie(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/cookie/Cookie;
    .locals 6
    .parameter "account"
    .parameter "authToken"

    .prologue
    .line 182
    invoke-static {p0}, Lcom/google/android/gm/provider/Urls;->accountGetDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, domain:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/google/android/gm/provider/Urls;->accountDomainIsGmail(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, cookiePrefix:Ljava/lang/String;
    const-string v1, "GXAS_SEC"

    .line 195
    .local v1, cookieName:Ljava/lang/String;
    :goto_0
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .local v0, cookie:Lorg/apache/http/impl/cookie/BasicClientCookie;
    const-string v4, "google.com"

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 197
    return-object v0

    .line 191
    .end local v0           #cookie:Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v1           #cookieName:Ljava/lang/String;
    .end local v2           #cookiePrefix:Ljava/lang/String;
    :cond_0
    const-string v2, ""

    .line 192
    .restart local v2       #cookiePrefix:Ljava/lang/String;
    const-string v1, "GX"

    .restart local v1       #cookieName:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getCookieString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "account"
    .parameter "authToken"

    .prologue
    .line 208
    invoke-static {p0, p1}, Lcom/google/android/gm/provider/Urls;->getCookie(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/cookie/Cookie;

    move-result-object v0

    .line 209
    .local v0, cookie:Lorg/apache/http/cookie/Cookie;
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, path:Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, domain:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v2, :cond_0

    const-string v4, "/"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; domain="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_1

    const-string v4, "google.com"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    move-object v4, v2

    goto :goto_0

    :cond_1
    move-object v4, v1

    goto :goto_1
.end method

.method public static getUri(Ljava/lang/String;)Ljava/net/URI;
    .locals 4
    .parameter "account"

    .prologue
    .line 102
    invoke-static {p0}, Lcom/google/android/gm/provider/Urls;->accountGetDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, domain:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gm/provider/Urls;->accountDomainIsGmail(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    const-string v2, "https://mail.google.com/a/%domain%/g/"

    const-string v3, "%domain%"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, uriString:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    return-object v2

    .line 107
    .end local v1           #uriString:Ljava/lang/String;
    :cond_0
    const-string v1, "https://mail.google.com/mail/g/"

    .restart local v1       #uriString:Ljava/lang/String;
    goto :goto_0
.end method

.method private getUriWithParams(Ljava/util/List;)Ljava/net/URI;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/net/URI;"
        }
    .end annotation

    .prologue
    .line 532
    .local p1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, queryString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    iget-object v1, p0, Lcom/google/android/gm/provider/Urls;->mUri:Ljava/net/URI;

    .line 536
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gm/provider/Urls;->mUri:Ljava/net/URI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getConversationListUrl(Landroid/content/ContentResolver;ILjava/lang/String;JII)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 13
    .parameter "contentResolver"
    .parameter "version"
    .parameter "query"
    .parameter "highestMessageId"
    .parameter "maxResults"
    .parameter "maxSenders"

    .prologue
    .line 483
    const/16 v4, 0x19

    if-lt p2, v4, :cond_1

    .line 484
    new-instance v9, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v4, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v9, v4}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 485
    .local v9, requestProto:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v4, 0x5

    invoke-virtual {v9, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v12

    .line 486
    .local v12, queryProto:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v4, 0x1

    move-object v0, v12

    move v1, v4

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 487
    const/4 v4, 0x2

    move-object v0, v12

    move v1, v4

    move-wide/from16 v2, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 488
    const/4 v4, 0x3

    move-object v0, v12

    move v1, v4

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 489
    const/4 v4, 0x4

    move-object v0, v12

    move v1, v4

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 490
    const-string v4, "Gmail"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 491
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getConversationListUrl: query: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", highestMessageId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", maxResults = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", maxSenders"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_0
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gm/provider/Urls;->newProtoRequest(Landroid/content/ContentResolver;IJLcom/google/common/io/protocol/ProtoBuf;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v4

    .line 506
    .end local v9           #requestProto:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v12           #queryProto:Lcom/google/common/io/protocol/ProtoBuf;
    :goto_0
    return-object v4

    .line 498
    :cond_1
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 499
    .local v11, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0, p2, v11}, Lcom/google/android/gm/provider/Urls;->addStandardParams(ILjava/util/List;)V

    .line 500
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "view"

    const-string v6, "query"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "query"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "highestMessageId"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "maxResults"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "maxSenders"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p0, v11}, Lcom/google/android/gm/provider/Urls;->getUriWithParams(Ljava/util/List;)Ljava/net/URI;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    goto :goto_0
.end method

.method public getFetchAttachmentUri(ILjava/lang/String;IZ)Ljava/net/URI;
    .locals 7
    .parameter "version"
    .parameter "originExtras"
    .parameter "maxWidthAndHeight"
    .parameter "fullVersion"

    .prologue
    .line 512
    invoke-static {p2}, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->splitServerExtras(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, conversationIdMessageIdPartId:[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v1, v0, v4

    .line 515
    .local v1, messageId:Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v3, v0, v4

    .line 516
    .local v3, partId:Ljava/lang/String;
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 517
    .local v2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0, p1, v2}, Lcom/google/android/gm/provider/Urls;->addStandardParams(ILjava/util/List;)V

    .line 518
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "view"

    const-string v6, "att"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "messageId"

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "partId"

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "maxWidth"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "maxHeight"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "showOriginal"

    if-eqz p4, :cond_0

    const-string v6, "1"

    :goto_0
    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    invoke-direct {p0, v2}, Lcom/google/android/gm/provider/Urls;->getUriWithParams(Ljava/util/List;)Ljava/net/URI;

    move-result-object v4

    return-object v4

    .line 523
    :cond_0
    const-string v6, "0"

    goto :goto_0
.end method

.method public getGetSyncConfigSuggestionRequest(Landroid/content/ContentResolver;IIIDJ)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 8
    .parameter "contentResolver"
    .parameter "version"
    .parameter "maxMessageCount"
    .parameter "alwaysDownloadLabelLimit"
    .parameter "unreadFractionLimit"
    .parameter "recentLabelDurationDays"

    .prologue
    .line 244
    const/16 v0, 0x19

    if-lt p2, v0, :cond_1

    .line 245
    new-instance v5, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v5, v0}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 249
    .local v5, requestProto:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    .line 250
    const-string v0, "Gmail"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const-string v0, "Gmail"

    const-string v1, "getSyncConfigSuggestion: GetConfigInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/provider/Urls;->newProtoRequest(Landroid/content/ContentResolver;IJLcom/google/common/io/protocol/ProtoBuf;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 269
    .end local v5           #requestProto:Lcom/google/common/io/protocol/ProtoBuf;
    :goto_0
    return-object v0

    .line 256
    :cond_1
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 257
    .local v7, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0, p2, v7}, Lcom/google/android/gm/provider/Urls;->addStandardParams(ILjava/util/List;)V

    .line 258
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "view"

    const-string v2, "configInfo"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "max_message_count"

    int-to-long v2, p3

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "always_download_label_limit"

    int-to-long v2, p4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "unread_fraction_limit"

    invoke-static {p5, p6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "recent_label_duration_days"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p0, v7}, Lcom/google/android/gm/provider/Urls;->getUriWithParams(Ljava/util/List;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    goto :goto_0
.end method

.method public getMainSyncRequestProto(Landroid/content/ContentResolver;JJJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 20
    .parameter "contentResolver"
    .parameter "lowestBackwardConversationIdFetched"
    .parameter "highestHandledServerOperation"
    .parameter "ackedClientOperation"
    .parameter
    .parameter
    .parameter
    .parameter "syncInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "JJJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/provider/MailSync$ConversationInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gm/provider/MailEngine$SyncInfo;",
            ")",
            "Lcom/google/common/io/protocol/ProtoBuf;"
        }
    .end annotation

    .prologue
    .line 394
    .local p8, conversationInfosToCheck:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/MailSync$ConversationInfo;>;"
    .local p9, messageIdsToFetch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p10, dirtyConversations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v13, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v16, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 396
    .local v13, requestProto:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v16, 0x4

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v10

    .line 397
    .local v10, mainSyncProto:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v16, 0x1

    move-object v0, v10

    move/from16 v1, v16

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 399
    const/16 v16, 0x2

    move-object v0, v10

    move/from16 v1, v16

    move-wide/from16 v2, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 401
    const/16 v16, 0x3

    const/16 v17, 0xc8

    move-object v0, v10

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 404
    const/16 v16, 0x6

    const/16 v17, 0x1

    move-object v0, v10

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 405
    const/16 v16, 0x8

    const/16 v17, 0x1

    move-object v0, v10

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 406
    const/16 v16, 0x9

    const/16 v17, 0x1

    move-object v0, v10

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 408
    const/16 v16, 0x7

    const-string v17, "gmail_compression_type"

    const/16 v18, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    move-object v0, v10

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 413
    const/16 v16, 0x7

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v15

    .line 414
    .local v15, uphillSyncProto:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v16, 0x2

    move-object v0, v15

    move/from16 v1, v16

    move-wide/from16 v2, p6

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 416
    const-string v16, "Gmail"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "MainSyncRequestProto: lowestBkwdConvoId: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", highestHandledServerOp: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", normalSync: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p11

    iget-boolean v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->normalSync:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v4, 0x0

    .line 421
    .local v4, conversationSyncProto:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v6, 0x0

    .local v6, i:I
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v14

    .local v14, size:I
    :goto_0
    if-ge v6, v14, :cond_3

    .line 422
    move-object/from16 v0, p8

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gm/provider/MailSync$ConversationInfo;

    .line 423
    .local v9, info:Lcom/google/android/gm/provider/MailSync$ConversationInfo;
    if-nez v4, :cond_0

    .line 424
    const/16 v16, 0x3

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 426
    :cond_0
    const/16 v16, 0x1

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->addNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 428
    .local v5, fetchConversationProto:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v16, 0x1

    move-object v0, v9

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$ConversationInfo;->id:J

    move-wide/from16 v17, v0

    move-object v0, v5

    move/from16 v1, v16

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 430
    const/16 v16, 0x2

    move-object v0, v9

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$ConversationInfo;->highestFetchedMessageId:J

    move-wide/from16 v17, v0

    move-object v0, v5

    move/from16 v1, v16

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 440
    move-object v0, v9

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$ConversationInfo;->highestFetchedMessageId:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_1

    .line 441
    const/16 v16, 0x4

    move-object v0, v9

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$ConversationInfo;->id:J

    move-wide/from16 v17, v0

    move-object v0, v4

    move/from16 v1, v16

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 444
    :cond_1
    const-string v16, "Gmail"

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 445
    const-string v16, "Gmail"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "MainSyncRequestProto: fetchConversation: ConvoId: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v9

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$ConversationInfo;->id:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", HighestMessageIdOnClient: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v9

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$ConversationInfo;->highestFetchedMessageId:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 450
    .end local v5           #fetchConversationProto:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v9           #info:Lcom/google/android/gm/provider/MailSync$ConversationInfo;
    :cond_3
    const/4 v6, 0x0

    invoke-virtual/range {p10 .. p10}, Ljava/util/ArrayList;->size()I

    move-result v14

    .end local p0
    :goto_1
    if-ge v6, v14, :cond_6

    .line 451
    move-object/from16 v0, p10

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 452
    .local v7, id:J
    if-nez v4, :cond_4

    .line 453
    const/16 v16, 0x3

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 455
    :cond_4
    const/16 v16, 0x4

    move-object v0, v4

    move/from16 v1, v16

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 456
    const-string v16, "Gmail"

    const/16 v17, 0x3

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 457
    const-string v16, "Gmail"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "MainSyncRequestProto: ConversationSyncDirtyConversationId: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 461
    .end local v7           #id:J
    :cond_6
    move-object/from16 v0, p11

    iget-boolean v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->normalSync:Z

    move/from16 v16, v0

    if-nez v16, :cond_8

    .line 462
    const/16 v16, 0x5

    const/16 v17, 0x0

    move-object v0, v10

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 477
    :cond_7
    return-object v13

    .line 466
    :cond_8
    const/4 v6, 0x0

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v14

    :goto_2
    if-ge v6, v14, :cond_7

    .line 467
    move-object/from16 v0, p9

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 468
    .local v11, messageId:J
    if-nez v4, :cond_9

    .line 469
    const/16 v16, 0x3

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 471
    :cond_9
    const/16 v16, 0x2

    move-object v0, v4

    move/from16 v1, v16

    move-wide v2, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 472
    const-string v16, "Gmail"

    const/16 v17, 0x3

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 473
    const-string v16, "Gmail"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "MainSyncRequestProto: ConversationSyncMessageId: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public getStartSyncRequest(Landroid/content/ContentResolver;IJJJJJ)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 13
    .parameter "contentResolver"
    .parameter "version"
    .parameter "clientId"
    .parameter "handledServerOperationId"
    .parameter "upperFetchedConversationId"
    .parameter "lowerFetchedConversationId"
    .parameter "ackedClientOperation"

    .prologue
    .line 341
    const/16 v4, 0x19

    if-lt p2, v4, :cond_0

    .line 342
    new-instance v9, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v4, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v9, v4}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 343
    .local v9, requestProto:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v4, 0x6

    invoke-virtual {v9, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v12

    .line 344
    .local v12, startSyncProto:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v4, 0x1

    move-object v0, v12

    move v1, v4

    move-wide/from16 v2, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 346
    const/4 v4, 0x2

    move-object v0, v12

    move v1, v4

    move-wide/from16 v2, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 348
    const/4 v4, 0x3

    move-object v0, v12

    move v1, v4

    move-wide/from16 v2, p9

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 350
    const/4 v4, 0x4

    move-object v0, v12

    move v1, v4

    move-wide/from16 v2, p11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 352
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v12, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 353
    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v12, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 354
    const/4 v4, 0x7

    const/4 v5, 0x1

    invoke-virtual {v12, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 357
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStartSyncRequest: handledServerOpId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", upperFetchedConvoId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lowerFetchedConvoId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ackedClientOp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v10, 0x1

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide/from16 v7, p3

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gm/provider/Urls;->newProtoRequest(Landroid/content/ContentResolver;IJLcom/google/common/io/protocol/ProtoBuf;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v4

    .line 377
    .end local v9           #requestProto:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v12           #startSyncProto:Lcom/google/common/io/protocol/ProtoBuf;
    :goto_0
    return-object v4

    .line 364
    :cond_0
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 365
    .local v11, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0, p2, v11}, Lcom/google/android/gm/provider/Urls;->addStandardParams(ILjava/util/List;)V

    .line 366
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "view"

    const-string v6, "start"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "client"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "acked_client_op"

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "server_op"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "upper_message"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "lower_message"

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p0, v11}, Lcom/google/android/gm/provider/Urls;->getUriWithParams(Ljava/util/List;)Ljava/net/URI;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    goto :goto_0
.end method

.method public getSyncConfigRequest(Landroid/content/ContentResolver;IJLjava/util/Set;Ljava/util/Set;JJ)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 15
    .parameter "contentResolver"
    .parameter "version"
    .parameter "clientId"
    .parameter
    .parameter
    .parameter "conversationAgeDays"
    .parameter "maxAttachmentSizeMb"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "IJ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;JJ)",
            "Lorg/apache/http/client/methods/HttpUriRequest;"
        }
    .end annotation

    .prologue
    .line 294
    .local p5, labelsIncluded:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p6, labelsPartial:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v3, 0x19

    move/from16 v0, p2

    move v1, v3

    if-lt v0, v1, :cond_3

    .line 295
    new-instance v8, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v8, v3}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 296
    .local v8, requestProto:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v3, 0x2

    invoke-virtual {v8, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v14

    .line 297
    .local v14, syncConfigProto:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v3, 0x1

    move-wide/from16 v0, p7

    long-to-int v0, v0

    move v4, v0

    invoke-virtual {v14, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 298
    invoke-interface/range {p5 .. p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 299
    .local v10, canonicalName:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-virtual {v14, v3, v10}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    goto :goto_0

    .line 302
    .end local v10           #canonicalName:Ljava/lang/String;
    :cond_0
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 303
    .restart local v10       #canonicalName:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-virtual {v14, v3, v10}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    goto :goto_1

    .line 306
    .end local v10           #canonicalName:Ljava/lang/String;
    :cond_1
    const-string v3, "Gmail"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 307
    const-string v3, "Gmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSyncConfigRequest: conversationAgeDays: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", labelsIncluded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", labelsPartial: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_2
    const/4 v9, 0x1

    move-object v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gm/provider/Urls;->newProtoRequest(Landroid/content/ContentResolver;IJLcom/google/common/io/protocol/ProtoBuf;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v3

    .line 332
    .end local v8           #requestProto:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v14           #syncConfigProto:Lcom/google/common/io/protocol/ProtoBuf;
    :goto_2
    return-object v3

    .line 315
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_3
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 316
    .local v13, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object v0, p0

    move/from16 v1, p2

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/Urls;->addStandardParams(ILjava/util/List;)V

    .line 317
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "view"

    const-string v5, "config"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "client"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-interface/range {p5 .. p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 320
    .local v12, label:Ljava/lang/String;
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "labelsIncluded"

    invoke-direct {v3, v4, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 322
    .end local v12           #label:Ljava/lang/String;
    :cond_4
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 323
    .restart local v12       #label:Ljava/lang/String;
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "labelsInDuration"

    invoke-direct {v3, v4, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 325
    .end local v12           #label:Ljava/lang/String;
    :cond_5
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "age"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "attach_size"

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "includeInDuration"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "notificationMethod"

    const-string v5, "syncServer"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p0, v13}, Lcom/google/android/gm/provider/Urls;->getUriWithParams(Ljava/util/List;)Ljava/net/URI;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    goto/16 :goto_2
.end method

.method public newHttpContext(Ljava/lang/String;Lorg/apache/http/client/CookieStore;)Lorg/apache/http/protocol/HttpContext;
    .locals 2
    .parameter "authToken"
    .parameter "cookieStore"

    .prologue
    .line 95
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 96
    .local v0, context:Lorg/apache/http/protocol/HttpContext;
    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    iget-object v1, p0, Lcom/google/android/gm/provider/Urls;->mAccount:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gm/provider/Urls;->getCookie(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/cookie/Cookie;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 98
    return-object v0
.end method

.method public newProtoRequest(Landroid/content/ContentResolver;IJLcom/google/common/io/protocol/ProtoBuf;Z)Lorg/apache/http/client/methods/HttpPost;
    .locals 5
    .parameter "contentResolver"
    .parameter "version"
    .parameter "clientId"
    .parameter "requestProto"
    .parameter "fillEntity"

    .prologue
    .line 118
    const/16 v2, 0x19

    if-ge p2, v2, :cond_0

    .line 119
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot make a proto request for version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-eqz v2, :cond_1

    .line 124
    const/4 v2, 0x1

    invoke-virtual {p5, v2, p3, p4}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 125
    const-string v2, "Gmail"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    const-string v2, "Gmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProtoRequest: clientid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 131
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0, p2, v1}, Lcom/google/android/gm/provider/Urls;->addStandardParams(ILjava/util/List;)V

    .line 132
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/Urls;->getUriWithParams(Ljava/util/List;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 134
    .local v0, httpPost:Lorg/apache/http/client/methods/HttpPost;
    if-eqz p6, :cond_2

    .line 135
    invoke-direct {p0, p1, p5, v0}, Lcom/google/android/gm/provider/Urls;->fillEntity(Landroid/content/ContentResolver;Lcom/google/common/io/protocol/ProtoBuf;Lorg/apache/http/client/methods/HttpPost;)V

    .line 138
    :cond_2
    return-object v0
.end method

.method public serverUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/android/gm/provider/Urls;->mUri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
