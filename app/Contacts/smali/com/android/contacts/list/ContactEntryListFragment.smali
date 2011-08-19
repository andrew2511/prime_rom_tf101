.class public abstract Lcom/android/contacts/list/ContactEntryListFragment;
.super Landroid/app/Fragment;
.source "ContactEntryListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">",
        "Landroid/app/Fragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

.field private mContext:Landroid/content/Context;

.field private mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

.field private mDelayedDirectorySearchHandler:Landroid/os/Handler;

.field private mDirectoryListStatus:I

.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayOrder:I

.field private mEmptyView:Lcom/android/contacts/ContactListEmptyView;

.field private mEnabled:Z

.field private mForceLoad:Z

.field private mLegacyCompatibility:Z

.field private mListState:Landroid/os/Parcelable;

.field private mListView:Landroid/widget/ListView;

.field private mLoadPriorityDirectoriesOnly:Z

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mPhotoLoaderEnabled:Z

.field private mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

.field private mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSearchMode:Z

.field private mSectionHeaderDisplayEnabled:Z

.field private mSelectionVisible:Z

.field private mSortOrder:I

.field private mVerticalScrollbarPosition:I

.field private mView:Landroid/view/View;

.field private mVisibleScrollbarEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 102
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 105
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 107
    iput v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 112
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    .line 125
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 139
    iput v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 151
    new-instance v0, Lcom/android/contacts/list/ContactEntryListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactEntryListFragment$1;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    .line 928
    new-instance v0, Lcom/android/contacts/list/ContactEntryListFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactEntryListFragment$2;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    return-void
.end method

.method private configureVerticalScrollbar()V
    .locals 7

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const v6, 0x7f0a0016

    const/4 v5, 0x1

    .line 537
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isVisibleScrollbarEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v5

    .line 539
    .local v0, hasScrollbar:Z
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    .line 540
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 541
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 542
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 543
    const/4 v1, 0x0

    .line 544
    .local v1, leftPadding:I
    const/4 v2, 0x0

    .line 545
    .local v2, rightPadding:I
    iget v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    if-ne v3, v5, :cond_3

    .line 546
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 548
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    const/high16 v4, 0x200

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 553
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v1, v4, v2, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 556
    .end local v1           #leftPadding:I
    .end local v2           #rightPadding:I
    :cond_1
    return-void

    .line 537
    .end local v0           #hasScrollbar:Z
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 549
    .restart local v0       #hasScrollbar:Z
    .restart local v1       #leftPadding:I
    .restart local v2       #rightPadding:I
    :cond_3
    if-eqz v0, :cond_0

    .line 550
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_1
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 835
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 837
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 838
    return-void
.end method

.method private loadDirectoryPartitionDelayed(ILcom/android/contacts/list/DirectoryPartition;)V
    .locals 4
    .parameter "partitionIndex"
    .parameter "partition"

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v3, 0x1

    .line 380
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 381
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 383
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 384
    return-void
.end method

.method private removePendingDirectorySearchRequests()V
    .locals 2

    .prologue
    .line 399
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    return-void
.end method

