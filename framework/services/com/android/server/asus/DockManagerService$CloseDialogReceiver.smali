.class Lcom/android/server/asus/DockManagerService$CloseDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DockManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/asus/DockManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloseDialogReceiver"
.end annotation


# instance fields
.field public check:Z

.field public dialog:Landroid/app/Dialog;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 886
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 884
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/asus/DockManagerService$CloseDialogReceiver;->check:Z

    .line 887
    iput-object p1, p0, Lcom/android/server/asus/DockManagerService$CloseDialogReceiver;->mContext:Landroid/content/Context;

    .line 888
    iput-object p2, p0, Lcom/android/server/asus/DockManagerService$CloseDialogReceiver;->mHandler:Landroid/os/Handler;

    .line 889
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 890
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 891
    const-string v1, "com.asus.dock.action.COSE_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 892
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 893
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 7
    .parameter "unused"

    .prologue
    const/4 v4, 0x1

    .line 905
    const-string v1, "DockManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDismiss, check:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/asus/DockManagerService$CloseDialogReceiver;->check:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-boolean v1, p0, Lcom/android/server/asus/DockManagerService$CloseDialogReceiver;->check:Z

    if-eqz v1, :cond_2b

    .line 907
    iget-object v1, p0, Lcom/android/server/asus/DockManagerService$CloseDialogReceiver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 908
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/asus/DockManagerService$CloseDialogReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 910
    .end local v0           #msg:Landroid/os/Message;
    :cond_2b
    iget-object v1, p0, Lcom/android/server/asus/DockManagerService$CloseDialogReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 911
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 897
    const-string v0, "DockManagerService"

    const-string v1, "CloseDialogReceiver onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 899
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/asus/DockManagerService$CloseDialogReceiver;->check:Z

    .line 901
    :cond_16
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 902
    return-void
.end method
