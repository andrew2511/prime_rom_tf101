.class public final Lcom/google/android/apps/uploader/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/uploader/w;
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Lorg/apache/http/client/HttpClient;

.field private c:Lcom/google/android/apps/uploader/y;

.field private d:Ljava/io/BufferedInputStream;

.field private e:Lcom/google/android/apps/uploader/b;

.field private f:Ljava/lang/String;

.field private g:[B

.field private h:Lcom/google/android/apps/uploader/x;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "bytes=(\\d+)-(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/uploader/f;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/high16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/apps/uploader/f;->g:[B

    .line 70
    iput-object p1, p0, Lcom/google/android/apps/uploader/f;->b:Lorg/apache/http/client/HttpClient;

    .line 71
    return-void
.end method

.method private static a(Ljava/io/BufferedInputStream;J)J
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 214
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 215
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t skip negative amounts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/io/BufferedInputStream;->skip(J)J

    move-result-wide v0

    .line 218
    cmp-long v2, v0, p1

    if-eqz v2, :cond_1

    .line 220
    new-instance v2, Ljava/io/IOException;

    const-string v3, "skip failed: actual=%d; requested=%d;"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 223
    :cond_1
    return-wide v0
.end method

.method private a(Ljava/lang/String;)J
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 232
    if-nez p1, :cond_0

    .line 233
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "range header was null; file="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/f;->c:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/y;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    sget-object v0, Lcom/google/android/apps/uploader/f;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    .line 237
    new-instance v0, Ljava/io/IOException;

    const-string v1, "malformed range header=%s; file=%s;"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/apps/uploader/f;->c:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v4}, Lcom/google/android/apps/uploader/y;->k()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 4
    .parameter

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/apps/uploader/f;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 343
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 345
    iget-object v2, p0, Lcom/google/android/apps/uploader/f;->e:Lcom/google/android/apps/uploader/b;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x191

    if-eq v2, v3, :cond_0

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x193

    if-ne v1, v2, :cond_1

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/f;->e:Lcom/google/android/apps/uploader/b;

    iget-object v1, p0, Lcom/google/android/apps/uploader/f;->c:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/y;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/f;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/uploader/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/f;->f:Ljava/lang/String;

    .line 349
    const-string v0, "Authorization"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GoogleLogin auth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/google/android/apps/uploader/f;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 352
    :cond_1
    return-object v0
.end method

