.class Lcom/amazon/kcp/application/AndroidApplicationController$4;
.super Ljava/lang/Object;
.source "AndroidApplicationController.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/AndroidApplicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/AndroidApplicationController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/AndroidApplicationController;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidApplicationController$4;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController$4;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->clearUserSettings()V

    .line 194
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController$4;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getCookieJar()Lcom/amazon/kcp/store/CookieJar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/store/CookieJar;->clearCookieJar()V

    .line 197
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController$4;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-static {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->access$000(Lcom/amazon/kcp/application/AndroidApplicationController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/store/StorefrontPrefetcher;->clearPrefretchedStorefront(Landroid/content/Context;)V

    .line 200
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController$4;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getFileSystem()Lcom/amazon/system/io/IFileConnectionFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/ResumableDownloadHelper;->removeAllPartialDownloadFiles(Lcom/amazon/system/io/IFileConnectionFactory;)I

    .line 201
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController$4;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/ResumableDownloadHelper;->removeAllTokens(Lcom/amazon/system/io/IPersistentSettingsHelper;)I

    .line 204
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController$4;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    iget-object v0, v0, Lcom/amazon/kcp/application/AndroidApplicationController;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "EncryptedDeviceId"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    .line 207
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController$4;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-static {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->access$000(Lcom/amazon/kcp/application/AndroidApplicationController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider;->asyncUpdateAllWidgets(Landroid/content/Context;)V

    .line 211
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController$4;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-static {v1}, Lcom/amazon/kcp/application/AndroidApplicationController;->access$000(Lcom/amazon/kcp/application/AndroidApplicationController;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/kcp/welcome/WelcomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 214
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController$4;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    .line 215
    return-void
.end method
