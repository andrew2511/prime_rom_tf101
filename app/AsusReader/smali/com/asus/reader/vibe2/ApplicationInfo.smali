.class public Lcom/asus/reader/vibe2/ApplicationInfo;
.super Ljava/lang/Object;
.source "ApplicationInfo.java"


# instance fields
.field private CMSurl:Ljava/lang/String;

.field private authkey:Ljava/lang/String;

.field private clientappid:Ljava/lang/String;

.field private countlimit:Ljava/lang/String;

.field private ecaremetoken:Ljava/lang/String;

.field private headermode:Z

.field private locale:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private orderprocessurl:Ljava/lang/String;

.field private osset:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private productname:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private version_getcontent:Ljava/lang/String;

.field private version_getcontentdetail:Ljava/lang/String;

.field private version_getpackage:Ljava/lang/String;

.field private version_getrecommended:Ljava/lang/String;

.field private version_loadsubcat:Ljava/lang/String;

.field private version_orderinfo:Ljava/lang/String;

.field private version_vibeauth:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->version_vibeauth:Ljava/lang/String;

    .line 6
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->version_getcontent:Ljava/lang/String;

    .line 7
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->version_loadsubcat:Ljava/lang/String;

    .line 8
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->version_getcontentdetail:Ljava/lang/String;

    .line 9
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->version_getrecommended:Ljava/lang/String;

    .line 10
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->version_getpackage:Ljava/lang/String;

    .line 11
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->version_orderinfo:Ljava/lang/String;

    .line 13
    const-string v0, "epadandroid2_3bookstore1_0"

    iput-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->clientappid:Ljava/lang/String;

    .line 14
    const-string v0, "Handhold"

    iput-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->productname:Ljava/lang/String;

    .line 15
    const-string v0, "ep101"

    iput-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->model:Ljava/lang/String;

    .line 16
    const-string v0, "105"

    iput-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->osset:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->username:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->password:Ljava/lang/String;

    .line 19
    const-string v0, "zh_TW"

    iput-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->locale:Ljava/lang/String;

    .line 20
    const-string v0, "TW"

    iput-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->region:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->ecaremetoken:Ljava/lang/String;

    .line 22
    const-string v0, "1000000"

    iput-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->countlimit:Ljava/lang/String;

    .line 26
    const-string v0, "http://vibe-global.asus.com/client/webService/premium/"

    iput-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->CMSurl:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->orderprocessurl:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->authkey:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->headermode:Z

    return-void
.end method


# virtual methods
.method public getAuthkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->authkey:Ljava/lang/String;

    return-object v0
.end method

.method public getCMSurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->CMSurl:Ljava/lang/String;

    return-object v0
.end method

.method public getClientAppid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->clientappid:Ljava/lang/String;

    return-object v0
.end method

.method public getECaremeToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->ecaremetoken:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderMode()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->headermode:Z

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getOSSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->osset:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderProcessUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->orderprocessurl:Ljava/lang/String;

    return-object v0
.end method

.method public getProductname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->productname:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion_getcontent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->version_getcontent:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion_getcontentdetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->version_getcontentdetail:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion_getpackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->version_getpackage:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion_orderinfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->version_orderinfo:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion_vibeauth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->version_vibeauth:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthkey(Ljava/lang/String;)V
    .locals 0
    .parameter "_authkey"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->authkey:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setCMSurl(Ljava/lang/String;)V
    .locals 0
    .parameter "_CMSurl"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->CMSurl:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setECaremeToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->ecaremetoken:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setHeaderMode(Ljava/lang/String;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 201
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->headermode:Z

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->headermode:Z

    goto :goto_0
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->locale:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setOrderProcessUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->orderprocessurl:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "pw"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->password:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .parameter "_region"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->region:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/asus/reader/vibe2/ApplicationInfo;->username:Ljava/lang/String;

    .line 178
    return-void
.end method
