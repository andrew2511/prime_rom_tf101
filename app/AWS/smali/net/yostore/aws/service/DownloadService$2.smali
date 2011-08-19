.class Lnet/yostore/aws/service/DownloadService$2;
.super Landroid/os/Handler;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/service/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/service/DownloadService;


# direct methods
.method constructor <init>(Lnet/yostore/aws/service/DownloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/service/DownloadService$2;->this$0:Lnet/yostore/aws/service/DownloadService;

    .line 841
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 844
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 858
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown message id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :pswitch_0
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService$2;->this$0:Lnet/yostore/aws/service/DownloadService;

    invoke-static {v0}, Lnet/yostore/aws/service/DownloadService;->access$5(Lnet/yostore/aws/service/DownloadService;)V

    .line 860
    .end local p0
    :goto_0
    :pswitch_1
    return-void

    .line 849
    .restart local p0
    :pswitch_2
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService$2;->this$0:Lnet/yostore/aws/service/DownloadService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lnet/yostore/aws/service/DownloadService;->access$6(Lnet/yostore/aws/service/DownloadService;Ljava/lang/String;)V

    goto :goto_0

    .line 852
    .restart local p0
    :pswitch_3
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService$2;->this$0:Lnet/yostore/aws/service/DownloadService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lnet/yostore/aws/service/DownloadService;->access$7(Lnet/yostore/aws/service/DownloadService;I)V

    goto :goto_0

    .line 844
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
