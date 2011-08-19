.class public final Lcom/google/android/apps/uploader/clients/picasa/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/uploader/clients/picasa/o;


# instance fields
.field private final a:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/c;->a:Lorg/apache/http/client/HttpClient;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/clients/picasa/c;Ljava/lang/String;Lorg/apache/http/HttpResponse;Z)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-static {p1, p2, p3}, Lcom/google/android/apps/uploader/clients/picasa/c;->a(Ljava/lang/String;Lorg/apache/http/HttpResponse;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lorg/apache/http/HttpResponse;Z)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    :try_start_0
    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/l;

    invoke-direct {v0, p0, p2}, Lcom/google/android/apps/uploader/clients/picasa/l;-><init>(Ljava/lang/String;Z)V

    .line 120
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/picasa/l;->b()Lorg/xml/sax/ContentHandler;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 122
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/picasa/l;->a()Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    new-instance v1, Lcom/google/android/apps/uploader/a;

    invoke-direct {v1, v0}, Lcom/google/android/apps/uploader/a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 125
    :catch_1
    move-exception v0

    .line 126
    new-instance v1, Lcom/google/android/apps/uploader/a;

    invoke-direct {v1, v0}, Lcom/google/android/apps/uploader/a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/google/android/apps/uploader/b;)Lorg/apache/http/HttpResponse;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-interface {p3, p2}, Lcom/google/android/apps/uploader/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GoogleLogin auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-interface {p0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 104
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 107
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0x191

    if-eq v3, v4, :cond_0

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x193

    if-ne v2, v3, :cond_1

    .line 109
    :cond_0
    invoke-interface {p3, p2, v0}, Lcom/google/android/apps/uploader/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GoogleLogin auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-interface {p0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/clients/picasa/c;)Lorg/apache/http/client/HttpClient;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/c;->a:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/apps/uploader/b;Lcom/google/android/apps/uploader/clients/picasa/p;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/apps/uploader/clients/picasa/d;-><init>(Lcom/google/android/apps/uploader/clients/picasa/c;Ljava/lang/String;Lcom/google/android/apps/uploader/b;Lcom/google/android/apps/uploader/clients/picasa/p;)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 61
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/apps/uploader/b;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/uploader/clients/picasa/p;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/e;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/uploader/clients/picasa/e;-><init>(Lcom/google/android/apps/uploader/clients/picasa/c;Lcom/google/android/apps/uploader/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/uploader/clients/picasa/p;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 94
    return-void
.end method
