.class public Lcom/android/providers/downloads/ui/DownloadList;
.super Landroid/app/Activity;
.source "DownloadList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;,
        Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;,
        Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;,
        Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;
    }
.end annotation


# static fields
.field private static mSizeSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mContentObserver:Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;

.field private mCurrentCursor:Landroid/database/Cursor;

.field private mCurrentView:Landroid/widget/ListView;

.field private mCurrentViewIsExpandableListView:Z

.field private mDataSetObserver:Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;

.field private mDateOrderedListView:Landroid/widget/ExpandableListView;

.field private mDateSortedAdapter:Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

.field private mDateSortedCursor:Landroid/database/Cursor;

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mEmptyView:Landroid/view/View;

.field private mIdColumnId:I

.field private mIsSortedBySize:Z

.field private mLocalUriColumnId:I

.field private mMediaTypeColumnId:I

.field private mQueuedDialog:Landroid/app/AlertDialog;

.field private mQueuedDownloadId:Ljava/lang/Long;

.field private mReasonColumndId:I

.field mSelectedCountFormat:Ljava/lang/String;

.field private final mSelectedIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;",
            ">;"
        }
    .end annotation
.end field

.field private mSizeOrderedListView:Landroid/widget/ListView;

.field private mSizeSortedCursor:Landroid/database/Cursor;

.field private mSortOption:Landroid/widget/Button;

.field private mStatusColumnId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mContentObserver:Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;

    .line 85
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;

    invoke-direct {v0, p0, v2}, Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;-><init>(Lcom/android/providers/downloads/ui/DownloadList;Lcom/android/providers/downloads/ui/DownloadList$1;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDataSetObserver:Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    .line 112
    iput-boolean v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentViewIsExpandableListView:Z

    .line 113
    iput-boolean v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    .line 119
    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    .line 275
    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/ui/DownloadList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->haveValidCursors()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/providers/downloads/ui/DownloadList;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/providers/downloads/ui/DownloadList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->haveCursors()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/providers/downloads/ui/DownloadList;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList;->deleteDownload(J)V

    return-void
.end method

.method static synthetic access$1400()Lcom/android/providers/downloads/ui/DownloadAdapter;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/app/DownloadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/providers/downloads/ui/DownloadList;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/providers/downloads/ui/DownloadList;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->chooseListToShow()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->ensureSomeGroupIsExpanded()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/providers/downloads/ui/DownloadList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/providers/downloads/ui/DownloadList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/providers/downloads/ui/DownloadList;)Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/widget/ExpandableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/providers/downloads/ui/DownloadList;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->handleItemClick(Landroid/database/Cursor;)V

    return-void
.end method

.method private activeListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentCursor:Landroid/database/Cursor;

    .line 501
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentView:Landroid/widget/ListView;

    .line 502
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->setTitle(I)V

    .line 503
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSortOption:Landroid/widget/Button;

    const v1, 0x7f060009

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentViewIsExpandableListView:Z

    .line 512
    :goto_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentView:Landroid/widget/ListView;

    return-object v0

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentCursor:Landroid/database/Cursor;

    .line 507
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentView:Landroid/widget/ListView;

    .line 508
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->setTitle(I)V

    .line 509
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSortOption:Landroid/widget/Button;

    const v1, 0x7f060008

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 510
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentViewIsExpandableListView:Z

    goto :goto_0
.end method

.method private checkSelectionForDeletedEntries()V
    .locals 4

    .prologue
    .line 766
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 767
    .local v0, allIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 769
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 768
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 773
    :cond_0
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 774
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 775
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 778
    :cond_2
    return-void
.end method

.method private chooseListToShow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 469
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 470
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 472
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 473
    :cond_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 481
    :goto_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    .line 482
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->setActionModeTitle(Landroid/view/ActionMode;)V

    .line 484
    :cond_1
    return-void

    .line 475
    :cond_2
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 476
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->activeListView()Landroid/widget/ListView;

    move-result-object v0

    .line 477
    .local v0, lv:Landroid/widget/ListView;
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 478
    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0
.end method