.method private static a(Lorg/apache/http/HttpResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 316
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_0

    .line 328
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 330
    :cond_0
    return-void
.end method

.method private static a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 333
    const/16 v0, 0xc8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 13

    .prologue
    .line 155
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/f;->c:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/y;->n()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/apps/uploader/f;->c:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/y;->m()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/uploader/f;->c:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/y;->n()J

    move-result-wide v0

    .line 158
    const/high16 v2, 0x8

    .line 159
    iget-object v3, p0, Lcom/google/android/apps/uploader/f;->c:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v3}, Lcom/google/android/apps/uploader/y;->m()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/32 v5, 0x80000

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 160
    iget-object v2, p0, Lcom/google/android/apps/uploader/f;->c:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/y;->m()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    .line 164
    :cond_0
    iget-object v3, p0, Lcom/google/android/apps/uploader/f;->d:Ljava/io/BufferedInputStream;

    const/high16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 167
    iget-object v3, p0, Lcom/google/android/apps/uploader/f;->d:Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lcom/google/android/apps/uploader/f;->g:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 170
    iget-object v3, p0, Lcom/google/android/apps/uploader/f;->c:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v3}, Lcom/google/android/apps/uploader/y;->q()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/uploader/f;->c:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v4}, Lcom/google/android/apps/uploader/y;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/uploader/f;->c:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v5}, Lcom/google/android/apps/uploader/y;->m()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/apps/uploader/f;->g:[B

    new-instance v8, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    int-to-long v9, v2

    add-long/2addr v9, v0

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    const-string v3, "Content-Range"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bytes "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Type"

    invoke-virtual {v8, v3, v4}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/ByteArrayInputStream;

    const/4 v4, 0x0

    invoke-direct {v3, v7, v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    new-instance v4, Lorg/apache/http/entity/InputStreamEntity;

    int-to-long v5, v2

    invoke-direct {v4, v3, v5, v6}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 177
    invoke-direct {p0, v8}, Lcom/google/android/apps/uploader/f;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 179
    iget-boolean v4, p0, Lcom/google/android/apps/uploader/f;->i:Z

    if-eqz v4, :cond_2

    .line 209
    :cond_1
    :goto_1
    return-void

    .line 184
    :cond_2
    invoke-static {v3}, Lcom/google/android/apps/uploader/f;->a(Lorg/apache/http/HttpResponse;)V

    .line 185
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 186
    invoke-static {v4}, Lcom/google/android/apps/uploader/f;->a(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 188
    iget-object v0, p0, Lcom/google/android/apps/uploader/f;->h:Lcom/google/android/apps/uploader/x;

    iget-object v1, p0, Lcom/google/android/apps/uploader/f;->c:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/y;->m()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/uploader/x;->a(J)V

    .line 189
    iget-object v0, p0, Lcom/google/android/apps/uploader/f;->h:Lcom/google/android/apps/uploader/x;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/x;->a()V

    goto :goto_1

    .line 192
    :cond_3
    invoke-static {v4}, Lcom/google/android/apps/uploader/f;->b(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 194
    const-string v4, "range"

    invoke-interface {v3, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 195
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/uploader/f;->a(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 196
    int-to-long v5, v2

    add-long/2addr v0, v5

    cmp-long v0, v3, v0

    if-gez v0, :cond_4

    .line 198
    iget-object v0, p0, Lcom/google/android/apps/uploader/f;->d:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/uploader/f;->d:Ljava/io/BufferedInputStream;

    invoke-static {v0, v3, v4}, Lcom/google/android/apps/uploader/f;->a(Ljava/io/BufferedInputStream;J)J

    .line 203
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/uploader/f;->h:Lcom/google/android/apps/uploader/x;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/apps/uploader/x;->a(J)V

    goto/16 :goto_0

    .line 205
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GDataUploadConnector.chunkUpload: unexpected upload response "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    const-string v1, "MediaUploader"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 337
    const/16 v0, 0x134

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/f;->i:Z

    .line 109
    return-void
.end method

.method public final a(Lcom/google/android/apps/uploader/y;Ljava/io/InputStream;Lcom/google/android/apps/uploader/b;ZLcom/google/android/apps/uploader/x;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/apps/uploader/f;->c:Lcom/google/android/apps/uploader/y;

    .line 76
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/f;->d:Ljava/io/BufferedInputStream;

    .line 77
    iput-object p5, p0, Lcom/google/android/apps/uploader/f;->h:Lcom/google/android/apps/uploader/x;

    .line 78
    iput-object p3, p0, Lcom/google/android/apps/uploader/f;->e:Lcom/google/android/apps/uploader/b;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/uploader/f;->f:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/f;->i:Z

    .line 82
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method

.method public final run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 86
    iget-object v1, p0, Lcom/google/android/apps/uploader/f;->e:Lcom/google/android/apps/uploader/b;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/google/android/apps/uploader/f;->e:Lcom/google/android/apps/uploader/b;

    iget-object v2, p0, Lcom/google/android/apps/uploader/f;->c:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/y;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/uploader/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/uploader/f;->f:Ljava/lang/String;

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/f;->c:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/y;->h()Ljava/lang/String;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/google/android/apps/uploader/f;->f:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 91
    const-string v2, "%=_auth_token_=%"

    iget-object v3, p0, Lcom/google/android/apps/uploader/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/uploader/f;->c:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/y;->q()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_6

    .line 96
    iget-object v2, p0, Lcom/google/android/apps/uploader/f;->c:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/y;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v2, "\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    move-object v1, v4

    move-object v4, v7

    :cond_2
    invoke-static {v1}, Lcom/google/android/apps/uploader/C;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    iget-object v2, p0, Lcom/google/android/apps/uploader/f;->h:Lcom/google/android/apps/uploader/x;

    new-instance v3, Lcom/google/android/apps/uploader/a;

    invoke-direct {v3, v1}, Lcom/google/android/apps/uploader/a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/google/android/apps/uploader/x;->a(Lcom/google/android/apps/uploader/a;)V

    .line 105
    :goto_1
    return-void

    .line 96
    :cond_3
    if-eqz v4, :cond_4

    :try_start_1
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v1, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_4
    invoke-direct {p0, v3}, Lcom/google/android/apps/uploader/f;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/uploader/f;->a(Lorg/apache/http/HttpResponse;)V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/uploader/f;->a(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v2, "Location"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/f;->c:Lcom/google/android/apps/uploader/y;

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/apps/uploader/y;->a(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/f;->h:Lcom/google/android/apps/uploader/x;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/uploader/x;->a(J)V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/f;->b()V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 102
    :catch_1
    move-exception v1

    .line 103
    iget-object v2, p0, Lcom/google/android/apps/uploader/f;->h:Lcom/google/android/apps/uploader/x;

    new-instance v3, Lcom/google/android/apps/uploader/u;

    invoke-direct {v3, v1}, Lcom/google/android/apps/uploader/u;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/google/android/apps/uploader/x;->a(Lcom/google/android/apps/uploader/u;)V

    goto :goto_1

    .line 96
    :cond_5
    :try_start_2
    const-string v1, "MediaUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GDataUploadConnector.start: unexpected initial response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 98
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/uploader/f;->c:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/y;->q()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    const-string v1, "Content-Range"

    const-string v3, "bytes */*"

    invoke-virtual {v2, v1, v3}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/apps/uploader/f;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/uploader/f;->a(Lorg/apache/http/HttpResponse;)V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/uploader/f;->b(I)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v2, "range"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/uploader/f;->a(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/apps/uploader/f;->d:Ljava/io/BufferedInputStream;

    invoke-static {v3, v1, v2}, Lcom/google/android/apps/uploader/f;->a(Ljava/io/BufferedInputStream;J)J

    iget-object v3, p0, Lcom/google/android/apps/uploader/f;->d:Ljava/io/BufferedInputStream;

    const/high16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/io/BufferedInputStream;->mark(I)V

    iget-object v3, p0, Lcom/google/android/apps/uploader/f;->h:Lcom/google/android/apps/uploader/x;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/apps/uploader/x;->a(J)V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/f;->b()V

    goto/16 :goto_1

    :cond_7
    invoke-static {v2}, Lcom/google/android/apps/uploader/f;->a(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "MediaUploader"

    const-string v2, "nothing to resume, upload already completed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/apps/uploader/f;->h:Lcom/google/android/apps/uploader/x;

    iget-object v2, p0, Lcom/google/android/apps/uploader/f;->c:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/y;->m()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/uploader/x;->a(J)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/f;->h:Lcom/google/android/apps/uploader/x;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/x;->a()V

    goto/16 :goto_1

    :cond_8
    const-string v1, "MediaUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected resume response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MediaUploader"

    const-string v2, "retrying with the new upload sesion"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/apps/uploader/f;->c:Lcom/google/android/apps/uploader/y;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/uploader/y;->a(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/f;->h:Lcom/google/android/apps/uploader/x;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/uploader/x;->a(J)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/f;->h:Lcom/google/android/apps/uploader/x;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/x;->b()V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method
