.class Lcom/asus/cm/CMService$4;
.super Ljava/lang/Object;
.source "CMService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/cm/CMService;->showNIDMDLCDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/cm/CMService;


# direct methods
.method constructor <init>(Lcom/asus/cm/CMService;)V
    .locals 0
    .parameter

    .prologue
    .line 1720
    iput-object p1, p0, Lcom/asus/cm/CMService$4;->this$0:Lcom/asus/cm/CMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1722
    iget-object v1, p0, Lcom/asus/cm/CMService$4;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v1}, Lcom/asus/cm/CMService;->access$700(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMService$RetryBroadcastReceiver;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->access$800(Lcom/asus/cm/CMService$RetryBroadcastReceiver;)V

    .line 1723
    iget-object v1, p0, Lcom/asus/cm/CMService$4;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v1}, Lcom/asus/cm/CMService;->access$500(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/asus/cm/CMCRegistryManager;->setRetryCount(I)V

    .line 1725
    :try_start_0
    iget-object v1, p0, Lcom/asus/cm/CMService$4;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v1}, Lcom/asus/cm/CMService;->access$2400(Lcom/asus/cm/CMService;)Lcom/asus/cm/RBDownloadDescriptor;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "mDD is null"

    :goto_0
    invoke-static {p0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1727
    iget-object v1, p0, Lcom/asus/cm/CMService$4;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v1}, Lcom/asus/cm/CMService;->access$100(Lcom/asus/cm/CMService;)Lcom/asus/dmlib/vdm/VdmEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmEngine;->notifyNIASessionProceed()V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1731
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1732
    return-void

    .line 1725
    :cond_0
    :try_start_1
    const-string v1, "mDD is not null"
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1728
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1729
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_1
.end method
