.class public Lcom/amazon/kcp/application/AndroidUpdateManager;
.super Ljava/lang/Object;
.source "AndroidUpdateManager.java"

# interfaces
.implements Lcom/amazon/kcp/application/internal/IUpdateManager;


# static fields
.field public static final LATEST_KNOWN_APP_VERSION_KEY:Ljava/lang/String; = "LatestKnownAppVersion"


# instance fields
.field private appController:Lcom/amazon/kcp/application/IKindleApplicationController;

.field private secureStorage:Lcom/amazon/kcp/application/ISecureStorage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method assertInitialized()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "secure storage not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    if-nez v0, :cond_1

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "App controller not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    return-void
.end method

.method public clearSecureStorage()V
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->assertInitialized()V

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "LatestKnownAppVersion"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    .line 35
    return-void
.end method

.method public getLatestKnownAppVersion()J
    .locals 5

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->assertInitialized()V

    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getInternalVersionNumber()J

    move-result-wide v0

    .line 50
    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v3, "LatestKnownAppVersion"

    invoke-interface {v2, v3}, Lcom/amazon/kcp/application/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 70
    :goto_0
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    move-wide v0, v2

    .line 75
    :cond_0
    return-wide v0

    .line 64
    :catch_0
    move-exception v3

    iget-object v3, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v4, "LatestKnownAppVersion"

    invoke-interface {v3, v4}, Lcom/amazon/kcp/application/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem parsing app version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v2, v0

    goto :goto_0
.end method

.method public initialize(Lcom/amazon/kcp/application/ISecureStorage;Lcom/amazon/kcp/application/IKindleApplicationController;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Secure storage must have a value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    if-nez p2, :cond_1

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The application controller must have a value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    .line 94
    iput-object p2, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    .line 95
    return-void
.end method

.method public processStartup()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public processUpdateTodoItem(Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;)V
    .locals 4
    .parameter

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->assertInitialized()V

    .line 111
    if-nez p1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Todo item not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    const-wide/16 v0, 0x0

    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v3, "LatestKnownAppVersion"

    invoke-interface {v2, v3}, Lcom/amazon/kcp/application/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 130
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->getSoftwareVersion()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "LatestKnownAppVersion"

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->getSoftwareVersion()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/application/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 134
    :cond_1
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method
