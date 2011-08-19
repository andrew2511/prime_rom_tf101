.class public Lcom/google/android/gm/TwoPaneActivity;
.super Lcom/google/android/gm/BaseConversationListActivity;
.source "TwoPaneActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/content/Loader$OnLoadCompleteListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;
.implements Lcom/google/android/gm/HtmlConversationFragment$ConversationCallbacks;
.implements Lcom/google/android/gm/HtmlConversationFragment$ConversationFragmentInitializer;
.implements Lcom/google/android/gm/MenuHandler$ActivityCallback;
.implements Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;
.implements Lcom/google/android/gm/TwoPaneActionBar$Callback;
.implements Lcom/google/android/gm/ViewMode$ModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gm/BaseConversationListActivity;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
        ">;",
        "Lcom/google/android/gm/HtmlConversationFragment$ConversationFragmentInitializer;",
        "Lcom/google/android/gm/HtmlConversationFragment$ConversationCallbacks;",
        "Lcom/google/android/gm/MenuHandler$ActivityCallback;",
        "Lcom/google/android/gm/TwoPaneActionBar$Callback;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;",
        "Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;",
        "Lcom/google/android/gm/ViewMode$ModeChangeListener;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static sSyncProgressDelayTimeMs:I

.field private static sSyncProgressMinShowTimeMs:I


# instance fields
.field private mActionBarView:Lcom/google/android/gm/TwoPaneActionBar;

.field mActionModeShown:Z

.field private final mBatchCommandListener:Lcom/google/android/gm/CommandListener;

.field private mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

.field private mConversationMenu:Lcom/google/android/gm/ConversationMenu;

.field private mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

.field private mFromViewIntent:Z

.field private final mLabelDropHandler:Lcom/google/android/gm/LabelItemView$DropHandler;

.field private mLabelListFragment:Lcom/google/android/gm/LabelListFragment;

.field private mLayout:Lcom/google/android/gm/TriStateSplitLayout;

.field private mPendingSyncInProgressState:Z

.field private mPostCommandState:Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;

.field private mProgressBarStartTime:J

.field private mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

.field private mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

.field private final mSingleCommandListener:Lcom/google/android/gm/CommandListener;

.field private mStartSyncProgressBar:Ljava/lang/Runnable;

.field private mStatusCursorLoader:Landroid/content/CursorLoader;

.field private mStopSyncProgressBar:Ljava/lang/Runnable;

.field private mSyncInProgress:Z

.field private mViewMode:Lcom/google/android/gm/ViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gm/TwoPaneActivity;->sSyncProgressDelayTimeMs:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/google/android/gm/BaseConversationListActivity;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mPostCommandState:Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;

    .line 83
    iput-boolean v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mActionModeShown:Z

    .line 86
    iput-boolean v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mPendingSyncInProgressState:Z

    .line 87
    iput-boolean v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mSyncInProgress:Z

    .line 88
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mProgressBarStartTime:J

    .line 93
    new-instance v0, Lcom/google/android/gm/TwoPaneActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/TwoPaneActivity$1;-><init>(Lcom/google/android/gm/TwoPaneActivity;)V

    iput-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mStartSyncProgressBar:Ljava/lang/Runnable;

    .line 104
    new-instance v0, Lcom/google/android/gm/TwoPaneActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/gm/TwoPaneActivity$2;-><init>(Lcom/google/android/gm/TwoPaneActivity;)V

    iput-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mStopSyncProgressBar:Ljava/lang/Runnable;

    .line 855
    new-instance v0, Lcom/google/android/gm/TwoPaneActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/gm/TwoPaneActivity$4;-><init>(Lcom/google/android/gm/TwoPaneActivity;)V

    iput-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mSingleCommandListener:Lcom/google/android/gm/CommandListener;

    .line 937
    new-instance v0, Lcom/google/android/gm/TwoPaneActivity$5;

    invoke-direct {v0, p0}, Lcom/google/android/gm/TwoPaneActivity$5;-><init>(Lcom/google/android/gm/TwoPaneActivity;)V

    iput-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mBatchCommandListener:Lcom/google/android/gm/CommandListener;

    .line 982
    new-instance v0, Lcom/google/android/gm/TwoPaneActivity$6;

    invoke-direct {v0, p0}, Lcom/google/android/gm/TwoPaneActivity$6;-><init>(Lcom/google/android/gm/TwoPaneActivity;)V

    iput-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mLabelDropHandler:Lcom/google/android/gm/LabelItemView$DropHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/TwoPaneActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mPendingSyncInProgressState:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/gm/TwoPaneActivity;)Lcom/google/android/gm/ConversationInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/gm/TwoPaneActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/google/android/gm/TwoPaneActivity;->mSyncInProgress:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/gm/TwoPaneActivity;)Lcom/google/android/gm/SelectedConversationsActionMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/gm/TwoPaneActivity;)Lcom/google/android/gm/CommandListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mBatchCommandListener:Lcom/google/android/gm/CommandListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/gm/TwoPaneActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/google/android/gm/TwoPaneActivity;->mProgressBarStartTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/google/android/gm/TwoPaneActivity;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/gm/TwoPaneActivity;->onOptionsItemSelectedInternal(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/gm/TwoPaneActivity;)Lcom/google/android/gm/ConversationPositionTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/gm/TwoPaneActivity;Lcom/google/android/gm/ConversationPositionTracker;)Lcom/google/android/gm/ConversationPositionTracker;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/gm/TwoPaneActivity;Lcom/google/android/gm/ConversationInfo;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/TwoPaneActivity;->showConversationInternal(Lcom/google/android/gm/ConversationInfo;ZI)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/gm/TwoPaneActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/gm/TwoPaneActivity;->moveConversationAndShow(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/gm/TwoPaneActivity;)Lcom/google/android/gm/HtmlConversationFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/gm/TwoPaneActivity;)Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mPostCommandState:Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/gm/TwoPaneActivity;Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;)Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActivity;->mPostCommandState:Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/android/gm/TwoPaneActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActivity;->isConversationShown()Z

    move-result v0

    return v0
.end method

.method private bindConversationMenuInfo()V
    .locals 4

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationMenu:Lcom/google/android/gm/ConversationMenu;

    if-nez v0, :cond_0

    .line 1187
    new-instance v0, Lcom/google/android/gm/ConversationMenu;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-virtual {v1}, Lcom/google/android/gm/TriStateSplitLayout;->getConversationMenuView()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivity;->mSingleCommandListener:Lcom/google/android/gm/CommandListener;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/gm/ConversationMenu;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CommandListener;)V

    iput-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationMenu:Lcom/google/android/gm/ConversationMenu;

    .line 1191
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivity;->invalidateOptionsMenu()V

    .line 1192
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationMenu:Lcom/google/android/gm/ConversationMenu;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gm/ConversationMenu;->bindInfo(Lcom/google/android/gm/ConversationListContext;Lcom/google/android/gm/ConversationInfo;Lcom/google/android/gm/ConversationPositionTracker;)V

    .line 1196
    return-void
