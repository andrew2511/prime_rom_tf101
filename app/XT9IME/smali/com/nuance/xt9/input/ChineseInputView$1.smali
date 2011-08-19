.class Lcom/nuance/xt9/input/ChineseInputView$1;
.super Landroid/os/Handler;
.source "ChineseInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/ChineseInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/ChineseInputView;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/ChineseInputView;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/nuance/xt9/input/ChineseInputView$1;->this$0:Lcom/nuance/xt9/input/ChineseInputView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_0
    :pswitch_0
    return-void

    .line 81
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView$1;->this$0:Lcom/nuance/xt9/input/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/xt9/input/ChineseInputView;->access$000(Lcom/nuance/xt9/input/ChineseInputView;)V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView$1;->this$0:Lcom/nuance/xt9/input/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/xt9/input/ChineseInputView;->access$100(Lcom/nuance/xt9/input/ChineseInputView;)V

    goto :goto_0

    .line 87
    :pswitch_3
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView$1;->this$0:Lcom/nuance/xt9/input/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/xt9/input/ChineseInputView;->access$200(Lcom/nuance/xt9/input/ChineseInputView;)V

    goto :goto_0

    .line 90
    :pswitch_4
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView$1;->this$0:Lcom/nuance/xt9/input/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/xt9/input/ChineseInputView;->access$300(Lcom/nuance/xt9/input/ChineseInputView;)Z

    .line 91
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView$1;->this$0:Lcom/nuance/xt9/input/ChineseInputView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/ChineseInputView;->access$400(Lcom/nuance/xt9/input/ChineseInputView;ZZ)V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
