.class Lcom/nuance/xt9/input/IME$5;
.super Landroid/content/BroadcastReceiver;
.source "IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/IME;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/IME;)V
    .locals 0
    .parameter

    .prologue
    .line 1672
    iput-object p1, p0, Lcom/nuance/xt9/input/IME$5;->this$0:Lcom/nuance/xt9/input/IME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1675
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1677
    iget-object v3, p0, Lcom/nuance/xt9/input/IME$5;->this$0:Lcom/nuance/xt9/input/IME;

    invoke-static {v3}, Lcom/nuance/xt9/input/IME;->access$000(Lcom/nuance/xt9/input/IME;)V

    .line 1701
    :cond_0
    :goto_0
    return-void

    .line 1679
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1681
    iget-object v3, p0, Lcom/nuance/xt9/input/IME$5;->this$0:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/IME;->onDestroy()V

    goto :goto_0

    .line 1684
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "asus.com.xt9.input.symbol_table_action"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1685
    const-string v3, "symbol_table_text"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1686
    .local v2, text:Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/xt9/input/IME$5;->this$0:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1687
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 1688
    iget-object v3, p0, Lcom/nuance/xt9/input/IME$5;->this$0:Lcom/nuance/xt9/input/IME;

    invoke-static {v3}, Lcom/nuance/xt9/input/IME;->access$100(Lcom/nuance/xt9/input/IME;)Lcom/nuance/xt9/input/InputView;

    move-result-object v1

    .line 1689
    .local v1, inputView:Lcom/nuance/xt9/input/InputView;
    if-eqz v1, :cond_3

    instance-of v3, v1, Lcom/nuance/xt9/input/ChineseInputView;

    if-eqz v3, :cond_3

    .line 1690
    check-cast v1, Lcom/nuance/xt9/input/ChineseInputView;

    .end local v1           #inputView:Lcom/nuance/xt9/input/InputView;
    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseInputView;->clearBPMFSpellBuffer()V

    .line 1693
    :cond_3
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1694
    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1695
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 1697
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v2           #text:Ljava/lang/String;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "asus.com.xt9.input.toggle_fullscreen_action"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1698
    iget-object v3, p0, Lcom/nuance/xt9/input/IME$5;->this$0:Lcom/nuance/xt9/input/IME;

    invoke-static {v3}, Lcom/nuance/xt9/input/IME;->access$200(Lcom/nuance/xt9/input/IME;)V

    goto :goto_0
.end method
