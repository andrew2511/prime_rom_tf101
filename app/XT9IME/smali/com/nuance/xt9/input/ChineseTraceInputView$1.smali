.class Lcom/nuance/xt9/input/ChineseTraceInputView$1;
.super Landroid/os/Handler;
.source "ChineseTraceInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/ChineseTraceInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/ChineseTraceInputView;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/ChineseTraceInputView;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView$1;->this$0:Lcom/nuance/xt9/input/ChineseTraceInputView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 67
    :goto_0
    :pswitch_0
    return-void

    .line 54
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView$1;->this$0:Lcom/nuance/xt9/input/ChineseTraceInputView;

    invoke-static {v0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->access$000(Lcom/nuance/xt9/input/ChineseTraceInputView;)V

    goto :goto_0

    .line 60
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView$1;->this$0:Lcom/nuance/xt9/input/ChineseTraceInputView;

    invoke-static {v0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->access$100(Lcom/nuance/xt9/input/ChineseTraceInputView;)V

    goto :goto_0

    .line 63
    :pswitch_3
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView$1;->this$0:Lcom/nuance/xt9/input/ChineseTraceInputView;

    invoke-static {v0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->access$200(Lcom/nuance/xt9/input/ChineseTraceInputView;)Z

    .line 64
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView$1;->this$0:Lcom/nuance/xt9/input/ChineseTraceInputView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/ChineseTraceInputView;->access$300(Lcom/nuance/xt9/input/ChineseTraceInputView;ZZ)V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
