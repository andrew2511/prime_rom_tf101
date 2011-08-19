.class Lcom/google/android/talk/fragments/ChatScreenFragment$1$2;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Lcom/google/android/common/SwipeySwitcher$ViewRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment$1;->invalidateImSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$1;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1$2;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 606
    move-object v0, p1

    check-cast v0, Lcom/google/android/talk/ChatView;

    move-object v1, v0

    .line 607
    .local v1, cv:Lcom/google/android/talk/ChatView;
    if-eqz v1, :cond_0

    .line 608
    invoke-virtual {v1, v3}, Lcom/google/android/talk/ChatView;->initSession(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 609
    const-string v2, "talk"

    const-string v3, "invalidateImSessions failed. Finish!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1$2;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$1;

    iget-object v2, v2, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$800(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/talk/ActivityUtils;->showLandingPage(Landroid/app/Activity;)V

    .line 611
    const/4 v2, 0x0

    .line 614
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method
