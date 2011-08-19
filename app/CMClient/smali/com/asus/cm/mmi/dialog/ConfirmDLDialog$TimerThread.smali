.class Lcom/asus/cm/mmi/dialog/ConfirmDLDialog$TimerThread;
.super Ljava/util/TimerTask;
.source "ConfirmDLDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimerThread"
.end annotation


# instance fields
.field mDialog:Landroid/content/DialogInterface;

.field final synthetic this$0:Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;


# direct methods
.method public constructor <init>(Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;Landroid/content/DialogInterface;)V
    .locals 0
    .parameter
    .parameter "pDialog"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog$TimerThread;->this$0:Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 163
    iput-object p2, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog$TimerThread;->mDialog:Landroid/content/DialogInterface;

    .line 164
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 167
    const-string v1, "TimerThread "

    invoke-static {p0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog$TimerThread;->this$0:Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;

    iget-object v1, v1, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mService:Lcom/asus/cm/IMmiCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/asus/cm/IMmiCallback;->prepareDLNotification(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog$TimerThread;->mDialog:Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->cancel()V

    .line 174
    return-void

    .line 170
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 171
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
