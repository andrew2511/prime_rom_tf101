.class Lcom/google/android/gm/ConversationListFragment$7;
.super Landroid/os/AsyncTask;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/ConversationListFragment;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/ConversationListFragment;

.field final synthetic val$activityHasFocus:Z

.field final synthetic val$conversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ConversationListFragment;ZLcom/google/android/gm/provider/Gmail$ConversationCursor;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/google/android/gm/ConversationListFragment$7;->this$0:Lcom/google/android/gm/ConversationListFragment;

    iput-boolean p2, p0, Lcom/google/android/gm/ConversationListFragment$7;->val$activityHasFocus:Z

    iput-object p3, p0, Lcom/google/android/gm/ConversationListFragment$7;->val$conversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 500
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/ConversationListFragment$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 507
    iget-boolean v1, p0, Lcom/google/android/gm/ConversationListFragment$7;->val$activityHasFocus:Z

    if-eqz v1, :cond_0

    .line 508
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment$7;->this$0:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 509
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 512
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment$7;->this$0:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment$7;->this$0:Lcom/google/android/gm/ConversationListFragment;

    invoke-static {v2}, Lcom/google/android/gm/ConversationListFragment;->access$1000(Lcom/google/android/gm/ConversationListFragment;)Lcom/google/android/gm/ConversationListContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gm/Utils;->cancelNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 517
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment$7;->val$conversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    if-eqz v1, :cond_1

    .line 518
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment$7;->val$conversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    iget-boolean v2, p0, Lcom/google/android/gm/ConversationListFragment$7;->val$activityHasFocus:Z

    invoke-virtual {v1, v2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->setContentsVisibleToUser(Z)V

    .line 519
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