.method private startLoadingDirectoryPartition(I)V
    .locals 6
    .parameter "partitionIndex"

    .prologue
    .line 358
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/DirectoryPartition;

    .line 359
    .local v3, partition:Lcom/android/contacts/list/DirectoryPartition;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    .line 360
    invoke-virtual {v3}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v1

    .line 361
    .local v1, directoryId:J
    iget-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceLoad:Z

    if-eqz v4, :cond_1

    .line 362
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 363
    invoke-virtual {p0, p1, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->loadDirectoryPartition(ILcom/android/contacts/list/DirectoryPartition;)V

    .line 372
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->loadDirectoryPartitionDelayed(ILcom/android/contacts/list/DirectoryPartition;)V

    goto :goto_0

    .line 368
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 369
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "directoryId"

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 370
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, p1, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method


# virtual methods
.method protected completeRestoreInstanceState()V
    .locals 2

    .prologue
    .line 877
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 879
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    .line 881
    :cond_0
    return-void
.end method

.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 780
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-nez v0, :cond_0

    .line 794
    :goto_0
    return-void

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQuickContactEnabled(Z)V

    .line 785
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDirectorySearchMode(I)V

    .line 787
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 788
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayOrder:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 789
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSortOrder(I)V

    .line 790
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isNameHighlighingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setNameHighlightingEnabled(Z)V

    .line 791
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 792
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSelectionVisible(Z)V

    .line 793
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDirectoryResultLimit(I)V

    goto :goto_0
.end method

.method protected configurePhotoLoader()V
    .locals 2

    .prologue
    .line 766
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isPhotoLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 767
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    if-nez v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 771
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_2

    .line 774
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    .line 777
    :cond_2
    return-void
.end method

.method protected abstract createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    return-object v0
.end method

.method protected getContactNameDisplayOrder()I
    .locals 1

    .prologue
    .line 650
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayOrder:I

    return v0
.end method

.method public getContactsRequest()Lcom/android/contacts/list/ContactsRequest;
    .locals 1

    .prologue
    .line 287
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 187
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getContextMenuAdapter()Lcom/android/contacts/widget/ContextMenuAdapter;
    .locals 1

    .prologue
    .line 683
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

    return-object v0
.end method

.method public getDirectorySearchMode()I
    .locals 1

    .prologue
    .line 634
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 225
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .prologue
    .line 212
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 620
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 661
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSortOrder:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 221
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public isLegacyCompatibilityMode()Z
    .locals 1

    .prologue
    .line 642
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x1

    .line 451
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 459
    :goto_0
    return v0

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isLoadingDirectoryList()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 456
    goto :goto_0

    .line 459
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadingDirectoryList()Z
    .locals 2

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x1

    .line 463
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isNameHighlighingEnabled()Z
    .locals 3

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 799
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSortOrder:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayOrder:I

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 806
    :goto_0
    return v0

    .line 802
    :cond_0
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSortOrder:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayOrder:I

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 804
    goto :goto_0

    .line 806
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhotoLoaderEnabled()Z
    .locals 1

    .prologue
    .line 564
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 616
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    return v0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .locals 1

    .prologue
    .line 515
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method public isSelectionVisible()Z
    .locals 1

    .prologue
    .line 571
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    return v0
.end method

.method public isVisibleScrollbarEnabled()Z
    .locals 1

    .prologue
    .line 526
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    return v0
.end method

.method protected loadDirectoryPartition(ILcom/android/contacts/list/DirectoryPartition;)V
    .locals 4
    .parameter "partitionIndex"
    .parameter "partition"

    .prologue
    .line 390
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 391
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "directoryId"

    invoke-virtual {p2}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 392
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 393
    return-void
.end method

.method protected loadPreferences()Z
    .locals 4

    .prologue
    .line 687
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x0

    .line 688
    .local v0, changed:Z
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContactNameDisplayOrder()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v3}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 689
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setContactNameDisplayOrder(I)V

    .line 690
    const/4 v0, 0x1

    .line 693
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getSortOrder()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v3}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 694
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setSortOrder(I)V

    .line 695
    const/4 v0, 0x1

    .line 698
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    instance-of v2, v2, Lcom/android/contacts/list/ContactEntryListView;

    if-eqz v2, :cond_2

    .line 699
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    check-cast v1, Lcom/android/contacts/list/ContactEntryListView;

    .line 700
    .local v1, listView:Lcom/android/contacts/list/ContactEntryListView;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isNameHighlighingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListView;->setHighlightNamesWhenScrolling(Z)V

    .line 703
    .end local v1           #listView:Lcom/android/contacts/list/ContactEntryListView;
    :cond_2
    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 173
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setContext(Landroid/content/Context;)V

    .line 175
    invoke-super {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setLoaderManager(Landroid/app/LoaderManager;)V

    .line 176
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 256
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 257
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    .line 258
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 259
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 9
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x0

    .line 343
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 344
    new-instance v0, Lcom/android/contacts/list/DirectoryListLoader;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/list/DirectoryListLoader;-><init>(Landroid/content/Context;)V

    .line 345
    .local v0, loader:Lcom/android/contacts/list/DirectoryListLoader;
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDirectoryLoader(Lcom/android/contacts/list/DirectoryListLoader;)V

    .line 353
    .end local v0           #loader:Lcom/android/contacts/list/DirectoryListLoader;
    :goto_0
    return-object v0

    .line 348
    :cond_0
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .local v0, loader:Landroid/content/CursorLoader;
    if-eqz p2, :cond_1

    const-string v1, "directoryId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "directoryId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    move-wide v7, v1

    .line 352
    .local v7, directoryId:J
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1, v0, v7, v8}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    goto :goto_0

    .line 349
    .end local v7           #directoryId:J
    :cond_1
    const-wide/16 v1, 0x0

    move-wide v7, v1

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 709
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 711
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    .line 713
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    .line 714
    .local v0, searchMode:Z
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 715
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDefaultPartition(ZZ)V

    .line 716
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    .line 717
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 719
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 720
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 721
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 724
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object v1
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "inflater"
    .parameter "container"

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v3, 0x0

    .line 728
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    .line 730
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    .line 731
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 732
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 737
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 738
    .local v0, emptyView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 739
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 740
    instance-of v1, v0, Lcom/android/contacts/ContactListEmptyView;

    if-eqz v1, :cond_1

    .line 741
    check-cast v0, Lcom/android/contacts/ContactListEmptyView;

    .end local v0           #emptyView:Landroid/view/View;
    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEmptyView:Lcom/android/contacts/ContactListEmptyView;

    .line 745
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 746
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 747
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 748
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 752
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 755
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 757
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

    if-eqz v1, :cond_2

    .line 758
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 761
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 762
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 763
    return-void

    :cond_3
    move v2, v3

    .line 748
    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 844
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 845
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 847
    :cond_0
    return-void
