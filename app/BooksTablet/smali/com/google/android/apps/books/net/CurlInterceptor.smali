.class public Lcom/google/android/apps/books/net/CurlInterceptor;
.super Ljava/lang/Object;
.source "CurlInterceptor.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# static fields
.field private static final TAG:Ljava/lang/String; = "BooksCurl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 4
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "BooksCurl"

    .line 28
    const-string v1, "BooksCurl"

    const/4 v1, 0x2

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    .line 30
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 31
    .local v0, engBuild:Z
    const-string v1, "BooksCurl"

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    .end local p1
    invoke-static {p1, v0}, Lcom/google/android/apps/books/util/AndroidHttpClient;->toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .end local v0           #engBuild:Z
    :cond_0
    return-void
.end method
