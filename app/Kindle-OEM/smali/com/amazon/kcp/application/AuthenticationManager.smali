.class public Lcom/amazon/kcp/application/AuthenticationManager;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"


# static fields
.field private static final ADP_TOKEN_KEY:Ljava/lang/String; = "token"

.field private static final COOKIE_KEY:Ljava/lang/String; = "cookie"

.field private static final DEVICE_NAME_KEY:Ljava/lang/String; = "deviceName"

.field private static final EMAIL_KEY:Ljava/lang/String; = "emailAddress"

.field private static final PRIVATE_KEY_KEY:Ljava/lang/String; = "key"

.field private static final USER_NAME_KEY:Ljava/lang/String; = "userName"


# instance fields
.field protected adpToken:Ljava/lang/String;

.field protected authenticated:Z

.field protected cookie:Ljava/lang/String;

.field protected deviceName:Ljava/lang/String;

.field protected emailAddress:Ljava/lang/String;

.field private final logOutEvent:Lcom/amazon/foundation/internal/EventProvider;

.field protected privateKey:Ljava/lang/String;

.field protected requestSigner:Lcom/amazon/kcp/application/IRequestSigner;

.field protected secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

.field protected synchronizationManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

.field protected userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;Lcom/amazon/kcp/application/ISecureStorage;Lcom/amazon/kcp/application/IRequestSigner;)V
    .locals 2
    .parameter "synchronizationManager"
    .parameter "secureStorage"
    .parameter "requestSigner"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->authenticated:Z

    .line 41
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->logOutEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 53
    iput-object p1, p0, Lcom/amazon/kcp/application/AuthenticationManager;->synchronizationManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    .line 54
    iput-object p2, p0, Lcom/amazon/kcp/application/AuthenticationManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    .line 55
    iput-object p3, p0, Lcom/amazon/kcp/application/AuthenticationManager;->requestSigner:Lcom/amazon/kcp/application/IRequestSigner;

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "cookie"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->cookie:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "token"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->adpToken:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "key"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->privateKey:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "userName"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->userName:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "deviceName"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->deviceName:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "emailAddress"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->emailAddress:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->cookie:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->adpToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->privateKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->requestSigner:Lcom/amazon/kcp/application/IRequestSigner;

    iget-object v1, p0, Lcom/amazon/kcp/application/AuthenticationManager;->adpToken:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IRequestSigner;->setToken(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->requestSigner:Lcom/amazon/kcp/application/IRequestSigner;

    iget-object v1, p0, Lcom/amazon/kcp/application/AuthenticationManager;->privateKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IRequestSigner;->setKey(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->authenticated:Z

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public getAdpToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->adpToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->cookie:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLogOutEvent()Lcom/amazon/foundation/internal/EventProvider;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->logOutEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getPrivateKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->privateKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestSigner()Lcom/amazon/kcp/application/IRequestSigner;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->requestSigner:Lcom/amazon/kcp/application/IRequestSigner;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->authenticated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->cookie:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->privateKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->adpToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->authenticated:Z

    .line 142
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->authenticated:Z

    return v0
.end method

.method public removeAuthentication()V
    .locals 2

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->authenticated:Z

    if-eqz v0, :cond_7

    .line 153
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->synchronizationManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->forceCancelAllSyncs()V

    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "cookie"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->cookie:Ljava/lang/String;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "key"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->privateKey:Ljava/lang/String;

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "token"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->adpToken:Ljava/lang/String;

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "userName"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->userName:Ljava/lang/String;

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "deviceName"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->deviceName:Ljava/lang/String;

    .line 179
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "emailAddress"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->emailAddress:Ljava/lang/String;

    .line 185
    :cond_5
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->privateKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->adpToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->cookie:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 189
    :cond_6
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->requestSigner:Lcom/amazon/kcp/application/IRequestSigner;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IRequestSigner;->removeTokenAndKey()V

    .line 190
    invoke-static {}, Lcom/amazon/kcp/application/DynamicConfigManager;->getInstance()Lcom/amazon/kcp/application/DynamicConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/DynamicConfigManager;->clearConfigUrls()V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->authenticated:Z

    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->logOutEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 195
    :cond_7
    return-void
.end method

.method public setAdpToken(Ljava/lang/String;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "token"

    invoke-interface {v0, v1, p1}, Lcom/amazon/kcp/application/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iput-object p1, p0, Lcom/amazon/kcp/application/AuthenticationManager;->adpToken:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->requestSigner:Lcom/amazon/kcp/application/IRequestSigner;

    iget-object v1, p0, Lcom/amazon/kcp/application/AuthenticationManager;->adpToken:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IRequestSigner;->setToken(Ljava/lang/String;)V

    .line 207
    :cond_0
    return-void
.end method

.method public setCookie(Ljava/lang/String;)V
    .locals 2
    .parameter "cookie"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "cookie"

    invoke-interface {v0, v1, p1}, Lcom/amazon/kcp/application/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iput-object p1, p0, Lcom/amazon/kcp/application/AuthenticationManager;->cookie:Ljava/lang/String;

    .line 218
    :cond_0
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 2
    .parameter "deviceName"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "deviceName"

    invoke-interface {v0, v1, p1}, Lcom/amazon/kcp/application/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iput-object p1, p0, Lcom/amazon/kcp/application/AuthenticationManager;->deviceName:Ljava/lang/String;

    .line 258
    :cond_0
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 2
    .parameter "email"

    .prologue
    .line 268
    if-nez p1, :cond_0

    .line 270
    const-string p1, ""

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "emailAddress"

    invoke-interface {v0, v1, p1}, Lcom/amazon/kcp/application/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iput-object p1, p0, Lcom/amazon/kcp/application/AuthenticationManager;->emailAddress:Ljava/lang/String;

    .line 277
    :cond_1
    return-void
.end method

.method public setPrivateKey(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "key"

    invoke-interface {v0, v1, p1}, Lcom/amazon/kcp/application/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iput-object p1, p0, Lcom/amazon/kcp/application/AuthenticationManager;->privateKey:Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->requestSigner:Lcom/amazon/kcp/application/IRequestSigner;

    iget-object v1, p0, Lcom/amazon/kcp/application/AuthenticationManager;->privateKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IRequestSigner;->setKey(Ljava/lang/String;)V

    .line 230
    :cond_0
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/amazon/kcp/application/AuthenticationManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "userName"

    invoke-interface {v0, v1, p1}, Lcom/amazon/kcp/application/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iput-object p1, p0, Lcom/amazon/kcp/application/AuthenticationManager;->userName:Ljava/lang/String;

    .line 241
    :cond_0
    return-void
.end method
