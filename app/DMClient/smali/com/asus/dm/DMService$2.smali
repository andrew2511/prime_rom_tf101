.class Lcom/asus/dm/DMService$2;
.super Landroid/os/Handler;
.source "DMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/DMService;
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
    .line 1007
    iput-object p1, p0, Lcom/asus/dm/DMService$2;->this$0:Lcom/asus/dm/DMService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "pMsg"

    .prologue
    .line 1009
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1011
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1037
    :goto_0
    :pswitch_0
    return-void

    .line 1015
    :pswitch_1
    iget-object v0, p0, Lcom/asus/dm/DMService$2;->this$0:Lcom/asus/dm/DMService;

    iget-object v0, v0, Lcom/asus/dm/DMService;->mDLProgress:Lcom/asus/dm/DMDownloadProgress;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/asus/dm/DMDownloadProgress;->execDownloadProgressCallback(II)V

    goto :goto_0

    .line 1020
    :pswitch_2
    iget-object v0, p0, Lcom/asus/dm/DMService$2;->this$0:Lcom/asus/dm/DMService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "case SHOW_DIALOG of hanldMessage()"

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    iget v0, p1, Landroid/os/Message;->arg1:I

    sget-object v1, Lcom/asus/dm/DMService$DialogId;->CONFIRM_DOWNLOAD:Lcom/asus/dm/DMService$DialogId;

    invoke-virtual {v1}, Lcom/asus/dm/DMService$DialogId;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    sget-object v1, Lcom/asus/dm/DMService$DialogId;->CONFIRM_UPDATE:Lcom/asus/dm/DMService$DialogId;

    invoke-virtual {v1}, Lcom/asus/dm/DMService$DialogId;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/asus/dm/DMService$2;->this$0:Lcom/asus/dm/DMService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/asus/dm/DMService;->showDMDialog(ILcom/asus/dmlib/vdm/MmiObserver;I)V

    goto :goto_0

    .line 1026
    :cond_1
    iget-object v0, p0, Lcom/asus/dm/DMService$2;->this$0:Lcom/asus/dm/DMService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/asus/dm/DMService$2;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v2}, Lcom/asus/dm/DMService;->access$1700(Lcom/asus/dm/DMService;)Lcom/asus/dmlib/vdm/MmiObserver;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/asus/dm/DMService;->showDMDialog(ILcom/asus/dmlib/vdm/MmiObserver;I)V

    goto :goto_0

    .line 1031
    :pswitch_3
    iget-object v0, p0, Lcom/asus/dm/DMService$2;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v0}, Lcom/asus/dm/DMService;->access$1800(Lcom/asus/dm/DMService;)V

    goto :goto_0

    .line 1034
    :pswitch_4
    iget-object v0, p0, Lcom/asus/dm/DMService$2;->this$0:Lcom/asus/dm/DMService;

    invoke-virtual {v0}, Lcom/asus/dm/DMService;->waitAndStopService()V

    goto :goto_0

    .line 1011
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
