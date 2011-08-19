.class public Lcom/android/email/activity/MailboxListFragment;
.super Landroid/app/ListFragment;
.source "MailboxListFragment.java"

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;,
        Lcom/android/email/activity/MailboxListFragment$EmptyCallback;,
        Lcom/android/email/activity/MailboxListFragment$Callback;
    }
.end annotation


# static fields
.field private static sDropActiveDrawable:Landroid/graphics/drawable/Drawable;

.field private static sDropTrashColor:Ljava/lang/Integer;


# instance fields
.field private mAccountId:J

.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

.field private mDragInProgress:Z

.field private mDragItemHeight:I

.field private mDragItemMailboxId:J

.field private mDropTargetAdapterPosition:I

.field private mDropTargetView:Lcom/android/email/activity/MailboxListItem;

.field private mLastLoadedAccountId:J

.field private mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mMailboxesAdapterCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

.field private mOpenRequested:Z

.field private mRefreshManager:Lcom/android/email/RefreshManager;

.field private mResumed:Z

.field private mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

.field private mSelectedMailboxId:J

.field private mTargetScrolling:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const-wide/16 v1, -0x1

    .line 63
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 83
    sget-object v0, Lcom/android/email/activity/MailboxListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MailboxListFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    .line 93
    iput-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mLastLoadedAccountId:J

    .line 94
    iput-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    .line 95
    iput-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    .line 103
    iput-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    .line 105
    iput v3, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetAdapterPosition:I

    .line 109
    iput v3, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    .line 115
    new-instance v0, Lcom/android/email/activity/MailboxListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MailboxListFragment$1;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxesAdapterCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

    .line 348
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/MailboxListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/MailboxListFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/MailboxListFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/email/activity/MailboxListFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/android/email/activity/MailboxListFragment;->mLastLoadedAccountId:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/email/activity/MailboxListFragment;Lcom/android/emailcommon/utility/Utility$ListStateSaver;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/MailboxListFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxListFragment;->highlightSelectedMailbox(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/MailboxListFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private clearContent()V
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 200
    iput-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mLastLoadedAccountId:J

    .line 201
    iput-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    .line 202
    iput-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    .line 204
    iput-boolean v2, p0, Lcom/android/email/activity/MailboxListFragment;->mOpenRequested:Z

    .line 205
    iput-boolean v2, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    .line 207
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->stopLoader()V

    .line 208
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 211
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MailboxListFragment;->setListShownNoAnimation(Z)V

    .line 212
    return-void
.end method

.method private highlightSelectedMailbox(Z)V
    .locals 8
    .parameter "ensureSelectionVisible"

    .prologue
    .line 440
    const-string v2, ""

    .line 441
    .local v2, mailboxName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 442
    .local v3, unreadCount:I
    iget-wide v4, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 444
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->clearChoices()V

    .line 460
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    iget-wide v5, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    invoke-interface {v4, v5, v6, v2, v3}, Lcom/android/email/activity/MailboxListFragment$Callback;->onCurrentMailboxUpdated(JLjava/lang/String;I)V

    .line 461
    return-void

    .line 446
    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 447
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 448
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v4, v1}, Lcom/android/email/activity/MailboxesAdapter;->getId(I)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 451
    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 452
    if-eqz p1, :cond_3

    .line 453
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v4, v5, v1}, Lcom/android/emailcommon/utility/Utility;->listViewSmoothScrollToPosition(Landroid/app/Activity;Landroid/widget/ListView;I)V

    .line 455
    :cond_3
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v4, v1}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(I)Ljava/lang/String;

    move-result-object v2

    .line 456
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v4, v1}, Lcom/android/email/activity/MailboxesAdapter;->getUnreadCount(I)I

    move-result v3

    .line 457
    goto :goto_0
.end method

.method private onDragEnded()V
    .locals 2

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    if-eqz v0, :cond_0

    .line 594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    .line 596
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxesAdapter;->enableUpdates(Z)V

    .line 597
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxesAdapter;->notifyDataSetChanged()V

    .line 599
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->updateChildViews()V

    .line 601
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->stopScrolling()V

    .line 603
    :cond_0
    return-void
.end method

.method private onDragExited()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 486
    iget v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetAdapterPosition:I

    if-eq v0, v4, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    iget-boolean v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    iget-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MailboxListItem;->setDropTargetBackground(ZJ)V

    .line 488
    iput v4, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetAdapterPosition:I

    .line 490
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->stopScrolling()V

    .line 491
    return-void
