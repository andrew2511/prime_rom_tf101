.class Lcom/nuance/xt9/input/SpellListView$1;
.super Landroid/os/Handler;
.source "SpellListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/SpellListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/SpellListView;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/SpellListView;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/nuance/xt9/input/SpellListView$1;->this$0:Lcom/nuance/xt9/input/SpellListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/16 v1, 0x8

    .line 20
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellListView$1;->this$0:Lcom/nuance/xt9/input/SpellListView;

    iget-object v0, v0, Lcom/nuance/xt9/input/SpellListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 25
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellListView$1;->this$0:Lcom/nuance/xt9/input/SpellListView;

    iget-object v0, v0, Lcom/nuance/xt9/input/SpellListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellListView$1;->this$0:Lcom/nuance/xt9/input/SpellListView;

    iget v0, v0, Lcom/nuance/xt9/input/SpellListView;->mTouchX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/nuance/xt9/input/SpellListView$1;->this$0:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/SpellListView;->removeHighlight()V

    goto :goto_0

    .line 20
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
