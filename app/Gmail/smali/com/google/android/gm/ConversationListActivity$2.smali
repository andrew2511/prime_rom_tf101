.class Lcom/google/android/gm/ConversationListActivity$2;
.super Landroid/database/DataSetObserver;
.source "ConversationListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/ConversationListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/ConversationListActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ConversationListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/gm/ConversationListActivity$2;->this$0:Lcom/google/android/gm/ConversationListActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity$2;->this$0:Lcom/google/android/gm/ConversationListActivity;

    invoke-static {v0}, Lcom/google/android/gm/ConversationListActivity;->access$100(Lcom/google/android/gm/ConversationListActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ConversationListActivity$2;->this$0:Lcom/google/android/gm/ConversationListActivity;

    invoke-static {v1}, Lcom/google/android/gm/ConversationListActivity;->access$100(Lcom/google/android/gm/ConversationListActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 78
    return-void
.end method
