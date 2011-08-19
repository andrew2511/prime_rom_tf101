.class public Lcom/google/android/gm/ConversationListFragment;
.super Landroid/app/ListFragment;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;
.implements Lcom/google/android/gm/UndoBarView$OnUndoCancelListener;
.implements Lcom/google/android/gm/ViewMode$ModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/ConversationListFragment$ConversationListFragmentInitializer;,
        Lcom/google/android/gm/ConversationListFragment$ActiveCommand;
    }
.end annotation


# instance fields
.field private final LDEBUG:Z

.field protected SHOW_UNDO_DELAY:J

.field private mActiveCommand:Lcom/google/android/gm/ConversationListFragment$ActiveCommand;

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

.field private mCallbacks:Lcom/google/android/gm/ConversationListController;

.field private mConvListModeTopPadding:I

.field private mConvModeBottomPadding:I

.field private mConvModeTopPadding:I

.field private mCurrUndoOp:Lcom/google/android/gm/UndoOperation;

.field private mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

.field private final mDelayedShowUndo:Ljava/lang/Runnable;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mEmptyView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mListState:Landroid/os/Parcelable;

.field private mListView:Landroid/widget/ListView;

.field private mLongPressedConversation:Lcom/google/android/gm/ConversationInfo;

.field private mMenuHandler:Lcom/google/android/gm/MenuHandler;

.field private mNotificationContainer:Landroid/view/ViewGroup;

.field private mPosition:I

.field private mPostedUndoOp:Lcom/google/android/gm/UndoOperation;

.field private mSearchResultCountTextView:Landroid/widget/TextView;

.field private mSearchStatusTextView:Landroid/widget/TextView;

.field private mSearchStatusView:Landroid/view/View;

.field private mUndoHideAnimation:Landroid/animation/Animator;

.field private mUndoHideListener:Landroid/animation/Animator$AnimatorListener;

.field private mUndoShowAnimation:Landroid/animation/Animator;

.field private mUndoShowListener:Landroid/animation/Animator$AnimatorListener;

.field protected mUndoView:Lcom/google/android/gm/UndoBarView;

.field private final mUpdateTimestampsRunnable:Ljava/lang/Runnable;

.field private mViewContext:Lcom/google/android/gm/ConversationListContext;

.field private mViewMode:Lcom/google/android/gm/ViewMode;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gm/ConversationListFragment;->mPosition:I

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mListState:Landroid/os/Parcelable;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mHandler:Landroid/os/Handler;

    .line 87
    iput-boolean v1, p0, Lcom/google/android/gm/ConversationListFragment;->LDEBUG:Z

    .line 119
    new-instance v0, Lcom/google/android/gm/ConversationListFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ConversationListFragment$1;-><init>(Lcom/google/android/gm/ConversationListFragment;)V

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 146
    new-instance v0, Lcom/google/android/gm/ConversationListFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ConversationListFragment$2;-><init>(Lcom/google/android/gm/ConversationListFragment;)V

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mUpdateTimestampsRunnable:Ljava/lang/Runnable;

    .line 152
    new-instance v0, Lcom/google/android/gm/ConversationListFragment$3;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ConversationListFragment$3;-><init>(Lcom/google/android/gm/ConversationListFragment;)V

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mDelayedShowUndo:Ljava/lang/Runnable;

    .line 164
    iput-boolean v1, p0, Lcom/google/android/gm/ConversationListFragment;->mInitialized:Z

    .line 181
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/google/android/gm/ConversationListFragment;->SHOW_UNDO_DELAY:J

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/ConversationListFragment;)Lcom/google/android/gm/ConversationListFragment$ActiveCommand;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mActiveCommand:Lcom/google/android/gm/ConversationListFragment$ActiveCommand;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/gm/ConversationListFragment;Lcom/google/android/gm/ConversationListFragment$ActiveCommand;)Lcom/google/android/gm/ConversationListFragment$ActiveCommand;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/gm/ConversationListFragment;->mActiveCommand:Lcom/google/android/gm/ConversationListFragment$ActiveCommand;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/gm/ConversationListFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mDelayedShowUndo:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/gm/ConversationListFragment;)Lcom/google/android/gm/ConversationListContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/ConversationListFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gm/ConversationListFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gm/ConversationListFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mUpdateTimestampsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gm/ConversationListFragment;)Lcom/google/android/gm/UndoOperation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mPostedUndoOp:Lcom/google/android/gm/UndoOperation;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/gm/ConversationListFragment;Lcom/google/android/gm/UndoOperation;)Lcom/google/android/gm/UndoOperation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/gm/ConversationListFragment;->mPostedUndoOp:Lcom/google/android/gm/UndoOperation;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/gm/ConversationListFragment;)Lcom/google/android/gm/UndoOperation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mCurrUndoOp:Lcom/google/android/gm/UndoOperation;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/gm/ConversationListFragment;Lcom/google/android/gm/UndoOperation;)Lcom/google/android/gm/UndoOperation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/gm/ConversationListFragment;->mCurrUndoOp:Lcom/google/android/gm/UndoOperation;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/gm/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->updateListPadding()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/gm/ConversationListFragment;)Lcom/google/android/gm/MenuHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/gm/ConversationListFragment;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->getCursor()Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v0

    return-object v0
