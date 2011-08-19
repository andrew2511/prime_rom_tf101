.class Lcom/splashtop/remote/MainActivity$MyLicenseCheckerCallback;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/android/vending/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLicenseCheckerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/MainActivity;


# direct methods
.method private constructor <init>(Lcom/splashtop/remote/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 924
    iput-object p1, p0, Lcom/splashtop/remote/MainActivity$MyLicenseCheckerCallback;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/splashtop/remote/MainActivity;Lcom/splashtop/remote/MainActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 924
    invoke-direct {p0, p1}, Lcom/splashtop/remote/MainActivity$MyLicenseCheckerCallback;-><init>(Lcom/splashtop/remote/MainActivity;)V

    return-void
.end method


# virtual methods
.method public allow()V
    .locals 2

    .prologue
    .line 926
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$MyLicenseCheckerCallback;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-virtual {v0}, Lcom/splashtop/remote/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    :goto_0
    return-void

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$MyLicenseCheckerCallback;->this$0:Lcom/splashtop/remote/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/splashtop/remote/MainActivity;->access$1202(Lcom/splashtop/remote/MainActivity;Z)Z

    goto :goto_0
.end method

.method public applicationError(Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 943
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$MyLicenseCheckerCallback;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-virtual {v0}, Lcom/splashtop/remote/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    :goto_0
    return-void

    .line 946
    :cond_0
    const-string v0, "IRISMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LicenseCheckerCallback::applicationError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    invoke-virtual {p0}, Lcom/splashtop/remote/MainActivity$MyLicenseCheckerCallback;->dontAllow()V

    goto :goto_0
.end method

.method public dontAllow()V
    .locals 3

    .prologue
    .line 933
    iget-object v1, p0, Lcom/splashtop/remote/MainActivity$MyLicenseCheckerCallback;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-virtual {v1}, Lcom/splashtop/remote/MainActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 940
    :goto_0
    return-void

    .line 936
    :cond_0
    iget-object v1, p0, Lcom/splashtop/remote/MainActivity$MyLicenseCheckerCallback;->this$0:Lcom/splashtop/remote/MainActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/splashtop/remote/MainActivity;->access$1202(Lcom/splashtop/remote/MainActivity;Z)Z

    .line 937
    new-instance v0, Landroid/content/Intent;

    const-string v1, "LICENSE_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 938
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/splashtop/remote/MainActivity$MyLicenseCheckerCallback;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-virtual {v1, v0}, Lcom/splashtop/remote/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 939
    iget-object v1, p0, Lcom/splashtop/remote/MainActivity$MyLicenseCheckerCallback;->this$0:Lcom/splashtop/remote/MainActivity;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/splashtop/remote/MainActivity;->showDialog(I)V

    goto :goto_0
.end method
