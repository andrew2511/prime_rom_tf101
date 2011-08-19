.class Lcom/nuance/xt9/input/IME$9;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/xt9/input/IME;->showKeyboardLayoutOption()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/IME;

.field final synthetic val$listAdapter:Lcom/nuance/xt9/input/KeyboardLayoutListAdapter;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/IME;Lcom/nuance/xt9/input/KeyboardLayoutListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1894
    iput-object p1, p0, Lcom/nuance/xt9/input/IME$9;->this$0:Lcom/nuance/xt9/input/IME;

    iput-object p2, p0, Lcom/nuance/xt9/input/IME$9;->val$listAdapter:Lcom/nuance/xt9/input/KeyboardLayoutListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "di"
    .parameter "position"

    .prologue
    const/16 v4, 0x65

    .line 1897
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1898
    iget-object v2, p0, Lcom/nuance/xt9/input/IME$9;->val$listAdapter:Lcom/nuance/xt9/input/KeyboardLayoutListAdapter;

    invoke-virtual {v2, p2}, Lcom/nuance/xt9/input/KeyboardLayoutListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1899
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1900
    .local v0, obj:Ljava/lang/Object;
    instance-of v2, v0, Lcom/nuance/xt9/input/InputMethods$Layout;

    if-eqz v2, :cond_0

    .line 1901
    check-cast v0, Lcom/nuance/xt9/input/InputMethods$Layout;

    .end local v0           #obj:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$Layout;->saveAsCurrent()V

    .line 1906
    iget-object v2, p0, Lcom/nuance/xt9/input/IME$9;->this$0:Lcom/nuance/xt9/input/IME;

    invoke-static {v2}, Lcom/nuance/xt9/input/IME;->access$500(Lcom/nuance/xt9/input/IME;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/xt9/input/IME$9;->this$0:Lcom/nuance/xt9/input/IME;

    invoke-static {v3}, Lcom/nuance/xt9/input/IME;->access$400(Lcom/nuance/xt9/input/IME;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputView;->finishInput()V

    .line 1907
    iget-object v2, p0, Lcom/nuance/xt9/input/IME$9;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v2, v2, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1908
    iget-object v2, p0, Lcom/nuance/xt9/input/IME$9;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v2, v2, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nuance/xt9/input/IME$9;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v3, v3, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1913
    :goto_0
    return-void

    .line 1911
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NOT a valid keyboard layout"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
