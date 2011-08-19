.class final Lcom/google/android/apps/uploader/clients/picasa/e;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/google/android/apps/uploader/b;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Lcom/google/android/apps/uploader/clients/picasa/p;

.field private synthetic f:Lcom/google/android/apps/uploader/clients/picasa/c;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/picasa/c;Lcom/google/android/apps/uploader/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/uploader/clients/picasa/p;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/e;->f:Lcom/google/android/apps/uploader/clients/picasa/c;

    iput-object p2, p0, Lcom/google/android/apps/uploader/clients/picasa/e;->a:Lcom/google/android/apps/uploader/b;

    iput-object p3, p0, Lcom/google/android/apps/uploader/clients/picasa/e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/uploader/clients/picasa/e;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/apps/uploader/clients/picasa/e;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/apps/uploader/clients/picasa/e;->e:Lcom/google/android/apps/uploader/clients/picasa/p;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 71
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "http://picasaweb.google.com/data/feed/api/user/default/"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/e;->a:Lcom/google/android/apps/uploader/b;

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/e;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/apps/uploader/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GoogleLogin auth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "Content-Type"

    const-string v2, "application/atom+xml"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/e;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/uploader/clients/picasa/e;->d:Ljava/lang/String;

    const-string v4, "\\]\\]>"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "<entry xmlns=\'http://www.w3.org/2005/Atom\' xmlns:media=\'http://search.yahoo.com/mrss/\' xmlns:gphoto=\'http://schemas.google.com/photos/2007\'><title type=\'text\'><![CDATA[@@@TITLE@@@]]></title><gphoto:access>@@@ACCESS@@@</gphoto:access><gphoto:commentingEnabled>true</gphoto:commentingEnabled><category scheme=\'http://schemas.google.com/g/2005#kind\' term=\'http://schemas.google.com/photos/2007#album\'></category></entry>"

    const-string v5, "@@@TITLE@@@"

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "@@@ACCESS@@@"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 78
    new-instance v2, Lorg/apache/http/entity/InputStreamEntity;

    const-wide/16 v3, -0x1

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 79
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/e;->f:Lcom/google/android/apps/uploader/clients/picasa/c;

    invoke-static {v1}, Lcom/google/android/apps/uploader/clients/picasa/c;->a(Lcom/google/android/apps/uploader/clients/picasa/c;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/e;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/uploader/clients/picasa/e;->a:Lcom/google/android/apps/uploader/b;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/apps/uploader/clients/picasa/c;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/google/android/apps/uploader/b;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 81
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_0

    .line 82
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/e;->e:Lcom/google/android/apps/uploader/clients/picasa/p;

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/e;->f:Lcom/google/android/apps/uploader/clients/picasa/c;

    iget-object v3, p0, Lcom/google/android/apps/uploader/clients/picasa/e;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/google/android/apps/uploader/clients/picasa/c;->a(Lcom/google/android/apps/uploader/clients/picasa/c;Ljava/lang/String;Lorg/apache/http/HttpResponse;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/apps/uploader/clients/picasa/p;->a(Ljava/util/List;)V

    .line 91
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/e;->e:Lcom/google/android/apps/uploader/clients/picasa/p;

    new-instance v2, Lcom/google/android/apps/uploader/a;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/apps/uploader/a;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/google/android/apps/uploader/clients/picasa/p;->a(Lcom/google/android/apps/uploader/a;)V
    :try_end_0
    .catch Lcom/google/android/apps/uploader/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/e;->e:Lcom/google/android/apps/uploader/clients/picasa/p;

    invoke-interface {v1, v0}, Lcom/google/android/apps/uploader/clients/picasa/p;->a(Lcom/google/android/apps/uploader/a;)V

    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    .line 89
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/e;->e:Lcom/google/android/apps/uploader/clients/picasa/p;

    new-instance v2, Lcom/google/android/apps/uploader/a;

    invoke-direct {v2, v0}, Lcom/google/android/apps/uploader/a;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/google/android/apps/uploader/clients/picasa/p;->a(Lcom/google/android/apps/uploader/a;)V

    goto :goto_0
.end method
