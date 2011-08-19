.class public Lnet/yostore/aws/api/entity/RequestTokenResponse;
.super Lnet/yostore/aws/api/entity/ApiResponse;
.source "RequestTokenResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestTokenResponse"


# instance fields
.field private _contentrelay:Ljava/lang/String;

.field private _filerelay:Ljava/lang/String;

.field private _inforelay:Ljava/lang/String;

.field private _jobrelay:Ljava/lang/String;

.field private _mediarelay:Ljava/lang/String;

.field private _rssrelay:Ljava/lang/String;

.field private _searchserver:Ljava/lang/String;

.field private _time:Ljava/lang/String;

.field private _token:Ljava/lang/String;

.field private _webrelay:Ljava/lang/String;

.field isFutureList:Z

.field private packageinfo:Lnet/yostore/aws/api/entity/PackageInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lnet/yostore/aws/api/entity/ApiResponse;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/api/entity/RequestTokenResponse;->isFutureList:Z

    .line 5
    return-void
.end method


# virtual methods
.method public getContentRelay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lnet/yostore/aws/api/entity/RequestTokenResponse;->_contentrelay:Ljava/lang/String;

    return-object v0
.end method

.method public getFilerelay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lnet/yostore/aws/api/entity/RequestTokenResponse;->_filerelay:Ljava/lang/String;

    return-object v0
.end method

.method public getInforelay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lnet/yostore/aws/api/entity/RequestTokenResponse;->_inforelay:Ljava/lang/String;

    return-object v0
.end method

.method public getJobRelay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lnet/yostore/aws/api/entity/RequestTokenResponse;->_jobrelay:Ljava/lang/String;

    return-object v0
.end method

.method public getMediarelay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lnet/yostore/aws/api/entity/RequestTokenResponse;->_mediarelay:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lnet/yostore/aws/api/entity/RequestTokenResponse;->packageinfo:Lnet/yostore/aws/api/entity/PackageInfo;

    return-object v0
.end method

.method public getRssRelay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lnet/yostore/aws/api/entity/RequestTokenResponse;->_rssrelay:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchserver()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lnet/yostore/aws/api/entity/RequestTokenResponse;->_searchserver:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lnet/yostore/aws/api/entity/RequestTokenResponse;->_time:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lnet/yostore/aws/api/entity/RequestTokenResponse;->_token:Ljava/lang/String;

    return-object v0
.end method

.method public getWebrelay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lnet/yostore/aws/api/entity/RequestTokenResponse;->_webrelay:Ljava/lang/String;

    return-object v0
.end method

.method public setContentRelay(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 39
    iput-object p1, p0, Lnet/yostore/aws/api/entity/RequestTokenResponse;->_contentrelay:Ljava/lang/String;

    return-void
.end method

.method public setFilerelay(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 31
    iput-object p1, p0, Lnet/yostore/aws/api/entity/RequestTokenResponse;->_filerelay:Ljava/lang/String;

    return-void
.end method

.method public setInforelay(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 25
    iput-object p1, p0, Lnet/yostore/aws/api/entity/RequestTokenResponse;->_inforelay:Ljava/lang/String;

    .line 26
    const-string v0, "RequestTokenResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setInforelay="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method public setJobRelay(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 65
    iput-object p1, p0, Lnet/yostore/aws/api/entity/RequestTokenResponse;->_jobrelay:Ljava/lang/String;

    .line 66
    const-string v0, "RequestTokenResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jobrelay="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public setMediarelay(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 51
    iput-object p1, p0, Lnet/yostore/aws/api/entity/RequestTokenResponse;->_mediarelay:Ljava/lang/String;

    .line 52
    const-string v0, "RequestTokenResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setMediarelay="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public setPackageinfo(Lnet/yostore/aws/api/entity/PackageInfo;)V
    .locals 0
    .parameter "packageinfo"

    .prologue
    .line 15
    iput-object p1, p0, Lnet/yostore/aws/api/entity/RequestTokenResponse;->packageinfo:Lnet/yostore/aws/api/entity/PackageInfo;

    return-void
.end method

.method public setRssRelay(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 35
    iput-object p1, p0, Lnet/yostore/aws/api/entity/RequestTokenResponse;->_rssrelay:Ljava/lang/String;

    return-void
.end method

.method public setSearchserver(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 58
    iput-object p1, p0, Lnet/yostore/aws/api/entity/RequestTokenResponse;->_searchserver:Ljava/lang/String;

    .line 59
    const-string v0, "RequestTokenResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSearchserver="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 71
    iput-object p1, p0, Lnet/yostore/aws/api/entity/RequestTokenResponse;->_time:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 20
    iput-object p1, p0, Lnet/yostore/aws/api/entity/RequestTokenResponse;->_token:Ljava/lang/String;

    return-void
.end method

.method public setWebrelay(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 44
    iput-object p1, p0, Lnet/yostore/aws/api/entity/RequestTokenResponse;->_webrelay:Ljava/lang/String;

    .line 45
    const-string v0, "RequestTokenResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setWebrelay="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method
