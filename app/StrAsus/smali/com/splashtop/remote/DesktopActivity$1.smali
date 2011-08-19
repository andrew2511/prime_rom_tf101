.class Lcom/splashtop/remote/DesktopActivity$1;
.super Landroid/os/Handler;
.source "DesktopActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/DesktopActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/DesktopActivity;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/DesktopActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/splashtop/remote/DesktopActivity$1;->this$0:Lcom/splashtop/remote/DesktopActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 78
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v1, p0, Lcom/splashtop/remote/DesktopActivity$1;->this$0:Lcom/splashtop/remote/DesktopActivity;

    invoke-static {v1}, Lcom/splashtop/remote/DesktopActivity;->access$000(Lcom/splashtop/remote/DesktopActivity;)Lcom/splashtop/remote/DesktopView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/splashtop/remote/DesktopActivity$1;->this$0:Lcom/splashtop/remote/DesktopActivity;

    invoke-static {v1}, Lcom/splashtop/remote/DesktopActivity;->access$000(Lcom/splashtop/remote/DesktopActivity;)Lcom/splashtop/remote/DesktopView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/splashtop/remote/DesktopView;->setIgnoreNativeClose(Z)V

    .line 83
    :cond_0
    new-instance v1, Lcom/splashtop/remote/dialog/SimpleAlertDialog;

    iget-object v2, p0, Lcom/splashtop/remote/DesktopActivity$1;->this$0:Lcom/splashtop/remote/DesktopActivity;

    iget-object v3, p0, Lcom/splashtop/remote/DesktopActivity$1;->this$0:Lcom/splashtop/remote/DesktopActivity;

    const/4 v4, -0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;I)V

    invoke-virtual {v1}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->show()V

    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v1, p0, Lcom/splashtop/remote/DesktopActivity$1;->this$0:Lcom/splashtop/remote/DesktopActivity;

    invoke-static {v1}, Lcom/splashtop/remote/DesktopActivity;->access$000(Lcom/splashtop/remote/DesktopActivity;)Lcom/splashtop/remote/DesktopView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/splashtop/remote/DesktopView;->getFrameCount()I

    move-result v0

    .line 87
    .local v0, frameCount:I
    iget-object v1, p0, Lcom/splashtop/remote/DesktopActivity$1;->this$0:Lcom/splashtop/remote/DesktopActivity;

    invoke-static {v1}, Lcom/splashtop/remote/DesktopActivity;->access$100(Lcom/splashtop/remote/DesktopActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/splashtop/remote/DesktopActivity$1;->this$0:Lcom/splashtop/remote/DesktopActivity;

    invoke-static {v1}, Lcom/splashtop/remote/DesktopActivity;->access$100(Lcom/splashtop/remote/DesktopActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "FPS:%d"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/splashtop/remote/DesktopActivity$1;->this$0:Lcom/splashtop/remote/DesktopActivity;

    invoke-static {v1}, Lcom/splashtop/remote/DesktopActivity;->access$000(Lcom/splashtop/remote/DesktopActivity;)Lcom/splashtop/remote/DesktopView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/splashtop/remote/DesktopView;->resetFrameCount()V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
