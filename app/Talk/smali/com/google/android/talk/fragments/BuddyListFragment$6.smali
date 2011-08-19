.class Lcom/google/android/talk/fragments/BuddyListFragment$6;
.super Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;
.source "BuddyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;->registerCallStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;Landroid/content/Context;J)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 749
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$6;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;-><init>(Landroid/content/Context;J)V

    return-void
.end method


# virtual methods
.method public onDisconnected()V
    .locals 2

    .prologue
    .line 752
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$6;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/talk/fragments/BuddyListFragment$6$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$6$1;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 761
    return-void
.end method