.end method

.method private cleanupConversation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1249
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v0}, Lcom/google/android/gm/HtmlConversationFragment;->clearConversation()V

    .line 1250
    invoke-direct {p0, v1, v2}, Lcom/google/android/gm/TwoPaneActivity;->setSelectedPosition(Lcom/google/android/gm/ConversationPositionTracker;I)V

    .line 1251
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/ConversationListFragment;->setSelectedPosition(Lcom/google/android/gm/ConversationPositionTracker;I)V

    .line 1252
    iput-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    .line 1253
    iput-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    .line 1254
    return-void
.end method

.method private getConversation(Z)Lcom/google/android/gm/ConversationInfo;
    .locals 2
    .parameter "newer"

    .prologue
    .line 637
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationPositionTracker;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 638
    :cond_0
    const/4 v1, 0x0

    .line 648
    :goto_0
    return-object v1

    .line 641
    :cond_1
    const/4 v0, 0x0

    .line 642
    .local v0, info:Lcom/google/android/gm/ConversationInfo;
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationPositionTracker;->hasNewer()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 643
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationPositionTracker;->newer()Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    :cond_2
    :goto_1
    move-object v1, v0

    .line 648
    goto :goto_0

    .line 644
    :cond_3
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationPositionTracker;->hasOlder()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 645
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationPositionTracker;->older()Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    goto :goto_1
.end method

.method private getUnselectedConversation(Z)Lcom/google/android/gm/ConversationInfo;
    .locals 5
    .parameter "newer"

    .prologue
    .line 656
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationPositionTracker;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 657
    :cond_0
    const/4 v2, 0x0

    .line 672
    :goto_0
    return-object v2

    .line 660
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationPositionTracker;->getConversationInfo()Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    .line 661
    .local v0, current:Lcom/google/android/gm/ConversationInfo;
    :goto_1
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gm/ConversationSelectionSet;->containsKey(Ljava/lang/Long;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 662
    invoke-direct {p0, p1}, Lcom/google/android/gm/TwoPaneActivity;->getConversation(Z)Lcom/google/android/gm/ConversationInfo;

    move-result-object v1

    .line 663
    .local v1, info:Lcom/google/android/gm/ConversationInfo;
    if-eqz v1, :cond_2

    .line 664
    move-object v0, v1

    goto :goto_1

    .line 667
    :cond_2
    const/4 v0, 0x0

    .end local v1           #info:Lcom/google/android/gm/ConversationInfo;
    :cond_3
    move-object v2, v0

    .line 672
    goto :goto_0
.end method

.method private initCustomActionBarView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1265
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1266
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 1267
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04002c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/TwoPaneActionBar;

    iput-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mActionBarView:Lcom/google/android/gm/TwoPaneActionBar;

    .line 1269
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mActionBarView:Lcom/google/android/gm/TwoPaneActionBar;

    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v1, p0, p0, v2, v3}, Lcom/google/android/gm/TwoPaneActionBar;->initialize(Landroid/app/Activity;Lcom/google/android/gm/TwoPaneActionBar$Callback;Lcom/google/android/gm/ViewMode;Landroid/app/ActionBar;)V

    .line 1271
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mActionBarView:Lcom/google/android/gm/TwoPaneActionBar;

    const v2, 0x7f0e0072

    invoke-virtual {v1, v2}, Lcom/google/android/gm/TwoPaneActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1272
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity;->mActionBarView:Lcom/google/android/gm/TwoPaneActionBar;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 1276
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x10

    const/16 v3, 0x18

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1279
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mActionBarView:Lcom/google/android/gm/TwoPaneActionBar;

    invoke-virtual {v1}, Lcom/google/android/gm/TwoPaneActionBar;->setActionBarIconNormal()V

    .line 1281
    :cond_0
    return-void
.end method

.method private initializeStatusLoader()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 188
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mStatusCursorLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mStatusCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->stopLoading()V

    .line 190
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mStatusCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0, p0}, Landroid/content/CursorLoader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    .line 192
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gm/TwoPaneActivity;->resetSyncProgressBar(Landroid/os/Handler;)V

    .line 193
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mAccount:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail;->getStatusUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mStatusCursorLoader:Landroid/content/CursorLoader;

    .line 195
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mStatusCursorLoader:Landroid/content/CursorLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 196
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mStatusCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 197
    return-void
.end method

.method private isConversationShown()Z
    .locals 1

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-virtual {v0}, Lcom/google/android/gm/TriStateSplitLayout;->isConversationPaneVisible()Z

    move-result v0

    return v0
.end method

.method private moveConversationAndShow(Z)V
    .locals 2
    .parameter "newer"

    .prologue
    const/4 v1, 0x1

    .line 624
    invoke-direct {p0, p1}, Lcom/google/android/gm/TwoPaneActivity;->getConversation(Z)Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    .line 625
    .local v0, info:Lcom/google/android/gm/ConversationInfo;
    if-eqz v0, :cond_0

    .line 626
    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gm/TwoPaneActivity;->showConversationInternal(Lcom/google/android/gm/ConversationInfo;ZI)V

    .line 630
    :goto_0
    return-void

    .line 628
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivity;->rebuildConversationList()V

    goto :goto_0
.end method

