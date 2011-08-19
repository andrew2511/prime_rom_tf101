.class public Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;
.super Lcom/google/android/finsky/fragments/TableLayoutViewBinder;
.source "DetailsRelatedViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$DetailsItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/fragments/TableLayoutViewBinder",
        "<",
        "Lcom/google/android/finsky/api/model/Document;",
        ">;",
        "Lcom/google/android/finsky/api/model/OnDataChangedListener;"
    }
.end annotation


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mColumnCount:I

.field private mIconHeight:I

.field private mIconWidth:I

.field private mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

.field private mMaxItemsCount:I

.field private mMoreUrl:Ljava/lang/String;

.field private mNumberFormatInstance:Ljava/text/NumberFormat;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;-><init>()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;)Lcom/google/android/finsky/api/model/DfeList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mMoreUrl:Ljava/lang/String;

    return-object v0
.end method

.method private attachToInternalRequest()V
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot attach when no request is held internally"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 200
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->getLayoutSwitcher()Lcom/google/android/finsky/layout/LayoutSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    .line 203
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->prepareAndPopulateTable()V

    .line 216
    :cond_1
    :goto_0
    return-void

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isMoreAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->inErrorState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->getLayoutSwitcher()Lcom/google/android/finsky/layout/LayoutSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getErrorCode()Lcom/android/volley/Response$ErrorCode;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeList;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToErrorMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private detachListener()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 137
    :cond_0
    return-void
.end method

.method private prepareAndPopulateTable()V
    .locals 3

    .prologue
    const v2, 0x7f090026

    .line 234
    const/4 v0, 0x0

    const v1, 0x7f0b006e

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->setButtonVisibility(III)V

    .line 235
    new-instance v0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$2;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$2;-><init>(Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;)V

    invoke-virtual {p0, v2, v0}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->setButtonClickListener(ILandroid/view/View$OnClickListener;)V

    .line 242
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->populateTable()V

    .line 243
    return-void
.end method

.method private setupItemListRequest()V
    .locals 6

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->detachListener()V

    .line 220
    new-instance v0, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v4

    sget-object v5, Lcom/google/android/finsky/analytics/Analytics$Event;->RELATED:Lcom/google/android/finsky/analytics/Analytics$Event;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;ZLcom/google/android/finsky/analytics/Analytics;Lcom/google/android/finsky/analytics/Analytics$Event;)V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    .line 223
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->attachToInternalRequest()V

    .line 224
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    iget v1, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mMaxItemsCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeList;->setPageSize(I)V

    .line 225
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 226
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 227
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .parameter "view"
    .parameter "doc"
    .parameter "header"
    .parameter "url"
    .parameter "moreUrl"
    .parameter "columnCount"
    .parameter "maxItemsCount"

    .prologue
    const/4 v1, -0x1

    .line 119
    invoke-super {p0, p1, p2, v1, v1}, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;II)V

    .line 121
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mLayout:Landroid/view/View;

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    .local v0, headerView:Landroid/widget/TextView;
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/CorpusMetadata;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iput-object p4, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mUrl:Ljava/lang/String;

    .line 126
    iput-object p5, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mMoreUrl:Ljava/lang/String;

    .line 127
    iput p6, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mColumnCount:I

    .line 128
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/CorpusMetadata;->getRelatedIconWidth(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mIconWidth:I

    .line 129
    iput p7, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mMaxItemsCount:I

    .line 130
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->setupView()V

    .line 131
    return-void
.end method

.method protected getCellCount()I
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mMaxItemsCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method protected getData(I)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "position"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getData(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->getData(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    return-object v0
.end method

.method protected getTableCellLayoutId()I
    .locals 1

    .prologue
    .line 309
    const v0, 0x7f040025

    return v0
.end method

.method protected getTableColumnCount()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mColumnCount:I

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 2
    .parameter "context"
    .parameter "api"
    .parameter "navManager"
    .parameter "bitmapLoader"

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 109
    iput-object p4, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 110
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mNumberFormatInstance:Ljava/text/NumberFormat;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f080052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mIconHeight:I

    .line 114
    return-void
.end method

.method public onDataChanged()V
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->getLayoutSwitcher()Lcom/google/android/finsky/layout/LayoutSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    .line 253
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->prepareAndPopulateTable()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 314
    invoke-super {p0}, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;->onDestroyView()V

    .line 316
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->detachListener()V

    .line 317
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "message"

    .prologue
    .line 303
    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;->onErrorResponse(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, errorMessage:Ljava/lang/String;
    return-void
.end method

.method protected setupTableCell(Lcom/google/android/finsky/api/model/Document;Landroid/view/ViewGroup;)V
    .locals 7
    .parameter "data"
    .parameter "view"

    .prologue
    .line 268
    if-nez p1, :cond_0

    .line 292
    :goto_0
    return-void

    .line 272
    :cond_0
    new-instance v6, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$DetailsItemViewHolder;

    invoke-direct {v6, p2}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$DetailsItemViewHolder;-><init>(Landroid/view/View;)V

    .line 274
    .local v6, holder:Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$DetailsItemViewHolder;
    iget-object v0, v6, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$DetailsItemViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, v6, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$DetailsItemViewHolder;->ratingStars:Landroid/widget/RatingBar;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getStarRating()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 277
    iget-object v0, v6, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$DetailsItemViewHolder;->ratingCount:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mNumberFormatInstance:Ljava/text/NumberFormat;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    :cond_1
    iget-object v0, v6, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$DetailsItemViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mIconWidth:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 281
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getBitmapUrlFromDocument(Lcom/google/android/finsky/api/model/Document;I)Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, imageUrl:Ljava/lang/String;
    iget-object v0, v6, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$DetailsItemViewHolder;->item:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    if-eqz v0, :cond_2

    iget-object v0, v6, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$DetailsItemViewHolder;->item:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v6, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$DetailsItemViewHolder;->item:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 285
    iget-object v0, v6, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$DetailsItemViewHolder;->item:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v2, v6, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$DetailsItemViewHolder;->thumbnail:Landroid/widget/ImageView;

    new-instance v3, Lcom/google/android/finsky/layout/ThumbnailListener;

    iget-object v4, v6, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$DetailsItemViewHolder;->thumbnail:Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/google/android/finsky/layout/ThumbnailListener;-><init>(Landroid/widget/ImageView;Z)V

    iget v4, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mIconWidth:I

    iget v5, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mIconHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->getOrBindImmediately(Ljava/lang/String;Landroid/widget/ImageView;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$DetailsItemViewHolder;->item:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 290
    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 291
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getDetailsClickListener(Lcom/google/android/finsky/api/model/Document;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected bridge synthetic setupTableCell(Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    check-cast p1, Lcom/google/android/finsky/api/model/Document;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->setupTableCell(Lcom/google/android/finsky/api/model/Document;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setupView()V
    .locals 4

    .prologue
    .line 167
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->clearTransientState()V

    .line 172
    :cond_0
    new-instance v0, Lcom/google/android/finsky/layout/LayoutSwitcher;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->getTableLayoutId()I

    move-result v2

    new-instance v3, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$1;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$1;-><init>(Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/layout/LayoutSwitcher;-><init>(Landroid/view/View;ILcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;)V

    .line 179
    .local v0, layoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->setLayoutSwitcher(Lcom/google/android/finsky/layout/LayoutSwitcher;)V

    .line 180
    const/16 v1, 0x15e

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingDelayed(I)V

    .line 185
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->mLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->setupItemListRequest()V

    .line 189
    :cond_1
    return-void
.end method