.end method

.method private configureSearchResultHeader()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 388
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->isSearchResult()Z

    move-result v1

    .line 390
    .local v1, showHeader:Z
    if-eqz v1, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d00da

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v4}, Lcom/google/android/gm/ConversationListContext;->getSearchQuery()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, headerText:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mSearchStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mSearchResultCountTextView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    .end local v0           #headerText:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mSearchStatusView:Landroid/view/View;

    if-eqz v1, :cond_1

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 399
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->updateListPadding()V

    .line 400
    return-void

    .line 398
    :cond_1
    const/16 v3, 0x8

    goto :goto_0
.end method

.method private fadeOnDestructiveCommand(Lcom/google/android/gm/ConversationInfo;)V
    .locals 3
    .parameter "currentConversationInfo"

    .prologue
    .line 931
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 934
    .local v0, selected:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;

    if-eqz v1, :cond_0

    .line 935
    check-cast v0, Lcom/google/android/gm/CanvasConversationHeaderView;

    .end local v0           #selected:Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/CanvasConversationHeaderView;->setFaded(Z)V

    .line 937
    :cond_0
    return-void
.end method

.method private getCursor()Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->getCursor()Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUndoHideAnimation()Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoHideAnimation:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 602
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f060001

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoHideAnimation:Landroid/animation/Animator;

    .line 604
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoHideAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoView:Lcom/google/android/gm/UndoBarView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 605
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoHideAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoHideAnimation:Landroid/animation/Animator;

    return-object v0
.end method

.method private getUndoShowAnimation()Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoShowAnimation:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoShowAnimation:Landroid/animation/Animator;

    .line 594
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoShowAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoView:Lcom/google/android/gm/UndoBarView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 595
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoShowAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoShowAnimation:Landroid/animation/Animator;

    return-object v0
.end method

.method private getVisibleNotificationHeight()I
    .locals 5

    .prologue
    .line 860
    iget-object v4, p0, Lcom/google/android/gm/ConversationListFragment;->mNotificationContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 861
    .local v1, childCount:I
    const/4 v3, 0x0

    .line 863
    .local v3, visibleHeight:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 864
    iget-object v4, p0, Lcom/google/android/gm/ConversationListFragment;->mNotificationContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 865
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 866
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v3, v4

    .line 863
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 869
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return v3
.end method

.method private isSearchResult()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshList()V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->notifyDataSetChanged()V

    .line 629
    return-void
.end method

