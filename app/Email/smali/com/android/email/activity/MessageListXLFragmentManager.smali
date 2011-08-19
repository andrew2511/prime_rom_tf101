.class Lcom/android/email/activity/MessageListXLFragmentManager;
.super Ljava/lang/Object;
.source "MessageListXLFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageListXLFragmentManager$1;,
        Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;,
        Lcom/android/email/activity/MessageListXLFragmentManager$CommandButtonCallback;,
        Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;,
        Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;
    }
.end annotation


# instance fields
.field private mAccountId:J

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarMailboxName:Landroid/widget/TextView;

.field private mActionBarMailboxNameView:Landroid/view/View;

.field private mActionBarUnreadCount:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private mIsActivityResumed:Z

.field private mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

.field private final mMailboxFinderCallback:Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;

.field private mMailboxId:J

.field private mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

.field private mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

.field private mMessageId:J

.field private mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

.field private mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

.field private mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

.field private final mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

.field private mThreePane:Lcom/android/email/activity/ThreePaneLayout;

.field private final mThreePaneLayoutCallback:Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-wide v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    .line 62
    iput-wide v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    .line 65
    iput-wide v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageId:J

    .line 79
    new-instance v0, Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;-><init>(Lcom/android/email/activity/MessageListXLFragmentManager;Lcom/android/email/activity/MessageListXLFragmentManager$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinderCallback:Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;

    .line 80
    new-instance v0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;-><init>(Lcom/android/email/activity/MessageListXLFragmentManager;Lcom/android/email/activity/MessageListXLFragmentManager$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePaneLayoutCallback:Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;

    .line 123
    iput-object p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mContext:Landroid/content/Context;

    .line 124
    iput-object p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    .line 125
    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageListXLFragmentManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->updateActionBar()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/ThreePaneLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onMessageViewClosed()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    return-object v0
.end method

.method private closeMailboxFinder()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxFinder;->cancel()V

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    .line 494
    :cond_0
    return-void
.end method

.method private onMessageViewClosed()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 474
    iput-wide v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageId:J

    .line 475
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageListFragment;->setSelectedMessage(J)V

    .line 476
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->clearContent()V

    .line 477
    return-void
.end method

.method private restoreMesasgeListState()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListFragment$State;->restore(Lcom/android/email/activity/MessageListFragment;)V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    .line 319
    :cond_0
    return-void
.end method

.method private saveMessageListFragmentState()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getState()Lcom/android/email/activity/MessageListFragment$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    .line 312
    :cond_0
    return-void
.end method

.method private startInboxLookup()V
    .locals 6

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->closeMailboxFinder()V

    .line 484
    new-instance v0, Lcom/android/email/activity/MailboxFinder;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinderCallback:Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MailboxFinder;-><init>(Landroid/content/Context;JILcom/android/email/activity/MailboxFinder$Callback;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    .line 486
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxFinder;->startLookup()V

    .line 487
    return-void
.end method

.method private updateActionBar()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 324
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/ThreePaneLayout;->getVisiblePanes()I

    move-result v1

    .line 325
    .local v1, visiblePanes:I
    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 326
    .local v0, leftPaneHidden:Z
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 328
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mActionBarMailboxNameView:Landroid/view/View;

    if-eqz v0, :cond_2

    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 329
    return-void

    .end local v0           #leftPaneHidden:Z
    :cond_0
    move v0, v4

    .line 325
    goto :goto_0

    .restart local v0       #leftPaneHidden:Z
    :cond_1
    move v3, v4

    .line 326
    goto :goto_1

    .line 328
    :cond_2
    const/16 v3, 0x8

    goto :goto_2
.end method


# virtual methods
.method public getActualAccountId()J
    .locals 4

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    const-wide/high16 v2, 0x1000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    goto :goto_0
.end method

.method public getMailboxId()J
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    return-wide v0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageId:J

    return-wide v0
.end method

.method public getUIAccountId()J
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    return-wide v0
.end method

.method public goBackToMailbox()V
    .locals 1

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->isMessageSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showLeftPane()V

    .line 399
    :cond_0
    return-void
.end method

.method public isAccountSelected()Z
    .locals 4

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getUIAccountId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMailboxSelected()Z
    .locals 4

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMessageSelected()Z
    .locals 4

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadState(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v7, -0x1

    .line 293
    const-string v0, "MessageListXl.state.account_id"

    invoke-virtual {p1, v0, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 294
    .local v1, accountId:J
    const-string v0, "MessageListXl.state.mailbox_id"

    invoke-virtual {p1, v0, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 295
    .local v3, mailboxId:J
    const-string v0, "MessageListXl.state.message_id"

    invoke-virtual {p1, v0, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 296
    .local v5, messageId:J
    const-string v0, "MessageListXl.state.message_list_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListFragment$State;

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    .line 301
    cmp-long v0, v1, v7

    if-nez v0, :cond_0

    .line 306
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    .line 305
    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectAccount(JJJ)V

    goto :goto_0
.end method

.method public onActivityViewReady()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 137
    iget-object v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    const v4, 0x7f0f0087

    invoke-interface {v3, v4}, Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/ThreePaneLayout;

    iput-object v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    .line 138
    iget-object v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    iget-object v4, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePaneLayoutCallback:Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;

    invoke-virtual {v3, v4}, Lcom/android/email/activity/ThreePaneLayout;->setCallback(Lcom/android/email/activity/ThreePaneLayout$Callback;)V

    .line 140
    iget-object v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    invoke-interface {v3}, Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 141
    .local v1, fm:Landroid/app/FragmentManager;
    iget-object v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v3}, Lcom/android/email/activity/ThreePaneLayout;->getLeftPaneId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListFragment;

    iput-object v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    .line 143
    iget-object v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v3}, Lcom/android/email/activity/ThreePaneLayout;->getMiddlePaneId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MessageListFragment;

    iput-object v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    .line 145
    iget-object v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v3}, Lcom/android/email/activity/ThreePaneLayout;->getRightPaneId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MessageViewFragment;

    iput-object v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    .line 147
    iget-object v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v3}, Lcom/android/email/activity/ThreePaneLayout;->getMessageCommandButtons()Lcom/android/email/activity/MessageCommandButtonView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    .line 148
    iget-object v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    new-instance v4, Lcom/android/email/activity/MessageListXLFragmentManager$CommandButtonCallback;

    invoke-direct {v4, p0, v7}, Lcom/android/email/activity/MessageListXLFragmentManager$CommandButtonCallback;-><init>(Lcom/android/email/activity/MessageListXLFragmentManager;Lcom/android/email/activity/MessageListXLFragmentManager$1;)V

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setCallback(Lcom/android/email/activity/MessageCommandButtonView$Callback;)V

    .line 150
    iget-object v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    invoke-interface {v3}, Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mActionBar:Landroid/app/ActionBar;

    .line 153
    iget-object v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 154
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040017

    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mActionBarMailboxNameView:Landroid/view/View;

    .line 155
    iget-object v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 156
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 159
    .local v0, customViewLayout:Landroid/app/ActionBar$LayoutParams;
    iget-object v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/app/ActionBar$LayoutParams;->setMargins(IIII)V

    .line 161
    iget-object v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mActionBarMailboxNameView:Landroid/view/View;

    invoke-virtual {v3, v4, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 163
    iget-object v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mActionBarMailboxNameView:Landroid/view/View;

    const v4, 0x7f0f004a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mActionBarMailboxName:Landroid/widget/TextView;

    .line 165
    iget-object v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mActionBarMailboxNameView:Landroid/view/View;

    const v4, 0x7f0f000d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mActionBarUnreadCount:Landroid/widget/TextView;

    .line 167
    return-void
.end method

.method public onBackPressed(Z)Z
    .locals 1
    .parameter "isSystemBackKey"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ThreePaneLayout;->onBackPressed(Z)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->closeMailboxFinder()V

    .line 283
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsActivityResumed:Z

    if-nez v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsActivityResumed:Z

    .line 268
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->saveMessageListFragmentState()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsActivityResumed:Z

    if-eqz v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 255
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsActivityResumed:Z

    .line 257
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->updateActionBar()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 286
    const-string v0, "MessageListXl.state.account_id"

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 287
    const-string v0, "MessageListXl.state.mailbox_id"

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 288
    const-string v0, "MessageListXl.state.message_id"

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 289
    const-string v0, "MessageListXl.state.message_list_state"

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 290
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method public selectAccount(JJJ)V
    .locals 5
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "messageId"

    .prologue
    const-wide/16 v3, -0x1

    .line 351
    cmp-long v0, p1, v3

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 354
    :cond_0
    iget-wide v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    .line 380
    :goto_0
    return-void

    .line 359
    :cond_1
    iput-wide p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    .line 360
    iput-wide v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    .line 361
    iput-wide v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageId:J

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    .line 367
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MailboxListFragment;->openMailboxes(J)V

    .line 368
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->clearContent()V

    .line 369
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showLeftPane()V

    .line 371
    const-wide/high16 v0, 0x1000

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    cmp-long v0, p3, v3

    if-nez v0, :cond_2

    .line 373
    const-wide/16 v0, -0x2

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJ)V

    .line 379
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    invoke-interface {v0, v1, v2}, Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;->onAccountChanged(J)V

    goto :goto_0

    .line 374
    :cond_2
    cmp-long v0, p3, v3

    if-nez v0, :cond_3

    .line 375
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->startInboxLookup()V

    goto :goto_1

    .line 377
    :cond_3
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJ)V

    goto :goto_1
.end method

.method public selectMailbox(JJ)V
    .locals 7
    .parameter "mailboxId"
    .parameter "messageId"

    .prologue
    const-wide/16 v5, -0x1

    .line 414
    cmp-long v0, p1, v5

    if-nez v0, :cond_0

    .line 415
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 418
    :cond_0
    iget-wide v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    .line 437
    :goto_0
    return-void

    .line 423
    :cond_1
    iput-wide p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    .line 424
    iput-wide v5, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageId:J

    .line 427
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageListFragment;->openMailbox(J)V

    .line 428
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->restoreMesasgeListState()V

    .line 430
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MailboxListFragment;->setSelectedMailbox(J)V

    .line 431
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;->onMailboxChanged(JJ)V

    .line 432
    cmp-long v0, p3, v5

    if-nez v0, :cond_2

    .line 433
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showLeftPane()V

    goto :goto_0

    .line 435
    :cond_2
    invoke-virtual {p0, p3, p4}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMessage(J)V

    goto :goto_0
.end method

.method public selectMessage(J)V
    .locals 3
    .parameter "messageId"

    .prologue
    .line 449
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 450
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 452
    :cond_0
    iget-wide v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    .line 465
    :goto_0
    return-void

    .line 456
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->saveMessageListFragmentState()V

    .line 459
    iput-wide p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageId:J

    .line 462
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageListFragment;->setSelectedMessage(J)V

    .line 463
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragment;->openMessage(J)V

    .line 464
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showRightPane()V

    goto :goto_0
.end method

.method public setCurrentMailboxName(Ljava/lang/String;I)V
    .locals 3
    .parameter "mailboxName"
    .parameter "unreadCount"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mActionBarMailboxName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mActionBarUnreadCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, p2, v2}, Lcom/android/email/UiUtilities;->getMessageCountForUi(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    return-void
.end method

.method public setMailboxListFragmentCallback(Lcom/android/email/activity/MailboxListFragment$Callback;)V
    .locals 1
    .parameter "mailboxListFragmentCallback"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MailboxListFragment;->setCallback(Lcom/android/email/activity/MailboxListFragment$Callback;)V

    .line 173
    return-void
.end method

.method public setMessageListFragmentCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V
    .locals 1
    .parameter "messageListFragmentCallback"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageListFragment;->setCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V

    .line 179
    return-void
.end method

.method public setMessageViewFragmentCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V
    .locals 1
    .parameter "messageViewFragmentCallback"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageViewFragment;->setCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V

    .line 185
    return-void
.end method

.method public updateMessageCommandButtons(ZZII)V
    .locals 1
    .parameter "enableMoveToNewer"
    .parameter "enableMoveToOlder"
    .parameter "currentPosition"
    .parameter "countMessages"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageCommandButtonView;->enableNavigationButtons(ZZII)V

    .line 534
    return-void
.end method
