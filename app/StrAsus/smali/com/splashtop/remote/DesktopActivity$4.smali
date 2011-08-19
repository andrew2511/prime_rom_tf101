.class Lcom/splashtop/remote/DesktopActivity$4;
.super Ljava/util/TimerTask;
.source "DesktopActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/splashtop/remote/DesktopActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 196
    iput-object p1, p0, Lcom/splashtop/remote/DesktopActivity$4;->this$0:Lcom/splashtop/remote/DesktopActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/splashtop/remote/DesktopActivity$4;->this$0:Lcom/splashtop/remote/DesktopActivity;

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/splashtop/remote/DesktopActivity$4;->this$0:Lcom/splashtop/remote/DesktopActivity;

    iget-object v1, v1, Lcom/splashtop/remote/DesktopActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 200
    return-void
.end method