.method private deleteDownload(J)V
    .locals 3
    .parameter "downloadId"

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->markRowDeleted([J)I

    .line 736
    return-void
.end method

.method private ensureSomeGroupIsExpanded()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/android/providers/downloads/ui/DownloadList$2;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/ui/DownloadList$2;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->post(Ljava/lang/Runnable;)Z

    .line 233
    return-void
.end method

.method private findCommonMimeType(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 832
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->findCommonString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 833
    if-eqz v0, :cond_0

    .line 848
    :goto_0
    return-object v0

    .line 838
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 839
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 840
    const/4 v3, 0x0

    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 842
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->findCommonString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 843
    if-eqz v0, :cond_2

    .line 844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 848
    :cond_2
    const-string v0, "*/*"

    goto :goto_0
.end method

.method private findCommonString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 851
    .local p1, set:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 852
    .local v3, str:Ljava/lang/String;
    const/4 v0, 0x1

    .line 853
    .local v0, found:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 854
    .local v2, s:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 855
    move-object v3, v2

    goto :goto_0

    .line 856
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 857
    const/4 v0, 0x0

    .line 861
    .end local v2           #s:Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    move-object v4, v3

    :goto_1
    return-object v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "downloadId"

    .prologue
    .line 522
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList$5;-><init>(Lcom/android/providers/downloads/ui/DownloadList;J)V

    return-object v0
.end method

.method private getErrorMessage(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 642
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mReasonColumndId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 666
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getUnknownErrorMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 644
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->isOnExternalStorage(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 649
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getUnknownErrorMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 653
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->isOnExternalStorage(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 654
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 656
    :cond_1
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 660
    :pswitch_2
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 663
    :pswitch_3
    const v0, 0x7f060015

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 642
    nop

    :pswitch_data_0
    .packed-switch 0x3ee
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private getRestartClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "downloadId"

    .prologue
    .line 534
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList$6;-><init>(Lcom/android/providers/downloads/ui/DownloadList;J)V

    return-object v0
.end method

.method private getUnknownErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 685
    const v0, 0x7f06000f

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleItemClick(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 597
    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    .line 598
    .local v0, id:J
    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mStatusColumnId:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 636
    :goto_0
    return-void

    .line 601
    :sswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->sendRunningDownloadClickedBroadcast(J)V

    goto :goto_0

    .line 605
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->isPausedForWifi(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 606
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    .line 607
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f060010

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060011

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f06001b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060019

    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/providers/downloads/ui/DownloadList$7;

    invoke-direct {v3, p0}, Lcom/android/providers/downloads/ui/DownloadList$7;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 624
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->sendRunningDownloadClickedBroadcast(J)V

    goto :goto_0

    .line 629
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->openCurrentDownload(Landroid/database/Cursor;)V

    goto :goto_0

    .line 633
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->getErrorMessage(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/downloads/ui/DownloadList;->showFailedDialog(JLjava/lang/String;)V

    goto :goto_0

    .line 598
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private haveCursors()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private haveValidCursors()Z
    .locals 1

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->haveCursors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    const/4 v0, 0x1

    .line 400
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOnExternalStorage(Landroid/database/Cursor;)Z
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    .line 671
    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mLocalUriColumnId:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 672
    .local v2, localUriString:Ljava/lang/String;
    if-nez v2, :cond_0

    move v4, v6

    .line 681
    :goto_0
    return v4

    .line 675
    :cond_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 676
    .local v1, localUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v6

    .line 677
    goto :goto_0

    .line 679
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 680
    .local v3, path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, externalRoot:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0
.end method

.method private isPausedForWifi(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 757
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mReasonColumndId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToDownload(J)Z
    .locals 2
    .parameter "downloadId"

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 787
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 788
    const/4 v0, 0x1

    .line 791
    :goto_1
    return v0

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 791
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private openCurrentDownload(Landroid/database/Cursor;)V
    .locals 19
    .parameter "cursor"

    .prologue
    .line 546
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/downloads/ui/DownloadList;->mLocalUriColumnId:I

    move v15, v0

    move-object/from16 v0, p1

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 548
    .local v11, localUri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/ui/DownloadList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "r"

    move-object v0, v15

    move-object v1, v11

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 558
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/downloads/ui/DownloadList;->mMediaTypeColumnId:I

    move v15, v0

    move-object/from16 v0, p1

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 559
    .local v8, fileTypeFromServer:Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    invoke-direct {v10, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 560
    .local v10, intent:Landroid/content/Intent;
    invoke-virtual {v10, v11, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    const v15, 0x10000001

    invoke-virtual {v10, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 563
    :try_start_1
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 594
    .end local v8           #fileTypeFromServer:Ljava/lang/String;
    .end local v10           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 549
    :catch_0
    move-exception v15

    move-object v6, v15

    .line 550
    .local v6, exc:Ljava/io/FileNotFoundException;
    const-string v15, "DownloadList"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to open download "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 551
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    move v15, v0

    move-object/from16 v0, p1

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const v17, 0x7f060012

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-wide v1, v15

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/DownloadList;->showFailedDialog(JLjava/lang/String;)V

    goto :goto_1

    .line 564
    .end local v6           #exc:Ljava/io/FileNotFoundException;
    .restart local v8       #fileTypeFromServer:Ljava/lang/String;
    .restart local v10       #intent:Landroid/content/Intent;
    :catch_1
    move-exception v5

    .line 566
    .local v5, ex:Landroid/content/ActivityNotFoundException;
    const-string v15, "DownloadList"

    const-string v16, "Try opening file again. This time, search for mime type using file extension."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :try_start_2
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v12

    .line 569
    .local v12, map:Landroid/webkit/MimeTypeMap;
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 570
    .local v7, extension:Ljava/lang/String;
    const-string v15, ""

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 571
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "File extension not found in Uri."

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 587
    .end local v7           #extension:Ljava/lang/String;
    .end local v12           #map:Landroid/webkit/MimeTypeMap;
    :catch_2
    move-exception v15

    move-object v4, v15

    .line 588
    .local v4, anfe:Landroid/content/ActivityNotFoundException;
    const v15, 0x7f060018

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 573
    .end local v4           #anfe:Landroid/content/ActivityNotFoundException;
    .restart local v7       #extension:Ljava/lang/String;
    .restart local v12       #map:Landroid/webkit/MimeTypeMap;
    :cond_0
    :try_start_3
    invoke-virtual {v12, v7}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 574
    .local v14, type:Ljava/lang/String;
    if-nez v14, :cond_1

    .line 575
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Mime-type for extension "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " not found."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 589
    .end local v7           #extension:Ljava/lang/String;
    .end local v12           #map:Landroid/webkit/MimeTypeMap;
    .end local v14           #type:Ljava/lang/String;
    :catch_3
    move-exception v15

    move-object v9, v15

    .line 590
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    const-string v15, "DownloadList"

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const v15, 0x7f060018

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 578
    .end local v9           #iae:Ljava/lang/IllegalArgumentException;
    .restart local v7       #extension:Ljava/lang/String;
    .restart local v12       #map:Landroid/webkit/MimeTypeMap;
    .restart local v14       #type:Ljava/lang/String;
    :cond_1
    :try_start_4
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 579
    const-string v15, "DownloadList"

    const-string v16, "Cannot find new mime type, retry skipped."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const v15, 0x7f060018

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 582
    :cond_2
    new-instance v13, Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    invoke-direct {v13, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    .local v13, retry:Landroid/content/Intent;
    invoke-virtual {v13, v11, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    const v15, 0x10000001

    invoke-virtual {v13, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 585
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 554
    .end local v5           #ex:Landroid/content/ActivityNotFoundException;
    .end local v7           #extension:Ljava/lang/String;
    .end local v8           #fileTypeFromServer:Ljava/lang/String;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v12           #map:Landroid/webkit/MimeTypeMap;
    .end local v13           #retry:Landroid/content/Intent;
    .end local v14           #type:Ljava/lang/String;
    :catch_4
    move-exception v15

    goto/16 :goto_0
.end method

.method private refresh()V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 724
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 726
    return-void
.end method

.method private sendRunningDownloadClickedBroadcast(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 701
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 702
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.providers.downloads"

    const-string v2, "com.android.providers.downloads.DownloadReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 705
    const-string v1, "multiple"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 706
    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->sendBroadcast(Landroid/content/Intent;)V

    .line 707
    return-void
.end method

.method private setupViews()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 236
    const/high16 v1, 0x7f04

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->setContentView(I)V

    .line 237
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    .line 240
    .local v0, modeCallback:Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;
    const/high16 v1, 0x7f09

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    .line 241
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v3}, Landroid/widget/ExpandableListView;->setChoiceMode(I)V

    .line 242
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 243
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    new-instance v2, Lcom/android/providers/downloads/ui/DownloadList$3;

    invoke-direct {v2, p0}, Lcom/android/providers/downloads/ui/DownloadList$3;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 261
    const v1, 0x7f090001

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    .line 262
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 263
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 264
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/providers/downloads/ui/DownloadList$4;

    invoke-direct {v2, p0}, Lcom/android/providers/downloads/ui/DownloadList$4;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 272
    const v1, 0x7f090002

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mEmptyView:Landroid/view/View;

    .line 273
    return-void
.end method

.method private showFailedDialog(JLjava/lang/String;)V
    .locals 3
    .parameter "downloadId"
    .parameter "dialogBody"

    .prologue
    .line 689
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f06000e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06001a

    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06001d

    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList;->getRestartClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 695
    return-void
.end method


# virtual methods
.method getCurrentView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentView:Landroid/widget/ListView;

    return-object v0
.end method

.method getExpandableListView()Landroid/widget/ExpandableListView;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method handleDownloadsChanged()V
    .locals 2

    .prologue
    .line 746
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->checkSelectionForDeletedEntries()V

    .line 748
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->moveToDownload(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 749
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mStatusColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->isPausedForWifi(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 754
    :cond_1
    return-void
.end method

.method isCurrentViewExpandableListView()Z
    .locals 1

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentViewIsExpandableListView:Z

    return v0
.end method

.method public isDownloadSelected(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    .line 155
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0, v5}, Lcom/android/providers/downloads/ui/DownloadList;->setFinishOnTouchOutside(Z)V

    .line 157
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->setupViews()V

    .line 159
    const-string v2, "download"

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    .line 160
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v2, v5}, Landroid/app/DownloadManager;->setAccessAllDownloads(Z)V

    .line 161
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v2, v5}, Landroid/app/DownloadManager$Query;->setOnlyIncludeVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Query;

    move-result-object v0

    .line 164
    .local v0, baseQuery:Landroid/app/DownloadManager$Query;
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    .line 165
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    const-string v3, "total_size"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/app/DownloadManager$Query;->orderBy(Ljava/lang/String;I)Landroid/app/DownloadManager$Query;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    .line 171
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->haveCursors()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->startManagingCursor(Landroid/database/Cursor;)V

    .line 173
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->startManagingCursor(Landroid/database/Cursor;)V

    .line 175
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "status"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mStatusColumnId:I

    .line 177
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    .line 179
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "local_uri"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mLocalUriColumnId:I

    .line 181
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "media_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mMediaTypeColumnId:I

    .line 183
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "reason"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mReasonColumndId:I

    .line 186
    new-instance v2, Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-direct {v2, p0, v3}, Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;-><init>(Lcom/android/providers/downloads/ui/DownloadList;Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

    .line 187
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 188
    new-instance v2, Lcom/android/providers/downloads/ui/DownloadAdapter;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    invoke-direct {v2, p0, v3}, Lcom/android/providers/downloads/ui/DownloadAdapter;-><init>(Lcom/android/providers/downloads/ui/DownloadList;Landroid/database/Cursor;)V

    sput-object v2, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    .line 189
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    sget-object v3, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->ensureSomeGroupIsExpanded()V

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 196
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    const-string v2, "android.app.DownloadManager.extra_sortBySize"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    iput-boolean v5, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    .line 200
    :cond_1
    const v2, 0x7f090004

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSortOption:Landroid/widget/Button;

    .line 201
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSortOption:Landroid/widget/Button;

    new-instance v3, Lcom/android/providers/downloads/ui/DownloadList$1;

    invoke-direct {v3, p0}, Lcom/android/providers/downloads/ui/DownloadList$1;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->chooseListToShow()V

    .line 213
    const v2, 0x7f060020

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedCountFormat:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public onDownloadSelectionChanged(JZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "downloadId"
    .parameter "isSelected"
    .parameter "fileName"
    .parameter "mimeType"

    .prologue
    .line 712
    if-eqz p3, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    invoke-direct {v2, p4, p5}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    :goto_0
    return-void

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 415
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 416
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->haveCursors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mContentObserver:Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 418
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDataSetObserver:Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 420
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 451
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 452
    const-string v4, "isSortedBySize"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    .line 453
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 454
    const-string v4, "download_ids"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    .line 455
    .local v3, selectedIds:[J
    const-string v4, "filenames"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, fileNames:[Ljava/lang/String;
    const-string v4, "mimetypes"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, mimeTypes:[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 458
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 459
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    aget-wide v5, v3, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    aget-object v7, v0, v1

    aget-object v8, v2, v1

    invoke-direct {v6, v7, v8}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    .end local v1           #i:I
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->chooseListToShow()V

    .line 463
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 405
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 406
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->haveCursors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mContentObserver:Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 408
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDataSetObserver:Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 409
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->refresh()V

    .line 411
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 11
    .parameter "outState"

    .prologue
    .line 427
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 428
    const-string v9, "isSortedBySize"

    iget-boolean v10, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 429
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v5

    .line 430
    .local v5, len:I
    if-nez v5, :cond_0

    .line 447
    :goto_0
    return-void

    .line 433
    :cond_0
    new-array v8, v5, [J

    .line 434
    .local v8, selectedIds:[J
    new-array v0, v5, [Ljava/lang/String;

    .line 435
    .local v0, fileNames:[Ljava/lang/String;
    new-array v6, v5, [Ljava/lang/String;

    .line 436
    .local v6, mimeTypes:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 437
    .local v1, i:I
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 438
    .local v3, id:J
    aput-wide v3, v8, v1

    .line 439
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    .line 440
    .local v7, obj:Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;
    invoke-virtual {v7}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v1

    .line 441
    invoke-virtual {v7}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getMimeType()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v1

    .line 442
    add-int/lit8 v1, v1, 0x1

    .line 443
    goto :goto_1

    .line 444
    .end local v3           #id:J
    .end local v7           #obj:Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;
    :cond_1
    const-string v9, "download_ids"

    invoke-virtual {p1, v9, v8}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 445
    const-string v9, "filenames"

    invoke-virtual {p1, v9, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 446
    const-string v9, "mimetypes"

    invoke-virtual {p1, v9, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method setActionModeTitle(Landroid/view/ActionMode;)V
    .locals 5
    .parameter "mode"

    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    .line 382
    .local v0, numSelected:I
    if-lez v0, :cond_0

    .line 383
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedCountFormat:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public shareDownloadedFiles()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 798
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 799
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v7, :cond_3

    .line 800
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 802
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 803
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    .line 804
    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v5

    .line 805
    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getMimeType()Ljava/lang/String;

    move-result-object v6

    .line 806
    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 809
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 812
    :cond_1
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 813
    invoke-direct {p0, v3}, Lcom/android/providers/downloads/ui/DownloadList;->findCommonMimeType(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    :cond_2
    const v0, 0x7f060021

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 827
    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->startActivity(Landroid/content/Intent;)V

    move v0, v7

    .line 828
    :goto_1
    return v0

    .line 817
    :cond_3
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    .line 818
    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 819
    const/4 v0, 0x0

    goto :goto_1

    .line 821
    :cond_4
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 822
    const-string v3, "android.intent.extra.STREAM"

    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 823
    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method