.end method

.method protected abstract onItemClick(IJ)V
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 825
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 827
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v0, p3, v1

    .line 828
    .local v0, adjPosition:I
    if-ltz v0, :cond_0

    .line 829
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(IJ)V

    .line 831
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 5
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
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v4, -0x1

    .line 404
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    if-nez v2, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 409
    .local v1, loaderId:I
    if-ne v1, v4, :cond_2

    .line 410
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 411
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 412
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    goto :goto_0

    .line 414
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 415
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 416
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v0

    .line 417
    .local v0, directorySearchMode:I
    if-eqz v0, :cond_0

    .line 418
    iget v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-nez v2, :cond_3

    .line 419
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 420
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 422
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    goto :goto_0

    .line 426
    .end local v0           #directorySearchMode:I
    :cond_4
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 427
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method protected onPartitionLoaded(ILandroid/database/Cursor;)V
    .locals 1
    .parameter "partitionIndex"
    .parameter "data"

    .prologue
    .line 436
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 443
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->showCount(ILandroid/database/Cursor;)V

    .line 445
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->completeRestoreInstanceState()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 861
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 862
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    .line 863
    return-void
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 925
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Picker result handler is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 234
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 235
    const-string v0, "sectionHeaderDisplayEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    const-string v0, "photoLoaderEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    const-string v0, "quickContactEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    const-string v0, "searchMode"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    const-string v0, "visibleScrollbarEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    const-string v0, "scrollbarPosition"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    const-string v0, "directorySearchMode"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    const-string v0, "selectionVisible"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 243
    const-string v0, "legacyCompatibility"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    const-string v0, "queryString"

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v0, "directoryResultLimit"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    const-string v0, "request"

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 248
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    .line 250
    const-string v0, "liststate"

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 252
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 813
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 817
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 818
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->pause()V

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isPhotoLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->resume()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 299
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 301
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;->registerChangeListener(Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;)V

    .line 303
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Lcom/android/contacts/list/ProviderStatusLoader;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ProviderStatusLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->loadPreferences()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceLoad:Z

    .line 309
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    .line 312
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    .line 313
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 470
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 471
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->unregisterChangeListener()V

    .line 472
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->clearPartitions()V

    .line 473
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 853
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-ne p1, v0, :cond_0

    .line 854
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 856
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected reloadData()V
    .locals 2

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x1

    .line 476
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    .line 477
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->onDataReload()V

    .line 478
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    .line 479
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceLoad:Z

    .line 480
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    .line 481
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 262
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    if-nez p1, :cond_0

    .line 281
    :goto_0
    return-void

    .line 266
    :cond_0
    const-string v0, "sectionHeaderDisplayEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    .line 267
    const-string v0, "photoLoaderEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    .line 268
    const-string v0, "quickContactEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 269
    const-string v0, "searchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    .line 270
    const-string v0, "visibleScrollbarEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    .line 271
    const-string v0, "scrollbarPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 272
    const-string v0, "directorySearchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 273
    const-string v0, "selectionVisible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    .line 274
    const-string v0, "legacyCompatibility"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    .line 275
    const-string v0, "queryString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    .line 276
    const-string v0, "directoryResultLimit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 277
    const-string v0, "request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactsRequest;

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 280
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method protected setContactNameDisplayOrder(I)V
    .locals 1
    .parameter "displayOrder"

    .prologue
    .line 654
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayOrder:I

    .line 655
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 658
    :cond_0
    return-void
