.class Lcom/google/android/talk/fragments/ChatScreenFragment$1;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheContactId(Ljava/lang/String;J)V
    .locals 2
    .parameter "contact"
    .parameter "id"

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1500(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    return-void
.end method

.method public convertedToGroupChat(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V
    .locals 1
    .parameter "cv"
    .parameter "room"

    .prologue
    .line 649
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0, p2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1202(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 650
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1600(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/util/ChatSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatSwitcher;->resumeRequery()V

    .line 651
    return-void
.end method

.method public getCachedContactId(Ljava/lang/String;)J
    .locals 3
    .parameter "contact"

    .prologue
    .line 637
    const-wide/16 v0, -0x1

    .line 638
    .local v0, id:J
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1500(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 639
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1500(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 641
    :cond_0
    return-wide v0
.end method

.method public getMessageBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$600(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public handleMenuItem(Lcom/google/android/talk/ChatView;Landroid/view/MenuItem;I)Z
    .locals 8
    .parameter "cv"
    .parameter "item"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 490
    if-nez p1, :cond_0

    .line 571
    :goto_0
    return v4

    .line 493
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v3

    .line 494
    .local v3, username:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->getImSession()Lcom/google/android/gtalkservice/IImSession;

    move-result-object v2

    .line 496
    .local v2, session:Lcom/google/android/gtalkservice/IImSession;
    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 498
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->startVoiceChat()V

    move v4, v7

    .line 499
    goto :goto_0

    .line 502
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->startVideoChat()V

    move v4, v7

    .line 503
    goto :goto_0

    .line 506
    :pswitch_3
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->addToChat()V

    move v4, v7

    .line 507
    goto :goto_0

    .line 510
    :pswitch_4
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$700(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;->showRoster()V

    move v4, v7

    .line 511
    goto :goto_0

    .line 514
    :pswitch_5
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->leaveChat()V

    move v4, v7

    .line 515
    goto :goto_0

    .line 518
    :pswitch_6
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->clearChat()V

    move v4, v7

    .line 519
    goto :goto_0

    .line 522
    :pswitch_7
    new-instance v1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;

    invoke-direct {v1}, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;-><init>()V

    .line 523
    .local v1, buddyInfo:Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->getChatsTableContactId()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mContactId:J

    .line 524
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->getAccountId()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mAccountId:J

    .line 525
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mUsername:Ljava/lang/String;

    .line 526
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$700(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;->onShowContactInfo(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V

    move v4, v7

    .line 527
    goto :goto_0

    .line 530
    .end local v1           #buddyInfo:Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;
    :pswitch_8
    if-eqz v3, :cond_1

    if-nez v2, :cond_2

    :cond_1
    move v4, v7

    .line 531
    goto :goto_0

    .line 534
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->leaveChat()V

    .line 535
    invoke-interface {v2, v3}, Lcom/google/android/gtalkservice/IImSession;->blockContact(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 539
    :goto_1
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->getChatsTableContactId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/android/talk/DatabaseUtils;->removeChatsByContactId(Landroid/content/ContentResolver;J)I

    move v4, v7

    .line 540
    goto :goto_0

    .line 543
    :pswitch_9
    if-nez v3, :cond_3

    move v4, v7

    .line 544
    goto :goto_0

    .line 548
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->leaveChat()V

    .line 549
    invoke-interface {v2, v3}, Lcom/google/android/gtalkservice/IImSession;->removeContact(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    move v4, v7

    .line 553
    goto/16 :goto_0

    .line 556
    :pswitch_a
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$800(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/google/android/talk/fragments/ChatScreenFragment$1$1;

    invoke-direct {v5, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$1$1;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment$1;)V

    invoke-static {v4, v5}, Lcom/google/android/talk/util/SmileyMenuHelper;->makeSmileyAlert(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 563
    .local v0, a:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v4, v7

    .line 564
    goto/16 :goto_0

    .line 567
    .end local v0           #a:Landroid/app/AlertDialog;
    :pswitch_b
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->toggleOtr()V

    move v4, v7

    .line 568
    goto/16 :goto_0

    .line 550
    :catch_0
    move-exception v4

    goto :goto_2

    .line 536
    :catch_1
    move-exception v4

    goto :goto_1

    .line 496
    :pswitch_data_0
    .packed-switch 0x7f1000b9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public invalidateImSession()V
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    const-string v1, "invalidateImSession"

    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$300(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    new-instance v1, Lcom/google/android/talk/fragments/ChatScreenFragment$1$2;

    invoke-direct {v1, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$1$2;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment$1;)V

    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1300(Lcom/google/android/talk/fragments/ChatScreenFragment;Lcom/google/android/common/SwipeySwitcher$ViewRunnable;)V

    .line 617
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 645
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 646
    return-void
.end method

.method public startVideoChatAnimation()V
    .locals 3

    .prologue
    .line 624
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$700(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;->startVideoChatAnimation()V

    .line 627
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$800(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 629
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$200(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 630
    return-void
.end method

.method public update(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 582
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1100(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/ChatView;

    move-result-object v1

    .line 583
    .local v1, cv:Lcom/google/android/talk/ChatView;
    if-eq p1, v1, :cond_1

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, contact:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1200(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v2, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->updateTitle(Landroid/view/View;)V

    .line 597
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$700(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->isOffTheRecord()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;->updateOtrStatus(Z)V

    goto :goto_0
.end method

.method public willConvertToGroupChat(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V
    .locals 1
    .parameter "cv"
    .parameter "room"

    .prologue
    .line 654
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1600(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/util/ChatSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatSwitcher;->suspendRequery()V

    .line 655
    return-void
.end method
