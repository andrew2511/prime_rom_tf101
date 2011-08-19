.class Lcom/nuance/xt9/input/KeyboardViewEx$1;
.super Landroid/os/Handler;
.source "KeyboardViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/KeyboardViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/KeyboardViewEx;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/KeyboardViewEx;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/nuance/xt9/input/KeyboardViewEx$1;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const-wide/16 v5, 0x19

    const/16 v2, 0x3eb

    const/16 v3, 0x32

    const/16 v4, 0x401

    .line 295
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 353
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 298
    .restart local p0
    :sswitch_0
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx$1;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/nuance/xt9/input/KeyboardViewEx;->access$000(Lcom/nuance/xt9/input/KeyboardViewEx;I)V

    goto :goto_0

    .line 302
    :sswitch_1
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx$1;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-static {v1}, Lcom/nuance/xt9/input/KeyboardViewEx;->access$100(Lcom/nuance/xt9/input/KeyboardViewEx;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 306
    :sswitch_2
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx$1;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-static {v1}, Lcom/nuance/xt9/input/KeyboardViewEx;->access$200(Lcom/nuance/xt9/input/KeyboardViewEx;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx$1;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    iget-object v1, v1, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 309
    .local v0, repeat:Landroid/os/Message;
    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/xt9/input/KeyboardViewEx$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 315
    .end local v0           #repeat:Landroid/os/Message;
    :sswitch_3
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx$1;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/MotionEvent;

    invoke-static {v1, p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->access$300(Lcom/nuance/xt9/input/KeyboardViewEx;Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 320
    .restart local p0
    :sswitch_4
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx$1;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/KeyboardViewEx;->multitapTimeOut()V

    goto :goto_0

    .line 324
    :sswitch_5
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx$1;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-static {v1}, Lcom/nuance/xt9/input/KeyboardViewEx;->access$400(Lcom/nuance/xt9/input/KeyboardViewEx;)Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx$1;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-static {v1}, Lcom/nuance/xt9/input/KeyboardViewEx;->access$400(Lcom/nuance/xt9/input/KeyboardViewEx;)Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx$1;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    iget-object v2, v2, Lcom/nuance/xt9/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->onTrace(Ljava/util/ArrayList;)V

    .line 327
    :cond_1
    const-string v1, "XT9IME.KeyboardViewEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trace Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx$1;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    iget-object v3, v3, Lcom/nuance/xt9/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx$1;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/nuance/xt9/input/KeyboardViewEx;->m_bRepaintTrace:Z

    .line 332
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx$1;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    iget-object v1, v1, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 333
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx$1;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    iget-object v1, v1, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 337
    :sswitch_6
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx$1;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    iget-object v1, v1, Lcom/nuance/xt9/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx$1;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    iget v1, v1, Lcom/nuance/xt9/input/KeyboardViewEx;->m_iFading:I

    sub-int/2addr v1, v3

    if-gtz v1, :cond_2

    .line 341
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx$1;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-static {v1}, Lcom/nuance/xt9/input/KeyboardViewEx;->access$500(Lcom/nuance/xt9/input/KeyboardViewEx;)V

    .line 342
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx$1;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/KeyboardViewEx;->invalidate()V

    goto/16 :goto_0

    .line 346
    :cond_2
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx$1;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    iget v2, v1, Lcom/nuance/xt9/input/KeyboardViewEx;->m_iFading:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/nuance/xt9/input/KeyboardViewEx;->m_iFading:I

    .line 348
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx$1;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    iget-object v1, v1, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 349
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx$1;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/KeyboardViewEx;->invalidate()V

    goto/16 :goto_0

    .line 295
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_1
        0x3eb -> :sswitch_2
        0x3ec -> :sswitch_3
        0x3ed -> :sswitch_4
        0x400 -> :sswitch_5
        0x401 -> :sswitch_6
    .end sparse-switch
.end method
