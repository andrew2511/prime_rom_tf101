.class Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreResponseHandler;
.super Lorg/apache/http/impl/client/BasicResponseHandler;
.source "StorefrontPrefetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/StorefrontPrefetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreResponseHandler"
.end annotation


# instance fields
.field private redirectHandler:Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreRedirectHandler;

.field final synthetic this$0:Lcom/amazon/kcp/store/StorefrontPrefetcher;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/store/StorefrontPrefetcher;Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreRedirectHandler;)V
    .locals 0
    .parameter
    .parameter "redirectHandler"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreResponseHandler;->this$0:Lcom/amazon/kcp/store/StorefrontPrefetcher;

    invoke-direct {p0}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    .line 128
    iput-object p2, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreResponseHandler;->redirectHandler:Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreRedirectHandler;

    .line 129
    return-void
.end method


# virtual methods
.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-super {p0, p1}, Lorg/apache/http/impl/client/BasicResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 139
    const-string v2, "Set-Cookie"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v2, v5

    .line 143
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreResponseHandler;->redirectHandler:Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreRedirectHandler;

    iget-object v2, v2, Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreRedirectHandler;->lastBaseUrl:Ljava/lang/String;

    .line 148
    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 150
    new-instance v2, Lcom/amazon/kcp/store/StoreUrlBuilder;

    iget-object v4, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreResponseHandler;->this$0:Lcom/amazon/kcp/store/StorefrontPrefetcher;

    invoke-static {v4}, Lcom/amazon/kcp/store/StorefrontPrefetcher;->access$000(Lcom/amazon/kcp/store/StorefrontPrefetcher;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/amazon/kcp/store/StoreUrlBuilder;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-virtual {v2}, Lcom/amazon/kcp/store/StoreUrlBuilder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as base URL for the cookies"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v2, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreResponseHandler;->this$0:Lcom/amazon/kcp/store/StorefrontPrefetcher;

    invoke-static {v2}, Lcom/amazon/kcp/store/StorefrontPrefetcher;->access$100(Lcom/amazon/kcp/store/StorefrontPrefetcher;)Lcom/amazon/kcp/store/CookieJar;

    move-result-object v2

    const-string v3, "store_session_cookies"

    invoke-virtual {v2, v3, v1}, Lcom/amazon/kcp/store/CookieJar;->saveCookiesToSecureStorageAndJar(Ljava/lang/String;Ljava/util/Map;)Z

    .line 161
    return-object v0
.end method
