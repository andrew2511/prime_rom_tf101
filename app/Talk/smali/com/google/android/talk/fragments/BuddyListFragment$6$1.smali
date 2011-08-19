.class Lcom/google/android/talk/fragments/BuddyListFragment$6$1;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment$6;->onDisconnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/BuddyListFragment$6;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment$6;)V
    .locals 0
    .parameter

    .prologue
    .line 752
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$6$1;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 754
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$6$1;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$6;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment$6;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$600(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    .line 755
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$6$1;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$6;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment$6;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$702(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 756
    new-instance v0, Lcom/google/android/talk/RosterListAdapter$CallState;

    invoke-direct {v0}, Lcom/google/android/talk/RosterListAdapter$CallState;-><init>()V

    .line 758
    .local v0, rosterCallState:Lcom/google/android/talk/RosterListAdapter$CallState;
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$6$1;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$6;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment$6;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v1, v0}, Lcom/google/android/talk/IRosterListAdapter;->setActiveCallState(Lcom/google/android/talk/RosterListAdapter$CallState;)V

    .line 759
    return-void
.end method
