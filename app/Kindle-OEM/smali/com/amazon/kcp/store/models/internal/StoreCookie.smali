.class public Lcom/amazon/kcp/store/models/internal/StoreCookie;
.super Lcom/amazon/kcp/internal/webservices/WebServiceModel;
.source "StoreCookie.java"


# instance fields
.field private cookieValue:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/amazon/kcp/internal/webservices/WebServiceModel;-><init>()V

    .line 24
    invoke-virtual {p0}, Lcom/amazon/kcp/store/models/internal/StoreCookie;->empty()V

    .line 25
    return-void
.end method


# virtual methods
.method public cloneModel()Lcom/amazon/kcp/internal/webservices/WebServiceModel;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/amazon/kcp/store/models/internal/StoreCookie;

    invoke-direct {v0}, Lcom/amazon/kcp/store/models/internal/StoreCookie;-><init>()V

    .line 34
    .local v0, cookie:Lcom/amazon/kcp/store/models/internal/StoreCookie;
    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/StoreCookie;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/StoreCookie;->setUrl(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/StoreCookie;->cookieValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/StoreCookie;->setCookieValue(Ljava/lang/String;)V

    .line 37
    return-object v0
.end method

.method public empty()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/StoreCookie;->url:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/StoreCookie;->cookieValue:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public getCookieValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/StoreCookie;->cookieValue:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/StoreCookie;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCookieValue(Ljava/lang/String;)V
    .locals 0
    .parameter "cookieValue"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/StoreCookie;->cookieValue:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/StoreCookie;->url:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/StoreCookie;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/StoreCookie;->cookieValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
