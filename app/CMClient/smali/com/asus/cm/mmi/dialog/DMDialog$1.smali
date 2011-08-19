.class Lcom/asus/cm/mmi/dialog/DMDialog$1;
.super Ljava/lang/Object;
.source "DMDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/cm/mmi/dialog/DMDialog;->setupTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/cm/mmi/dialog/DMDialog;


# direct methods
.method constructor <init>(Lcom/asus/cm/mmi/dialog/DMDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/asus/cm/mmi/dialog/DMDialog$1;->this$0:Lcom/asus/cm/mmi/dialog/DMDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/DMDialog$1;->this$0:Lcom/asus/cm/mmi/dialog/DMDialog;

    iget-object v1, v1, Lcom/asus/cm/mmi/dialog/DMDialog;->mService:Lcom/asus/cm/IMmiCallback;

    sget-object v2, Lcom/asus/cm/CMService$UIAlertResult;->TIMOUT:Lcom/asus/cm/CMService$UIAlertResult;

    invoke-virtual {v2}, Lcom/asus/cm/CMService$UIAlertResult;->ordinal()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/asus/cm/IMmiCallback;->notifyUIAlertDialogResult(IIZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 112
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
