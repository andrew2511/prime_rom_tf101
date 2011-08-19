.class Lcom/google/android/talk/BuddyListCombo$5;
.super Ljava/lang/Object;
.source "BuddyListCombo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/BuddyListCombo;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/BuddyListCombo;

.field final synthetic val$changedAccounts:Z

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/talk/BuddyListCombo;ZLandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 718
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo$5;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iput-boolean p2, p0, Lcom/google/android/talk/BuddyListCombo$5;->val$changedAccounts:Z

    iput-object p3, p0, Lcom/google/android/talk/BuddyListCombo$5;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 720
    iget-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo$5;->val$changedAccounts:Z

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$5;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$5;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v1}, Lcom/google/android/talk/BuddyListCombo;->access$800(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/BuddyListCombo;->loginToAccount(Lcom/google/android/talk/TalkApp$AccountInfo;)V

    .line 722
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$5;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$5;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v1}, Lcom/google/android/talk/BuddyListCombo;->access$800(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/BuddyListCombo;->access$900(Lcom/google/android/talk/BuddyListCombo;J)V

    .line 727
    :goto_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$5;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$5;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/google/android/talk/BuddyListCombo;->access$1000(Lcom/google/android/talk/BuddyListCombo;Landroid/content/Intent;)V

    .line 728
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$5;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$5;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 729
    return-void

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$5;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->softUiReset()V

    goto :goto_0
.end method
