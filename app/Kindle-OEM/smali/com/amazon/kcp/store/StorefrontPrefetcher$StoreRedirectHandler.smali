.class Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreRedirectHandler;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "StorefrontPrefetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/StorefrontPrefetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreRedirectHandler"
.end annotation


# instance fields
.field lastBaseUrl:Ljava/lang/String;

.field lastUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/store/StorefrontPrefetcher;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/store/StorefrontPrefetcher;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 88
    iput-object p1, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreRedirectHandler;->this$0:Lcom/amazon/kcp/store/StorefrontPrefetcher;

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    .line 93
    iput-object v0, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreRedirectHandler;->lastUrl:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreRedirectHandler;->lastBaseUrl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/store/StorefrontPrefetcher;Lcom/amazon/kcp/store/StorefrontPrefetcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreRedirectHandler;-><init>(Lcom/amazon/kcp/store/StorefrontPrefetcher;)V

    return-void
.end method


# virtual methods
.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    const-string v2, "https://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 110
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-direct {v1, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreRedirectHandler;->lastBaseUrl:Ljava/lang/String;

    .line 111
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreRedirectHandler;->lastUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
