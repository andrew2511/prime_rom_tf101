.class public Lcom/android/email/activity/MessageListFragment;
.super Landroid/app/ListFragment;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/android/email/activity/MessagesAdapter$Callback;
.implements Lcom/android/email/activity/MoveMessageToDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageListFragment$State;,
        Lcom/android/email/activity/MessageListFragment$RefreshListener;,
        Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;,
        Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;,
        Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;,
        Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;,
        Lcom/android/email/activity/MessageListFragment$MessageOpenTask;,
        Lcom/android/email/activity/MessageListFragment$ShadowBuilder;,
        Lcom/android/email/activity/MessageListFragment$EmptyCallback;,
        Lcom/android/email/activity/MessageListFragment$Callback;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

.field private mController:Lcom/android/email/Controller;

.field private mCountTotalAccounts:I

.field private mIsEasAccount:Z

.field private mIsRefreshable:Z

.field private mIsVisible:Z

.field private mLastLoadedMailboxId:J

.field private mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

.field private mListAdapter:Lcom/android/email/activity/MessagesAdapter;

.field private mListFooterMode:I

.field private mListFooterProgress:Landroid/view/View;

.field private mListFooterText:Landroid/widget/TextView;

.field private mListFooterView:Landroid/view/View;

.field private mListPanel:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field private mMailboxId:J

.field private mMessageOpenTask:Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

.field private mNoMessagesPanel:Landroid/view/View;

.field private mOpenRequested:Z

.field private mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

.field private mRefreshManager:Lcom/android/email/RefreshManager;

.field private mResumed:Z

.field private mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

.field private mSelectedMessageId:J

.field private mSelectionMode:Landroid/view/ActionMode;

