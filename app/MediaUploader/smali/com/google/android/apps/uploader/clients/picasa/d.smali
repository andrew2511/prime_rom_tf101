.class final Lcom/google/android/apps/uploader/clients/picasa/d;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/google/android/apps/uploader/b;

.field private synthetic c:Lcom/google/android/apps/uploader/clients/picasa/p;

.field private synthetic d:Lcom/google/android/apps/uploader/clients/picasa/c;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/picasa/c;Ljava/lang/String;Lcom/google/android/apps/uploader/b;Lcom/google/android/apps/uploader/clients/picasa/p;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/d;->d:Lcom/google/android/apps/uploader/clients/picasa/c;

    iput-object p2, p0, Lcom/google/android/apps/uploader/clients/picasa/d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/uploader/clients/picasa/d;->b:Lcom/google/android/apps/uploader/b;

    iput-object p4, p0, Lcom/google/android/apps/uploader/clients/picasa/d;->c:Lcom/google/android/apps/uploader/clients/picasa/p;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 45
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "http://picasaweb.google.com/data/feed/api/user/default/"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/d;->d:Lcom/google/android/apps/uploader/clients/picasa/c;

    invoke-static {v1}, Lcom/google/android/apps/uploader/clients/picasa/c;->a(Lcom/google/android/apps/uploader/clients/picasa/c;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/d;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/uploader/clients/picasa/d;->b:Lcom/google/android/apps/uploader/b;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/apps/uploader/clients/picasa/c;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/google/android/apps/uploader/b;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 48
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 49
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/d;->c:Lcom/google/android/apps/uploader/clients/picasa/p;

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/d;->d:Lcom/google/android/apps/uploader/clients/picasa/c;

    iget-object v3, p0, Lcom/google/android/apps/uploader/clients/picasa/d;->a:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v3, v0, v4}, Lcom/google/android/apps/uploader/clients/picasa/c;->a(Lcom/google/android/apps/uploader/clients/picasa/c;Ljava/lang/String;Lorg/apache/http/HttpResponse;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/apps/uploader/clients/picasa/p;->a(Ljava/util/List;)V

    .line 58
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/d;->c:Lcom/google/android/apps/uploader/clients/picasa/p;

    new-instance v2, Lcom/google/android/apps/uploader/a;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/apps/uploader/a;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/google/android/apps/uploader/clients/picasa/p;->a(Lcom/google/android/apps/uploader/a;)V
    :try_end_0
    .catch Lcom/google/android/apps/uploader/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/d;->c:Lcom/google/android/apps/uploader/clients/picasa/p;

    invoke-interface {v1, v0}, Lcom/google/android/apps/uploader/clients/picasa/p;->a(Lcom/google/android/apps/uploader/a;)V

    goto :goto_0

    .line 55
    :catch_1
    move-exception v0

    .line 56
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/d;->c:Lcom/google/android/apps/uploader/clients/picasa/p;

    new-instance v2, Lcom/google/android/apps/uploader/a;

    invoke-direct {v2, v0}, Lcom/google/android/apps/uploader/a;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/google/android/apps/uploader/clients/picasa/p;->a(Lcom/google/android/apps/uploader/a;)V

    goto :goto_0
.end method
