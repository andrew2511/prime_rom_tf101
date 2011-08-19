.class Lcom/nuance/xt9/input/AlphaInputView$1;
.super Landroid/os/Handler;
.source "AlphaInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/AlphaInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/AlphaInputView;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/AlphaInputView;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/nuance/xt9/input/AlphaInputView$1;->this$0:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 118
    .end local p0
    :goto_0
    :pswitch_0
    return-void

    .line 91
    .restart local p0
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView$1;->this$0:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaInputView;->hideCandidateView()V

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView$1;->this$0:Lcom/nuance/xt9/input/AlphaInputView;

    iget-object v0, v0, Lcom/nuance/xt9/input/AlphaInputView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView$1;->this$0:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView$1;->this$0:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/AlphaInputView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView$1;->this$0:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-static {v3}, Lcom/nuance/xt9/input/AlphaInputView;->access$000(Lcom/nuance/xt9/input/AlphaInputView;)Lcom/nuance/xt9/input/CandidatesListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/xt9/input/CandidatesListView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v1, v4, v2}, Lcom/nuance/xt9/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    goto :goto_0

    .line 99
    :pswitch_3
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView$1;->this$0:Lcom/nuance/xt9/input/AlphaInputView;

    iget-object v0, v0, Lcom/nuance/xt9/input/AlphaInputView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView$1;->this$0:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView$1;->this$0:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/AlphaInputView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView$1;->this$0:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-static {v3}, Lcom/nuance/xt9/input/AlphaInputView;->access$000(Lcom/nuance/xt9/input/AlphaInputView;)Lcom/nuance/xt9/input/CandidatesListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/xt9/input/CandidatesListView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v1, v4, v2}, Lcom/nuance/xt9/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    goto :goto_0

    .line 103
    :pswitch_4
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView$1;->this$0:Lcom/nuance/xt9/input/AlphaInputView;

    iget-object v0, v0, Lcom/nuance/xt9/input/AlphaInputView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView$1;->this$0:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView$1;->this$0:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/AlphaInputView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView$1;->this$0:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-static {v3}, Lcom/nuance/xt9/input/AlphaInputView;->access$000(Lcom/nuance/xt9/input/AlphaInputView;)Lcom/nuance/xt9/input/CandidatesListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/xt9/input/CandidatesListView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v1, v4, v2}, Lcom/nuance/xt9/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    goto :goto_0

    .line 107
    :pswitch_5
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView$1;->this$0:Lcom/nuance/xt9/input/AlphaInputView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->access$102(Lcom/nuance/xt9/input/AlphaInputView;Z)Z

    goto :goto_0

    .line 111
    :pswitch_6
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView$1;->this$0:Lcom/nuance/xt9/input/AlphaInputView;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/nuance/xt9/input/AlphaInputView$DoubleTapRecaptureMsg;

    invoke-static {v0, p0}, Lcom/nuance/xt9/input/AlphaInputView;->access$200(Lcom/nuance/xt9/input/AlphaInputView;Lcom/nuance/xt9/input/AlphaInputView$DoubleTapRecaptureMsg;)V

    goto/16 :goto_0

    .line 115
    .restart local p0
    :pswitch_7
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView$1;->this$0:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/xt9/input/AlphaInputView;->access$300(Lcom/nuance/xt9/input/AlphaInputView;)V

    goto/16 :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
