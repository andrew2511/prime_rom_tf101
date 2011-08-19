.class Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;
.super Lcom/google/android/gtalkservice/IChatListener$Stub;
.source "BuddyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChatListener"
.end annotation


# instance fields
.field private mForceLoadRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {p0}, Lcom/google/android/gtalkservice/IChatListener$Stub;-><init>()V

    .line 271
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener$1;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->mForceLoadRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public callEnded()V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method public chatClosed(Ljava/lang/String;)V
    .locals 3
    .parameter "from"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChatListener.chatClosed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$400(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->mForceLoadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 293
    return-void
.end method

.method public chatRead(Ljava/lang/String;)V
    .locals 3
    .parameter "from"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChatListener.ChatRead from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$400(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->mForceLoadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    return-void
.end method

.method public convertedToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "oldFrom"
    .parameter "room"
    .parameter "groupId"

    .prologue
    .line 303
    return-void
.end method

.method public missedCall()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public newMessageReceived(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "from"
    .parameter "messageBody"
    .parameter "notify"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChatListener.newMessageReceived from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$400(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V

    .line 280
    if-eqz p2, :cond_0

    .line 281
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->mForceLoadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    :cond_0
    return-void
.end method

.method public newMessageSent(Ljava/lang/String;)V
    .locals 0
    .parameter "messageBody"

    .prologue
    .line 299
    return-void
.end method

.method public participantJoined(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "room"
    .parameter "nickname"

    .prologue
    .line 304
    return-void
.end method

.method public participantLeft(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "room"
    .parameter "nickname"

    .prologue
    .line 305
    return-void
.end method

.method public useLightweightNotify()Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public willConvertToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "oldFrom"
    .parameter "room"
    .parameter "groupId"

    .prologue
    .line 302
    return-void
.end method
