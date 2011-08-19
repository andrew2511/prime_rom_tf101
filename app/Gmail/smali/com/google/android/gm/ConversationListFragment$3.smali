.class Lcom/google/android/gm/ConversationListFragment$3;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ConversationListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/android/gm/ConversationListFragment$3;->this$0:Lcom/google/android/gm/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment$3;->this$0:Lcom/google/android/gm/ConversationListFragment;

    invoke-static {v0}, Lcom/google/android/gm/ConversationListFragment;->access$500(Lcom/google/android/gm/ConversationListFragment;)Lcom/google/android/gm/UndoOperation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment$3;->this$0:Lcom/google/android/gm/ConversationListFragment;

    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment$3;->this$0:Lcom/google/android/gm/ConversationListFragment;

    invoke-static {v1}, Lcom/google/android/gm/ConversationListFragment;->access$500(Lcom/google/android/gm/ConversationListFragment;)Lcom/google/android/gm/UndoOperation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/ConversationListFragment;->showUndoView(Lcom/google/android/gm/UndoOperation;Z)V

    .line 156
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment$3;->this$0:Lcom/google/android/gm/ConversationListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gm/ConversationListFragment;->access$502(Lcom/google/android/gm/ConversationListFragment;Lcom/google/android/gm/UndoOperation;)Lcom/google/android/gm/UndoOperation;

    .line 158
    :cond_0
    return-void
.end method
