.class public abstract Landroid/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterView$1;,
        Landroid/widget/AdapterView$SelectionNotifier;,
        Landroid/widget/AdapterView$AdapterDataSetObserver;,
        Landroid/widget/AdapterView$AdapterContextMenuInfo;,
        Landroid/widget/AdapterView$OnItemSelectedListener;,
        Landroid/widget/AdapterView$OnItemLongClickListener;,
        Landroid/widget/AdapterView$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 219
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 58
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 75
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 85
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 117
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 143
    iput v3, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 149
    iput-wide v1, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 154
    iput v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 160
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 192
    iput v3, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 197
    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 216
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 75
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 85
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 117
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 143
    iput v3, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 149
    iput-wide v1, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 154
    iput v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 160
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 192
    iput v3, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 197
    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 216
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 227
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 75
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 85
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 117
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 143
    iput v3, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 149
    iput-wide v1, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 154
    iput v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 160
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 192
    iput v3, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 197
    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 216
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 228
    return-void
.end method

.method static synthetic access$000(Landroid/widget/AdapterView;Landroid/os/Parcelable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/AdapterView;)Landroid/os/Parcelable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/AdapterView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/widget/AdapterView;->fireOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .registers 7

    .prologue
    .line 864
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_5

    .line 875
    :goto_4
    return-void

    .line 867
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 868
    .local v3, selection:I
    if-ltz v3, :cond_1e

    .line 869
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 870
    .local v2, v:Landroid/view/View;
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_4

    .line 873
    .end local v2           #v:Landroid/view/View;
    :cond_1e
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    goto :goto_4
.end method

.method private updateEmptyStatus(Z)V
    .registers 8
    .parameter "empty"

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 706
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 707
    const/4 p1, 0x0

    .line 710
    :cond_a
    if-eqz p1, :cond_2d

    .line 711
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_29

    .line 712
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 713
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 722
    :goto_18
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_28

    .line 723
    iget v2, p0, Landroid/widget/AdapterView;->mLeft:I

    iget v3, p0, Landroid/widget/AdapterView;->mTop:I

    iget v4, p0, Landroid/widget/AdapterView;->mRight:I

    iget v5, p0, Landroid/widget/AdapterView;->mBottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 729
    :cond_28
    :goto_28
    return-void

    .line 716
    :cond_29
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    goto :goto_18

    .line 726
    :cond_2d
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 727
    :cond_36
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    goto :goto_28
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 433
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5
    .parameter "child"
    .parameter "index"

    .prologue
    .line 446
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 474
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter "child"
    .parameter "params"

    .prologue
    .line 459
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .registers 2

    .prologue
    .line 908
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method checkFocus()V
    .registers 7

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 687
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 688
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_3d

    :cond_e
    move v1, v5

    .line 689
    .local v1, empty:Z
    :goto_f
    if-eqz v1, :cond_17

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_3f

    :cond_17
    move v2, v5

    .line 693
    .local v2, focusable:Z
    :goto_18
    if-eqz v2, :cond_41

    iget-boolean v3, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_41

    move v3, v5

    :goto_1f
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 694
    if-eqz v2, :cond_43

    iget-boolean v3, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_43

    move v3, v5

    :goto_29
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 695
    iget-object v3, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_3c

    .line 696
    if-eqz v0, :cond_38

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_45

    :cond_38
    move v3, v5

    :goto_39
    invoke-direct {p0, v3}, Landroid/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 698
    :cond_3c
    return-void

    .end local v1           #empty:Z
    .end local v2           #focusable:Z
    :cond_3d
    move v1, v4

    .line 688
    goto :goto_f

    .restart local v1       #empty:Z
    :cond_3f
    move v2, v4

    .line 689
    goto :goto_18

    .restart local v2       #focusable:Z
    :cond_41
    move v3, v4

    .line 693
    goto :goto_1f

    :cond_43
    move v3, v4

    .line 694
    goto :goto_29

    :cond_45
    move v3, v4

    .line 696
    goto :goto_39
.end method