.method private updateListPadding()V
    .locals 6

    .prologue
    .line 835
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->getVisibleNotificationHeight()I

    move-result v2

    .line 836
    .local v2, totalNotifHeight:I
    move v1, v2

    .line 837
    .local v1, topPadding:I
    const/4 v0, 0x0

    .line 839
    .local v0, bottomPadding:I
    iget-object v3, p0, Lcom/google/android/gm/ConversationListFragment;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v3}, Lcom/google/android/gm/ViewMode;->getMode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 848
    :goto_0
    iget-object v3, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v5

    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 850
    iget-object v3, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->requestLayout()V

    .line 853
    if-lez v2, :cond_0

    .line 855
    iget-object v3, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    neg-int v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 857
    :cond_0
    return-void

    .line 841
    :pswitch_0
    iget v3, p0, Lcom/google/android/gm/ConversationListFragment;->mConvModeTopPadding:I

    add-int/2addr v1, v3

    .line 842
    iget v0, p0, Lcom/google/android/gm/ConversationListFragment;->mConvModeBottomPadding:I

    .line 843
    goto :goto_0

    .line 845
    :pswitch_1
    iget v3, p0, Lcom/google/android/gm/ConversationListFragment;->mConvListModeTopPadding:I

    add-int/2addr v1, v3

    goto :goto_0

    .line 839
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bindActivityInfo(Lcom/google/android/gm/ConversationListController;Lcom/google/android/gm/ConversationListContext;Lcom/google/android/gm/ConversationSelectionSet;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;Lcom/google/android/gm/ViewMode;Landroid/view/ViewGroup;)V
    .locals 13
    .parameter "callbacks"
    .parameter "viewContext"
    .parameter "batchConversations"
    .parameter "menuHandler"
    .parameter "starHandler"
    .parameter "viewMode"
    .parameter "notificationContainer"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/google/android/gm/ConversationListFragment;->mCallbacks:Lcom/google/android/gm/ConversationListController;

    .line 276
    move-object/from16 v0, p4

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/gm/ConversationListFragment;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    .line 277
    move-object/from16 v0, p6

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/gm/ConversationListFragment;->mViewMode:Lcom/google/android/gm/ViewMode;

    .line 278
    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mViewMode:Lcom/google/android/gm/ViewMode;

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v2, p0}, Lcom/google/android/gm/ViewMode;->addListener(Lcom/google/android/gm/ViewMode$ModeChangeListener;)V

    .line 282
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    if-eqz v2, :cond_1

    .line 283
    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v2, p0}, Lcom/google/android/gm/ConversationSelectionSet;->removeObserver(Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;)V

    .line 286
    :cond_1
    move-object/from16 v0, p3

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/gm/ConversationListFragment;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    .line 287
    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    if-eqz v2, :cond_2

    .line 288
    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v2, p0}, Lcom/google/android/gm/ConversationSelectionSet;->addObserver(Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;)V

    .line 291
    :cond_2
    new-instance v4, Lcom/google/android/gm/comm/NetworkProgressMonitor;

    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v4, v2, v3}, Lcom/google/android/gm/comm/NetworkProgressMonitor;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 292
    .local v4, progressMonitor:Lcom/google/android/gm/IProgressMonitor;
    new-instance v2, Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/google/android/gm/ConversationListContext;->getAccount()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gm/ConversationListFragment;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    iget-object v11, p0, Lcom/google/android/gm/ConversationListFragment;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    iget-object v12, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    check-cast v12, Lcom/google/android/gm/FadingListView;

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;-><init>(Landroid/content/Context;Lcom/google/android/gm/IProgressMonitor;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/ConversationSelectionSet;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;Lcom/google/android/gm/ViewMode;Landroid/animation/Animator$AnimatorListener;Lcom/google/android/gm/FadingListView;)V

    iput-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    .line 297
    move-object/from16 v0, p7

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/gm/ConversationListFragment;->mNotificationContainer:Landroid/view/ViewGroup;

    .line 298
    const v2, 0x7f0e0039

    move-object/from16 v0, p7

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mSearchStatusView:Landroid/view/View;

    .line 299
    const v2, 0x7f0e003a

    move-object/from16 v0, p7

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/gm/ConversationListFragment;->mSearchStatusTextView:Landroid/widget/TextView;

    .line 301
    const v2, 0x7f0e003b

    move-object/from16 v0, p7

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/gm/ConversationListFragment;->mSearchResultCountTextView:Landroid/widget/TextView;

    .line 304
    const v2, 0x7f0e003c

    move-object/from16 v0, p7

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/gm/UndoBarView;

    iput-object p1, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoView:Lcom/google/android/gm/UndoBarView;

    .line 305
    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoView:Lcom/google/android/gm/UndoBarView;

    invoke-virtual {v2, p0}, Lcom/google/android/gm/UndoBarView;->setOnCancelListener(Lcom/google/android/gm/UndoBarView$OnUndoCancelListener;)V

    .line 306
    new-instance v2, Lcom/google/android/gm/ConversationListFragment$4;

    invoke-direct {v2, p0}, Lcom/google/android/gm/ConversationListFragment$4;-><init>(Lcom/google/android/gm/ConversationListFragment;)V

    iput-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 330
    new-instance v2, Lcom/google/android/gm/ConversationListFragment$5;

    invoke-direct {v2, p0}, Lcom/google/android/gm/ConversationListFragment$5;-><init>(Lcom/google/android/gm/ConversationListFragment;)V

    iput-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 352
    return-void
