.class public Lcom/mobipocket/common/net/WebLoader;
.super Ljava/lang/Object;
.source "WebLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/common/net/WebLoader$DownloadResult;
    }
.end annotation


# static fields
.field public static HTTP_MOVED_PERM:I

.field public static HTTP_MOVED_TEMP:I

.field public static HTTP_OK:I

.field public static HTTP_PARTIAL_CONTENT:I

.field public static HTTP_SEE_OTHER:I

.field public static HTTP_STATUS_FORBIDDEN:I

.field public static HTTP_TEMP_REDIRECT:I


# instance fields
.field private _lastHTTPResponseCode:I

.field private final pHTTPConnection:Lcom/amazon/system/net/HttpConnection;

.field private privCounter:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0xc8

    sput v0, Lcom/mobipocket/common/net/WebLoader;->HTTP_OK:I

    .line 27
    const/16 v0, 0xce

    sput v0, Lcom/mobipocket/common/net/WebLoader;->HTTP_PARTIAL_CONTENT:I

    .line 29
    const/16 v0, 0x12d

    sput v0, Lcom/mobipocket/common/net/WebLoader;->HTTP_MOVED_PERM:I

    .line 30
    const/16 v0, 0x12e

    sput v0, Lcom/mobipocket/common/net/WebLoader;->HTTP_MOVED_TEMP:I

    .line 31
    const/16 v0, 0x12f

    sput v0, Lcom/mobipocket/common/net/WebLoader;->HTTP_SEE_OTHER:I

    .line 32
    const/16 v0, 0x133

    sput v0, Lcom/mobipocket/common/net/WebLoader;->HTTP_TEMP_REDIRECT:I

    .line 34
    const/16 v0, 0x193

    sput v0, Lcom/mobipocket/common/net/WebLoader;->HTTP_STATUS_FORBIDDEN:I

    return-void
.end method

.method public constructor <init>(Lcom/amazon/system/net/HttpConnection;)V
    .locals 2
    .parameter "httpConnection"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/net/WebLoader;->_lastHTTPResponseCode:I

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mobipocket/common/net/WebLoader;->privCounter:J

    .line 43
    iput-object p1, p0, Lcom/mobipocket/common/net/WebLoader;->pHTTPConnection:Lcom/amazon/system/net/HttpConnection;

    .line 44
    return-void
.end method

