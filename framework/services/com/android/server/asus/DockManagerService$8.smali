.class Lcom/android/server/asus/DockManagerService$8;
.super Ljava/lang/Object;
.source "DockManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/asus/DockManagerService;->createAlertDialog(Lcom/android/server/asus/DockManagerService$FirmwareData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/asus/DockManagerService;

.field final synthetic val$closer:Lcom/android/server/asus/DockManagerService$CloseDialogReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/asus/DockManagerService;Lcom/android/server/asus/DockManagerService$CloseDialogReceiver;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 859
    iput-object p1, p0, Lcom/android/server/asus/DockManagerService$8;->this$0:Lcom/android/server/asus/DockManagerService;

    iput-object p2, p0, Lcom/android/server/asus/DockManagerService$8;->val$closer:Lcom/android/server/asus/DockManagerService$CloseDialogReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 861
    const-string v0, "DockManagerService"

    const-string v1, "createAlertDialog: no"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService$8;->val$closer:Lcom/android/server/asus/DockManagerService$CloseDialogReceiver;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/asus/DockManagerService$CloseDialogReceiver;->check:Z

    .line 864
    return-void
.end method
