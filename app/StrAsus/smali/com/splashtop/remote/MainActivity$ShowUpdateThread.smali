.class Lcom/splashtop/remote/MainActivity$ShowUpdateThread;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShowUpdateThread"
.end annotation


# instance fields
.field private context:Ljava/lang/String;

.field private rversion:I

.field final synthetic this$0:Lcom/splashtop/remote/MainActivity;

.field private upgradeUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/splashtop/remote/MainActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "upgradeUrl"
    .parameter "rversion"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/splashtop/remote/MainActivity$ShowUpdateThread;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p2, p0, Lcom/splashtop/remote/MainActivity$ShowUpdateThread;->context:Ljava/lang/String;

    .line 189
    iput-object p3, p0, Lcom/splashtop/remote/MainActivity$ShowUpdateThread;->upgradeUrl:Ljava/lang/String;

    .line 190
    iput p4, p0, Lcom/splashtop/remote/MainActivity$ShowUpdateThread;->rversion:I

    .line 191
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 195
    new-instance v0, Lcom/splashtop/remote/dialog/SimpleAlertDialog;

    iget-object v1, p0, Lcom/splashtop/remote/MainActivity$ShowUpdateThread;->this$0:Lcom/splashtop/remote/MainActivity;

    iget-object v2, p0, Lcom/splashtop/remote/MainActivity$ShowUpdateThread;->this$0:Lcom/splashtop/remote/MainActivity;

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;I)V

    .line 196
    .local v0, dialog:Lcom/splashtop/remote/dialog/SimpleAlertDialog;
    iget-object v1, p0, Lcom/splashtop/remote/MainActivity$ShowUpdateThread;->context:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setContext(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/splashtop/remote/MainActivity$ShowUpdateThread;->upgradeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setUpgradeUrl(Ljava/lang/String;)V

    .line 198
    iget v1, p0, Lcom/splashtop/remote/MainActivity$ShowUpdateThread;->rversion:I

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setRversion(I)V

    .line 199
    invoke-virtual {v0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->show()V

    .line 200
    return-void
.end method
