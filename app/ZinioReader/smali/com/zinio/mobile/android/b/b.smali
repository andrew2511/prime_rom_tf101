.class public Lcom/zinio/mobile/android/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Lcom/zinio/mobile/android/App;->l()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/b/b;->a:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zinio/mobile/android/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "newsstandServices/authenticateUser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/b/b;->b:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zinio/mobile/android/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "newsstandServices/changePassword"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/b/b;->c:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zinio/mobile/android/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "newsstandServices/registerUser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/b/b;->d:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zinio/mobile/android/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "newsstandServices/libraryService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/b/b;->e:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zinio/mobile/android/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "newsstandServices/issueData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/b/b;->f:Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zinio/mobile/android/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "newsstandServices/issueDownload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/b/b;->g:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zinio/mobile/android/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "newsstandServices/configuration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/b/b;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/zinio/mobile/android/b/a/e;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 464
    sget-object v7, Lcom/zinio/mobile/android/b/b;->d:Ljava/lang/String;

    new-instance v0, Lcom/zinio/mobile/android/b/b/i;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/zinio/mobile/android/b/b/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/zinio/mobile/android/b/a/c;

    invoke-direct {v1}, Lcom/zinio/mobile/android/b/a/c;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v7, v0, v1, v2, v3}, Lcom/zinio/mobile/android/b/b;->a(Ljava/lang/String;Lcom/zinio/mobile/android/b/b/c;Lcom/zinio/mobile/android/b/e;Ljava/lang/String;Z)Lcom/zinio/mobile/android/b/c;

    move-result-object p0

    .line 469
    check-cast p0, Lcom/zinio/mobile/android/b/a/e;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zinio/mobile/android/b/a/f;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 487
    sget-object v0, Lcom/zinio/mobile/android/b/b;->c:Ljava/lang/String;

    new-instance v1, Lcom/zinio/mobile/android/b/b/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/zinio/mobile/android/b/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/zinio/mobile/android/b/a/b;

    invoke-direct {v2}, Lcom/zinio/mobile/android/b/a/b;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/zinio/mobile/android/b/b;->a(Ljava/lang/String;Lcom/zinio/mobile/android/b/b/c;Lcom/zinio/mobile/android/b/e;Ljava/lang/String;Z)Lcom/zinio/mobile/android/b/c;

    move-result-object p0

    .line 491
    check-cast p0, Lcom/zinio/mobile/android/b/a/f;

    return-object p0
.end method