.method checkSelectionChanged()V
    .registers 5

    .prologue
    .line 975
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_e

    iget-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 976
    :cond_e
    invoke-virtual {p0}, Landroid/widget/AdapterView;->selectionChanged()V

    .line 977
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 978
    iget-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 980
    :cond_19
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    .line 879
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    .line 884
    .local v0, populated:Z
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_d

    .line 885
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 890
    :cond_d
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 891
    .local v1, selectedView:Landroid/view/View;
    if-eqz v1, :cond_17

    .line 892
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 895
    :cond_17
    if-nez v0, :cond_30

    .line 896
    if-eqz v1, :cond_22

    .line 897
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 899
    :cond_22
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 900
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 903
    :cond_30
    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 766
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 767
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 758
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 759
    return-void
.end method

.method findSyncPosition()I
    .registers 21

    .prologue
    .line 991
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v3, v0

    .line 993
    .local v3, count:I
    if-nez v3, :cond_a

    .line 994
    const/16 v16, -0x1

    .line 1066
    :goto_9
    return v16

    .line 997
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/AdapterView;->mSyncRowId:J

    move-wide v9, v0

    .line 998
    .local v9, idToMatch:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSyncPosition:I

    move v15, v0

    .line 1001
    .local v15, seed:I
    const-wide/high16 v16, -0x8000

    cmp-long v16, v9, v16

    if-nez v16, :cond_1d

    .line 1002
    const/16 v16, -0x1

    goto :goto_9

    .line 1006
    :cond_1d
    const/16 v16, 0x0

    move/from16 v0, v16

    move v1, v15

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1007
    const/16 v16, 0x1

    sub-int v16, v3, v16

    move/from16 v0, v16

    move v1, v15

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1009
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x64

    add-long v4, v16, v18

    .line 1014
    .local v4, endTime:J
    move v6, v15

    .line 1017
    .local v6, first:I
    move v11, v15

    .line 1020
    .local v11, last:I
    const/4 v12, 0x0

    .line 1030
    .local v12, next:Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1031
    .local v2, adapter:Landroid/widget/Adapter;,"TT;"
    if-nez v2, :cond_4f

    .line 1032
    const/16 v16, -0x1

    goto :goto_9

    .line 1050
    .local v7, hitFirst:Z
    .local v8, hitLast:Z
    .local v13, rowId:J
    :cond_45
    if-nez v7, :cond_4b

    if-eqz v12, :cond_86

    if-nez v8, :cond_86

    .line 1052
    :cond_4b
    add-int/lit8 v11, v11, 0x1

    .line 1053
    move v15, v11

    .line 1055
    const/4 v12, 0x0

    .line 1035
    .end local v7           #hitFirst:Z
    .end local v8           #hitLast:Z
    .end local v13           #rowId:J
    :cond_4f
    :goto_4f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    cmp-long v16, v16, v4

    if-gtz v16, :cond_79

    .line 1036
    invoke-interface {v2, v15}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v13

    .line 1037
    .restart local v13       #rowId:J
    cmp-long v16, v13, v9

    if-nez v16, :cond_62

    move/from16 v16, v15

    .line 1039
    goto :goto_9

    .line 1042
    :cond_62
    const/16 v16, 0x1

    sub-int v16, v3, v16

    move v0, v11

    move/from16 v1, v16

    if-ne v0, v1, :cond_7c

    const/16 v16, 0x1

    move/from16 v8, v16

    .line 1043
    .restart local v8       #hitLast:Z
    :goto_6f
    if-nez v6, :cond_81

    const/16 v16, 0x1

    move/from16 v7, v16

    .line 1045
    .restart local v7       #hitFirst:Z
    :goto_75
    if-eqz v8, :cond_45

    if-eqz v7, :cond_45

    .line 1066
    .end local v7           #hitFirst:Z
    .end local v8           #hitLast:Z
    .end local v13           #rowId:J
    :cond_79
    const/16 v16, -0x1

    goto :goto_9

    .line 1042
    .restart local v13       #rowId:J
    :cond_7c
    const/16 v16, 0x0

    move/from16 v8, v16

    goto :goto_6f

    .line 1043
    .restart local v8       #hitLast:Z
    :cond_81
    const/16 v16, 0x0

    move/from16 v7, v16

    goto :goto_75

    .line 1056
    .restart local v7       #hitFirst:Z
    :cond_86
    if-nez v8, :cond_8c

    if-nez v12, :cond_4f

    if-nez v7, :cond_4f

    .line 1058
    :cond_8c
    add-int/lit8 v6, v6, -0x1

    .line 1059
    move v15, v6

    .line 1061
    const/4 v12, 0x1

    goto :goto_4f
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 563
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .registers 2

    .prologue
    .line 647
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .registers 2

    .prologue
    .line 606
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .registers 4
    .parameter "position"

    .prologue
    .line 738
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 739
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_8

    if-gez p1, :cond_a

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_9
.end method

