.class Lcom/google/android/talk/fragments/BuddyListFragment$10;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;
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
    .line 1606
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$10;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 1608
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1609
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1611
    const-string v1, "from"

    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$10;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1613
    const-string v1, "query"

    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$10;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$800(Lcom/google/android/talk/fragments/BuddyListFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1614
    const-string v1, "accountId"

    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$10;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1616
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$10;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/google/android/talk/SearchActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1617
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$10;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->startActivity(Landroid/content/Intent;)V

    .line 1618
    return-void
.end method
