.class Lcom/nuance/xt9/input/CandidatesListView$1;
.super Landroid/os/Handler;
.source "CandidatesListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/CandidatesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/CandidatesListView;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/CandidatesListView;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/nuance/xt9/input/CandidatesListView$1;->this$0:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/16 v1, 0x8

    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView$1;->this$0:Lcom/nuance/xt9/input/CandidatesListView;

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView$1;->this$0:Lcom/nuance/xt9/input/CandidatesListView;

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView$1;->this$0:Lcom/nuance/xt9/input/CandidatesListView;

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mTouchX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView$1;->this$0:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/CandidatesListView;->removeHighlight()V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
