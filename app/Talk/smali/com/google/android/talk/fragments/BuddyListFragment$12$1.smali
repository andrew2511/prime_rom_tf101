.class Lcom/google/android/talk/fragments/BuddyListFragment$12$1;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment$12;->onCallStateUpdate(Ljava/lang/String;Lcom/google/android/talk/videochat/CallState;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/BuddyListFragment$12;

.field final synthetic val$callState:Lcom/google/android/talk/videochat/CallState;

.field final synthetic val$remoteBareJid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment$12;Lcom/google/android/talk/videochat/CallState;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1720
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$12$1;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$12;

    iput-object p2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$12$1;->val$callState:Lcom/google/android/talk/videochat/CallState;

    iput-object p3, p0, Lcom/google/android/talk/fragments/BuddyListFragment$12$1;->val$remoteBareJid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1723
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$12$1;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$12;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment$12;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$700(Lcom/google/android/talk/fragments/BuddyListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1724
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$12$1;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$12;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment$12;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$12$1;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$12;

    iget-object v2, v2, Lcom/google/android/talk/fragments/BuddyListFragment$12;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$700(Lcom/google/android/talk/fragments/BuddyListFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1725
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$12$1;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$12;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment$12;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$702(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1728
    :cond_0
    new-instance v0, Lcom/google/android/talk/RosterListAdapter$CallState;

    invoke-direct {v0}, Lcom/google/android/talk/RosterListAdapter$CallState;-><init>()V

    .line 1729
    .local v0, rosterCallState:Lcom/google/android/talk/RosterListAdapter$CallState;
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$12$1;->val$callState:Lcom/google/android/talk/videochat/CallState;

    iget v1, v1, Lcom/google/android/talk/videochat/CallState;->libjingleCallState:I

    packed-switch v1, :pswitch_data_0

    .line 1754
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$12$1;->val$callState:Lcom/google/android/talk/videochat/CallState;

    iget-boolean v1, v1, Lcom/google/android/talk/videochat/CallState;->video:Z

    iput-boolean v1, v0, Lcom/google/android/talk/RosterListAdapter$CallState;->mIsVideo:Z

    .line 1755
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$12$1;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$12;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment$12;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v1, v0}, Lcom/google/android/talk/IRosterListAdapter;->setActiveCallState(Lcom/google/android/talk/RosterListAdapter$CallState;)V

    .line 1756
    return-void

    .line 1732
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$12$1;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$12;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment$12;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$900(Lcom/google/android/talk/fragments/BuddyListFragment;I)V

    .line 1738
    :pswitch_2
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/talk/RosterListAdapter$CallState;->mPending:Z

    .line 1739
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$12$1;->val$remoteBareJid:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/talk/RosterListAdapter$CallState;->mBareJid:Ljava/lang/String;

    goto :goto_0

    .line 1743
    :pswitch_3
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$12$1;->val$remoteBareJid:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/talk/RosterListAdapter$CallState;->mBareJid:Ljava/lang/String;

    .line 1744
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$12$1;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$12;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment$12;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$900(Lcom/google/android/talk/fragments/BuddyListFragment;I)V

    goto :goto_0

    .line 1751
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$12$1;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$12;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment$12;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$600(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    goto :goto_0

    .line 1729
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