.end method

.method public getSelectedConversations()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 721
    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationSelectionSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 723
    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v2

    .line 736
    :goto_0
    return-object v2

    .line 726
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getSelectedItemPosition()I

    move-result v1

    .line 727
    .local v1, selection:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 729
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->getCursor()Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v0

    .line 730
    .local v0, cursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 731
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gm/ConversationInfo;

    const/4 v3, 0x0

    invoke-static {v0}, Lcom/google/android/gm/ConversationInfo;->forCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 736
    .end local v0           #cursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public getSelectedLabels()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getSelectedConversations()Ljava/util/Collection;

    move-result-object v0

    .line 746
    .local v0, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {p0}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v1

    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public hideUndoView(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 578
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoView:Lcom/google/android/gm/UndoBarView;

    invoke-virtual {v0}, Lcom/google/android/gm/UndoBarView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    if-eqz p1, :cond_1

    .line 580
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->getUndoHideAnimation()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoView:Lcom/google/android/gm/UndoBarView;

    invoke-virtual {v0}, Lcom/google/android/gm/UndoBarView;->hide()V

    .line 583
    iput-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mPostedUndoOp:Lcom/google/android/gm/UndoOperation;

    .line 584
    iput-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mCurrUndoOp:Lcom/google/android/gm/UndoOperation;

    .line 585
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->updateListPadding()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 246
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gm/ConversationListFragment;->mInitialized:Z

    .line 248
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationListFragment$ConversationListFragmentInitializer;

    .line 250
    .local v0, initializer:Lcom/google/android/gm/ConversationListFragment$ConversationListFragmentInitializer;
    invoke-interface {v0, p0}, Lcom/google/android/gm/ConversationListFragment$ConversationListFragmentInitializer;->initializeFragment(Lcom/google/android/gm/ConversationListFragment;)V

    .line 251
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 253
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mViewMode:Lcom/google/android/gm/ViewMode;

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {p0, v1}, Lcom/google/android/gm/ConversationListFragment;->onViewModeChanged(Lcom/google/android/gm/ViewMode;)V

    .line 260
    :cond_1
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 691
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->getCursor()Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v6

    .line 692
    .local v6, cursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 704
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mLongPressedConversation:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v6}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getLabels()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/MenuHandler;->onMenuItemSelected(Landroid/view/MenuItem;Lcom/google/android/gm/ConversationInfo;Ljava/util/Map;ZLcom/google/android/gm/CommandListener;)Z

    move-result v7

    .line 712
    .local v7, result:Z
    :goto_0
    iput-object v5, p0, Lcom/google/android/gm/ConversationListFragment;->mLongPressedConversation:Lcom/google/android/gm/ConversationInfo;

    .line 713
    return v7

    .line 695
    .end local v7           #result:Z
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mCallbacks:Lcom/google/android/gm/ConversationListController;

    invoke-virtual {v6}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->position()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gm/ConversationListController;->onConversationSelected(I)V
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :goto_1
    const/4 v7, 0x1

    .line 702
    .restart local v7       #result:Z
    goto :goto_0

    .line 697
    .end local v7           #result:Z
    :catch_0
    move-exception v0

    goto :goto_1

    .line 692
    :pswitch_data_0
    .packed-switch 0x7f0e00a4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 203
    if-eqz p1, :cond_0

    .line 204
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mListState:Landroid/os/Parcelable;

    .line 207
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ConversationListFragment;->setRetainInstance(Z)V

    .line 208
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 659
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationSelectionSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    :try_start_0
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v10, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    .local v10, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->getCursor()Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v7

    .line 672
    .local v7, cursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    iget v1, v10, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 674
    invoke-virtual {v7}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 676
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v9

    .line 677
    .local v9, inflater:Landroid/view/MenuInflater;
    const-string v1, "^^out"

    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 678
    const v1, 0x7f110001

    invoke-virtual {v9, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 681
    :cond_2
    invoke-static {v7}, Lcom/google/android/gm/ConversationInfo;->forCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mLongPressedConversation:Lcom/google/android/gm/ConversationInfo;

    .line 682
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mLongPressedConversation:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/ConversationListFragment;->mLongPressedConversation:Lcom/google/android/gm/ConversationInfo;

    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gm/MenuHandler;->onPrepareMenu(Landroid/view/Menu;Ljava/util/Map;Lcom/google/android/gm/ConversationInfo;Ljava/lang/String;Z)V

    goto :goto_0

    .line 666
    .end local v7           #cursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    .end local v9           #inflater:Landroid/view/MenuInflater;
    .end local v10           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :catch_0
    move-exception v8

    .line 667
    .local v8, e:Ljava/lang/ClassCastException;
    const-string v1, "Gmail"

    const-string v2, "bad menuInfo"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 215
    const v1, 0x7f04000c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 217
    .local v0, rootView:Landroid/view/View;
    const v1, 0x7f0e0036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mEmptyView:Landroid/view/View;

    .line 219
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    .line 220
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 221
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 222
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 225
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 228
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 229
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/ConversationListFragment;->mConvModeTopPadding:I

    .line 231
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/ConversationListFragment;->mConvModeBottomPadding:I

    .line 233
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/ConversationListFragment;->mConvListModeTopPadding:I

    .line 235
    return-object v0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
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
    .line 827
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    instance-of v2, p2, Lcom/google/android/gm/CanvasConversationHeaderView;

    if-eqz v2, :cond_0

    .line 828
    move-object v0, p2

    check-cast v0, Lcom/google/android/gm/CanvasConversationHeaderView;

    move-object v1, v0

    .line 829
    .local v1, headerView:Lcom/google/android/gm/CanvasConversationHeaderView;
    invoke-virtual {v1}, Lcom/google/android/gm/CanvasConversationHeaderView;->startDragMode()V

    .line 831
    .end local v1           #headerView:Lcom/google/android/gm/CanvasConversationHeaderView;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 18
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 757
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/ConversationListFragment;->getSelectedItemPosition()I

    move-result v17

    .line 758
    .local v17, selection:I
    const/4 v15, 0x0

    .line 761
    .local v15, handled:Z
    const/4 v2, -0x1

    move/from16 v0, v17

    move v1, v2

    if-ne v0, v1, :cond_1

    .line 762
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/ConversationListFragment;->getSelectedConversations()Ljava/util/Collection;

    move-result-object v6

    .line 763
    .local v6, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ConversationListFragment;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationListContext;->getAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/ConversationListFragment;->getSelectedLabels()Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x0

    move/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gm/MenuHandler;->onKeyDown(ILandroid/view/KeyEvent;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Lcom/google/android/gm/CommandListener;)Z

    move-result v15

    :cond_0
    move/from16 v16, v15

    .line 801
    .end local v6           #conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    .end local v15           #handled:Z
    .local v16, handled:Z
    :goto_0
    return v16

    .line 777
    .end local v16           #handled:Z
    .restart local v15       #handled:Z
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/ConversationListFragment;->getCursor()Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v14

    .line 778
    .local v14, cursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v14}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v2

    move/from16 v0, v17

    move v1, v2

    if-ge v0, v1, :cond_2

    .line 779
    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    .line 781
    const/4 v15, 0x0

    .line 786
    packed-switch p1, :pswitch_data_0

    .line 793
    :goto_1
    if-nez v15, :cond_2

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ConversationListFragment;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->getAccount()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/ConversationListFragment;->getSelectedConversations()Ljava/util/Collection;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/ConversationListFragment;->getSelectedLabels()Ljava/util/Map;

    move-result-object v12

    const/4 v13, 0x0

    move/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v7 .. v13}, Lcom/google/android/gm/MenuHandler;->onKeyDown(ILandroid/view/KeyEvent;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Lcom/google/android/gm/CommandListener;)Z

    move-result v15

    :cond_2
    move/from16 v16, v15

    .line 801
    .end local v15           #handled:Z
    .restart local v16       #handled:Z
    goto :goto_0

    .line 789
    .end local v16           #handled:Z
    .restart local v15       #handled:Z
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/CanvasConversationHeaderView;

    invoke-virtual {v2}, Lcom/google/android/gm/CanvasConversationHeaderView;->toggleCheckMark()V

    .line 790
    const/4 v15, 0x1

    goto :goto_1

    .line 786
    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_0
    .end packed-switch
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mCallbacks:Lcom/google/android/gm/ConversationListController;

    invoke-interface {v0, p3}, Lcom/google/android/gm/ConversationListController;->onConversationSelected(I)V

    .line 651
    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;Lcom/google/android/gm/ConversationInfo;Ljava/util/Map;ZLcom/google/android/gm/CommandListener;)Z
    .locals 6
    .parameter "item"
    .parameter "currentConversationInfo"
    .parameter
    .parameter "b"
    .parameter "singleCommandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MenuItem;",
            "Lcom/google/android/gm/ConversationInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;Z",
            "Lcom/google/android/gm/CommandListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 903
    .local p3, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    move-object v5, p5

    .line 904
    .local v5, commandListener:Lcom/google/android/gm/CommandListener;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 923
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mActiveCommand:Lcom/google/android/gm/ConversationListFragment$ActiveCommand;

    .line 926
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {p2}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/MenuHandler;->onMenuItemSelected(Landroid/view/MenuItem;Lcom/google/android/gm/ConversationInfo;Ljava/util/Map;ZLcom/google/android/gm/CommandListener;)Z

    move-result v0

    return v0

    .line 909
    :sswitch_0
    invoke-direct {p0, p2}, Lcom/google/android/gm/ConversationListFragment;->fadeOnDestructiveCommand(Lcom/google/android/gm/ConversationInfo;)V

    .line 910
    new-instance v0, Lcom/google/android/gm/ConversationListFragment$ActiveCommand;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-direct {v0, v1, p5}, Lcom/google/android/gm/ConversationListFragment$ActiveCommand;-><init>(ILcom/google/android/gm/CommandListener;)V

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mActiveCommand:Lcom/google/android/gm/ConversationListFragment$ActiveCommand;

    .line 911
    iget-object v5, p0, Lcom/google/android/gm/ConversationListFragment;->mActiveCommand:Lcom/google/android/gm/ConversationListFragment$ActiveCommand;

    .line 912
    goto :goto_0

    .line 914
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->isMagicInboxView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    invoke-direct {p0, p2}, Lcom/google/android/gm/ConversationListFragment;->fadeOnDestructiveCommand(Lcom/google/android/gm/ConversationInfo;)V

    .line 918
    new-instance v0, Lcom/google/android/gm/ConversationListFragment$ActiveCommand;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-direct {v0, v1, p5}, Lcom/google/android/gm/ConversationListFragment$ActiveCommand;-><init>(ILcom/google/android/gm/CommandListener;)V

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mActiveCommand:Lcom/google/android/gm/ConversationListFragment$ActiveCommand;

    .line 919
    iget-object v5, p0, Lcom/google/android/gm/ConversationListFragment;->mActiveCommand:Lcom/google/android/gm/ConversationListFragment$ActiveCommand;

    goto :goto_0

    .line 904
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0043 -> :sswitch_0
        0x7f0e00a5 -> :sswitch_0
        0x7f0e00a6 -> :sswitch_0
        0x7f0e00aa -> :sswitch_0
        0x7f0e00c7 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 530
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 533
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 534
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 488
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 489
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 615
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 618
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mListState:Landroid/os/Parcelable;

    .line 619
    const-string v0, "liststate"

    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 622
    return-void