.end method

.method private onDragLocation(Landroid/view/DragEvent;)V
    .locals 15
    .parameter "event"

    .prologue
    .line 498
    iget v11, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    if-gtz v11, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v11

    float-to-int v5, v11

    .line 504
    .local v5, rawTouchY:I
    const/4 v3, 0x0

    .line 505
    .local v3, offset:I
    iget-object v11, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getCount()I

    move-result v11

    if-lez v11, :cond_2

    .line 506
    iget-object v11, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v3

    .line 508
    :cond_2
    sub-int v11, v5, v3

    iget v12, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    div-int v10, v11, v12

    .line 509
    .local v10, targetScreenPosition:I
    iget-object v11, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 510
    .local v0, firstVisibleItem:I
    add-int v9, v0, v10

    .line 511
    .local v9, targetAdapterPosition:I
    iget v11, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetAdapterPosition:I

    if-eq v9, v11, :cond_5

    .line 517
    iget v11, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetAdapterPosition:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    .line 518
    iget-object v11, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    const/4 v12, 0x1

    iget-wide v13, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/email/activity/MailboxListItem;->setDropTargetBackground(ZJ)V

    .line 521
    :cond_3
    iget-object v11, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v11, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxListItem;

    .line 525
    .local v2, newTarget:Lcom/android/email/activity/MailboxListItem;
    if-nez v2, :cond_4

    .line 529
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->onDragExited()V

    goto :goto_0

    .line 531
    :cond_4
    iget-object v11, v2, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_6

    .line 535
    sget-object v11, Lcom/android/email/activity/MailboxListFragment;->sDropTrashColor:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/android/email/activity/MailboxListItem;->setBackgroundColor(I)V

    .line 549
    :goto_1
    iput v9, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetAdapterPosition:I

    .line 550
    iput-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    .line 555
    .end local v2           #newTarget:Lcom/android/email/activity/MailboxListItem;
    :cond_5
    iget-object v11, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getHeight()I

    move-result v11

    const/16 v12, 0x40

    sub-int/2addr v11, v12

    sub-int v6, v5, v11

    .line 556
    .local v6, scrollDiff:I
    if-lez v6, :cond_8

    const/4 v11, 0x1

    move v7, v11

    .line 557
    .local v7, scrollDown:Z
    :goto_2
    const/16 v11, 0x40

    if-le v11, v5, :cond_9

    const/4 v11, 0x1

    move v8, v11

    .line 558
    .local v8, scrollUp:Z
    :goto_3
    iget-boolean v11, p0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    if-nez v11, :cond_a

    if-eqz v7, :cond_a

    .line 559
    iget-object v11, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getCount()I

    move-result v11

    sub-int v1, v11, v9

    .line 560
    .local v1, itemsToScroll:I
    add-int/lit8 v11, v1, 0x1

    iget v12, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    mul-int v4, v11, v12

    .line 561
    .local v4, pixelsToScroll:I
    iget-object v11, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    mul-int/lit8 v12, v4, 0x4

    invoke-virtual {v11, v4, v12}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 565
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    goto/16 :goto_0

    .line 536
    .end local v1           #itemsToScroll:I
    .end local v4           #pixelsToScroll:I
    .end local v6           #scrollDiff:I
    .end local v7           #scrollDown:Z
    .end local v8           #scrollUp:Z
    .restart local v2       #newTarget:Lcom/android/email/activity/MailboxListItem;
    :cond_6
    iget-wide v11, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    invoke-virtual {v2, v11, v12}, Lcom/android/email/activity/MailboxListItem;->isDropTarget(J)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 540
    sget-object v11, Lcom/android/email/activity/MailboxListFragment;->sDropActiveDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v11}, Lcom/android/email/activity/MailboxListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 545
    :cond_7
    const/4 v9, -0x1

    .line 546
    const/4 v11, 0x1

    iget-wide v12, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    invoke-virtual {v2, v11, v12, v13}, Lcom/android/email/activity/MailboxListItem;->setDropTargetBackground(ZJ)V

    goto :goto_1

    .line 556
    .end local v2           #newTarget:Lcom/android/email/activity/MailboxListItem;
    .restart local v6       #scrollDiff:I
    :cond_8
    const/4 v11, 0x0

    move v7, v11

    goto :goto_2

    .line 557
    .restart local v7       #scrollDown:Z
    :cond_9
    const/4 v11, 0x0

    move v8, v11

    goto :goto_3

    .line 566
    .restart local v8       #scrollUp:Z
    :cond_a
    iget-boolean v11, p0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    if-nez v11, :cond_b

    if-eqz v8, :cond_b

    .line 567
    add-int/lit8 v11, v0, 0x1

    iget v12, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    mul-int v4, v11, v12

    .line 568
    .restart local v4       #pixelsToScroll:I
    iget-object v11, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    neg-int v12, v4

    mul-int/lit8 v13, v4, 0x4

    invoke-virtual {v11, v12, v13}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 572
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    goto/16 :goto_0

    .line 573
    .end local v4           #pixelsToScroll:I
    :cond_b
    if-nez v8, :cond_0

    if-nez v7, :cond_0

    .line 574
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->stopScrolling()V

    goto/16 :goto_0
