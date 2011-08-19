.class Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;
.super Lcom/android/browser/DateSortedExpandableListAdapter;
.source "BrowserHistoryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserHistoryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryAdapter"
.end annotation


# instance fields
.field mFaviconBackground:Landroid/graphics/drawable/Drawable;

.field private mHistoryCursor:Landroid/database/Cursor;

.field private mMostVisited:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/android/browser/BrowserHistoryPage;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserHistoryPage;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->this$0:Lcom/android/browser/BrowserHistoryPage;

    .line 522
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/browser/DateSortedExpandableListAdapter;-><init>(Landroid/content/Context;I)V

    .line 523
    invoke-static {p2}, Lcom/android/browser/BookmarkUtils;->createListFaviconBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mFaviconBackground:Landroid/graphics/drawable/Drawable;

    .line 524
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mHistoryCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private isMostVisitedEmpty()Z
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 528
    iput-object p1, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mHistoryCursor:Landroid/database/Cursor;

    .line 529
    invoke-super {p0, p1}, Lcom/android/browser/DateSortedExpandableListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 530
    return-void
.end method

.method changeMostVisitedCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    if-ne v0, p1, :cond_0

    .line 545
    :goto_0
    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 538
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 540
    :cond_1
    iput-object p1, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    .line 541
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 544
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 3
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 549
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->moveCursorToChildPosition(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 551
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 553
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 630
    if-eqz p4, :cond_0

    instance-of v5, p4, Lcom/android/browser/HistoryItem;

    if-nez v5, :cond_1

    .line 631
    :cond_0
    new-instance v3, Lcom/android/browser/HistoryItem;

    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/browser/HistoryItem;-><init>(Landroid/content/Context;)V

    .line 634
    .local v3, item:Lcom/android/browser/HistoryItem;
    invoke-virtual {v3}, Lcom/android/browser/HistoryItem;->getPaddingLeft()I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    invoke-virtual {v3}, Lcom/android/browser/HistoryItem;->getPaddingTop()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/browser/HistoryItem;->getPaddingRight()I

    move-result v7

    invoke-virtual {v3}, Lcom/android/browser/HistoryItem;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/browser/HistoryItem;->setPadding(IIII)V

    .line 638
    iget-object v5, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mFaviconBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Lcom/android/browser/HistoryItem;->setFaviconBackground(Landroid/graphics/drawable/Drawable;)V

    .line 644
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->moveCursorToChildPosition(II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 661
    :goto_1
    return-object v3

    .line 640
    .end local v3           #item:Lcom/android/browser/HistoryItem;
    :cond_1
    move-object v0, p4

    check-cast v0, Lcom/android/browser/HistoryItem;

    move-object v3, v0

    .restart local v3       #item:Lcom/android/browser/HistoryItem;
    goto :goto_0

    .line 648
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v1

    .line 649
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/browser/HistoryItem;->setName(Ljava/lang/String;)V

    .line 650
    const/4 v5, 0x3

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 651
    .local v4, url:Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/android/browser/HistoryItem;->setUrl(Ljava/lang/String;)V

    .line 652
    const/4 v5, 0x4

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 653
    .local v2, data:[B
    if-eqz v2, :cond_3

    .line 654
    array-length v5, v2

    invoke-static {v2, v9, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/browser/HistoryItem;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 660
    :goto_2
    const/4 v5, 0x6

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v10, :cond_4

    move v5, v10

    :goto_3
    invoke-virtual {v3, v5}, Lcom/android/browser/HistoryItem;->setIsBookmark(Z)V

    goto :goto_1

    .line 657
    :cond_3
    invoke-static {}, Lcom/android/browser/CombinedBookmarkHistoryView;->getIconListenerSet()Lcom/android/browser/CombinedBookmarkHistoryView$IconListenerSet;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/browser/CombinedBookmarkHistoryView$IconListenerSet;->getFavicon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/browser/HistoryItem;->setFavicon(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_4
    move v5, v9

    .line 660
    goto :goto_3
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 563
    invoke-super {p0}, Lcom/android/browser/DateSortedExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 564
    invoke-direct {p0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->isMostVisitedEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    const/4 v0, 0x0

    .line 569
    :goto_0
    return v0

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    .line 569
    :cond_1
    invoke-super {p0, p1}, Lcom/android/browser/DateSortedExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    goto :goto_0
.end method

.method getCursor(I)Landroid/database/Cursor;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 587
    invoke-super {p0}, Lcom/android/browser/DateSortedExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    .line 590
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mHistoryCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 2

    .prologue
    .line 558
    invoke-super {p0}, Lcom/android/browser/DateSortedExpandableListAdapter;->getGroupCount()I

    move-result v0

    invoke-direct {p0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->isMostVisitedEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 596
    invoke-super {p0}, Lcom/android/browser/DateSortedExpandableListAdapter;->getGroupCount()I

    move-result v3

    if-lt p1, v3, :cond_4

    .line 597
    iget-object v3, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 598
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Data is not valid"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 601
    :cond_1
    if-eqz p3, :cond_2

    instance-of v3, p3, Landroid/widget/TextView;

    if-nez v3, :cond_3

    .line 602
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 603
    .local v1, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f040016

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 607
    .end local v1           #factory:Landroid/view/LayoutInflater;
    .local v2, item:Landroid/widget/TextView;
    :goto_0
    const v3, 0x7f090011

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    move-object v3, v2

    .line 610
    .end local v2           #item:Landroid/widget/TextView;
    :goto_1
    return-object v3

    .line 605
    :cond_3
    move-object v0, p3

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .restart local v2       #item:Landroid/widget/TextView;
    goto :goto_0

    .line 610
    .end local v2           #item:Landroid/widget/TextView;
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/browser/DateSortedExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 574
    invoke-super {p0}, Lcom/android/browser/DateSortedExpandableListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    const/4 v0, 0x0

    .line 577
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->isMostVisitedEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method moveCursorToChildPosition(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 616
    invoke-super {p0}, Lcom/android/browser/DateSortedExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 619
    const/4 v0, 0x1

    .line 623
    :goto_0
    return v0

    .line 621
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 623
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/browser/DateSortedExpandableListAdapter;->moveCursorToChildPosition(II)Z

    move-result v0

    goto :goto_0
.end method
