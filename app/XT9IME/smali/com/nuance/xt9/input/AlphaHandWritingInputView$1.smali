.class Lcom/nuance/xt9/input/AlphaHandWritingInputView$1;
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
    .line 632
    iput-object p1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/xt9/input/AlphaHandWritingInputView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 635
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 654
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 657
    .end local p0
    :goto_0
    return-void

    .line 638
    .restart local p0
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/xt9/input/AlphaHandWritingInputView;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/nuance/xt9/input/WriteRecognizerListener$CandidatesWriteEvent;

    iget-object v1, p0, Lcom/nuance/xt9/input/WriteRecognizerListener$CandidatesWriteEvent;->mCandidates:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->access$000(Lcom/nuance/xt9/input/AlphaHandWritingInputView;Ljava/util/List;)V

    goto :goto_0

    .line 642
    .restart local p0
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/xt9/input/AlphaHandWritingInputView;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/nuance/xt9/input/WriteRecognizerListener$CharWriteEvent;

    iget-char v1, p0, Lcom/nuance/xt9/input/WriteRecognizerListener$CharWriteEvent;->mChar:C

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->access$100(Lcom/nuance/xt9/input/AlphaHandWritingInputView;C)V

    goto :goto_0

    .line 646
    .restart local p0
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/xt9/input/AlphaHandWritingInputView;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/nuance/xt9/input/WriteRecognizerListener$TextWriteEvent;

    iget-object v1, p0, Lcom/nuance/xt9/input/WriteRecognizerListener$TextWriteEvent;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->access$200(Lcom/nuance/xt9/input/AlphaHandWritingInputView;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 650
    .restart local p0
    :pswitch_3
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/xt9/input/AlphaHandWritingInputView;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/nuance/xt9/input/WriteRecognizerListener$InstantGestureWriteEvent;

    iget-char v1, p0, Lcom/nuance/xt9/input/WriteRecognizerListener$InstantGestureWriteEvent;->mGestureChar:C

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/nuance/xt9/input/WriteRecognizerListener$InstantGestureWriteEvent;

    iget-object v2, p0, Lcom/nuance/xt9/input/WriteRecognizerListener$InstantGestureWriteEvent;->mCandidates:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->access$300(Lcom/nuance/xt9/input/AlphaHandWritingInputView;CLjava/util/List;)V

    goto :goto_0

    .line 635
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
