.class Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;
.super Ljava/lang/Object;
.source "TwoPaneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/TwoPaneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostCommandConversationState"
.end annotation


# instance fields
.field public final mConversationInfo:Lcom/google/android/gm/ConversationInfo;

.field final synthetic this$0:Lcom/google/android/gm/TwoPaneActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/TwoPaneActivity;Lcom/google/android/gm/ConversationInfo;)V
    .locals 0
    .parameter
    .parameter "info"

    .prologue
    .line 833
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 834
    iput-object p2, p0, Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    .line 835
    return-void
.end method


# virtual methods
.method public applyState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 841
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    if-nez v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    invoke-virtual {v0}, Lcom/google/android/gm/TwoPaneActivity;->rebuildConversationList()V

    .line 852
    :goto_0
    return-void

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    new-instance v1, Lcom/google/android/gm/ConversationPositionTracker;

    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gm/ConversationPositionTracker;-><init>(JI)V

    invoke-static {v0, v1}, Lcom/google/android/gm/TwoPaneActivity;->access$402(Lcom/google/android/gm/TwoPaneActivity;Lcom/google/android/gm/ConversationPositionTracker;)Lcom/google/android/gm/ConversationPositionTracker;

    .line 847
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    invoke-static {v0}, Lcom/google/android/gm/TwoPaneActivity;->access$400(Lcom/google/android/gm/TwoPaneActivity;)Lcom/google/android/gm/ConversationPositionTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    iget-object v1, v1, Lcom/google/android/gm/TwoPaneActivity;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ConversationPositionTracker;->onListDataChanged(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Z

    .line 849
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-static {v0, v1, v5, v5}, Lcom/google/android/gm/TwoPaneActivity;->access$500(Lcom/google/android/gm/TwoPaneActivity;Lcom/google/android/gm/ConversationInfo;ZI)V

    goto :goto_0
.end method
