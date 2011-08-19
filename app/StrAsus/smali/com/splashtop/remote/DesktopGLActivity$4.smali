.class Lcom/splashtop/remote/DesktopGLActivity$4;
.super Ljava/util/TimerTask;
.source "DesktopGLActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/splashtop/remote/DesktopGLActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 186
    iput-object p1, p0, Lcom/splashtop/remote/DesktopGLActivity$4;->this$0:Lcom/splashtop/remote/DesktopGLActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity$4;->this$0:Lcom/splashtop/remote/DesktopGLActivity;

    iget-object v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/splashtop/remote/DesktopGLActivity$4;->this$0:Lcom/splashtop/remote/DesktopGLActivity;

    iget-object v1, v1, Lcom/splashtop/remote/DesktopGLActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 190
    return-void
.end method