.end method

.method public setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V
    .locals 0
    .parameter "request"

    .prologue
    .line 294
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 295
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 182
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    .line 183
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 184
    return-void
.end method

.method public setContextMenuAdapter(Lcom/android/contacts/widget/ContextMenuAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 676
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

    .line 677
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 680
    :cond_0
    return-void
.end method

.method public setDirectoryResultLimit(I)V
    .locals 0
    .parameter "limit"

    .prologue
    .line 672
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 673
    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 638
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 639
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 191
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 192
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    .line 193
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 194
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->clearPartitions()V

    goto :goto_0
.end method

.method public setLegacyCompatibilityMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 646
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    .line 647
    return-void
.end method

.method public setLoaderManager(Landroid/app/LoaderManager;)V
    .locals 0
    .parameter "loaderManager"

    .prologue
    .line 207
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    .line 208
    return-void
.end method

.method public setPhotoLoaderEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 559
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    .line 560
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 561
    return-void
.end method

.method public setQueryString(Ljava/lang/String;Z)V
    .locals 1
    .parameter "queryString"
    .parameter "delaySelection"

    .prologue
    .line 624
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    .line 626
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 631
    :cond_0
    return-void
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 579
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 580
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 6
    .parameter "flag"

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 583
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    if-eq v2, p1, :cond_4

    .line 584
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    .line 585
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    if-nez v2, :cond_1

    move v2, v5

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 587
    if-nez p1, :cond_0

    .line 588
    iput v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 589
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 592
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v2, :cond_3

    .line 593
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 594
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 596
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->clearPartitions()V

    .line 597
    if-nez p1, :cond_2

    .line 600
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 601
    .local v0, count:I
    move v1, v0

    .local v1, i:I
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-lt v1, v5, :cond_2

    .line 602
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->removePartition(I)V

    goto :goto_1

    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    move v2, v4

    .line 585
    goto :goto_0

    .line 605
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, v4, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDefaultPartition(ZZ)V

    .line 606
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 609
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_4

    .line 610
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-nez p1, :cond_5

    move v3, v5

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 613
    :cond_4
    return-void

    :cond_5
    move v3, v4

    .line 610
    goto :goto_2
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 505
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    if-eq v0, p1, :cond_1

    .line 506
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    .line 507
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 510
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 512
    :cond_1
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 575
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    .line 576
    return-void
.end method

.method public setSortOrder(I)V
    .locals 1
    .parameter "sortOrder"

    .prologue
    .line 665
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSortOrder:I

    .line 666
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSortOrder(I)V

    .line 669
    :cond_0
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 530
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    if-eq v0, p1, :cond_0

    .line 531
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 532
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 534
    :cond_0
    return-void
.end method

.method public setVisibleScrollbarEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 519
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    if-eq v0, p1, :cond_0

    .line 520
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    .line 521
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 523
    :cond_0
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 0
    .parameter "partitionIndex"
    .parameter "data"

    .prologue
    .line 495
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method protected startLoading()V
    .locals 7

    .prologue
    .line 316
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-nez v5, :cond_0

    .line 339
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 322
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v4

    .line 323
    .local v4, partitionCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 324
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v5, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 325
    .local v3, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v5, v3, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v5, :cond_3

    .line 326
    move-object v0, v3

    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    move-object v1, v0

    .line 327
    .local v1, directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v1}, Lcom/android/contacts/list/DirectoryPartition;->getStatus()I

    move-result v5

    if-nez v5, :cond_2

    .line 328
    invoke-virtual {v1}, Lcom/android/contacts/list/DirectoryPartition;->isPriorityDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    if-nez v5, :cond_2

    .line 329
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoadingDirectoryPartition(I)V

    .line 323
    .end local v1           #directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 333
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_2

    .line 338
    .end local v3           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_4
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    goto :goto_0
.end method

.method public startSearch(Ljava/lang/String;)V
    .locals 2
    .parameter "initialQuery"

    .prologue
    .line 918
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-static {v0, p1, v1}, Lcom/android/contacts/ContactsSearchManager;->startSearch(Landroid/app/Activity;Ljava/lang/String;Lcom/android/contacts/list/ContactsRequest;)V

    .line 919
    return-void
.end method
