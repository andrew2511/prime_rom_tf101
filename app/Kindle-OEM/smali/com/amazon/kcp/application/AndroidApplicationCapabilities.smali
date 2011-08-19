.class public Lcom/amazon/kcp/application/AndroidApplicationCapabilities;
.super Ljava/lang/Object;
.source "AndroidApplicationCapabilities.java"


# static fields
.field private static final DEMO_MODE:Ljava/lang/String; = "demoMode"


# instance fields
.field private authManager:Lcom/amazon/kcp/application/AuthenticationManager;

.field protected isInDemoMode:Z


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/AuthenticationManager;)V
    .locals 2
    .parameter "authManager"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->authManager:Lcom/amazon/kcp/application/AuthenticationManager;

    .line 30
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->authManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v0, v0, Lcom/amazon/kcp/application/AuthenticationManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "demoMode"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode:Z

    .line 31
    return-void
.end method


# virtual methods
.method public canChangeRegistrationSettings()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canDisplayFreeBooks()Z
    .locals 2

    .prologue
    .line 119
    sget-object v0, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canGotoShelfari()Z
    .locals 2

    .prologue
    .line 93
    sget-object v0, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canGotoStore()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->authManager:Lcom/amazon/kcp/application/AuthenticationManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canPerformSync()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->authManager:Lcom/amazon/kcp/application/AuthenticationManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canSeeArchive()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canSendFeedback()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canShareProgress()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canUseOnlineDictionary()Z
    .locals 2

    .prologue
    .line 102
    sget-object v0, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsValidFingerprint()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