.method public static a()Lcom/zinio/mobile/android/b/a/g;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 581
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v0

    .line 582
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/f;->e()Ljava/lang/String;

    move-result-object v0

    .line 584
    :goto_0
    sget-object v1, Lcom/zinio/mobile/android/b/b;->h:Ljava/lang/String;

    new-instance v2, Lcom/zinio/mobile/android/b/b/a;

    invoke-direct {v2, v0}, Lcom/zinio/mobile/android/b/b/a;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/zinio/mobile/android/b/a/a;

    invoke-direct {v0}, Lcom/zinio/mobile/android/b/a/a;-><init>()V

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Lcom/zinio/mobile/android/b/b;->a(Ljava/lang/String;Lcom/zinio/mobile/android/b/b/c;Lcom/zinio/mobile/android/b/e;Ljava/lang/String;Z)Lcom/zinio/mobile/android/b/c;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/b/a/g;

    .line 587
    return-object v0

    :cond_0
    move-object v0, v4

    .line 582
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/zinio/mobile/android/a/b/q;)Lcom/zinio/mobile/android/b/a/i;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 509
    sget-object v0, Lcom/zinio/mobile/android/b/b;->e:Ljava/lang/String;

    new-instance v1, Lcom/zinio/mobile/android/b/b/g;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/b/b/g;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/zinio/mobile/android/b/a/n;

    invoke-direct {v2, p0, p1}, Lcom/zinio/mobile/android/b/a/n;-><init>(Ljava/lang/String;Lcom/zinio/mobile/android/a/b/q;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/zinio/mobile/android/b/b;->a(Ljava/lang/String;Lcom/zinio/mobile/android/b/b/c;Lcom/zinio/mobile/android/b/e;Ljava/lang/String;Z)Lcom/zinio/mobile/android/b/c;

    move-result-object p0

    .line 513
    check-cast p0, Lcom/zinio/mobile/android/b/a/i;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/zinio/mobile/android/b/a/k;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 434
    sget-object v0, Lcom/zinio/mobile/android/b/b;->b:Ljava/lang/String;

    new-instance v1, Lcom/zinio/mobile/android/b/b/d;

    invoke-direct {v1, p0, p1}, Lcom/zinio/mobile/android/b/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/zinio/mobile/android/b/a/d;

    invoke-direct {v2}, Lcom/zinio/mobile/android/b/a/d;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/zinio/mobile/android/b/b;->a(Ljava/lang/String;Lcom/zinio/mobile/android/b/b/c;Lcom/zinio/mobile/android/b/e;Ljava/lang/String;Z)Lcom/zinio/mobile/android/b/c;

    move-result-object p0

    .line 438
    check-cast p0, Lcom/zinio/mobile/android/b/a/k;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zinio/mobile/android/b/a/l;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 565
    sget-object v0, Lcom/zinio/mobile/android/b/b;->g:Ljava/lang/String;

    new-instance v1, Lcom/zinio/mobile/android/b/b/f;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/zinio/mobile/android/b/b/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/zinio/mobile/android/b/a/h;

    invoke-direct {v2}, Lcom/zinio/mobile/android/b/a/h;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/zinio/mobile/android/b/b;->a(Ljava/lang/String;Lcom/zinio/mobile/android/b/b/c;Lcom/zinio/mobile/android/b/e;Ljava/lang/String;Z)Lcom/zinio/mobile/android/b/c;

    move-result-object p0

    .line 571
    check-cast p0, Lcom/zinio/mobile/android/b/a/l;

    return-object p0
.end method

.method private static a(Ljava/lang/String;Lcom/zinio/mobile/android/b/b/c;Lcom/zinio/mobile/android/b/e;Ljava/lang/String;Z)Lcom/zinio/mobile/android/b/c;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x2f

    const/4 v9, 0x1

    const/4 v8, 0x7

    const/4 v7, 0x0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    new-instance v0, Lcom/zinio/mobile/android/b/d;

    invoke-direct {v0}, Lcom/zinio/mobile/android/b/d;-><init>()V

    .line 168
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/d;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.protocol.expect-continue"

    invoke-interface {v1, v2, v7}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 170
    new-instance v1, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v1}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 174
    :try_start_0
    invoke-interface {p1}, Lcom/zinio/mobile/android/b/b/c;->a()Ljava/lang/String;

    move-result-object v3

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 181
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v4}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 182
    const-string v4, "text/xml"

    invoke-virtual {v1, v4}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/zinio/mobile/android/App;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    invoke-static {v3, v2}, Lcom/zinio/mobile/android/b/b;->a([BLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 193
    :cond_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 195
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v4, "Pragma"

    const-string v5, "no-cache"

    invoke-direct {v1, v4, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v4, Lorg/apache/http/message/BasicHeader;

    const-string v5, "Cache-control"

    const-string v6, "no-cache"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v5, 0x2

    new-array v5, v5, [Lorg/apache/http/Header;

    aput-object v1, v5, v7

    aput-object v4, v5, v9

    invoke-virtual {v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeaders([Lorg/apache/http/Header;)V

    .line 200
    const/4 v1, 0x0

    .line 202
    :try_start_1
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/d;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.connection.timeout"

    const/16 v6, 0x2710

    invoke-interface {v4, v5, v6}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 207
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/d;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.socket.timeout"

    const/16 v6, 0x61a8

    invoke-interface {v4, v5, v6}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 208
    invoke-virtual {v0, v3}, Lcom/zinio/mobile/android/b/d;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 209
    new-instance v3, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 210
    :try_start_2
    invoke-virtual {v3}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    move-result-object v0

    .line 225
    invoke-static {}, Lcom/zinio/mobile/android/App;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v8, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 236
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/zinio/mobile/android/resources/a/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Response.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    const/4 v2, 0x0

    :try_start_3
    invoke-static {v3, v1, v2}, Lcom/zinio/mobile/android/b/b;->a(Lorg/apache/http/entity/BufferedHttpEntity;Ljava/lang/String;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 251
    :cond_1
    :goto_1
    :try_start_4
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 258
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 260
    invoke-interface {v1, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 261
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 263
    invoke-interface {p2}, Lcom/zinio/mobile/android/b/e;->b()Lcom/zinio/mobile/android/b/c;

    move-result-object v0

    .line 264
    invoke-interface {v0}, Lcom/zinio/mobile/android/b/c;->a()I

    move-result v1

    .line 265
    invoke-interface {v0}, Lcom/zinio/mobile/android/b/c;->b()Ljava/lang/String;

    move-result-object v2

    .line 267
    if-nez v1, :cond_6

    invoke-static {v2}, Lcom/zinio/mobile/android/b/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 268
    new-instance v0, Lcom/zinio/mobile/android/b/g;

    invoke-direct {v0, v2}, Lcom/zinio/mobile/android/b/g;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_9

    .line 270
    :catch_0
    move-exception v0

    .line 271
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 188
    :catch_1
    move-exception v0

    .line 189
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    move-object v1, v2

    .line 234
    goto :goto_0

    .line 242
    :catch_2
    move-exception v1

    .line 244
    const-class v2, Lcom/zinio/mobile/android/b/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 245
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 212
    :catch_3
    move-exception v0

    .line 213
    :goto_2
    :try_start_5
    new-instance v3, Lcom/zinio/mobile/android/b/g;

    const-string v4, "SYSTEM_NOT_AVAILABLE"

    invoke-direct {v3, v0, v4}, Lcom/zinio/mobile/android/b/g;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 225
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_4

    invoke-static {}, Lcom/zinio/mobile/android/App;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 234
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 236
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/zinio/mobile/android/resources/a/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Response.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    const/4 v3, 0x0

    :try_start_6
    invoke-static {v1, v2, v3}, Lcom/zinio/mobile/android/b/b;->a(Lorg/apache/http/entity/BufferedHttpEntity;Ljava/lang/String;Z)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 248
    :cond_4
    :goto_4
    throw v0

    .line 214
    :catch_4
    move-exception v0

    .line 215
    :goto_5
    :try_start_7
    new-instance v3, Lcom/zinio/mobile/android/b/g;

    const-string v4, "UNKNOWN_HOST"

    invoke-direct {v3, v0, v4}, Lcom/zinio/mobile/android/b/g;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v3

    .line 216
    :catch_5
    move-exception v0

    .line 217
    :goto_6
    new-instance v3, Lcom/zinio/mobile/android/b/g;

    const-string v4, "SYSTEM_NOT_AVAILABLE"

    invoke-direct {v3, v0, v4}, Lcom/zinio/mobile/android/b/g;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v3

    .line 218
    :catch_6
    move-exception v0

    .line 219
    :goto_7
    new-instance v3, Lcom/zinio/mobile/android/b/g;

    invoke-direct {v3, v0}, Lcom/zinio/mobile/android/b/g;-><init>(Ljava/lang/Throwable;)V

    .line 220
    instance-of v0, v0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_5

    .line 221
    const-string v0, "SSL_ERROR"

    invoke-virtual {v3, v0}, Lcom/zinio/mobile/android/b/g;->a(Ljava/lang/String;)V

    .line 223
    :cond_5
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 242
    :catch_7
    move-exception v1

    .line 244
    const-class v2, Lcom/zinio/mobile/android/b/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 245
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 272
    :catch_8
    move-exception v0

    .line 273
    new-instance v1, Lcom/zinio/mobile/android/b/g;

    const-string v2, "XML_PARSING_ERROR"

    invoke-direct {v1, v0, v2}, Lcom/zinio/mobile/android/b/g;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v1

    .line 274
    :catch_9
    move-exception v0

    .line 275
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 278
    :cond_6
    if-eqz p3, :cond_7

    invoke-interface {v0}, Lcom/zinio/mobile/android/b/c;->a()I

    move-result v1

    if-ne v1, v9, :cond_7

    .line 283
    :try_start_8
    invoke-static {v3, p3, p4}, Lcom/zinio/mobile/android/b/b;->a(Lorg/apache/http/entity/BufferedHttpEntity;Ljava/lang/String;Z)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    .line 301
    :cond_7
    return-object v0

    .line 284
    :catch_a
    move-exception v0

    .line 285
    new-instance v1, Lcom/zinio/mobile/android/b/g;

    invoke-direct {v1, v0}, Lcom/zinio/mobile/android/b/g;-><init>(Ljava/lang/Throwable;)V

    .line 286
    invoke-virtual {v1, v9}, Lcom/zinio/mobile/android/b/g;->a(I)V

    .line 287
    throw v1

    .line 225
    :catchall_1
    move-exception v0

    move-object v1, v3

    goto/16 :goto_3

    .line 218
    :catch_b
    move-exception v0

    move-object v1, v3

    goto :goto_7

    .line 216
    :catch_c
    move-exception v0

    move-object v1, v3

    goto :goto_6

    .line 214
    :catch_d
    move-exception v0

    move-object v1, v3

    goto :goto_5

    .line 212
    :catch_e
    move-exception v0

    move-object v1, v3

    goto/16 :goto_2
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 596
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 598
    :try_start_0
    invoke-static {p0}, Lcom/zinio/mobile/android/a/a/r;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 599
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 602
    new-instance v1, Ljava/lang/String;

    invoke-static {}, Lcom/zinio/mobile/android/e/c;->a()Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 603
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "null"
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eq v1, v0, :cond_0

    move-object v0, v1

    .line 616
    :goto_0
    return-object v0

    .line 608
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    .line 616
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 610
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1

    .line 612
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Lcom/zinio/mobile/android/b/g;)V
    .locals 3
    .parameter

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/zinio/mobile/android/b/g;->b()Ljava/lang/String;

    move-result-object v0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response got error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    const-string v1, "APP_VERSION_NOT_SUPPORTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    invoke-static {}, Lcom/zinio/mobile/android/App;->k()V

    .line 322
    :cond_0
    invoke-static {v0}, Lcom/zinio/mobile/android/b/g;->b(Ljava/lang/String;)I

    move-result v0

    .line 324
    invoke-static {}, Lcom/zinio/mobile/android/view/cq;->a()Lcom/zinio/mobile/android/view/cq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/cq;->b()Landroid/content/Context;

    move-result-object p0

    .line 326
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    instance-of v1, p0, Lcom/zinio/mobile/android/view/cf;

    if-eqz v1, :cond_1

    .line 328
    check-cast p0, Landroid/app/Activity;

    .line 329
    new-instance v1, Lcom/zinio/mobile/android/b/a;

    invoke-direct {v1, p0, v0}, Lcom/zinio/mobile/android/b/a;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 343
    :cond_1
    return-void
.end method

.method private static a(Lorg/apache/http/entity/BufferedHttpEntity;Ljava/lang/String;Z)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 376
    if-eqz p0, :cond_3

    .line 378
    new-instance v0, Ljava/io/File;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 382
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 385
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 392
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 393
    invoke-virtual {p0}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 395
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 396
    if-eqz p2, :cond_4

    .line 397
    new-instance v0, Lcom/zinio/mobile/android/e/a;

    invoke-direct {v0}, Lcom/zinio/mobile/android/e/a;-><init>()V

    .line 398
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zinio/mobile/android/e/a;->a([B)V

    .line 401
    new-instance v3, Lcom/zinio/mobile/android/e/b;

    invoke-direct {v3, v2, v0}, Lcom/zinio/mobile/android/e/b;-><init>(Ljava/io/OutputStream;Lcom/zinio/mobile/android/e/a;)V

    move-object v0, v3

    .line 405
    :goto_0
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 407
    :goto_1
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2

    .line 408
    invoke-virtual {v0, v2, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 409
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recv: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v6, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 411
    :cond_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 412
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 413
    const/4 v0, 0x1

    .line 417
    :goto_2
    return v0

    .line 416
    :cond_3
    const-class v0, Lcom/zinio/mobile/android/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move v0, v6

    .line 417
    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_0
.end method

.method private static a([BLjava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zinio/mobile/android/resources/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/zinio/mobile/android/resources/a/b;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 353
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 358
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 360
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 367
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 362
    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0

    .line 364
    :catch_1
    move-exception v0

    move v0, v3

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zinio/mobile/android/b/c;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 531
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v0

    .line 532
    if-nez v0, :cond_0

    .line 533
    const/4 v0, 0x0

    .line 541
    :goto_0
    return-object v0

    .line 536
    :cond_0
    sget-object v1, Lcom/zinio/mobile/android/b/b;->f:Ljava/lang/String;

    new-instance v2, Lcom/zinio/mobile/android/b/b/h;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, p0, p1}, Lcom/zinio/mobile/android/b/b/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/zinio/mobile/android/b/a/o;

    invoke-direct {v0}, Lcom/zinio/mobile/android/b/a/o;-><init>()V

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, p2, v3}, Lcom/zinio/mobile/android/b/b;->a(Ljava/lang/String;Lcom/zinio/mobile/android/b/b/c;Lcom/zinio/mobile/android/b/e;Ljava/lang/String;Z)Lcom/zinio/mobile/android/b/c;

    move-result-object v0

    goto :goto_0
.end method
