.class Lcom/google/android/talk/fragments/BuddyListFragment$9;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$VideoChatTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;->endActiveVideoOrVoiceChat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

.field final synthetic val$bareJid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1367
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$9;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iput-object p2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$9;->val$bareJid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runTask(Lcom/google/android/talk/videochat/IVideoChatSession;)V
    .locals 1
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$9;->val$bareJid:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/talk/videochat/IVideoChatSession;->terminateChat(Ljava/lang/String;)V

    .line 1370
    return-void
.end method