.method private onOptionsItemSelectedInternal(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    .line 413
    iget-boolean v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mActionModeShown:Z

    if-eqz v0, :cond_1

    .line 415
    const-string v0, "Gmail"

    const-string v1, "onOptionsItemSelected called when there are is an action mode. This should never happen."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v6, 0x0

    .line 430
    .local v6, handled:Z
    :goto_0
    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity;->mSingleCommandListener:Lcom/google/android/gm/CommandListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/HtmlConversationFragment;->onMenuItemSelected(ILcom/google/android/gm/CommandListener;)Z

    move-result v6

    .line 435
    :cond_0
    return v6

    .line 419
    .end local v6           #handled:Z
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gm/TwoPaneActivity;->mSingleCommandListener:Lcom/google/android/gm/CommandListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/ConversationListFragment;->onMenuItemSelected(Landroid/view/MenuItem;Lcom/google/android/gm/ConversationInfo;Ljava/util/Map;ZLcom/google/android/gm/CommandListener;)Z

    move-result v6

    .restart local v6       #handled:Z
    goto :goto_0

    .line 425
    .end local v6           #handled:Z
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListFragment;->getSelectedLabels()Ljava/util/Map;

    move-result-object v3

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/MenuHandler;->onMenuItemSelected(Landroid/view/MenuItem;Ljava/util/Collection;Ljava/util/Map;ZLcom/google/android/gm/CommandListener;)Z

    move-result v6

    .restart local v6       #handled:Z
    goto :goto_0
.end method

.method private popView(Z)V
    .locals 1
    .parameter "preventClose"

    .prologue
    .line 687
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mActionBarView:Lcom/google/android/gm/TwoPaneActionBar;

    invoke-virtual {v0}, Lcom/google/android/gm/TwoPaneActionBar;->isSearchQueryEntryMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 689
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivity;->exitSearchMode()V

    .line 703
    :cond_1
    :goto_0
    return-void

    .line 690
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mFromViewIntent:Z

    if-eqz v0, :cond_3

    .line 692
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivity;->rebuildConversationList()V

    .line 694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mFromViewIntent:Z

    goto :goto_0

    .line 695
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActivity;->isConversationShown()Z

    move-result v0

    if-nez v0, :cond_4

    .line 697
    if-nez p1, :cond_1

    .line 698
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivity;->finish()V

    goto :goto_0

    .line 701
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivity;->rebuildConversationList()V

    goto :goto_0
.end method

.method private removeContextualActionBar()V
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    invoke-virtual {v0}, Lcom/google/android/gm/SelectedConversationsActionMenu;->destroy()V

    .line 795
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    .line 797
    :cond_0
    return-void
.end method

.method private resetSyncProgressBar(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mSyncInProgress:Z

    .line 156
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mProgressBarStartTime:J

    .line 157
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mStartSyncProgressBar:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mStopSyncProgressBar:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method

.method private restoreConversationContext(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedState"

    .prologue
    .line 608
    const-string v1, "saved-conversation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationInfo;

    .line 609
    .local v0, info:Lcom/google/android/gm/ConversationInfo;
    if-eqz v0, :cond_0

    .line 610
    invoke-direct {p0, v0}, Lcom/google/android/gm/TwoPaneActivity;->setConversationContext(Lcom/google/android/gm/ConversationInfo;)V

    .line 612
    new-instance v1, Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v2

    const-string v4, "saved-conv-pos"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gm/ConversationPositionTracker;-><init>(JI)V

    iput-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    .line 616
    :cond_0
    return-void
.end method

.method private setConversationContext(Lcom/google/android/gm/ConversationInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 559
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActivity;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    .line 560
    return-void
.end method

.method private setSelectedPosition(Lcom/google/android/gm/ConversationPositionTracker;I)V
    .locals 1
    .parameter "selectedConversationPos"
    .parameter "scrollMode"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/TriStateSplitLayout;->setSelectedPosition(Lcom/google/android/gm/ConversationPositionTracker;)V

    .line 568
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/ConversationListFragment;->setSelectedPosition(Lcom/google/android/gm/ConversationPositionTracker;I)V

    .line 569
    return-void
.end method

.method private showConversationInternal(Lcom/google/android/gm/ConversationInfo;ZI)V
    .locals 3
    .parameter "info"
    .parameter "autoCollapseList"
    .parameter "scrollMode"

    .prologue
    .line 583
    invoke-direct {p0, p1}, Lcom/google/android/gm/TwoPaneActivity;->setConversationContext(Lcom/google/android/gm/ConversationInfo;)V

    .line 584
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-direct {p0, v0, p3}, Lcom/google/android/gm/TwoPaneActivity;->setSelectedPosition(Lcom/google/android/gm/ConversationPositionTracker;I)V

    .line 586
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->getSearchTerms()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/HtmlConversationFragment;->showConversation(Lcom/google/android/gm/ConversationInfo;Ljava/util/List;)V

    .line 589
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivity;->clearUndoOperations()V

    .line 591
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->transitionToConversationMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 596
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-virtual {v0}, Lcom/google/android/gm/TriStateSplitLayout;->isListCollapsible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-virtual {v0}, Lcom/google/android/gm/TriStateSplitLayout;->collapseList()Z

    .line 600
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActivity;->bindConversationMenuInfo()V

    .line 601
    return-void
.end method

.method private startSyncProgressBar(Landroid/os/Handler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mStopSyncProgressBar:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 122
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mStartSyncProgressBar:Ljava/lang/Runnable;

    sget v1, Lcom/google/android/gm/TwoPaneActivity;->sSyncProgressDelayTimeMs:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    return-void
.end method

.method private stopSyncProgressBar(Landroid/os/Handler;)V
    .locals 8
    .parameter "handler"

    .prologue
    .line 133
    iget-object v4, p0, Lcom/google/android/gm/TwoPaneActivity;->mStartSyncProgressBar:Ljava/lang/Runnable;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gm/TwoPaneActivity;->mProgressBarStartTime:J

    sub-long v0, v4, v6

    .line 138
    .local v0, diff:J
    sget v4, Lcom/google/android/gm/TwoPaneActivity;->sSyncProgressMinShowTimeMs:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    iget-wide v4, p0, Lcom/google/android/gm/TwoPaneActivity;->mProgressBarStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 143
    :cond_0
    const-wide/16 v2, 0x0

    .line 148
    .local v2, stopProgressDelay:J
    :goto_0
    iget-object v4, p0, Lcom/google/android/gm/TwoPaneActivity;->mStopSyncProgressBar:Ljava/lang/Runnable;

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    return-void

    .line 145
    .end local v2           #stopProgressDelay:J
    :cond_1
    sget v4, Lcom/google/android/gm/TwoPaneActivity;->sSyncProgressMinShowTimeMs:I

    int-to-long v4, v4

    sub-long v2, v4, v0

    .restart local v2       #stopProgressDelay:J
    goto :goto_0
.end method

.method private updateActionBar()V
    .locals 3

    .prologue
    .line 750
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mActionBarView:Lcom/google/android/gm/TwoPaneActionBar;

    if-nez v1, :cond_0

    .line 752
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActivity;->initCustomActionBarView()V

    .line 754
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mActionBarView:Lcom/google/android/gm/TwoPaneActionBar;

    if-eqz v1, :cond_1

    .line 756
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mPrefs:Lcom/google/android/gm/Persistence;

    invoke-virtual {v1, p0}, Lcom/google/android/gm/Persistence;->getActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, currentAccount:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mActionBarView:Lcom/google/android/gm/TwoPaneActionBar;

    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity;->mAccountNames:[Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gm/TwoPaneActionBar;->updateActionBar([Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    .end local v0           #currentAccount:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateCachedAccounts()V
    .locals 2

    .prologue
    .line 743
    new-instance v0, Lcom/google/android/gm/AccountHelper$CachedSyncedAccountListUpdater;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mAccountNames:[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gm/AccountHelper$CachedSyncedAccountListUpdater;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gm/AccountHelper$CachedSyncedAccountListUpdater;->execute()V

    .line 744
    return-void
.end method


# virtual methods
.method public doneChangingLabels(Lcom/google/android/gm/LabelOperations;)V
    .locals 0
    .parameter "labelOperations"

    .prologue
    .line 815
    return-void
.end method

.method public enterSearchMode()V
    .locals 2

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mActionBarView:Lcom/google/android/gm/TwoPaneActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/TwoPaneActionBar;->setMode(I)V

    .line 1298
    return-void
.end method

.method public exitSearchMode()V
    .locals 2

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mActionBarView:Lcom/google/android/gm/TwoPaneActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/TwoPaneActionBar;->setMode(I)V

    .line 1303
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivity;->popSearchStack()Z

    .line 1304
    return-void
.end method

.method public getCurrentAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentListContext()Lcom/google/android/gm/ConversationListContext;
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    return-object v0
.end method

.method public getHelpContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1258
    const-string v0, "gm_ttl"

    return-object v0
.end method

.method protected getNextConversationOnDestructiveCommand(Z)Lcom/google/android/gm/ConversationInfo;
    .locals 5
    .parameter "batch"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 508
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v1

    .line 512
    .local v1, persistence:Lcom/google/android/gm/Persistence;
    invoke-virtual {v1, p0}, Lcom/google/android/gm/Persistence;->getAutoAdvanceModeOlder(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 513
    if-eqz p1, :cond_0

    .line 514
    invoke-direct {p0, v3}, Lcom/google/android/gm/TwoPaneActivity;->getUnselectedConversation(Z)Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    .line 527
    .local v0, info:Lcom/google/android/gm/ConversationInfo;
    :goto_0
    return-object v0

    .line 516
    .end local v0           #info:Lcom/google/android/gm/ConversationInfo;
    :cond_0
    invoke-direct {p0, v3}, Lcom/google/android/gm/TwoPaneActivity;->getConversation(Z)Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    .restart local v0       #info:Lcom/google/android/gm/ConversationInfo;
    goto :goto_0

    .line 518
    .end local v0           #info:Lcom/google/android/gm/ConversationInfo;
    :cond_1
    invoke-virtual {v1, p0}, Lcom/google/android/gm/Persistence;->getAutoAdvanceModeNewer(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 519
    if-eqz p1, :cond_2

    .line 520
    invoke-direct {p0, v4}, Lcom/google/android/gm/TwoPaneActivity;->getUnselectedConversation(Z)Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    .restart local v0       #info:Lcom/google/android/gm/ConversationInfo;
    goto :goto_0

    .line 522
    .end local v0           #info:Lcom/google/android/gm/ConversationInfo;
    :cond_2
    invoke-direct {p0, v4}, Lcom/google/android/gm/TwoPaneActivity;->getConversation(Z)Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    .restart local v0       #info:Lcom/google/android/gm/ConversationInfo;
    goto :goto_0

    .line 525
    .end local v0           #info:Lcom/google/android/gm/ConversationInfo;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #info:Lcom/google/android/gm/ConversationInfo;
    goto :goto_0
.end method

.method protected initialize(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 174
    const v0, 0x7f04002d

    invoke-virtual {p0, v0}, Lcom/google/android/gm/TwoPaneActivity;->setContentView(I)V

    .line 176
    new-instance v0, Lcom/google/android/gm/ViewMode;

    invoke-direct {v0}, Lcom/google/android/gm/ViewMode;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mViewMode:Lcom/google/android/gm/ViewMode;

    .line 177
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/ViewMode;->addListener(Lcom/google/android/gm/ViewMode$ModeChangeListener;)V

    .line 178
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActivity;->initCustomActionBarView()V

    .line 179
    const v0, 0x7f0e0079

    invoke-virtual {p0, v0}, Lcom/google/android/gm/TwoPaneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/TriStateSplitLayout;

    iput-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    .line 180
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/TriStateSplitLayout;->attachToViewMode(Lcom/google/android/gm/ViewMode;)V

    .line 181
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/TriStateSplitLayout;->setListener(Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;)V

    .line 182
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/TriStateSplitLayout;->bindFragment(Lcom/google/android/gm/HtmlConversationFragment;)V

    .line 183
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActivity;->initializeStatusLoader()V

    .line 184
    invoke-virtual {p0, p1}, Lcom/google/android/gm/TwoPaneActivity;->restoreState(Landroid/os/Bundle;)V

    .line 185
    return-void
.end method

.method public initializeFragment(Lcom/google/android/gm/ConversationListFragment;)V
    .locals 9
    .parameter "fragment"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mPrefs:Lcom/google/android/gm/Persistence;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/Persistence;->getAllowBatch(Landroid/content/Context;)Z

    move-result v8

    .line 471
    .local v8, allowBatch:Z
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    if-eqz v8, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    move-object v3, v0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gm/TwoPaneActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v6, p0, Lcom/google/android/gm/TwoPaneActivity;->mViewMode:Lcom/google/android/gm/ViewMode;

    const v0, 0x7f0e0038

    invoke-virtual {p0, v0}, Lcom/google/android/gm/TwoPaneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v0, p1

    move-object v1, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gm/ConversationListFragment;->bindActivityInfo(Lcom/google/android/gm/ConversationListController;Lcom/google/android/gm/ConversationListContext;Lcom/google/android/gm/ConversationSelectionSet;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;Lcom/google/android/gm/ViewMode;Landroid/view/ViewGroup;)V

    .line 475
    return-void

    .line 471
    :cond_0
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_0
.end method

.method public initializeFragment(Lcom/google/android/gm/HtmlConversationFragment;)V
    .locals 7
    .parameter "fragment"

    .prologue
    .line 464
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivity;->mAccount:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gm/TwoPaneActivity;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->getSearchTerms()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gm/TwoPaneActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/HtmlConversationFragment;->bindActivityInfo(Lcom/google/android/gm/HtmlConversationFragment$ConversationCallbacks;Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Lcom/google/android/gm/ConversationInfo;Ljava/util/List;Lcom/google/android/gm/MenuHandler;)V

    .line 466
    return-void
.end method

.method protected isConversationListVisible()Z
    .locals 1

    .prologue
    .line 1226
    invoke-super {p0}, Lcom/google/android/gm/BaseConversationListActivity;->isConversationListVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-virtual {v0}, Lcom/google/android/gm/TriStateSplitLayout;->isConversationListVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public navigateToAccount(Ljava/lang/String;)V
    .locals 1
    .parameter "newAccount"

    .prologue
    .line 765
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gm/TwoPaneActivity;->setAccount(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    invoke-static {p0, p1}, Lcom/google/android/gm/Utils;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/TwoPaneActivity;->onLabelSelected(Ljava/lang/String;)V

    .line 770
    :cond_0
    return-void
.end method

.method public onAccountChanged()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 774
    invoke-super {p0}, Lcom/google/android/gm/BaseConversationListActivity;->onAccountChanged()V

    .line 777
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mAccount:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/gm/Utils;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 778
    .local v5, inboxLabel:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mLabelListFragment:Lcom/google/android/gm/LabelListFragment;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity;->mAccount:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gm/TwoPaneActivity;->mLabelDropHandler:Lcom/google/android/gm/LabelItemView$DropHandler;

    const/4 v6, 0x0

    move-object v3, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/LabelListFragment;->bindActivityInfo(Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Lcom/google/android/gm/LabelListFragment$LabelSelectionHandler;Lcom/google/android/gm/LabelItemView$DropHandler;Ljava/lang/String;Z)V

    .line 780
    iget-object v6, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    iget-object v8, p0, Lcom/google/android/gm/TwoPaneActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v9, p0, Lcom/google/android/gm/TwoPaneActivity;->mAccount:Ljava/lang/String;

    iget-object v12, p0, Lcom/google/android/gm/TwoPaneActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    move-object v7, p0

    move-object v11, v10

    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gm/HtmlConversationFragment;->bindActivityInfo(Lcom/google/android/gm/HtmlConversationFragment$ConversationCallbacks;Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Lcom/google/android/gm/ConversationInfo;Ljava/util/List;Lcom/google/android/gm/MenuHandler;)V

    .line 781
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivity;->clearUndoOperations()V

    .line 783
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActivity;->updateActionBar()V

    .line 786
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActivity;->removeContextualActionBar()V

    .line 788
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActivity;->initializeStatusLoader()V

    .line 789
    return-void
.end method

.method protected onAccountsUpdated()V
    .locals 0

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActivity;->updateActionBar()V

    .line 739
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActivity;->updateCachedAccounts()V

    .line 740
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1319
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseConversationListActivity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 1320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mActionModeShown:Z

    .line 1321
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1313
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseConversationListActivity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 1314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mActionModeShown:Z

    .line 1315
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 440
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseConversationListActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 443
    instance-of v0, p1, Lcom/google/android/gm/LabelListFragment;

    if-eqz v0, :cond_1

    .line 444
    check-cast p1, Lcom/google/android/gm/LabelListFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActivity;->mLabelListFragment:Lcom/google/android/gm/LabelListFragment;

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 445
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/google/android/gm/HtmlConversationFragment;

    if-eqz v0, :cond_0

    .line 446
    check-cast p1, Lcom/google/android/gm/HtmlConversationFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 677
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/TwoPaneActivity;->popView(Z)V

    .line 678
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "target"

    .prologue
    const/4 v1, 0x1

    .line 1284
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1293
    :goto_0
    :pswitch_0
    return-void

    .line 1286
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/google/android/gm/TwoPaneActivity;->popView(Z)V

    goto :goto_0

    .line 1290
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mActionBarView:Lcom/google/android/gm/TwoPaneActionBar;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/TwoPaneActionBar;->setMode(I)V

    goto :goto_0

    .line 1284
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0072
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 1169
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseConversationListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1171
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    if-nez v0, :cond_0

    .line 1180
    :goto_0
    return-void

    .line 1177
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/TriStateSplitLayout;->onConfigurationChange(Landroid/content/res/Configuration;)V

    .line 1178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationMenu:Lcom/google/android/gm/ConversationMenu;

    .line 1179
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActivity;->bindConversationMenuInfo()V

    goto :goto_0
.end method

.method public onConversationKeyDown(ILandroid/view/KeyEvent;)V
    .locals 0
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 730
    return-void
.end method

.method public onConversationListVisibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    if-nez v0, :cond_0

    .line 1334
    :goto_0
    return-void

    .line 1329
    :cond_0
    if-eqz p1, :cond_1

    .line 1330
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    invoke-virtual {v0}, Lcom/google/android/gm/SelectedConversationsActionMenu;->activate()V

    goto :goto_0

    .line 1332
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    invoke-virtual {v0}, Lcom/google/android/gm/SelectedConversationsActionMenu;->deactivate()V

    goto :goto_0
.end method

.method public onConversationLoadError()V
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/TwoPaneActivity;->popView(Z)V

    .line 720
    return-void
.end method

.method public onConversationLoaded()V
    .locals 0

    .prologue
    .line 725
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 255
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseConversationListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 257
    sget v1, Lcom/google/android/gm/TwoPaneActivity;->sSyncProgressDelayTimeMs:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 259
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/TwoPaneActivity;->sSyncProgressDelayTimeMs:I

    .line 260
    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/TwoPaneActivity;->sSyncProgressMinShowTimeMs:I

    .line 262
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "bundle"

    .prologue
    .line 1200
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1203
    new-instance v0, Lcom/google/android/gm/ApplyRemoveLabelDialog;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity;->mSingleCommandListener:Lcom/google/android/gm/CommandListener;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gm/ApplyRemoveLabelDialog;-><init>(Landroid/app/Activity;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CommandListener;)V

    .line 1205
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gm/BaseConversationListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 343
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseConversationListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 345
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 346
    .local v0, inflater:Landroid/view/MenuInflater;
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mActionBarView:Lcom/google/android/gm/TwoPaneActionBar;

    invoke-virtual {v1}, Lcom/google/android/gm/TwoPaneActionBar;->getOptionsMenuId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 347
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestructiveCommand(Z)V
    .locals 4
    .parameter "batch"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 493
    invoke-virtual {p0, p1}, Lcom/google/android/gm/TwoPaneActivity;->getNextConversationOnDestructiveCommand(Z)Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    .line 494
    .local v0, info:Lcom/google/android/gm/ConversationInfo;
    if-eqz v0, :cond_2

    .line 495
    if-nez p1, :cond_0

    move v1, v3

    :goto_0
    if-eqz p1, :cond_1

    :goto_1
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gm/TwoPaneActivity;->showConversationInternal(Lcom/google/android/gm/ConversationInfo;ZI)V

    .line 500
    :goto_2
    return-void

    :cond_0
    move v1, v2

    .line 495
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 498
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivity;->rebuildConversationList()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1159
    const/4 v0, 0x0

    .line 1160
    .local v0, handled:Z
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    if-eqz v1, :cond_0

    .line 1161
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gm/ConversationListFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1163
    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/google/android/gm/BaseConversationListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onLabelChanged(Lcom/google/android/gm/provider/Label;JZ)V
    .locals 2
    .parameter "label"
    .parameter "conversationId"
    .parameter "added"

    .prologue
    .line 819
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gm/HtmlConversationFragment;->onLabelChanged(Lcom/google/android/gm/provider/Label;JZ)V

    .line 820
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gm/ConversationSelectionSet;->onLabelChanged(Lcom/google/android/gm/provider/Label;JZ)V

    .line 822
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/SelectedConversationsActionMenu;->onSetChanged(Lcom/google/android/gm/ConversationSelectionSet;)V

    .line 825
    :cond_0
    return-void
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1108
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-nez p2, :cond_1

    .line 1135
    :cond_0
    :goto_0
    return-void

    .line 1111
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1113
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1115
    .local v1, status:I
    packed-switch v1, :pswitch_data_0

    .line 1121
    const/4 v2, 0x0

    .line 1124
    .local v2, syncInProgress:Z
    :goto_1
    iget-boolean v3, p0, Lcom/google/android/gm/TwoPaneActivity;->mPendingSyncInProgressState:Z

    if-eq v3, v2, :cond_0

    .line 1127
    iput-boolean v2, p0, Lcom/google/android/gm/TwoPaneActivity;->mPendingSyncInProgressState:Z

    .line 1128
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1129
    .local v0, handler:Landroid/os/Handler;
    if-eqz v2, :cond_2

    .line 1130
    invoke-direct {p0, v0}, Lcom/google/android/gm/TwoPaneActivity;->startSyncProgressBar(Landroid/os/Handler;)V

    goto :goto_0

    .line 1118
    .end local v0           #handler:Landroid/os/Handler;
    .end local v2           #syncInProgress:Z
    :pswitch_0
    const/4 v2, 0x1

    .line 1119
    .restart local v2       #syncInProgress:Z
    goto :goto_1

    .line 1132
    .restart local v0       #handler:Landroid/os/Handler;
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/gm/TwoPaneActivity;->stopSyncProgressBar(Landroid/os/Handler;)V

    goto :goto_0

    .line 1115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/TwoPaneActivity;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V
    .locals 6
    .parameter
    .parameter "conversationCursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
            ">;",
            "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/gm/provider/Gmail$ConversationCursor;>;"
    const/4 v5, 0x0

    .line 1068
    invoke-super {p0, p1, p2}, Lcom/google/android/gm/BaseConversationListActivity;->onLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V

    .line 1070
    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    if-eq v3, p1, :cond_1

    .line 1104
    :cond_0
    :goto_0
    return-void

    .line 1075
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getStatus()Lcom/google/android/gm/provider/Gmail$CursorStatus;

    move-result-object v2

    .line 1077
    .local v2, status:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActivity;->isConversationShown()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivity;->mPostCommandState:Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;

    if-nez v3, :cond_0

    .line 1080
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActivity;->isConversationShown()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    if-eqz v3, :cond_6

    .line 1081
    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationPositionTracker;->isValid()Z

    move-result v0

    .line 1082
    .local v0, isValidBefore:Z
    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v3, p2}, Lcom/google/android/gm/ConversationPositionTracker;->onListDataChanged(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Z

    move-result v1

    .line 1085
    .local v1, sameConversationFound:Z
    if-eqz v1, :cond_4

    .line 1086
    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    if-eqz v0, :cond_3

    move v4, v5

    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/google/android/gm/TwoPaneActivity;->setSelectedPosition(Lcom/google/android/gm/ConversationPositionTracker;I)V

    .line 1088
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActivity;->bindConversationMenuInfo()V

    goto :goto_0

    .line 1086
    :cond_3
    const/4 v4, 0x2

    goto :goto_1

    .line 1089
    :cond_4
    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationPositionTracker;->isValid()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1090
    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationPositionTracker;->getConversationInfo()Lcom/google/android/gm/ConversationInfo;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/gm/TwoPaneActivity;->showConversationInternal(Lcom/google/android/gm/ConversationInfo;ZI)V

    goto :goto_0

    .line 1094
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivity;->rebuildConversationList()V

    goto :goto_0

    .line 1097
    .end local v0           #isValidBefore:Z
    .end local v1           #sameConversationFound:Z
    :cond_6
    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/google/android/gm/provider/Gmail$CursorStatus;->LOADED:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    if-eq v2, v3, :cond_7

    sget-object v3, Lcom/google/android/gm/provider/Gmail$CursorStatus;->COMPLETE:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    if-ne v2, v3, :cond_0

    :cond_7
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v3

    if-lez v3, :cond_0

    .line 1101
    invoke-virtual {p2, v5}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    .line 1102
    invoke-virtual {p0, v5, v5}, Lcom/google/android/gm/TwoPaneActivity;->showConversationAtCursor(ZI)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    check-cast p2, Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/TwoPaneActivity;->onLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 266
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseConversationListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 268
    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v0, v2}, Lcom/google/android/gm/ConversationPositionTracker;->onListDataChanged(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Z

    .line 276
    iput-object v2, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    .line 278
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActivity;->bindConversationMenuInfo()V

    .line 282
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/gm/TwoPaneActivity;->restoreState(Landroid/os/Bundle;)V

    .line 286
    :cond_1
    :goto_0
    return-void

    .line 283
    :cond_2
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 284
    :cond_3
    invoke-virtual {p0, v2}, Lcom/google/android/gm/TwoPaneActivity;->restoreState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 376
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x102002c

    if-ne v3, v4, :cond_1

    .line 378
    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivity;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v3}, Lcom/google/android/gm/ViewMode;->isConversationMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivity;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-virtual {v3}, Lcom/google/android/gm/TriStateSplitLayout;->isListCollapsible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivity;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-virtual {v3}, Lcom/google/android/gm/TriStateSplitLayout;->uncollapseList()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    .line 408
    :goto_0
    return v3

    .line 383
    :cond_0
    invoke-direct {p0, v5}, Lcom/google/android/gm/TwoPaneActivity;->popView(Z)V

    move v3, v5

    .line 384
    goto :goto_0

    .line 391
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gm/MenuHandler;->shouldDisplayAutoAdvanceDialog(Landroid/content/Context;Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 393
    move-object v1, p1

    .line 395
    .local v1, menuItem:Landroid/view/MenuItem;
    new-instance v2, Lcom/google/android/gm/TwoPaneActivity$3;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gm/TwoPaneActivity$3;-><init>(Lcom/google/android/gm/TwoPaneActivity;Landroid/view/MenuItem;)V

    .line 401
    .local v2, operation:Ljava/lang/Runnable;
    invoke-static {p0, v2}, Lcom/google/android/gm/MenuHandler;->displayAutoAdvanceDialogAndPerformAction(Landroid/content/Context;Ljava/lang/Runnable;)V

    move v3, v5

    .line 403
    goto :goto_0

    .line 406
    .end local v1           #menuItem:Landroid/view/MenuItem;
    .end local v2           #operation:Ljava/lang/Runnable;
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gm/TwoPaneActivity;->onOptionsItemSelectedInternal(Landroid/view/MenuItem;)Z

    move-result v0

    .line 408
    .local v0, handled:Z
    if-nez v0, :cond_3

    invoke-super {p0, p1}, Lcom/google/android/gm/BaseConversationListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v3, v5

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 315
    invoke-super {p0}, Lcom/google/android/gm/BaseConversationListActivity;->onPause()V

    .line 317
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mStatusCursorLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mStatusCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->stopLoading()V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mActionBarView:Lcom/google/android/gm/TwoPaneActionBar;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mActionBarView:Lcom/google/android/gm/TwoPaneActionBar;

    invoke-virtual {v0}, Lcom/google/android/gm/TwoPaneActionBar;->onPause()V

    .line 324
    :cond_1
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 5
    .parameter "id"
    .parameter "dialog"
    .parameter "bundle"

    .prologue
    const/4 v3, 0x1

    .line 1211
    if-ne p1, v3, :cond_1

    .line 1213
    const/4 v1, 0x0

    .line 1214
    .local v1, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    const/4 v0, 0x0

    .line 1215
    .local v0, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    if-eqz v2, :cond_0

    .line 1216
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v1

    .line 1217
    new-array v2, v3, [Lcom/google/android/gm/ConversationInfo;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/TwoPaneActivity;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1219
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    check-cast p2, Lcom/google/android/gm/ApplyRemoveLabelDialog;

    .end local p2
    invoke-virtual {v2, p2, v1, v0}, Lcom/google/android/gm/MenuHandler;->prepareLabelDialog(Lcom/google/android/gm/ApplyRemoveLabelDialog;Ljava/util/Map;Ljava/util/Collection;)V

    .line 1222
    .end local v0           #conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    .end local v1           #labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    .line 353
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationSelectionSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    const/4 v6, 0x0

    .line 371
    .local v6, handled:Z
    :goto_0
    if-nez v6, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/gm/BaseConversationListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 356
    .end local v6           #handled:Z
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivity;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/MenuHandler;->onPrepareMenu(Landroid/view/Menu;Ljava/util/Map;Lcom/google/android/gm/ConversationInfo;Ljava/lang/String;Z)V

    .line 361
    const/4 v6, 0x1

    .restart local v6       #handled:Z
    goto :goto_0

    .line 364
    .end local v6           #handled:Z
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListFragment;->getSelectedLabels()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/MenuHandler;->onPrepareMenu(Landroid/view/Menu;Ljava/util/Map;Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 368
    const/4 v6, 0x1

    .restart local v6       #handled:Z
    goto :goto_0

    :cond_3
    move v0, v5

    .line 371
    goto :goto_1
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Lcom/google/android/gm/BaseConversationListActivity;->onRestart()V

    .line 293
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v0}, Lcom/google/android/gm/HtmlConversationFragment;->startLoadingConversation()V

    .line 298
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/google/android/gm/BaseConversationListActivity;->onResume()V

    .line 304
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mActionBarView:Lcom/google/android/gm/TwoPaneActionBar;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mActionBarView:Lcom/google/android/gm/TwoPaneActionBar;

    invoke-virtual {v0}, Lcom/google/android/gm/TwoPaneActionBar;->onResume()V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mStatusCursorLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mStatusCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 311
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 708
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseConversationListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 709
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    if-eqz v0, :cond_0

    .line 710
    const-string v0, "saved-conversation"

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 711
    const-string v0, "saved-conv-pos"

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationPositionTracker;->getPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 713
    :cond_0
    return-void
.end method

.method public onSetBecomeUnempty(Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 7
    .parameter "set"

    .prologue
    .line 1141
    new-instance v0, Lcom/google/android/gm/SelectedConversationsActionMenu;

    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity;->mBatchCommandListener:Lcom/google/android/gm/CommandListener;

    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    iget-object v4, p0, Lcom/google/android/gm/TwoPaneActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v5, p0, Lcom/google/android/gm/TwoPaneActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    iget-object v6, p0, Lcom/google/android/gm/TwoPaneActivity;->mAccount:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/SelectedConversationsActionMenu;-><init>(Landroid/app/Activity;Lcom/google/android/gm/CommandListener;Lcom/google/android/gm/ConversationListContext;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/ConversationSelectionSet;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    .line 1144
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    invoke-virtual {v0}, Lcom/google/android/gm/SelectedConversationsActionMenu;->activate()V

    .line 1145
    return-void
.end method

.method public onSetChanged(Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 1155
    return-void
.end method

.method public onSetEmpty(Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 1
    .parameter "set"

    .prologue
    .line 1149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    .line 1150
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 328
    invoke-super {p0}, Lcom/google/android/gm/BaseConversationListActivity;->onStop()V

    .line 330
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ConversationPositionTracker;->onListDataChanged(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Z

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/HtmlConversationFragment;->hideUndoView(Z)V

    .line 339
    return-void
.end method

.method public onUndoAvailable(Lcom/google/android/gm/UndoOperation;)V
    .locals 0
    .parameter "op"

    .prologue
    .line 1366
    return-void
.end method

.method public onUndoExpired()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1370
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ConversationListFragment;->hideUndoView(Z)V

    .line 1371
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/HtmlConversationFragment;->hideUndoView(Z)V

    .line 1372
    return-void
.end method

.method public onViewModeChanged(Lcom/google/android/gm/ViewMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->getMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1243
    :goto_0
    return-void

    .line 1237
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mActionBarView:Lcom/google/android/gm/TwoPaneActionBar;

    invoke-virtual {v0}, Lcom/google/android/gm/TwoPaneActionBar;->setActionBarIconBack()V

    goto :goto_0

    .line 1240
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mActionBarView:Lcom/google/android/gm/TwoPaneActionBar;

    invoke-virtual {v0}, Lcom/google/android/gm/TwoPaneActionBar;->setActionBarIconNormal()V

    .line 1241
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActivity;->cleanupConversation()V

    goto :goto_0

    .line 1235
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 453
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseConversationListActivity;->onWindowFocusChanged(Z)V

    .line 456
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/HtmlConversationFragment;->onWindowFocusChanged(Z)V

    .line 459
    :cond_0
    return-void
.end method

.method protected rebuildConversationList()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->transitionToConversationListMode()Z

    .line 484
    return-void
.end method

.method protected restoreState(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 201
    iput-boolean v6, p0, Lcom/google/android/gm/TwoPaneActivity;->mFromViewIntent:Z

    .line 203
    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p0, p1}, Lcom/google/android/gm/TwoPaneActivity;->restoreListContext(Landroid/os/Bundle;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ConversationListFragment;->showList(Lcom/google/android/gm/ConversationListContext;)V

    .line 208
    if-eqz p1, :cond_1

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    .line 212
    invoke-direct {p0, p1}, Lcom/google/android/gm/TwoPaneActivity;->restoreConversationContext(Landroid/os/Bundle;)V

    .line 226
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, p0, p0, v1, v2}, Lcom/google/android/gm/MenuHandler;->attach(Landroid/app/Activity;Lcom/google/android/gm/MenuHandler$ActivityCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    if-eqz v0, :cond_3

    .line 230
    new-instance v0, Lcom/google/android/gm/ConversationPositionTracker;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v6}, Lcom/google/android/gm/ConversationPositionTracker;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    .line 232
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ConversationPositionTracker;->onListDataChanged(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Z

    .line 234
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-direct {p0, v0, v3, v4}, Lcom/google/android/gm/TwoPaneActivity;->showConversationInternal(Lcom/google/android/gm/ConversationInfo;ZI)V

    .line 235
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mActionBarView:Lcom/google/android/gm/TwoPaneActionBar;

    invoke-virtual {v0}, Lcom/google/android/gm/TwoPaneActionBar;->setActionBarIconBack()V

    .line 245
    :goto_1
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mActionBarView:Lcom/google/android/gm/TwoPaneActionBar;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/android/gm/TwoPaneActionBar;->setMode(I)V

    .line 249
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mLabelListFragment:Lcom/google/android/gm/LabelListFragment;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity;->mAccount:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gm/TwoPaneActivity;->mLabelDropHandler:Lcom/google/android/gm/LabelItemView$DropHandler;

    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/LabelListFragment;->bindActivityInfo(Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Lcom/google/android/gm/LabelListFragment$LabelSelectionHandler;Lcom/google/android/gm/LabelItemView$DropHandler;Ljava/lang/String;Z)V

    .line 251
    return-void

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gm/ConversationInfo;->forIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v7

    .line 217
    .local v7, conversationInfo:Lcom/google/android/gm/ConversationInfo;
    if-eqz v7, :cond_2

    .line 218
    invoke-direct {p0, v7}, Lcom/google/android/gm/TwoPaneActivity;->setConversationContext(Lcom/google/android/gm/ConversationInfo;)V

    .line 219
    iput-boolean v3, p0, Lcom/google/android/gm/TwoPaneActivity;->mFromViewIntent:Z

    goto :goto_0

    .line 221
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActivity;->cleanupConversation()V

    goto :goto_0

    .line 237
    .end local v7           #conversationInfo:Lcom/google/android/gm/ConversationInfo;
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 239
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->transitionToConversationMode()Z

    .line 240
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-virtual {v0}, Lcom/google/android/gm/TriStateSplitLayout;->uncollapseList()Z

    goto :goto_1

    .line 242
    :cond_4
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->transitionToConversationListMode()Z

    goto :goto_1

    :cond_5
    move v1, v6

    .line 245
    goto :goto_2
.end method

.method protected setListContext(Lcom/google/android/gm/ConversationListContext;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 803
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {p1, v1}, Lcom/google/android/gm/ConversationListContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 805
    .local v0, newListContext:Z
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseConversationListActivity;->setListContext(Lcom/google/android/gm/ConversationListContext;)V

    .line 807
    if-eqz v0, :cond_1

    .line 809
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActivity;->removeContextualActionBar()V

    .line 811
    :cond_1
    return-void

    .line 803
    .end local v0           #newListContext:Z
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method protected shouldGoStraightToDraft(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 536
    const/4 v0, 0x0

    return v0
.end method

.method protected showConversationAtCursor()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 542
    invoke-virtual {p0, v0, v0}, Lcom/google/android/gm/TwoPaneActivity;->showConversationAtCursor(ZI)V

    .line 543
    return-void
.end method

.method protected showConversationAtCursor(ZI)V
    .locals 5
    .parameter "autoCollapseList"
    .parameter "scrollMode"

    .prologue
    .line 546
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-static {v1}, Lcom/google/android/gm/ConversationInfo;->forCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    .line 548
    .local v0, info:Lcom/google/android/gm/ConversationInfo;
    new-instance v1, Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->position()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gm/ConversationPositionTracker;-><init>(JI)V

    iput-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    .line 550
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v1, v2}, Lcom/google/android/gm/ConversationPositionTracker;->onListDataChanged(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Z

    .line 552
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gm/TwoPaneActivity;->showConversationInternal(Lcom/google/android/gm/ConversationInfo;ZI)V

    .line 553
    return-void
.end method

.method public taskInProgress()Z
    .locals 1

    .prologue
    .line 1308
    iget-boolean v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mSyncInProgress:Z

    return v0
.end method

.method public toggleStar(ZJJLjava/util/Map;)V
    .locals 2
    .parameter "toggleOn"
    .parameter "conversationId"
    .parameter "maxMessageId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1352
    .local p6, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    invoke-super/range {p0 .. p6}, Lcom/google/android/gm/BaseConversationListActivity;->toggleStar(ZJJLjava/util/Map;)V

    .line 1353
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-virtual {v0}, Lcom/google/android/gm/TriStateSplitLayout;->isConversationPaneVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    .line 1355
    if-eqz p1, :cond_1

    .line 1356
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v0}, Lcom/google/android/gm/HtmlConversationFragment;->toggleStar()V

    .line 1361
    :cond_0
    :goto_0
    return-void

    .line 1358
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v0}, Lcom/google/android/gm/HtmlConversationFragment;->unstarAllMessages()V

    goto :goto_0
.end method
