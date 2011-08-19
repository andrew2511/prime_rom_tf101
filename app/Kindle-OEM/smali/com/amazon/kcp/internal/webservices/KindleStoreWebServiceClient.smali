.class public abstract Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;
.super Ljava/lang/Object;
.source "KindleStoreWebServiceClient.java"


# static fields
.field static final DEFAULT_NUM_RETRY:I = 0x1

.field private static final URL_CLIENT_ID_A:Ljava/lang/String; = "&clientID="

.field private static final URL_CLIENT_ID_Q:Ljava/lang/String; = "?clientID="


# instance fields
.field protected wc:Lcom/amazon/foundation/internal/net/LightWebConnector;


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V
    .locals 0
    .parameter "wc"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;->wc:Lcom/amazon/foundation/internal/net/LightWebConnector;

    .line 29
    return-void
.end method

.method protected static generateCookieHeader(Lcom/amazon/kcp/application/AuthenticationManager;)Ljava/util/Hashtable;
    .locals 4
    .parameter

    .prologue
    .line 59
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 61
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AuthenticationManager;->getCookie()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 63
    const-string v1, "cookie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x-fsn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AuthenticationManager;->getCookie()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_0
    return-object v0
.end method

.method protected static generateSignedHeaders(Lcom/amazon/kcp/application/AuthenticationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 82
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AuthenticationManager;->getRequestSigner()Lcom/amazon/kcp/application/IRequestSigner;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/amazon/kcp/application/IRequestSigner;->digestHeaderForRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_0

    .line 86
    const-string v2, "X-ADP-Request-Digest"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "X-ADP-Authentication-Token"

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AuthenticationManager;->getAdpToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected addClientID(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 39
    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 41
    const-string v0, "&clientID="

    .line 47
    .local v0, paramString:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 45
    .end local v0           #paramString:Ljava/lang/String;
    :cond_0
    const-string v0, "?clientID="

    .restart local v0       #paramString:Ljava/lang/String;
    goto :goto_0
.end method
