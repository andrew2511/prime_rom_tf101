.class Lcom/nuance/xt9/input/ChineseHandWritingInputView$1;
.super Landroid/os/Handler;
.source "ChineseHandWritingInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/ChineseHandWritingInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/ChineseHandWritingInputView;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/ChineseHandWritingInputView;)V
    .locals 0
    .parameter

    .prologue
    .line 789
    iput-object p1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/xt9/input/ChineseHandWritingInputView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 792
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 846
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 849
    .end local p0
    :goto_0
    return-void

    .line 794
    .restart local p0
    :pswitch_0
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/xt9/input/ChineseHandWritingInputView;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/nuance/xt9/input/WriteRecognizerListener$CharWriteEvent;

    iget-char v5, p0, Lcom/nuance/xt9/input/WriteRecognizerListener$CharWriteEvent;->mChar:C

    invoke-static {v4, v5}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->access$000(Lcom/nuance/xt9/input/ChineseHandWritingInputView;C)V

    goto :goto_0

    .line 798
    .restart local p0
    :pswitch_1
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/xt9/input/ChineseHandWritingInputView;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/nuance/xt9/input/WriteRecognizerListener$TextWriteEvent;

    iget-object v5, p0, Lcom/nuance/xt9/input/WriteRecognizerListener$TextWriteEvent;->mText:Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->access$100(Lcom/nuance/xt9/input/ChineseHandWritingInputView;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 804
    .restart local p0
    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/xt9/input/ChineseHandWritingInputView;

    invoke-static {v4}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->access$200(Lcom/nuance/xt9/input/ChineseHandWritingInputView;)Lcom/nuance/xt9/input/ChineseHandWritingView;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 806
    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/xt9/input/ChineseHandWritingInputView;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/nuance/xt9/input/WriteRecognizerListener$CandidatesWriteEvent;

    iget-object v4, v4, Lcom/nuance/xt9/input/WriteRecognizerListener$CandidatesWriteEvent;->mCandidates:Ljava/util/List;

    invoke-static {v5, v4}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->access$302(Lcom/nuance/xt9/input/ChineseHandWritingInputView;Ljava/util/List;)Ljava/util/List;

    .line 808
    const/4 v1, 0x0

    .line 809
    .local v1, chGesture:C
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/xt9/input/ChineseHandWritingInputView;

    invoke-static {v4}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->access$300(Lcom/nuance/xt9/input/ChineseHandWritingInputView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 810
    .local v2, n:I
    if-ne v2, v7, :cond_1

    .line 811
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/xt9/input/ChineseHandWritingInputView;

    invoke-static {v4}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->access$300(Lcom/nuance/xt9/input/ChineseHandWritingInputView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 812
    .local v3, seq:Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 813
    invoke-interface {v3, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 815
    .local v0, ch:C
    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    const/16 v4, 0xa

    if-eq v0, v4, :cond_0

    const/16 v4, 0xd

    if-eq v0, v4, :cond_0

    const/16 v4, 0x20

    if-eq v0, v4, :cond_0

    const/16 v4, 0x9

    if-ne v0, v4, :cond_1

    .line 816
    :cond_0
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/xt9/input/ChineseHandWritingInputView;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->access$302(Lcom/nuance/xt9/input/ChineseHandWritingInputView;Ljava/util/List;)Ljava/util/List;

    .line 817
    move v1, v0

    .line 832
    .end local v0           #ch:C
    .end local v3           #seq:Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/xt9/input/ChineseHandWritingInputView;

    invoke-static {v4}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->access$400(Lcom/nuance/xt9/input/ChineseHandWritingInputView;)V

    .line 833
    if-eqz v1, :cond_2

    .line 834
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/xt9/input/ChineseHandWritingInputView;

    invoke-static {v4, v1}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->access$000(Lcom/nuance/xt9/input/ChineseHandWritingInputView;C)V

    .line 836
    :cond_2
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/xt9/input/ChineseHandWritingInputView;

    invoke-static {v4}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->access$500(Lcom/nuance/xt9/input/ChineseHandWritingInputView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 838
    .end local v1           #chGesture:C
    .end local v2           #n:I
    :cond_3
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/xt9/input/ChineseHandWritingInputView;

    invoke-static {v4}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->access$600(Lcom/nuance/xt9/input/ChineseHandWritingInputView;)V

    goto/16 :goto_0

    .line 842
    :pswitch_3
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/xt9/input/ChineseHandWritingInputView;

    invoke-static {v4}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->access$700(Lcom/nuance/xt9/input/ChineseHandWritingInputView;)V

    goto/16 :goto_0

    .line 792
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
