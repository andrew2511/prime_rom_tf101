.class public Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;
.super Lcom/google/android/gtalkservice/IGroupChatInvitationListener$Stub;
.source "BuddyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupChatInvitationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {p0}, Lcom/google/android/gtalkservice/IGroupChatInvitationListener$Stub;-><init>()V

    .line 361
    return-void
.end method


# virtual methods
.method public onInvitationReceived(Lcom/google/android/gtalkservice/GroupChatInvitation;)Z
    .locals 4
    .parameter "invitation"

    .prologue
    const/4 v3, 0x1

    .line 364
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mLogLevel:I

    if-lt v0, v3, :cond_0

    .line 365
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received MUC invitation from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getInviter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", room="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getRoomAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$200(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v0, v0, Lcom/google/android/talk/TalkApp;->mGroupChatInvitations:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getRoomAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->forceLoad()V

    .line 371
    return v3
.end method