.method public getItemIdAtPosition(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 743
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 744
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_8

    if-gez p1, :cond_b

    :cond_8
    const-wide/high16 v1, -0x8000

    :goto_a
    return-wide v1

    :cond_b
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_a
.end method

.method public getLastVisiblePosition()I
    .registers 3

    .prologue
    .line 616
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 267
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .registers 2

    .prologue
    .line 330
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .registers 2

    .prologue
    .line 374
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .registers 9
    .parameter "view"

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v6, -0x1

    .line 576
    move-object v3, p1

    .line 579
    .local v3, listItem:Landroid/view/View;
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, v:Landroid/view/View;
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_b} :catch_10

    move-result v5

    if-nez v5, :cond_14

    .line 580
    move-object v3, v4

    goto :goto_2

    .line 582
    .end local v4           #v:Landroid/view/View;
    :catch_10
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/lang/ClassCastException;
    move v5, v6

    .line 596
    .end local v1           #e:Ljava/lang/ClassCastException;
    :goto_13
    return v5

    .line 588
    .restart local v4       #v:Landroid/view/View;
    :cond_14
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    .line 589
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_19
    if-ge v2, v0, :cond_2c

    .line 590
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 591
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_13

    .line 589
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_2c
    move v5, v6

    .line 596
    goto :goto_13
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 547
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 548
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 549
    .local v1, selection:I
    if-eqz v0, :cond_17

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_17

    if-ltz v1, :cond_17

    .line 550
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 552
    :goto_16
    return-object v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public getSelectedItemId()J
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 533
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 524
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .registers 11

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const-wide/high16 v8, -0x8000

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 912
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 913
    .local v0, count:I
    const/4 v1, 0x0

    .line 915
    .local v1, found:Z
    if-lez v0, :cond_40

    .line 920
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v4, :cond_20

    .line 923
    iput-boolean v5, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 927
    invoke-virtual {p0}, Landroid/widget/AdapterView;->findSyncPosition()I

    move-result v2

    .line 928
    .local v2, newPos:I
    if-ltz v2, :cond_20

    .line 930
    invoke-virtual {p0, v2, v6}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 931
    .local v3, selectablePos:I
    if-ne v3, v2, :cond_20

    .line 933
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 934
    const/4 v1, 0x1

    .line 938
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_20
    if-nez v1, :cond_40

    .line 940
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 943
    .restart local v2       #newPos:I
    if-lt v2, v0, :cond_2a

    .line 944
    sub-int v2, v0, v6

    .line 946
    :cond_2a
    if-gez v2, :cond_2d

    .line 947
    const/4 v2, 0x0

    .line 951
    :cond_2d
    invoke-virtual {p0, v2, v6}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 952
    .restart local v3       #selectablePos:I
    if-gez v3, :cond_37

    .line 954
    invoke-virtual {p0, v2, v5}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 956
    :cond_37
    if-ltz v3, :cond_40

    .line 957
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 958
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 959
    const/4 v1, 0x1

    .line 963
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_40
    if-nez v1, :cond_4f

    .line 965
    iput v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 966
    iput-wide v8, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 967
    iput v7, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 968
    iput-wide v8, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 969
    iput-boolean v5, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 970
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 972
    :cond_4f
    return-void
.end method