.end method

.method private onDragStarted(Landroid/view/DragEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 609
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v1

    .line 610
    .local v1, description:Landroid/content/ClipDescription;
    invoke-virtual {v1}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v4

    .line 611
    .local v4, mimeTypeCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 612
    invoke-virtual {v1, v2}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v3

    .line 613
    .local v3, mimeType:Ljava/lang/String;
    const-string v5, "vnd.android.cursor.item/email-message"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 617
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    .line 619
    const/16 v5, 0x2d

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 620
    .local v0, dash:I
    if-lez v0, :cond_0

    .line 622
    add-int/lit8 v5, v0, 0x1

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :cond_0
    :goto_1
    iput-boolean v8, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    .line 629
    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v5, v7}, Lcom/android/email/activity/MailboxesAdapter;->enableUpdates(Z)V

    .line 631
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->updateChildViews()V

    move v5, v8

    .line 635
    .end local v0           #dash:I
    .end local v3           #mimeType:Ljava/lang/String;
    :goto_2
    return v5

    .line 611
    .restart local v3       #mimeType:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3           #mimeType:Ljava/lang/String;
    :cond_2
    move v5, v7

    .line 635
    goto :goto_2

    .line 623
    .restart local v0       #dash:I
    .restart local v3       #mimeType:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private onDrop(Landroid/view/DragEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v11, 0x1

    .line 639
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->stopScrolling()V

    .line 641
    iget v9, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetAdapterPosition:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    const/4 v9, 0x0

    .line 672
    :goto_0
    return v9

    .line 642
    :cond_0
    iget-object v9, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    .line 643
    .local v1, controller:Lcom/android/email/Controller;
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 644
    .local v0, clipData:Landroid/content/ClipData;
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    .line 649
    .local v2, count:I
    new-array v6, v2, [J

    .line 650
    .local v6, messageIds:[J
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 651
    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v8

    .line 652
    .local v8, uri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 653
    .local v7, msgNum:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 654
    .local v4, id:J
    aput-wide v4, v6, v3

    .line 650
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 657
    .end local v4           #id:J
    .end local v7           #msgNum:Ljava/lang/String;
    .end local v8           #uri:Landroid/net/Uri;
    :cond_1
    new-instance v9, Lcom/android/email/activity/MailboxListFragment$2;

    invoke-direct {v9, p0, v6, v1}, Lcom/android/email/activity/MailboxListFragment$2;-><init>(Lcom/android/email/activity/MailboxListFragment;[JLcom/android/email/Controller;)V

    invoke-static {v9}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move v9, v11

    .line 672
    goto :goto_0
.end method

.method private refreshMailboxListIfStale()V
    .locals 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->isMailboxListStale(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->refreshMailboxList(J)Z

    .line 434
    :cond_0
    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 314
    const-string v0, "MailboxListFragment.state.selected_mailbox_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    .line 315
    const-string v0, "MailboxListFragment.state.listState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    .line 316
    return-void
.end method

.method private startLoading()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 322
    iput-boolean v1, p0, Lcom/android/email/activity/MailboxListFragment;->mOpenRequested:Z

    .line 324
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxListFragment;->setListShown(Z)V

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, accountChanging:Z
    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mLastLoadedAccountId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mLastLoadedAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 333
    const/4 v0, 0x1

    .line 334
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 337
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->refreshMailboxListIfStale()V

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;

    invoke-direct {v3, p0, v0}, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;-><init>(Lcom/android/email/activity/MailboxListFragment;Z)V

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 341
    return-void
.end method

.method private stopLoader()V
    .locals 2

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 345
    .local v0, lm:Landroid/app/LoaderManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 346
    return-void
.end method

.method private stopScrolling()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 582
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    if-eqz v0, :cond_0

    .line 583
    iput-boolean v1, p0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    .line 588
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 590
    :cond_0
    return-void
.end method

.method private updateChildViews()V
    .locals 6

    .prologue
    .line 470
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 472
    .local v2, itemCount:I
    if-lez v2, :cond_0

    iget v3, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    if-gez v3, :cond_0

    .line 473
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    .line 475
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 476
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxListItem;

    .line 477
    .local v1, item:Lcom/android/email/activity/MailboxListItem;
    iget-boolean v3, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    iget-wide v4, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/email/activity/MailboxListItem;->setDropTargetBackground(ZJ)V

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    .end local v1           #item:Lcom/android/email/activity/MailboxListItem;
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    .line 189
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 191
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 192
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 193
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    .line 162
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    .line 163
    new-instance v1, Lcom/android/email/activity/MailboxesAdapter;

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxesAdapterCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/email/activity/MailboxesAdapter;-><init>(Landroid/content/Context;ILcom/android/email/activity/MailboxesAdapter$Callback;)V

    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    .line 165
    if-eqz p1, :cond_0

    .line 166
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxListFragment;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 168
    :cond_0
    sget-object v1, Lcom/android/email/activity/MailboxListFragment;->sDropTrashColor:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 170
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListFragment;->sDropTrashColor:Ljava/lang/Integer;

    .line 171
    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListFragment;->sDropActiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 173
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 178
    const v0, 0x7f04001e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 300
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 301
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 677
    const/4 v0, 0x0

    .line 678
    .local v0, result:Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 718
    :goto_0
    :pswitch_0
    return v0

    .line 680
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/email/activity/MailboxListFragment;->onDragStarted(Landroid/view/DragEvent;)Z

    move-result v0

    .line 681
    goto :goto_0

    .line 695
    :pswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->onDragExited()V

    goto :goto_0

    .line 702
    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->onDragEnded()V

    goto :goto_0

    .line 706
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/android/email/activity/MailboxListFragment;->onDragLocation(Landroid/view/DragEvent;)V

    goto :goto_0

    .line 713
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/android/email/activity/MailboxListFragment;->onDrop(Landroid/view/DragEvent;)Z

    move-result v0

    .line 714
    goto :goto_0

    .line 678
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "idDontUseIt"
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
    .line 416
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v2, p3}, Lcom/android/email/activity/MailboxesAdapter;->getId(I)J

    move-result-wide v0

    .line 417
    .local v0, id:J
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v2, p3}, Lcom/android/email/activity/MailboxesAdapter;->isAccountRow(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    invoke-interface {v2, v0, v1}, Lcom/android/email/activity/MailboxListFragment$Callback;->onAccountSelected(J)V

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    iget-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/android/email/activity/MailboxListFragment$Callback;->onMailboxSelected(JJ)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mResumed:Z

    .line 277
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 278
    new-instance v0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    .line 279
    return-void
.end method

.method public onRefresh()V
    .locals 4

    .prologue
    .line 425
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->refreshMailboxList(J)Z

    .line 428
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 261
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mResumed:Z

    .line 266
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mOpenRequested:Z

    if-eqz v0, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->startLoading()V

    .line 269
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 308
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 309
    const-string v0, "MailboxListFragment.state.selected_mailbox_id"

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 310
    const-string v0, "MailboxListFragment.state.listState"

    new-instance v1, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 311
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 251
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 289
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 290
    return-void
.end method

.method public openMailboxes(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 221
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 224
    :cond_0
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_2

    .line 233
    :cond_1
    :goto_0
    return-void

    .line 227
    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->clearContent()V

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mOpenRequested:Z

    .line 229
    iput-wide p1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    .line 230
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mResumed:Z

    if-eqz v0, :cond_1

    .line 231
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->startLoading()V

    goto :goto_0
.end method

.method public setCallback(Lcom/android/email/activity/MailboxListFragment$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 196
    if-nez p1, :cond_0

    sget-object v0, Lcom/android/email/activity/MailboxListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MailboxListFragment$Callback;

    :goto_0
    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    .line 197
    return-void

    :cond_0
    move-object v0, p1

    .line 196
    goto :goto_0
.end method

.method public setSelectedMailbox(J)V
    .locals 1
    .parameter "mailboxId"

    .prologue
    .line 236
    iput-wide p1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    .line 237
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mResumed:Z

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MailboxListFragment;->highlightSelectedMailbox(Z)V

    .line 240
    :cond_0
    return-void
.end method
