.class Lcom/amazon/kcp/application/AndroidApplicationController$5;
.super Ljava/lang/Object;
.source "AndroidApplicationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/AndroidApplicationController;-><init>(Lcom/amazon/android/system/AndroidUtilities;Lcom/amazon/kcp/application/ISecureStorage;Landroid/content/Context;J)V
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
    .line 339
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidApplicationController$5;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController$5;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    iget-object v0, v0, Lcom/amazon/kcp/application/AndroidApplicationController;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "DeviceFingerprint"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEVFINGER: CF>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController$5;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-static {v1}, Lcom/amazon/kcp/application/AndroidApplicationController;->access$000(Lcom/amazon/kcp/application/AndroidApplicationController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/android/system/security/DeviceFingerprint;->checkFingerprintString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController$5;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    iget-object v1, v1, Lcom/amazon/kcp/application/AndroidApplicationController;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v2, "DeviceFingerprint"

    invoke-interface {v1, v2, v0}, Lcom/amazon/kcp/application/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/amazon/android/system/security/FingerprintMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController$5;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    iget-object v0, v0, Lcom/amazon/kcp/application/AndroidApplicationController;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "DeviceFingerprint"

    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidApplicationController$5;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-static {v2}, Lcom/amazon/kcp/application/AndroidApplicationController;->access$000(Lcom/amazon/kcp/application/AndroidApplicationController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/android/system/security/DeviceFingerprint;->getCurrentFingerprint(Landroid/content/Context;)Lcom/amazon/android/system/security/DeviceFingerprint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/system/security/DeviceFingerprint;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/application/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 364
    new-instance v0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController$5;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V

    .line 365
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->deregister(ZZ)V

    goto :goto_0
.end method