.method isInFilterMode()Z
    .registers 2

    .prologue
    .line 657
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .registers 3
    .parameter "position"
    .parameter "lookDown"

    .prologue
    .line 1078
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    return p1
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 822
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 823
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 824
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 514
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    .line 515
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .registers 11
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v1, 0x0

    .line 280
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_13

    .line 281
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->playSoundEffect(I)V

    .line 282
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 283
    const/4 v0, 0x1

    .line 286
    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method rememberSyncState()V
    .registers 7

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1111
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2e

    .line 1112
    iput-boolean v5, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1113
    iget v2, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    .line 1114
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2f

    .line 1116
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1117
    .local v1, v:Landroid/view/View;
    iget-wide v2, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1118
    iget v2, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1119
    if-eqz v1, :cond_2c

    .line 1120
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1122
    :cond_2c
    iput v4, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 1139
    .end local v1           #v:Landroid/view/View;
    :cond_2e
    :goto_2e
    return-void

    .line 1125
    :cond_2f
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1126
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1127
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-ltz v2, :cond_5a

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_5a

    .line 1128
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1132
    :goto_4b
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1133
    if-eqz v1, :cond_57

    .line 1134
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1136
    :cond_57
    iput v5, p0, Landroid/widget/AdapterView;->mSyncMode:I

    goto :goto_2e

    .line 1130
    :cond_5a
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    goto :goto_4b
.end method

.method public removeAllViews()V
    .registers 3

    .prologue
    .line 509
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 487
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 499
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .registers 3

    .prologue
    .line 842
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1d

    .line 843
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_33

    .line 848
    :cond_c
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    if-nez v0, :cond_18

    .line 849
    new-instance v0, Landroid/widget/AdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/AdapterView$SelectionNotifier;-><init>(Landroid/widget/AdapterView;Landroid/widget/AdapterView$1;)V

    iput-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    .line 851
    :cond_18
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 858
    :cond_1d
    :goto_1d
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_32

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_32

    .line 859
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->sendAccessibilityEvent(I)V

    .line 861
    :cond_32
    return-void

    .line 853
    :cond_33
    invoke-direct {p0}, Landroid/widget/AdapterView;->fireOnSelected()V

    goto :goto_1d
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .registers 5
    .parameter "emptyView"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 632
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    .line 634
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 635
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_e
    const/4 v2, 0x1

    move v1, v2

    .line 636
    .local v1, empty:Z
    :goto_10
    invoke-direct {p0, v1}, Landroid/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 637
    return-void

    .line 635
    .end local v1           #empty:Z
    :cond_14
    const/4 v2, 0x0

    move v1, v2

    goto :goto_10
.end method

.method public setFocusable(Z)V
    .registers 7
    .parameter "focusable"

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 662
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 663
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-nez v2, :cond_24

    :cond_e
    move v1, v4

    .line 665
    .local v1, empty:Z
    :goto_f
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:Z

    .line 666
    if-nez p1, :cond_15

    .line 667
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 670
    :cond_15
    if-eqz p1, :cond_26

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_1f
    move v2, v4

    :goto_20
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 671
    return-void

    .end local v1           #empty:Z
    :cond_24
    move v1, v3

    .line 663
    goto :goto_f

    .restart local v1       #empty:Z
    :cond_26
    move v2, v3

    .line 670
    goto :goto_20
.end method

.method public setFocusableInTouchMode(Z)V
    .registers 7
    .parameter "focusable"

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 675
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 676
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-nez v2, :cond_24

    :cond_e
    move v1, v3

    .line 678
    .local v1, empty:Z
    :goto_f
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 679
    if-eqz p1, :cond_15

    .line 680
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:Z

    .line 683
    :cond_15
    if-eqz p1, :cond_26

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_1f
    move v2, v3

    :goto_20
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 684
    return-void

    .end local v1           #empty:Z
    :cond_24
    move v1, v4

    .line 676
    goto :goto_f

    .restart local v1       #empty:Z
    :cond_26
    move v2, v4

    .line 683
    goto :goto_20
.end method

.method setNextSelectedPositionInt(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 1096
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iput p1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 1097
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 1099
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/widget/AdapterView;->mSyncMode:I

    if-nez v0, :cond_18

    if-ltz p1, :cond_18

    .line 1100
    iput p1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1101
    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1103
    :cond_18
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 749
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 259
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 260
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 319
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 320
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setLongClickable(Z)V

    .line 322
    :cond_a
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 323
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 370
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 371
    return-void
.end method

.method setSelectedPositionInt(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 1086
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iput p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1087
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 1088
    return-void
.end method

.method public abstract setSelection(I)V
.end method
