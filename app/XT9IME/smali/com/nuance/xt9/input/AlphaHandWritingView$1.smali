.class Lcom/nuance/xt9/input/AlphaHandWritingView$1;
.super Landroid/os/Handler;
.source "AlphaHandWritingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/AlphaHandWritingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/AlphaHandWritingView;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/AlphaHandWritingView;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$1;->this$0:Lcom/nuance/xt9/input/AlphaHandWritingView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 82
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 84
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$1;->this$0:Lcom/nuance/xt9/input/AlphaHandWritingView;

    invoke-static {v0}, Lcom/nuance/xt9/input/AlphaHandWritingView;->access$000(Lcom/nuance/xt9/input/AlphaHandWritingView;)V

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
