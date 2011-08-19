.class Lnet/yostore/aws/view/present/PlayerActivity$5;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/present/PlayerActivity;->showFileContextMenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/present/PlayerActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/present/PlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/present/PlayerActivity$5;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 483
    packed-switch p2, :pswitch_data_0

    .line 514
    :goto_0
    return-void

    .line 503
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 506
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 507
    .local v0, _msg:Landroid/os/Message;
    const/16 v1, 0x8c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 508
    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity$5;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/present/PlayerActivity;->access$8(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 511
    .end local v0           #_msg:Landroid/os/Message;
    :pswitch_1
    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity$5;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/present/PlayerActivity;->access$1(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lnet/yostore/aws/view/present/PlayerActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ecareme/mear/Mear;->shareMusicContent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 483
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
