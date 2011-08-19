.class public Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;
.super Lcom/google/android/finsky/adapters/DocumentBasedAdapter;
.source "SingleCorpusSearchAdapter.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter$1;
    }
.end annotation


# instance fields
.field private final mBucket:Lcom/google/android/finsky/model/Bucket;

.field private final mBucketEntryIconHeight:I

.field private final mBucketEntryIconWidth:I

.field private final mColumnCount:I

.field private final mHeaderIconHeight:I

.field private final mHeaderIconWidth:I

.field private final mListRequest:Lcom/google/android/finsky/api/model/PaginatedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/api/model/PaginatedList",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/PaginatedList;ILcom/google/android/finsky/model/Bucket;Z)V
    .locals 13
    .parameter "context"
    .parameter "bitmapLoader"
    .parameter "navManager"
    .parameter
    .parameter "columns"
    .parameter "bucket"
    .parameter "showIndividualRatings"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/finsky/utils/BitmapLoader;",
            "Lcom/google/android/finsky/navigationmanager/NavigationManager;",
            "Lcom/google/android/finsky/api/model/PaginatedList",
            "<*>;I",
            "Lcom/google/android/finsky/model/Bucket;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p4, request:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<*>;"
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/finsky/api/model/PaginatedList;->inErrorState()Z

    move-result v9

    const/4 v10, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p3

    move/from16 v6, p7

    move-object v8, p2

    invoke-direct/range {v2 .. v10}, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/analytics/Analytics$Event;ZZLcom/google/android/finsky/utils/BitmapLoader;ZZ)V

    .line 52
    move-object/from16 v0, p6

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mBucket:Lcom/google/android/finsky/model/Bucket;

    .line 53
    move/from16 v0, p5

    move-object v1, p0

    iput v0, v1, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mColumnCount:I

    .line 54
    move-object/from16 v0, p4

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mListRequest:Lcom/google/android/finsky/api/model/PaginatedList;

    .line 55
    iget-object v2, p0, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mListRequest:Lcom/google/android/finsky/api/model/PaginatedList;

    invoke-virtual {v2, p0}, Lcom/google/android/finsky/api/model/PaginatedList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 59
    iget v2, p0, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mColumnCount:I

    mul-int/lit8 v2, v2, 0x5

    move-object/from16 v0, p4

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/PaginatedList;->setPageSize(I)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 63
    .local v12, res:Landroid/content/res/Resources;
    const v2, 0x7f08001c

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f08001e

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v11, v2

    .line 66
    .local v11, entryWidth:F
    const v2, 0x7f080015

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mHeaderIconWidth:I

    .line 67
    const v2, 0x7f080014

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mHeaderIconHeight:I

    .line 68
    const v2, 0x7f080017

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mBucketEntryIconHeight:I

    .line 69
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/finsky/model/Bucket;->getBackend()I

    move-result v2

    invoke-static {p1, v2}, Lcom/google/android/finsky/utils/CorpusMetadata;->getIconWidth(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mBucketEntryIconWidth:I

    .line 70
    return-void
.end method

.method private bindBucketEntry(ILandroid/view/ViewGroup;)V
    .locals 3
    .parameter "itemIndex"
    .parameter "docEntry"

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->getItem(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 163
    :goto_0
    return-void

    .line 159
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 160
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->getItem(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mBucketEntryIconWidth:I

    iget v2, p0, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mBucketEntryIconHeight:I

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->bindDocument(Lcom/google/android/finsky/api/model/Document;Landroid/view/ViewGroup;II)V

    goto :goto_0
.end method

.method private getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 129
    if-nez p1, :cond_0

    const v1, 0x7f040004

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    .line 131
    .local v7, headerView:Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mBucket:Lcom/google/android/finsky/model/Bucket;

    move-object v0, v7

    check-cast v0, Landroid/view/ViewGroup;

    move-object v3, v0

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mHeaderIconWidth:I

    iget v6, p0, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mHeaderIconHeight:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->bindBucketHeader(Lcom/google/android/finsky/model/Bucket;Landroid/view/ViewGroup;Ljava/lang/String;II)V

    .line 133
    return-object v7

    .end local v7           #headerView:Landroid/view/View;
    :cond_0
    move-object v7, p1

    .line 129
    goto :goto_0
.end method

.method private getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 137
    if-nez p2, :cond_0

    .line 140
    const v2, 0x7f040006

    invoke-virtual {p0, v2, p3, v5}, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 141
    const/4 v1, 0x0

    .local v1, column:I
    :goto_0
    iget v2, p0, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mColumnCount:I

    if-ge v1, v2, :cond_0

    .line 142
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    const v4, 0x7f040040

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v3, v0

    invoke-virtual {p0, v4, v3, v5}, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v1           #column:I
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #column:I
    :goto_1
    iget v2, p0, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mColumnCount:I

    if-ge v1, v2, :cond_1

    .line 147
    iget v2, p0, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mColumnCount:I

    mul-int/2addr v2, p1

    add-int v3, v2, v1

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, v2}, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->bindBucketEntry(ILandroid/view/ViewGroup;)V

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 150
    :cond_1
    return-object p2
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mListRequest:Lcom/google/android/finsky/api/model/PaginatedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/PaginatedList;->getCount()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mColumnCount:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0

    add-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->NONE:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getItem(I)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "position"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mListRequest:Lcom/google/android/finsky/api/model/PaginatedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/PaginatedList;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mListRequest:Lcom/google/android/finsky/api/model/PaginatedList;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/api/model/PaginatedList;->getItem(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->getItem(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    .line 94
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->getCount()I

    move-result v1

    sub-int v0, v1, v3

    .line 95
    .local v0, lastRow:I
    if-nez p1, :cond_0

    .line 96
    const/4 v1, 0x0

    .line 114
    :goto_0
    return v1

    .line 98
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 99
    add-int/lit8 v0, v0, -0x1

    .line 102
    if-ne p1, v0, :cond_1

    .line 103
    sget-object v1, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter$1;->$SwitchMap$com$google$android$finsky$adapters$PaginatedListAdapter$FooterMode:[I

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 111
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No footer or item at row "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :pswitch_0
    const/4 v1, 0x2

    goto :goto_0

    .line 107
    :pswitch_1
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_2
    move v1, v3

    .line 109
    goto :goto_0

    :cond_1
    move v1, v3

    .line 114
    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getLastRequestError()Ljava/lang/String;
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mListRequest:Lcom/google/android/finsky/api/model/PaginatedList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/PaginatedList;->getErrorCode()Lcom/android/volley/Response$ErrorCode;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mListRequest:Lcom/google/android/finsky/api/model/PaginatedList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/PaginatedList;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type for getView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    .line 81
    :pswitch_1
    const/4 v0, 0x1

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 83
    :pswitch_2
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->getLoadingFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 85
    :pswitch_3
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->getErrorFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x4

    return v0
.end method

.method protected isMoreDataAvailable()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mListRequest:Lcom/google/android/finsky/api/model/PaginatedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/PaginatedList;->isMoreAvailable()Z

    move-result v0

    return v0
.end method

.method protected makeHeaderClickListener(Lcom/google/android/finsky/model/Bucket;Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "bucket"
    .parameter "originalQuery"

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method protected retryLoadingItems()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->mListRequest:Lcom/google/android/finsky/api/model/PaginatedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/PaginatedList;->retryLoadItems(Z)V

    .line 195
    return-void
.end method
