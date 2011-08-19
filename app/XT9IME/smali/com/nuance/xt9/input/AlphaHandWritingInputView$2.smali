.class Lcom/nuance/xt9/input/AlphaHandWritingInputView$2;
.super Landroid/os/Handler;
.source "AlphaHandWritingInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/AlphaHandWritingInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/AlphaHandWritingInputView;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/AlphaHandWritingInputView;)V
    .locals 0
    .parameter

    .prologue
    .line 664
    iput-object p1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView$2;->this$0:Lcom/nuance/xt9/input/AlphaHandWritingInputView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 668
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 674
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 677
    :goto_0
    return-void

    .line 670
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView$2;->this$0:Lcom/nuance/xt9/input/AlphaHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->access$400(Lcom/nuance/xt9/input/AlphaHandWritingInputView;)V

    goto :goto_0

    .line 668
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
