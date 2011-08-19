.class Lcom/asus/dm/DMService$3;
.super Ljava/lang/Object;
.source "DMService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/dm/DMService;->showNIDMDLCDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dm/DMService;


# direct methods
.method constructor <init>(Lcom/asus/dm/DMService;)V
    .locals 0
    .parameter

    .prologue
    .line 1537
    iput-object p1, p0, Lcom/asus/dm/DMService$3;->this$0:Lcom/asus/dm/DMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1539
    iget-object v1, p0, Lcom/asus/dm/DMService$3;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v1}, Lcom/asus/dm/DMService;->access$700(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMService$RetryBroadcastReceiver;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->access$800(Lcom/asus/dm/DMService$RetryBroadcastReceiver;)V

    .line 1540
    iget-object v1, p0, Lcom/asus/dm/DMService$3;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v1}, Lcom/asus/dm/DMService;->access$500(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/asus/dm/DMCRegistryManager;->setRetryCount(I)V

    .line 1542
    :try_start_0
    iget-object v1, p0, Lcom/asus/dm/DMService$3;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v1}, Lcom/asus/dm/DMService;->access$1900(Lcom/asus/dm/DMService;)Lcom/asus/dm/RBDownloadDescriptor;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "mDD is null"

    :goto_0
    invoke-static {p0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1544
    iget-object v1, p0, Lcom/asus/dm/DMService$3;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v1}, Lcom/asus/dm/DMService;->access$100(Lcom/asus/dm/DMService;)Lcom/asus/dmlib/vdm/VdmEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmEngine;->notifyNIASessionProceed()V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1548
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1549
    return-void

    .line 1542
    :cond_0
    :try_start_1
    const-string v1, "mDD is not null"
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1545
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1546
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_1
.end method