.end method

.method public onSetBecomeUnempty(Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->refreshList()V

    .line 634
    return-void
.end method

.method public onSetChanged(Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 646
    return-void
.end method

.method public onSetEmpty(Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 638
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->refreshList()V

    .line 639
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 478
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 479
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mUpdateTimestampsRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 480
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 542
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 545
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mListState:Landroid/os/Parcelable;

    .line 546
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mUpdateTimestampsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 547
    return-void
.end method

.method public onUndoCancel()V
    .locals 1

    .prologue
    .line 896
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ConversationListFragment;->hideUndoView(Z)V

    .line 897
    return-void
.end method

.method public onViewModeChanged(Lcom/google/android/gm/ViewMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 876
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {p1}, Lcom/google/android/gm/ViewMode;->getMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 892
    :goto_0
    return-void

    .line 878
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 879
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    const v2, 0x7f02008d

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 882
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->updateListPadding()V

    goto :goto_0

    .line 885
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    const v2, 0x7f020076

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 886
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 889
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->updateListPadding()V

    goto :goto_0

    .line 876
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->getCursor()Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v1

    .line 497
    .local v1, conversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    move v0, p1

    .line 500
    .local v0, activityHasFocus:Z
    new-instance v2, Lcom/google/android/gm/ConversationListFragment$7;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gm/ConversationListFragment$7;-><init>(Lcom/google/android/gm/ConversationListFragment;ZLcom/google/android/gm/provider/Gmail$ConversationCursor;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/google/android/gm/ConversationListFragment$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 522
    return-void
.end method

.method public postUndo(Lcom/google/android/gm/UndoOperation;)V
    .locals 0
    .parameter "undoOperation"

    .prologue
    .line 572
    iput-object p1, p0, Lcom/google/android/gm/ConversationListFragment;->mPostedUndoOp:Lcom/google/android/gm/UndoOperation;

    .line 573
    return-void
.end method

.method public setCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V
    .locals 9
    .parameter "conversationCursor"

    .prologue
    const/4 v7, 0x1

    .line 410
    iget-object v5, p0, Lcom/google/android/gm/ConversationListFragment;->mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    if-eqz v5, :cond_2

    .line 411
    iget-object v5, p0, Lcom/google/android/gm/ConversationListFragment;->mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    invoke-virtual {v5, p1}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->swapCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V

    .line 415
    iget-object v5, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/google/android/gm/ConversationListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 419
    iget-object v5, p0, Lcom/google/android/gm/ConversationListFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v5, :cond_0

    .line 420
    iget-object v5, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/google/android/gm/ConversationListFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 421
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/gm/ConversationListFragment;->mListState:Landroid/os/Parcelable;

    .line 424
    :cond_0
    iget-object v5, p0, Lcom/google/android/gm/ConversationListFragment;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    if-eqz v5, :cond_1

    .line 425
    iget-object v5, p0, Lcom/google/android/gm/ConversationListFragment;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v5, p1}, Lcom/google/android/gm/ConversationSelectionSet;->validateAgainstCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V

    .line 428
    :cond_1
    if-nez p1, :cond_3

    .line 471
    :cond_2
    :goto_0
    return-void

    .line 435
    :cond_3
    iget-object v5, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 436
    invoke-static {p1, v7}, Lcom/google/android/gm/Utils;->markConversationsVisible(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Z)V

    .line 439
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getError()Lcom/google/android/gm/provider/Gmail$CursorError;

    move-result-object v0

    .line 440
    .local v0, cursorError:Lcom/google/android/gm/provider/Gmail$CursorError;
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getStatus()Lcom/google/android/gm/provider/Gmail$CursorStatus;

    move-result-object v1

    .line 443
    .local v1, cursorStatus:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->isSearchResult()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v5

    if-lez v5, :cond_6

    .line 444
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v3

    .line 445
    .local v3, displayCount:I
    const v4, 0x7f0d00dc

    .line 446
    .local v4, formatId:I
    sget-object v5, Lcom/google/android/gm/provider/Gmail$CursorStatus;->COMPLETE:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    if-eq v1, v5, :cond_5

    .line 447
    const v4, 0x7f0d00db

    .line 448
    div-int/lit8 v5, v3, 0xa

    mul-int/lit8 v3, v5, 0xa

    .line 451
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v4, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, dispText:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/gm/ConversationListFragment;->mSearchResultCountTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    .end local v2           #dispText:Ljava/lang/String;
    .end local v3           #displayCount:I
    .end local v4           #formatId:I
    :cond_6
    sget-object v5, Lcom/google/android/gm/provider/Gmail$CursorStatus;->ERROR:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    if-ne v1, v5, :cond_2

    sget-object v5, Lcom/google/android/gm/provider/Gmail$CursorError;->AUTH_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    if-ne v0, v5, :cond_2

    .line 460
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v6}, Lcom/google/android/gm/ConversationListContext;->getAccount()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/google/android/gm/ConversationListFragment$6;

    invoke-direct {v7, p0}, Lcom/google/android/gm/ConversationListFragment$6;-><init>(Lcom/google/android/gm/ConversationListFragment;)V

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/AccountHelper;->promptForCredentials(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/gm/AccountHelper$CredentialsCallback;)V

    goto :goto_0
.end method

.method public setSelectedPosition(Lcom/google/android/gm/ConversationPositionTracker;I)V
    .locals 5
    .parameter "selectedConversationPos"
    .parameter "scrollMode"

    .prologue
    const/4 v4, 0x1

    .line 810
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/google/android/gm/ConversationListFragment;->mPosition:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 811
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->getCursor()Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 812
    invoke-virtual {p1}, Lcom/google/android/gm/ConversationPositionTracker;->getPosition()I

    move-result v0

    .line 813
    .local v0, position:I
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 814
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 815
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 819
    :cond_0
    :goto_0
    iput v0, p0, Lcom/google/android/gm/ConversationListFragment;->mPosition:I

    .line 823
    .end local v0           #position:I
    :goto_1
    return-void

    .line 816
    .restart local v0       #position:I
    :cond_1
    if-ne p2, v4, :cond_0

    .line 817
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 821
    .end local v0           #position:I
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gm/ConversationListFragment;->mPosition:I

    goto :goto_1
.end method

.method public showList(Lcom/google/android/gm/ConversationListContext;)V
    .locals 5
    .parameter "viewContext"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 359
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1, p1}, Lcom/google/android/gm/ConversationListContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gm/ConversationListContext;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_1
    const/4 v1, 0x1

    move v0, v1

    .line 362
    .local v0, accountChanged:Z
    :goto_0
    iput-object p1, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    .line 363
    iput-object v3, p0, Lcom/google/android/gm/ConversationListFragment;->mListState:Landroid/os/Parcelable;

    .line 364
    invoke-virtual {p0, v3, v4}, Lcom/google/android/gm/ConversationListFragment;->setSelectedPosition(Lcom/google/android/gm/ConversationPositionTracker;I)V

    .line 366
    iget-boolean v1, p0, Lcom/google/android/gm/ConversationListFragment;->mInitialized:Z

    if-eqz v1, :cond_4

    .line 367
    if-eqz v0, :cond_3

    .line 368
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    if-eqz v1, :cond_2

    .line 369
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationSelectionSet;->clear()V

    .line 371
    :cond_2
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    invoke-virtual {p1}, Lcom/google/android/gm/ConversationListContext;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->changeAccount(Ljava/lang/String;)V

    .line 376
    :cond_3
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 377
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    invoke-virtual {p1}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->setLabel(Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 379
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    invoke-virtual {v1, v3}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->swapCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V

    .line 381
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->configureSearchResultHeader()V

    .line 384
    .end local v0           #accountChanged:Z
    :cond_4
    return-void

    :cond_5
    move v0, v4

    .line 360
    goto :goto_0
.end method

.method public showUndoView(Lcom/google/android/gm/UndoOperation;Z)V
    .locals 3
    .parameter "undoOperation"
    .parameter "animate"

    .prologue
    .line 553
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoView:Lcom/google/android/gm/UndoBarView;

    invoke-virtual {v1}, Lcom/google/android/gm/UndoBarView;->isShown()Z

    move-result v0

    .line 554
    .local v0, wasShown:Z
    iput-object p1, p0, Lcom/google/android/gm/ConversationListFragment;->mCurrUndoOp:Lcom/google/android/gm/UndoOperation;

    .line 555
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 556
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->getUndoShowAnimation()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoView:Lcom/google/android/gm/UndoBarView;

    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gm/UndoBarView;->show(Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/UndoOperation;)V

    .line 562
    if-nez v0, :cond_0

    .line 563
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->updateListPadding()V

    goto :goto_0
.end method
