.class Lnet/yostore/aws/view/navigate/LibActivity$4;
.super Ljava/lang/Object;
.source "LibActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/LibActivity;->showFileContextMenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/LibActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/LibActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/LibActivity$4;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 608
    packed-switch p2, :pswitch_data_0

    .line 636
    :goto_0
    return-void

    .line 611
    :pswitch_0
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 612
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 613
    .local v0, _msg:Landroid/os/Message;
    const/16 v2, 0x8c

    iput v2, v0, Landroid/os/Message;->what:I

    .line 614
    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity$4;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/navigate/LibActivity;->access$14(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 632
    .end local v0           #_msg:Landroid/os/Message;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 633
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "LibActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 627
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity$4;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/navigate/LibActivity;->access$1(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lnet/yostore/aws/view/navigate/LibActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v3, v3, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ecareme/mear/Mear;->shareMusicContent(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 608
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
