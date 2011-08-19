.class public Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;
.super Lcom/amazon/kcp/store/models/internal/CAsyncModel;
.source "RegisterResultsModel.java"


# instance fields
.field private cookie:Ljava/lang/String;

.field private privateKey:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private userDeviceName:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/amazon/kcp/store/models/internal/CAsyncModel;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public getCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->cookie:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->privateKey:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->userDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setCookie(Ljava/lang/String;)V
    .locals 0
    .parameter "cookie"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->cookie:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setPrivateKey(Ljava/lang/String;)V
    .locals 0
    .parameter "privateKey"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->privateKey:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->token:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setUserDeviceName(Ljava/lang/String;)V
    .locals 0
    .parameter "userDeviceName"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->userDeviceName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->userName:Ljava/lang/String;

    .line 81
    return-void
.end method
