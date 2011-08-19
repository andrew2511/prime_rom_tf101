.class Lcom/splashtop/remote/DesktopGLActivity$1;
.super Landroid/os/Handler;
.source "DesktopGLActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/DesktopGLActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/DesktopGLActivity;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/DesktopGLActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/splashtop/remote/DesktopGLActivity$1;->this$0:Lcom/splashtop/remote/DesktopGLActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 71
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v1, p0, Lcom/splashtop/remote/DesktopGLActivity$1;->this$0:Lcom/splashtop/remote/DesktopGLActivity;

    invoke-static {v1}, Lcom/splashtop/remote/DesktopGLActivity;->access$000(Lcom/splashtop/remote/DesktopGLActivity;)Lcom/splashtop/remote/DesktopGLView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/splashtop/remote/DesktopGLActivity$1;->this$0:Lcom/splashtop/remote/DesktopGLActivity;

    invoke-static {v1}, Lcom/splashtop/remote/DesktopGLActivity;->access$000(Lcom/splashtop/remote/DesktopGLActivity;)Lcom/splashtop/remote/DesktopGLView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/splashtop/remote/DesktopGLView;->setIgnoreNativeClose(Z)V

    .line 76
    :cond_0
    new-instance v1, Lcom/splashtop/remote/dialog/SimpleAlertDialog;

    iget-object v2, p0, Lcom/splashtop/remote/DesktopGLActivity$1;->this$0:Lcom/splashtop/remote/DesktopGLActivity;

    iget-object v3, p0, Lcom/splashtop/remote/DesktopGLActivity$1;->this$0:Lcom/splashtop/remote/DesktopGLActivity;

    const/4 v4, -0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;I)V

    invoke-virtual {v1}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->show()V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v1, p0, Lcom/splashtop/remote/DesktopGLActivity$1;->this$0:Lcom/splashtop/remote/DesktopGLActivity;

    invoke-static {v1}, Lcom/splashtop/remote/DesktopGLActivity;->access$000(Lcom/splashtop/remote/DesktopGLActivity;)Lcom/splashtop/remote/DesktopGLView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/splashtop/remote/DesktopGLView;->getFrameCount()I

    move-result v0

    .line 81
    .local v0, frameCount:I
    iget-object v1, p0, Lcom/splashtop/remote/DesktopGLActivity$1;->this$0:Lcom/splashtop/remote/DesktopGLActivity;

    invoke-static {v1}, Lcom/splashtop/remote/DesktopGLActivity;->access$100(Lcom/splashtop/remote/DesktopGLActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/splashtop/remote/DesktopGLActivity$1;->this$0:Lcom/splashtop/remote/DesktopGLActivity;

    invoke-static {v1}, Lcom/splashtop/remote/DesktopGLActivity;->access$100(Lcom/splashtop/remote/DesktopGLActivity;)Landroid/widget/TextView;

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

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/splashtop/remote/DesktopGLActivity$1;->this$0:Lcom/splashtop/remote/DesktopGLActivity;

    invoke-static {v1}, Lcom/splashtop/remote/DesktopGLActivity;->access$000(Lcom/splashtop/remote/DesktopGLActivity;)Lcom/splashtop/remote/DesktopGLView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/splashtop/remote/DesktopGLView;->resetFrameCount()V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