.field private mShowSendCommand:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 96
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 109
    new-instance v0, Lcom/android/email/activity/MessageListFragment$RefreshListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageListFragment$RefreshListener;-><init>(Lcom/android/email/activity/MessageListFragment;Lcom/android/email/activity/MessageListFragment$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

    .line 113
    sget-object v0, Lcom/android/email/activity/MessageListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageListFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    .line 128
    iput-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    .line 129
    iput-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mLastLoadedMailboxId:J

    .line 130
    iput-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsVisible:Z

    .line 1360
    return-void
.end method

.method static synthetic access$1002(Lcom/android/email/activity/MessageListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/email/activity/MessageListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mCountTotalAccounts:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/email/activity/MessageListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mCountTotalAccounts:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/utility/Utility$ListStateSaver;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->autoRefreshStaleMailbox()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->addFooterView()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->showSendCommandIfNecessary()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->showNoMessageTextIfNecessary()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/email/activity/MessageListFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment;->highlightSelectedMessage(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageListFragment;)Landroid/view/ActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/email/activity/MessageListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->updateListFooter()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageListFragment;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageListFragment;->onSetMessageRead(JZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageListFragment;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageListFragment;->onSetMessageFavorite(JZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageListFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/email/activity/MessageListFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/android/email/activity/MessageListFragment;->mLastLoadedMailboxId:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    return-object p1
.end method

.method private addFooterView()V
    .locals 3

    .prologue
    .line 978
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 979
    .local v0, lv:Landroid/widget/ListView;
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 980
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 982
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->determineFooterMode()V

    .line 983
    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    if-eqz v1, :cond_1

    .line 985
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 986
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 988
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    const v2, 0x7f0f0084

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterProgress:Landroid/view/View;

    .line 989
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    const v2, 0x7f0f0085

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    .line 991
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->updateListFooter()V

    .line 993
    :cond_1
    return-void
.end method

.method private autoRefreshStaleMailbox()V
    .locals 3

    .prologue
    .line 942
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z

    if-nez v0, :cond_1

    .line 950
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->isMailboxStale(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->onRefresh(Z)V

    goto :goto_0
.end method

.method private determineFooterMode()V
    .locals 2

    .prologue
    .line 966
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    .line 967
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-nez v0, :cond_0

    .line 973
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    goto :goto_0
.end method

.method private doFooterClick()V
    .locals 1

    .prologue
    .line 1017
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    packed-switch v0, :pswitch_data_0

    .line 1024
    :goto_0
    :pswitch_0
    return-void

    .line 1021
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onLoadMoreMessages()V

    goto :goto_0

    .line 1017
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private finishSelectionMode()V
    .locals 2

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClosedByUser:Z

    .line 1256
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1258
    :cond_0
    return-void
.end method

.method private highlightSelectedMessage(Z)V
    .locals 6
    .parameter "ensureSelectionVisible"

    .prologue
    .line 1405
    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1407
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->clearChoices()V

    .line 1422
    :cond_0
    :goto_0
    return-void

    .line 1411
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 1412
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 1413
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 1412
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1416
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1417
    if-eqz p1, :cond_0

    .line 1418
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v2, v3, v1}, Lcom/android/emailcommon/utility/Utility;->listViewSmoothScrollToPosition(Landroid/app/Activity;Landroid/widget/ListView;I)V

    goto :goto_0
.end method

.method private onLoadMoreMessages()V
    .locals 5

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v0

    .line 739
    .local v0, accountId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 740
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/email/RefreshManager;->loadMoreMessages(JJ)Z

    .line 742
    :cond_0
    return-void
.end method

.method private onMessageOpen(JJ)V
    .locals 6
    .parameter "messageMailboxId"
    .parameter "messageId"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageOpenTask:Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 641
    new-instance v0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;-><init>(Lcom/android/email/activity/MessageListFragment;JJ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageOpenTask:Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

    .line 642
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageOpenTask:Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 643
    return-void
.end method

.method private onMultiDelete(Ljava/util/Set;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 820
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 821
    .local v0, cloneSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 822
    .local v2, id:Ljava/lang/Long;
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/email/Controller;->deleteMessage(JJ)V

    goto :goto_0

    .line 824
    .end local v2           #id:Ljava/lang/Long;
    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0007

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 826
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 828
    return-void
.end method

.method private onMultiToggleFavorite(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 801
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/email/activity/MessageListFragment$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListFragment$2;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessageListFragment;->toggleMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;)I

    .line 816
    return-void
.end method

.method private onMultiToggleRead(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 778
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/email/activity/MessageListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListFragment$1;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessageListFragment;->toggleMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;)I

    .line 793
    return-void
.end method

.method private onSetMessageFavorite(JZ)V
    .locals 1
    .parameter "messageId"
    .parameter "newFavorite"

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/Controller;->setMessageFavorite(JZ)Landroid/os/AsyncTask;

    .line 769
    return-void
.end method

.method private onSetMessageRead(JZ)V
    .locals 1
    .parameter "messageId"
    .parameter "newRead"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/Controller;->setMessageRead(JZ)Landroid/os/AsyncTask;

    .line 765
    return-void
.end method

.method private refreshList()V
    .locals 5

    .prologue
    .line 1131
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    new-instance v3, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;-><init>(Lcom/android/email/activity/MessageListFragment;Z)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1133
    return-void
.end method

.method static resetNewMessageCount(Landroid/content/Context;JJ)V
    .locals 4
    .parameter "context"
    .parameter "mailboxId"
    .parameter "accountId"

    .prologue
    const-wide/16 v2, -0x1

    .line 1220
    const-wide/16 v0, -0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 1221
    invoke-static {p0, v2, v3}, Lcom/android/email/service/MailService;->resetNewMessageCount(Landroid/content/Context;J)V

    .line 1225
    :cond_0
    :goto_0
    return-void

    .line 1222
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    cmp-long v0, p3, v2

    if-eqz v0, :cond_0

    .line 1223
    invoke-static {p0, p3, p4}, Lcom/android/email/service/MailService;->resetNewMessageCount(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method private showNoMessageText(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1036
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesPanel:Landroid/view/View;

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1037
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListPanel:Landroid/view/View;

    if-eqz p1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1038
    return-void

    :cond_0
    move v1, v3

    .line 1036
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1037
    goto :goto_1
.end method

.method private showNoMessageTextIfNecessary()V
    .locals 2

    .prologue
    .line 1041
    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 1043
    .local v0, noItem:Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->showNoMessageText(Z)V

    .line 1044
    return-void

    .line 1041
    .end local v0           #noItem:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private showSendCommand(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 1027
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mShowSendCommand:Z

    .line 1028
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1029
    return-void
.end method

.method private showSendCommandIfNecessary()V
    .locals 1

    .prologue
    .line 1032
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isOutbox()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->showSendCommand(Z)V

    .line 1033
    return-void

    .line 1032
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startLoading()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1050
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mOpenRequested:Z

    .line 1053
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageListFragment;->showNoMessageText(Z)V

    .line 1054
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListFragment;->setListShown(Z)V

    .line 1055
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageListFragment;->showSendCommand(Z)V

    .line 1058
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 1062
    .local v0, lm:Landroid/app/LoaderManager;
    const/4 v1, 0x0

    .line 1063
    .local v1, mailboxChanging:Z
    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mLastLoadedMailboxId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mLastLoadedMailboxId:J

    iget-wide v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1064
    const/4 v1, 0x1

    .line 1065
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->stopLoaders()V

    .line 1067
    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;

    invoke-direct {v4, p0, v1}, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;-><init>(Lcom/android/email/activity/MessageListFragment;Z)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1069
    return-void
.end method

.method private stopLoaders()V
    .locals 2

    .prologue
    .line 1072
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 1073
    .local v0, lm:Landroid/app/LoaderManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1074
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1075
    return-void
.end method

.method private testMultiple(Ljava/util/Set;IZ)Z
    .locals 7
    .parameter
    .parameter "column_id"
    .parameter "defaultflag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 903
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v3}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 904
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v5

    .line 916
    :goto_0
    return v3

    .line 907
    :cond_1
    const/4 v3, -0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 908
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 909
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v1, v3

    .line 910
    .local v1, id:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 911
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz p3, :cond_3

    move v4, v6

    :goto_1
    if-ne v3, v4, :cond_2

    move v3, v6

    .line 912
    goto :goto_0

    :cond_3
    move v4, v5

    .line 911
    goto :goto_1

    .end local v1           #id:J
    :cond_4
    move v3, v5

    .line 916
    goto :goto_0
.end method

.method private toggleMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;)I
    .locals 10
    .parameter
    .parameter "helper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 859
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v7}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 860
    .local v2, c:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 861
    .local v1, anyWereFound:Z
    const/4 v0, 0x1

    .line 863
    .local v0, allWereSet:Z
    invoke-interface {v2, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 864
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 865
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v3, v7

    .line 866
    .local v3, id:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 867
    const/4 v1, 0x1

    .line 868
    invoke-interface {p2, v3, v4, v2}, Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;->getField(JLandroid/database/Cursor;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 869
    const/4 v0, 0x0

    .line 875
    .end local v3           #id:J
    :cond_1
    const/4 v6, 0x0

    .line 877
    .local v6, numChanged:I
    if-eqz v1, :cond_4

    .line 878
    if-nez v0, :cond_3

    const/4 v7, 0x1

    move v5, v7

    .line 879
    .local v5, newValue:Z
    :goto_0
    invoke-interface {v2, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 880
    :cond_2
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 881
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v3, v7

    .line 882
    .restart local v3       #id:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 883
    invoke-interface {p2, v3, v4, v2, v5}, Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;->setField(JLandroid/database/Cursor;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 884
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v3           #id:J
    .end local v5           #newValue:Z
    :cond_3
    move v5, v8

    .line 878
    goto :goto_0

    .line 890
    :cond_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->refreshList()V

    .line 892
    return v6
.end method

.method private toggleSelection(Lcom/android/email/activity/MessageListItem;)V
    .locals 1
    .parameter "itemView"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessagesAdapter;->toggleSelected(Lcom/android/email/activity/MessageListItem;)V

    .line 629
    return-void
.end method

.method private updateListFooter()V
    .locals 5

    .prologue
    .line 999
    iget v2, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    if-eqz v2, :cond_0

    .line 1000
    const/4 v1, 0x0

    .line 1001
    .local v1, footerTextId:I
    iget v2, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    packed-switch v2, :pswitch_data_0

    .line 1009
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1011
    .end local v1           #footerTextId:I
    :cond_0
    return-void

    .line 1003
    .restart local v1       #footerTextId:I
    :pswitch_0
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v0

    .line 1004
    .local v0, active:Z
    if-eqz v0, :cond_1

    const v2, 0x7f080044

    move v1, v2

    .line 1006
    :goto_1
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterProgress:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1004
    :cond_1
    const v2, 0x7f080069

    move v1, v2

    goto :goto_1

    .line 1006
    :cond_2
    const/16 v3, 0x8

    goto :goto_2

    .line 1001
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSelectionModeView()V
    .locals 1

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 1263
    return-void
.end method


# virtual methods
.method public clearContent()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 370
    iput-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    .line 371
    iput-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mLastLoadedMailboxId:J

    .line 372
    iput-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    .line 373
    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 374
    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 375
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    .line 376
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z

    .line 377
    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mCountTotalAccounts:I

    .line 378
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mOpenRequested:Z

    .line 379
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mShowSendCommand:Z

    .line 381
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->stopLoaders()V

    .line 382
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    .line 383
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessagesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 386
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListFragment;->setListShownNoAnimation(Z)V

    .line 387
    return-void
.end method

.method public doesSelectionContainNonStarredMessage()Z
    .locals 3

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/MessageListFragment;->testMultiple(Ljava/util/Set;IZ)Z

    move-result v0

    return v0
.end method

.method public doesSelectionContainReadMessage()Z
    .locals 3

    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/MessageListFragment;->testMultiple(Ljava/util/Set;IZ)Z

    move-result v0

    return v0
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    goto :goto_0
.end method

.method getAdapterForTest()Lcom/android/email/activity/MessagesAdapter;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    return-object v0
.end method

.method public getMailboxId()J
    .locals 2

    .prologue
    .line 440
    iget-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    return-wide v0
.end method

.method public getSelectedCount()I
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getState()Lcom/android/email/activity/MessageListFragment$State;
    .locals 2

    .prologue
    .line 1398
    new-instance v0, Lcom/android/email/activity/MessageListFragment$State;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageListFragment$State;-><init>(Lcom/android/email/activity/MessageListFragment;Lcom/android/email/activity/MessageListFragment$1;)V

    return-object v0
.end method

.method public isInSelectionMode()Z
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMagicMailbox()Z
    .locals 4

    .prologue
    .line 447
    iget-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutbox()Z
    .locals 4

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v0

    const-wide/16 v2, -0x6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessagesAdapter;->loadState(Landroid/os/Bundle;)V

    .line 329
    const-string v0, "MessageListFragment.state.listState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    .line 330
    const-string v0, "messageListFragment.state.listState.selected_message_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    .line 331
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 243
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    .line 246
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 249
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 250
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 252
    new-instance v0, Lcom/android/email/activity/MessagesAdapter;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/email/activity/MessagesAdapter;-><init>(Landroid/content/Context;Lcom/android/email/activity/MessagesAdapter$Callback;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    .line 254
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040027

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    .line 257
    if-eqz p1, :cond_0

    .line 259
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListFragment;->loadState(Landroid/os/Bundle;)V

    .line 261
    :cond_0
    return-void
.end method

.method public onAdapterFavoriteChanged(Lcom/android/email/activity/MessageListItem;Z)V
    .locals 2
    .parameter "itemView"
    .parameter "newFavorite"

    .prologue
    .line 955
    iget-wide v0, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-direct {p0, v0, v1, p2}, Lcom/android/email/activity/MessageListFragment;->onSetMessageFavorite(JZ)V

    .line 956
    return-void
.end method

.method public onAdapterSelectedChanged(Lcom/android/email/activity/MessageListItem;ZI)V
    .locals 0
    .parameter "itemView"
    .parameter "newSelected"
    .parameter "mSelectedCount"

    .prologue
    .line 962
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->updateSelectionMode()V

    .line 963
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    .line 222
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->setHasOptionsMenu(Z)V

    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    .line 224
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    .line 225
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

    invoke-virtual {v0, v1}, Lcom/android/email/RefreshManager;->registerListener(Lcom/android/email/RefreshManager$Listener;)V

    .line 226
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 335
    const v0, 0x7f0e000e

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 336
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 232
    const v1, 0x7f040025

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 233
    .local v0, root:Landroid/view/View;
    const v1, 0x7f0f007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListPanel:Landroid/view/View;

    .line 234
    const v1, 0x7f0f007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesPanel:Landroid/view/View;

    .line 235
    return-object v0
.end method

.method public onDeselectAll()V
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 728
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 729
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->finishSelectionMode()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageOpenTask:Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageOpenTask:Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

    .line 311
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

    invoke-virtual {v0, v1}, Lcom/android/email/RefreshManager;->unregisterListener(Lcom/android/email/RefreshManager$Listener;)V

    .line 312
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 313
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 569
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 576
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 571
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    goto :goto_0

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    if-eq p2, v2, :cond_0

    .line 469
    move-object v0, p2

    check-cast v0, Lcom/android/email/activity/MessageListItem;

    move-object v1, v0

    .line 470
    .local v1, itemView:Lcom/android/email/activity/MessageListItem;
    iget-wide v2, v1, Lcom/android/email/activity/MessageListItem;->mMailboxId:J

    invoke-direct {p0, v2, v3, p4, p5}, Lcom/android/email/activity/MessageListFragment;->onMessageOpen(JJ)V

    .line 474
    .end local v1           #itemView:Lcom/android/email/activity/MessageListItem;
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->doFooterClick()V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 13
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 590
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    if-eq p2, v7, :cond_6

    .line 593
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-nez v7, :cond_1

    .line 594
    :cond_0
    const/4 v7, 0x0

    .line 624
    :goto_0
    return v7

    .line 595
    :cond_1
    iget-wide v7, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v8, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->canMoveFrom(Landroid/content/Context;J)Z

    move-result v7

    if-nez v7, :cond_2

    .line 596
    const/4 v7, 0x0

    goto :goto_0

    .line 598
    :cond_2
    move-object v0, p2

    check-cast v0, Lcom/android/email/activity/MessageListItem;

    move-object v3, v0

    .line 599
    .local v3, listItem:Lcom/android/email/activity/MessageListItem;
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v7, v3}, Lcom/android/email/activity/MessagesAdapter;->isSelected(Lcom/android/email/activity/MessageListItem;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 600
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageListFragment;->toggleSelection(Lcom/android/email/activity/MessageListItem;)V

    .line 603
    :cond_3
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.android.email.MESSAGE_LIST_ITEMS"

    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    iget-wide v10, v3, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "mailboxId"

    iget-wide v11, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v1

    .line 610
    .local v1, data:Landroid/content/ClipData;
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v7}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v5

    .line 611
    .local v5, selectedMessageIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    .line 613
    .local v6, size:I
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 614
    .local v4, messageId:Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-wide v9, v3, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    .line 615
    new-instance v7, Landroid/content/ClipData$Item;

    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v7}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_1

    .line 620
    .end local v4           #messageId:Ljava/lang/Long;
    :cond_5
    invoke-virtual {v3, p0}, Lcom/android/email/activity/MessageListItem;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 621
    new-instance v7, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;

    invoke-direct {v7, v3, v6}, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;-><init>(Landroid/view/View;I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v1, v7, v8, v9}, Lcom/android/email/activity/MessageListItem;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 622
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 624
    .end local v1           #data:Landroid/content/ClipData;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listItem:Lcom/android/email/activity/MessageListItem;
    .end local v5           #selectedMessageIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v6           #size:I
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public onMoveToMailboxSelected(J[J)V
    .locals 1
    .parameter "newMailboxId"
    .parameter "messageIds"

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/email/activity/ActivityHelper;->moveMessages(Landroid/app/Activity;J[J)V

    .line 705
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    .line 706
    return-void
.end method

.method public onMultiDelete()V
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->onMultiDelete(Ljava/util/Set;)V

    .line 691
    return-void
.end method

.method public onMultiMove()V
    .locals 4

    .prologue
    .line 694
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v2}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v1

    .line 695
    .local v1, messageIds:[J
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1, p0}, Lcom/android/email/activity/MoveMessageToDialog;->newInstance(Landroid/app/Activity;[JLandroid/app/Fragment;)Lcom/android/email/activity/MoveMessageToDialog;

    move-result-object v0

    .line 697
    .local v0, dialog:Lcom/android/email/activity/MoveMessageToDialog;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v0, v2, v3}, Lcom/android/email/activity/MoveMessageToDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 698
    return-void
.end method

.method public onMultiToggleFavorite()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->onMultiToggleFavorite(Ljava/util/Set;)V

    .line 687
    return-void
.end method

.method public onMultiToggleRead()V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->onMultiToggleRead(Ljava/util/Set;)V

    .line 683
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 345
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 351
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 347
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onSendPendingMessages()V

    .line 348
    const/4 v0, 0x1

    goto :goto_0

    .line 345
    :pswitch_data_0
    .packed-switch 0x7f0f00da
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    .line 292
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 293
    new-instance v0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    .line 294
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 340
    const v0, 0x7f0f00da

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mShowSendCommand:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 341
    return-void
.end method

.method public onRefresh(Z)V
    .locals 6
    .parameter "userRequest"

    .prologue
    .line 714
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z

    if-nez v0, :cond_1

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v1

    .line 718
    .local v1, accountId:J
    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/RefreshManager;->refreshMessageList(JJZ)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 276
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    .line 281
    iget-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mOpenRequested:Z

    if-eqz v0, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->startLoading()V

    .line 284
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 320
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 321
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessagesAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 322
    const-string v0, "MessageListFragment.state.listState"

    new-instance v1, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 323
    const-string v0, "messageListFragment.state.listState.selected_message_id"

    iget-wide v1, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 324
    return-void
.end method

.method public onSendPendingMessages()V
    .locals 5

    .prologue
    .line 755
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v0

    .line 756
    .local v0, rm:Lcom/android/email/RefreshManager;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v1

    const-wide/16 v3, -0x6

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 757
    invoke-virtual {v0}, Lcom/android/email/RefreshManager;->sendPendingMessagesForAllAccounts()V

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v1, :cond_0

    .line 759
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->sendPendingMessages(J)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 268
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 269
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 301
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 302
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 581
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 583
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->access$102(I)I

    .line 586
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public openMailbox(J)V
    .locals 2
    .parameter "mailboxId"

    .prologue
    .line 399
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 400
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 402
    :cond_0
    iget-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_2

    .line 414
    :cond_1
    :goto_0
    return-void

    .line 406
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->clearContent()V

    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mOpenRequested:Z

    .line 409
    iput-wide p1, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    .line 411
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    if-eqz v0, :cond_1

    .line 412
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->startLoading()V

    goto :goto_0
.end method

.method public setCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 355
    if-eqz p1, :cond_0

    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    .line 356
    return-void

    .line 355
    :cond_0
    sget-object v0, Lcom/android/email/activity/MessageListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageListFragment$Callback;

    goto :goto_0
.end method

.method public setSelectedMessage(J)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 417
    iput-wide p1, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    .line 418
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    if-eqz v0, :cond_0

    .line 419
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->highlightSelectedMessage(Z)V

    .line 421
    :cond_0
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsVisible:Z

    if-ne p1, v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mIsVisible:Z

    .line 363
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->updateSelectionMode()V

    goto :goto_0
.end method

.method public updateSelectionMode()V
    .locals 3

    .prologue
    .line 1233
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getSelectedCount()I

    move-result v0

    .line 1234
    .local v0, numSelected:I
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mIsVisible:Z

    if-nez v1, :cond_1

    .line 1235
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->finishSelectionMode()V

    .line 1244
    :goto_0
    return-void

    .line 1238
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1239
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->updateSelectionModeView()V

    goto :goto_0

    .line 1241
    :cond_2
    new-instance v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;-><init>(Lcom/android/email/activity/MessageListFragment;Lcom/android/email/activity/MessageListFragment$1;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    .line 1242
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_0
.end method
