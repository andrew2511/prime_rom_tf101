.class Lcom/google/android/talk/fragments/BuddyListFragment$5;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Lcom/google/android/talk/IRosterListAdapter$PresenceClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;->createRosterListAdapter()Lcom/google/android/talk/IRosterListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$5;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPresenceClicked(Lcom/google/android/talk/RosterListItem;)V
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    .line 651
    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$5;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-boolean v2, v2, Lcom/google/android/talk/fragments/BuddyListFragment;->mTabletMode:Z

    if-nez v2, :cond_0

    .line 652
    invoke-virtual {p1}, Lcom/google/android/talk/RosterListItem;->getCapabilities()I

    move-result v0

    .line 653
    .local v0, cap:I
    invoke-virtual {p1}, Lcom/google/android/talk/RosterListItem;->getPresence()I

    move-result v1

    .line 654
    .local v1, presence:I
    if-eqz v1, :cond_0

    .line 655
    invoke-static {v0}, Lcom/google/android/talk/ActivityUtils;->isVideoChatCapable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 657
    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$5;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/fragments/BuddyListFragment$5;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v3, v3, Lcom/google/android/talk/fragments/BuddyListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v3, v3, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {p1}, Lcom/google/android/talk/RosterListItem;->getContact()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/android/talk/videochat/VideoChatActivity;->startActivityToInitiate(Landroid/content/Context;JLjava/lang/String;Z)V

    .line 670
    .end local v0           #cap:I
    .end local v1           #presence:I
    :cond_0
    :goto_0
    return-void

    .line 661
    .restart local v0       #cap:I
    .restart local v1       #presence:I
    :cond_1
    invoke-static {v0}, Lcom/google/android/talk/ActivityUtils;->isAudioChatCapable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 663
    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$5;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/fragments/BuddyListFragment$5;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v3, v3, Lcom/google/android/talk/fragments/BuddyListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v3, v3, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {p1}, Lcom/google/android/talk/RosterListItem;->getContact()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/android/talk/videochat/VideoChatActivity;->startActivityToInitiate(Landroid/content/Context;JLjava/lang/String;Z)V

    goto :goto_0
.end method
