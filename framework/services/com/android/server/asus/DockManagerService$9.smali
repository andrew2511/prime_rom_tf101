.class Lcom/android/server/asus/DockManagerService$9;
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

.field final synthetic val$fw:Lcom/android/server/asus/DockManagerService$FirmwareData;


# direct methods
.method constructor <init>(Lcom/android/server/asus/DockManagerService;Lcom/android/server/asus/DockManagerService$FirmwareData;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 853
    iput-object p1, p0, Lcom/android/server/asus/DockManagerService$9;->this$0:Lcom/android/server/asus/DockManagerService;

    iput-object p2, p0, Lcom/android/server/asus/DockManagerService$9;->val$fw:Lcom/android/server/asus/DockManagerService$FirmwareData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 855
    const-string v0, "DockManagerService"

    const-string v1, "createAlertDialog: yes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService$9;->this$0:Lcom/android/server/asus/DockManagerService;

    iget-object v1, p0, Lcom/android/server/asus/DockManagerService$9;->val$fw:Lcom/android/server/asus/DockManagerService$FirmwareData;

    #calls: Lcom/android/server/asus/DockManagerService;->beginUpdateFirmware(Lcom/android/server/asus/DockManagerService$FirmwareData;)V
    invoke-static {v0, v1}, Lcom/android/server/asus/DockManagerService;->access$1800(Lcom/android/server/asus/DockManagerService;Lcom/android/server/asus/DockManagerService$FirmwareData;)V

    .line 857
    return-void
.end method