.method public static openHTTPConnection(Lcom/amazon/system/net/HttpConnection;Ljava/lang/String;)I
    .locals 2
    .parameter "httpConnection"
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 101
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lcom/mobipocket/common/net/WebLoader;->openHTTPConnection(Lcom/amazon/system/net/HttpConnection;Ljava/lang/String;ILjava/util/Hashtable;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static openHTTPConnection(Lcom/amazon/system/net/HttpConnection;Ljava/lang/String;I)I
    .locals 1
    .parameter "httpConnection"
    .parameter "url"
    .parameter "beginRange"

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-static {p0, p1, p2, v0, v0}, Lcom/mobipocket/common/net/WebLoader;->openHTTPConnection(Lcom/amazon/system/net/HttpConnection;Ljava/lang/String;ILjava/util/Hashtable;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static openHTTPConnection(Lcom/amazon/system/net/HttpConnection;Ljava/lang/String;ILjava/util/Hashtable;Ljava/lang/String;)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xa

    const/4 v3, 0x0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadBytes : Downloading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :try_start_0
    invoke-interface {p0, p1}, Lcom/amazon/system/net/HttpConnection;->open(Ljava/lang/String;)V

    .line 130
    if-eqz p3, :cond_1

    .line 132
    invoke-virtual {p3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    invoke-virtual {p3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 137
    invoke-interface {p0, v0, v1}, Lcom/amazon/system/net/HttpConnection;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    const/4 v0, -0x1

    .line 279
    if-eqz p0, :cond_0

    .line 283
    :try_start_1
    invoke-interface {p0}, Lcom/amazon/system/net/HttpConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 291
    :cond_0
    :goto_1
    return v0

    .line 141
    :cond_1
    :try_start_2
    invoke-interface {p0}, Lcom/amazon/system/net/HttpConnection;->getMaxResponseSize()I

    move-result v0

    if-lez v0, :cond_2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/amazon/system/net/HttpConnection;->getMaxResponseSize()I

    move-result v1

    add-int/2addr v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string v1, "Range"

    invoke-interface {p0, v1, v0}, Lcom/amazon/system/net/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_2
    if-eqz p4, :cond_3

    .line 149
    const-string v0, "POST"

    invoke-interface {p0, v0}, Lcom/amazon/system/net/HttpConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 152
    invoke-interface {p0}, Lcom/amazon/system/net/HttpConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 155
    :try_start_3
    const-string v1, "UTF-8"

    invoke-virtual {p4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 162
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 168
    :cond_3
    invoke-interface {p0}, Lcom/amazon/system/net/HttpConnection;->getResponseCode()I

    move-result v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadBytes : Response code is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    sget v1, Lcom/mobipocket/common/net/WebLoader;->HTTP_STATUS_FORBIDDEN:I

    if-eq v0, v1, :cond_0

    move v1, v0

    move v0, v3

    .line 179
    :goto_3
    sget v2, Lcom/mobipocket/common/net/WebLoader;->HTTP_OK:I

    if-eq v1, v2, :cond_b

    sget v2, Lcom/mobipocket/common/net/WebLoader;->HTTP_PARTIAL_CONTENT:I

    if-eq v1, v2, :cond_b

    if-ge v0, v5, :cond_b

    .line 181
    add-int/lit8 v0, v0, 0x1

    .line 182
    sget v2, Lcom/mobipocket/common/net/WebLoader;->HTTP_MOVED_PERM:I

    if-eq v1, v2, :cond_4

    sget v2, Lcom/mobipocket/common/net/WebLoader;->HTTP_MOVED_TEMP:I

    if-eq v1, v2, :cond_4

    sget v2, Lcom/mobipocket/common/net/WebLoader;->HTTP_SEE_OTHER:I

    if-eq v1, v2, :cond_4

    sget v2, Lcom/mobipocket/common/net/WebLoader;->HTTP_TEMP_REDIRECT:I

    if-ne v1, v2, :cond_a

    .line 187
    :cond_4
    const-string v2, "Location"

    invoke-interface {p0, v2}, Lcom/amazon/system/net/HttpConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_5

    .line 216
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 218
    const-string v3, "://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 219
    if-gez v3, :cond_7

    move-object v2, v6

    .line 247
    :cond_5
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadBytes : Jumping to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-interface {p0}, Lcom/amazon/system/net/HttpConnection;->close()V

    .line 252
    if-eqz v2, :cond_6

    .line 254
    invoke-interface {p0, v2}, Lcom/amazon/system/net/HttpConnection;->open(Ljava/lang/String;)V

    .line 255
    invoke-interface {p0}, Lcom/amazon/system/net/HttpConnection;->getResponseCode()I

    move-result v1

    .line 260
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadBytes : Response code is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 159
    :catch_1
    move-exception v1

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_2

    .line 226
    :cond_7
    const-string v4, "/"

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 227
    if-lez v3, :cond_d

    .line 229
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 231
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 236
    :cond_8
    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 237
    if-gez v3, :cond_9

    move-object v2, v6

    .line 242
    :cond_9
    const/4 v4, 0x0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 264
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    invoke-interface {p0}, Lcom/amazon/system/net/HttpConnection;->close()V

    move v0, v1

    .line 266
    goto/16 :goto_1

    .line 269
    :cond_b
    if-lt v0, v5, :cond_c

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many attemps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    invoke-interface {p0}, Lcom/amazon/system/net/HttpConnection;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move v0, v1

    .line 273
    goto/16 :goto_1

    .line 284
    :catch_2
    move-exception v1

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close httpConnection IOException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_c
    move v0, v1

    .line 291
    goto/16 :goto_1

    :cond_d
    move-object v3, p1

    goto :goto_5
.end method

.method public static openHTTPConnection(Lcom/amazon/system/net/HttpConnection;Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)I
    .locals 1
    .parameter "httpConnection"
    .parameter "url"
    .parameter "headers"
    .parameter "formData"

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/mobipocket/common/net/WebLoader;->openHTTPConnection(Lcom/amazon/system/net/HttpConnection;Ljava/lang/String;ILjava/util/Hashtable;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public downloadBytes(Ljava/lang/String;Lcom/mobipocket/common/net/DownloadEventListener;)Lcom/mobipocket/common/net/WebLoader$DownloadResult;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x0

    .line 302
    new-instance v0, Lcom/mobipocket/common/net/WebLoader$DownloadResult;

    invoke-direct {v0, p0}, Lcom/mobipocket/common/net/WebLoader$DownloadResult;-><init>(Lcom/mobipocket/common/net/WebLoader;)V

    .line 303
    iget-object v1, p0, Lcom/mobipocket/common/net/WebLoader;->pHTTPConnection:Lcom/amazon/system/net/HttpConnection;

    invoke-static {v1, p1}, Lcom/mobipocket/common/net/WebLoader;->openHTTPConnection(Lcom/amazon/system/net/HttpConnection;Ljava/lang/String;)I

    move-result v1

    sget v2, Lcom/mobipocket/common/net/WebLoader;->HTTP_OK:I

    if-eq v1, v2, :cond_0

    move-object v0, v3

    .line 385
    :goto_0
    return-object v0

    .line 310
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mobipocket/common/net/WebLoader;->pHTTPConnection:Lcom/amazon/system/net/HttpConnection;

    invoke-interface {v1}, Lcom/amazon/system/net/HttpConnection;->getResponseCode()I

    move-result v1

    iput v1, v0, Lcom/mobipocket/common/net/WebLoader$DownloadResult;->responseCode:I

    .line 311
    iget-object v1, p0, Lcom/mobipocket/common/net/WebLoader;->pHTTPConnection:Lcom/amazon/system/net/HttpConnection;

    invoke-interface {v1}, Lcom/amazon/system/net/HttpConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobipocket/common/net/WebLoader$DownloadResult;->contentType:Ljava/lang/String;

    .line 312
    iget-object v1, p0, Lcom/mobipocket/common/net/WebLoader;->pHTTPConnection:Lcom/amazon/system/net/HttpConnection;

    invoke-interface {v1}, Lcom/amazon/system/net/HttpConnection;->getContentLength()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/mobipocket/common/net/WebLoader$DownloadResult;->length:I

    .line 313
    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/mobipocket/common/net/WebLoader;->pHTTPConnection:Lcom/amazon/system/net/HttpConnection;

    invoke-interface {v2}, Lcom/amazon/system/net/HttpConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 314
    :try_start_1
    iget v2, v0, Lcom/mobipocket/common/net/WebLoader$DownloadResult;->length:I

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 316
    if-lez v2, :cond_4

    .line 323
    new-array v3, v2, [B

    move v5, v4

    .line 324
    :goto_1
    if-eq v4, v2, :cond_2

    if-eq v5, v8, :cond_2

    .line 325
    sub-int v5, v2, v4

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v5

    .line 326
    add-int/2addr v4, v5

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 362
    :catch_0
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    .line 364
    :goto_2
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadByte : catched "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 368
    if-eqz v2, :cond_1

    .line 371
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 374
    :cond_1
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/mobipocket/common/net/WebLoader;->pHTTPConnection:Lcom/amazon/system/net/HttpConnection;

    invoke-interface {v1}, Lcom/amazon/system/net/HttpConnection;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 382
    :catch_1
    move-exception v1

    goto :goto_0

    .line 333
    :cond_2
    :try_start_5
    iput-object v3, v0, Lcom/mobipocket/common/net/WebLoader$DownloadResult;->data:[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 368
    :goto_4
    if-eqz v1, :cond_3

    .line 371
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 374
    :cond_3
    :goto_5
    :try_start_7
    iget-object v1, p0, Lcom/mobipocket/common/net/WebLoader;->pHTTPConnection:Lcom/amazon/system/net/HttpConnection;

    invoke-interface {v1}, Lcom/amazon/system/net/HttpConnection;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 382
    :catch_2
    move-exception v1

    goto :goto_0

    .line 337
    :cond_4
    const/high16 v2, 0x1

    .line 339
    :try_start_8
    new-array v3, v2, [B

    move-object v9, v3

    move v3, v4

    move v4, v2

    move-object v2, v9

    .line 342
    :cond_5
    :goto_6
    sub-int v5, v4, v3

    invoke-virtual {v1, v2, v3, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v5

    .line 343
    if-nez v5, :cond_8

    .line 358
    :cond_6
    new-array v4, v3, [B

    iput-object v4, v0, Lcom/mobipocket/common/net/WebLoader$DownloadResult;->data:[B

    .line 359
    const/4 v4, 0x0

    iget-object v5, v0, Lcom/mobipocket/common/net/WebLoader$DownloadResult;->data:[B

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_4

    .line 368
    :catchall_0
    move-exception v0

    :goto_7
    if-eqz v1, :cond_7

    .line 371
    :try_start_9
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 374
    :cond_7
    :goto_8
    :try_start_a
    iget-object v1, p0, Lcom/mobipocket/common/net/WebLoader;->pHTTPConnection:Lcom/amazon/system/net/HttpConnection;

    invoke-interface {v1}, Lcom/amazon/system/net/HttpConnection;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 382
    :goto_9
    throw v0

    .line 345
    :cond_8
    if-eq v5, v8, :cond_6

    .line 348
    add-int/2addr v3, v5

    .line 349
    if-ne v3, v4, :cond_5

    .line 351
    mul-int/lit8 v4, v4, 0x2

    .line 354
    :try_start_b
    new-array v5, v4, [B

    .line 355
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v6, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    move-object v2, v5

    .line 356
    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_8

    :catch_6
    move-exception v1

    goto :goto_9

    .line 368
    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_7

    .line 362
    :catch_7
    move-exception v1

    move-object v2, v3

    goto :goto_2
.end method

.method public getLastHTTPResponseCode()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/mobipocket/common/net/WebLoader;->_lastHTTPResponseCode:I

    return v0
.end method

.method public getPageContent(Ljava/lang/String;Lcom/mobipocket/common/net/DownloadEventListener;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/mobipocket/common/net/WebLoader;->downloadBytes(Ljava/lang/String;Lcom/mobipocket/common/net/DownloadEventListener;)Lcom/mobipocket/common/net/WebLoader$DownloadResult;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    iget v1, v0, Lcom/mobipocket/common/net/WebLoader$DownloadResult;->responseCode:I

    iput v1, p0, Lcom/mobipocket/common/net/WebLoader;->_lastHTTPResponseCode:I

    .line 61
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/mobipocket/common/net/WebLoader$DownloadResult;->data:[B

    if-eqz v1, :cond_1

    .line 65
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/mobipocket/common/net/WebLoader$DownloadResult;->data:[B

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 75
    :goto_0
    return-object v0

    .line 69
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/mobipocket/common/net/WebLoader$DownloadResult;->data:[B

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    goto :goto_0

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
