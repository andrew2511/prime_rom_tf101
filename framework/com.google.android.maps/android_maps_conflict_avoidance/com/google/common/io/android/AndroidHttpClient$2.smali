.class Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$2;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "AndroidHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;


# direct methods
.method constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$2;->this$0:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;

    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .registers 4

    .prologue
    .line 157
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 158
    .local v0, context:Lorg/apache/http/protocol/HttpContext;
    const-string v1, "http.authscheme-registry"

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$2;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    const-string v1, "http.cookiespec-registry"

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$2;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    const-string v1, "http.auth.credentials-provider"

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$2;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    return-object v0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .registers 5

    .prologue
    .line 146
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    .line 147
    .local v0, processor:Lorg/apache/http/protocol/BasicHttpProcessor;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->access$100()Lorg/apache/http/HttpRequestInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 148
    new-instance v1, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$CurlLogger;

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$2;->this$0:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$CurlLogger;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$1;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 150
    return-object v0
.end method
