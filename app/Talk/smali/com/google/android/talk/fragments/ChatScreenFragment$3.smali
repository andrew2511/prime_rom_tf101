.class Lcom/google/android/talk/fragments/ChatScreenFragment$3;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;->makeObserver()Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 885
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$3;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRevealChange(FZ)V
    .locals 5
    .parameter "percentRevealed"
    .parameter "commit"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 911
    cmpl-float v0, p1, v3

    if-eqz v0, :cond_1

    .line 912
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$3;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1900(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$3;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1900(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 914
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$3;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1900(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$3;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2500(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 915
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$3;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2500(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 916
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$3;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2500(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$3;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2200(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    .line 920
    :cond_1
    if-eqz p2, :cond_3

    .line 921
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$3;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$3;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2600(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    move-result-object v1

    cmpl-float v2, p1, v3

    if-lez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1, v2}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->getSelectedChatViewAdjacent(Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->updateTitle(Landroid/view/View;)V

    .line 925
    :goto_1
    return-void

    :cond_2
    move v2, v4

    .line 921
    goto :goto_0

    .line 923
    :cond_3
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$3;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$3;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1100(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/ChatView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->updateTitle(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onSelection(Landroid/content/Intent;)V
    .locals 2
    .parameter "selectedIntent"

    .prologue
    .line 889
    if-nez p1, :cond_0

    .line 899
    :goto_0
    return-void

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$3;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2200(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    .line 893
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$3;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$800(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 897
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$3;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    const-string v1, "from"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1202(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public onStopReveal()V
    .locals 4

    .prologue
    .line 906
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$3;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2400(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$3;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2300(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 907
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$3;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2400(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$3;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2300(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 908
    return-void
.end method
