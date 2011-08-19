.class Lcom/asus/cm/CMService$2;
.super Landroid/os/Handler;
.source "CMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/CMService;
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
    .line 1064
    iput-object p1, p0, Lcom/asus/cm/CMService$2;->this$0:Lcom/asus/cm/CMService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "pMsg"

    .prologue
    .line 1066
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1068
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1109
    :goto_0
    :pswitch_0
    return-void

    .line 1072
    :pswitch_1
    iget-object v0, p0, Lcom/asus/cm/CMService$2;->this$0:Lcom/asus/cm/CMService;

    iget-object v0, v0, Lcom/asus/cm/CMService;->mDLProgress:Lcom/asus/cm/CMDownloadProgress;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/asus/cm/CMDownloadProgress;->execDownloadProgressCallback(II)V

    goto :goto_0

    .line 1077
    :pswitch_2
    iget-object v0, p0, Lcom/asus/cm/CMService$2;->this$0:Lcom/asus/cm/CMService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "case SHOW_DIALOG of hanldMessage()"

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    iget v0, p1, Landroid/os/Message;->arg1:I

    sget-object v1, Lcom/asus/cm/CMService$DialogId;->CONFIRM_DOWNLOAD:Lcom/asus/cm/CMService$DialogId;

    invoke-virtual {v1}, Lcom/asus/cm/CMService$DialogId;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    sget-object v1, Lcom/asus/cm/CMService$DialogId;->CONFIRM_UPDATE:Lcom/asus/cm/CMService$DialogId;

    invoke-virtual {v1}, Lcom/asus/cm/CMService$DialogId;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/asus/cm/CMService$2;->this$0:Lcom/asus/cm/CMService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/asus/cm/CMService;->showDMDialog(ILcom/asus/dmlib/vdm/MmiObserver;I)V

    goto :goto_0

    .line 1083
    :cond_1
    iget-object v0, p0, Lcom/asus/cm/CMService$2;->this$0:Lcom/asus/cm/CMService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/asus/cm/CMService$2;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v2}, Lcom/asus/cm/CMService;->access$1800(Lcom/asus/cm/CMService;)Lcom/asus/dmlib/vdm/MmiObserver;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/asus/cm/CMService;->showDMDialog(ILcom/asus/dmlib/vdm/MmiObserver;I)V

    goto :goto_0

    .line 1088
    :pswitch_3
    iget-object v0, p0, Lcom/asus/cm/CMService$2;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v0}, Lcom/asus/cm/CMService;->access$1900(Lcom/asus/cm/CMService;)V

    goto :goto_0

    .line 1092
    :pswitch_4
    iget-object v0, p0, Lcom/asus/cm/CMService$2;->this$0:Lcom/asus/cm/CMService;

    invoke-virtual {v0}, Lcom/asus/cm/CMService;->waitAndStopService()V

    goto :goto_0

    .line 1096
    :pswitch_5
    iget-object v0, p0, Lcom/asus/cm/CMService$2;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v0}, Lcom/asus/cm/CMService;->access$2000(Lcom/asus/cm/CMService;)V

    goto :goto_0

    .line 1100
    :pswitch_6
    iget-object v0, p0, Lcom/asus/cm/CMService$2;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v0}, Lcom/asus/cm/CMService;->access$2100(Lcom/asus/cm/CMService;)V

    goto :goto_0

    .line 1106
    :pswitch_7
    iget-object v0, p0, Lcom/asus/cm/CMService$2;->this$0:Lcom/asus/cm/CMService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/asus/cm/CMService;->ringStatus(Z)V

    goto :goto_0

    .line 1068
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
