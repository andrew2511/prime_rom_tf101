.class public Lcom/android/vending/SearchAssetItemAdapter;
.super Lcom/android/vending/AssetItemAdapter;
.source "SearchAssetItemAdapter.java"


# instance fields
.field private mActivity:Lcom/android/vending/SearchAssetListActivity;

.field private final mCorrectedAssets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/vending/SearchAssetListActivity;Landroid/os/Handler;)V
    .locals 1
    .parameter "activity"
    .parameter "handler"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/vending/AssetItemAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/SearchAssetItemAdapter;->mCorrectedAssets:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcom/android/vending/SearchAssetItemAdapter;->mActivity:Lcom/android/vending/SearchAssetListActivity;

    .line 39
    return-void
.end method

.method private getCorrectedAssetView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 240
    iget-object v4, p0, Lcom/android/vending/SearchAssetItemAdapter;->mCorrectedAssets:Ljava/util/List;

    const/4 v5, 0x1

    sub-int v5, p1, v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 242
    .local v0, asset:Lcom/android/vending/model/Asset;
    move-object v3, p2

    .line 243
    .local v3, view:Landroid/view/View;
    if-nez v3, :cond_0

    .line 244
    sget-object v4, Lcom/android/vending/AssetItemAdapter$ViewType;->SNIPPET_LIST_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    invoke-virtual {v4}, Lcom/android/vending/AssetItemAdapter$ViewType;->getResourceLayoutId()I

    move-result v4

    iget-object v5, p0, Lcom/android/vending/SearchAssetItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, p3}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 248
    :cond_0
    const v4, 0x7f08001e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 249
    .local v2, imageView:Landroid/widget/ImageView;
    invoke-direct {p0, v0}, Lcom/android/vending/SearchAssetItemAdapter;->getIconBitmapForCorrectedAsset(Lcom/android/vending/model/Asset;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 250
    .local v1, drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    invoke-virtual {p0, v3, v0, p3}, Lcom/android/vending/SearchAssetItemAdapter;->initializeSnippetListView(Landroid/view/View;Lcom/android/vending/model/Asset;Landroid/view/ViewGroup;)V

    .line 254
    return-object v3
.end method

.method private getCorrectedSectionFooterView(Landroid/view/View;)Landroid/view/View;
    .locals 9
    .parameter "convertView"

    .prologue
    .line 308
    move-object v4, p1

    .line 309
    .local v4, result:Landroid/view/View;
    if-nez v4, :cond_0

    .line 310
    const v5, 0x7f040054

    iget-object v6, p0, Lcom/android/vending/SearchAssetItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v4

    .line 313
    :cond_0
    const v5, 0x7f08010d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 315
    .local v3, footer:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/vending/SearchAssetItemAdapter;->mActivity:Lcom/android/vending/SearchAssetListActivity;

    invoke-virtual {v5}, Lcom/android/vending/SearchAssetListActivity;->getCorrectedQuery()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, correctedQuery:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/vending/SearchAssetItemAdapter;->mActivity:Lcom/android/vending/SearchAssetListActivity;

    invoke-virtual {v5}, Lcom/android/vending/SearchAssetListActivity;->getCorrectedTotalResultCount()J

    move-result-wide v1

    .line 318
    .local v1, correctedResultCount:J
    iget-object v5, p0, Lcom/android/vending/SearchAssetItemAdapter;->mActivity:Lcom/android/vending/SearchAssetListActivity;

    const v6, 0x7f070198

    invoke-virtual {v5, v6}, Lcom/android/vending/SearchAssetListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    return-object v4
.end method

.method private getCorrectedSectionHeaderView(Landroid/view/View;)Landroid/view/View;
    .locals 15
    .parameter "convertView"

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 280
    move-object/from16 v9, p1

    .line 281
    .local v9, result:Landroid/view/View;
    if-nez v9, :cond_0

    .line 282
    const v10, 0x7f040055

    iget-object v11, p0, Lcom/android/vending/SearchAssetItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10, v11}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v9

    .line 285
    :cond_0
    iget-object v10, p0, Lcom/android/vending/SearchAssetItemAdapter;->mActivity:Lcom/android/vending/SearchAssetListActivity;

    invoke-virtual {v10}, Lcom/android/vending/SearchAssetListActivity;->getCorrectedQuery()Ljava/lang/String;

    move-result-object v4

    .line 288
    .local v4, correctedQuery:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/vending/SearchAssetItemAdapter;->mActivity:Lcom/android/vending/SearchAssetListActivity;

    const v11, 0x7f070196

    invoke-virtual {v10, v11}, Lcom/android/vending/SearchAssetListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 289
    .local v7, headerString:Ljava/lang/String;
    const/16 v10, 0x5e

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 292
    .local v3, caretIndex:I
    iget-object v10, p0, Lcom/android/vending/SearchAssetItemAdapter;->mActivity:Lcom/android/vending/SearchAssetListActivity;

    invoke-virtual {v10}, Lcom/android/vending/SearchAssetListActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    new-array v11, v14, [I

    const v12, 0x1010036

    aput v12, v11, v13

    invoke-virtual {v10, v11}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 294
    .local v1, array:Landroid/content/res/TypedArray;
    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    .line 297
    .local v8, mTextColorPrimary:I
    new-array v10, v14, [Ljava/lang/CharSequence;

    aput-object v4, v10, v13

    invoke-static {v7, v10}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 298
    .local v5, expanded:Ljava/lang/CharSequence;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 299
    .local v2, buf:Landroid/text/SpannableStringBuilder;
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v10, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v3

    const/16 v12, 0x11

    invoke-virtual {v2, v10, v3, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 302
    move-object v0, v9

    check-cast v0, Landroid/widget/TextView;

    move-object v6, v0

    .line 303
    .local v6, header:Landroid/widget/TextView;
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    return-object v9
.end method

.method private getIconBitmapForCorrectedAsset(Lcom/android/vending/model/Asset;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .parameter "correctedAsset"

    .prologue
    const/4 v3, -0x1

    .line 383
    sget-object v1, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {p1, v1, v3}, Lcom/android/vending/model/Asset;->getBitmapDrawables(Lcom/android/vending/model/Asset$AppImageUsage;I)Ljava/util/List;

    move-result-object v0

    .line 385
    .local v0, drawables:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/drawable/BitmapDrawable;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/android/vending/SearchAssetItemAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-static {v1, v2, v3}, Lcom/android/vending/SearchAssetItemAdapter;->getLoadingImages(Landroid/content/Context;Lcom/android/vending/model/Asset$AppImageUsage;I)Ljava/util/List;

    move-result-object v0

    .line 390
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, p0

    :goto_0
    return-object v1

    .restart local p0
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getResultCountHeaderView(Landroid/view/View;)Landroid/view/View;
    .locals 12
    .parameter "convertView"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 258
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    .line 259
    .local v4, result:Landroid/widget/TextView;
    if-nez v4, :cond_0

    .line 260
    const v7, 0x7f040056

    iget-object v8, p0, Lcom/android/vending/SearchAssetItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v4

    .end local v4           #result:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 263
    .restart local v4       #result:Landroid/widget/TextView;
    :cond_0
    iget-object v7, p0, Lcom/android/vending/SearchAssetItemAdapter;->mActivity:Lcom/android/vending/SearchAssetListActivity;

    invoke-virtual {v7}, Lcom/android/vending/SearchAssetListActivity;->getNumMatchingAssets()J

    move-result-wide v1

    .line 264
    .local v1, numMatchingAssets:J
    iget-object v7, p0, Lcom/android/vending/SearchAssetItemAdapter;->mActivity:Lcom/android/vending/SearchAssetListActivity;

    invoke-virtual {v7}, Lcom/android/vending/SearchAssetListActivity;->getQuery()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, query:Ljava/lang/String;
    const-string v6, ""

    .line 267
    .local v6, title:Ljava/lang/CharSequence;
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_1

    .line 268
    iget-object v7, p0, Lcom/android/vending/SearchAssetItemAdapter;->mActivity:Lcom/android/vending/SearchAssetListActivity;

    invoke-virtual {v7}, Lcom/android/vending/SearchAssetListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0002

    long-to-int v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 270
    .local v5, template:Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object v3, v7, v11

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 275
    .end local v5           #template:Ljava/lang/String;
    :goto_0
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    return-object v4

    .line 272
    :cond_1
    iget-object v7, p0, Lcom/android/vending/SearchAssetItemAdapter;->mActivity:Lcom/android/vending/SearchAssetListActivity;

    const v8, 0x7f07018e

    invoke-virtual {v7, v8}, Lcom/android/vending/SearchAssetListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/CharSequence;

    aput-object v3, v8, v10

    invoke-static {v7, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_0
.end method


# virtual methods
.method protected clearAllAssetsWithNoNotification()Z
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/vending/AssetItemAdapter;->clearAllAssetsWithNoNotification()Z

    move-result v0

    .line 49
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/vending/SearchAssetItemAdapter;->mCorrectedAssets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    .line 54
    :goto_0
    return v1

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/android/vending/SearchAssetItemAdapter;->mCorrectedAssets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 54
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAsset(I)Lcom/android/vending/model/Asset;
    .locals 5
    .parameter "position"

    .prologue
    .line 170
    iget-object v3, p0, Lcom/android/vending/SearchAssetItemAdapter;->mCorrectedAssets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 171
    .local v0, correctedAssetsCount:I
    if-nez v0, :cond_0

    .line 173
    invoke-super {p0, p1}, Lcom/android/vending/AssetItemAdapter;->getAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v3

    .line 188
    .end local p0
    :goto_0
    return-object v3

    .line 176
    .restart local p0
    :cond_0
    if-gt p1, v0, :cond_1

    .line 178
    iget-object v3, p0, Lcom/android/vending/SearchAssetItemAdapter;->mCorrectedAssets:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/vending/model/Asset;

    move-object v3, p0

    goto :goto_0

    .line 183
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Lcom/android/vending/SearchAssetItemAdapter;->hasCorrectedSectionFooterView()Z

    move-result v1

    .line 184
    .local v1, hasCorrectedSectionFooter:Z
    sub-int v3, p1, v0

    const/4 v4, 0x2

    sub-int v2, v3, v4

    .line 185
    .local v2, indexForSuper:I
    if-eqz v1, :cond_2

    .line 186
    add-int/lit8 v2, v2, -0x1

    .line 188
    :cond_2
    invoke-super {p0, v2}, Lcom/android/vending/AssetItemAdapter;->getAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v3

    goto :goto_0
.end method

.method public getCorrectedAssetsCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/vending/SearchAssetItemAdapter;->mCorrectedAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 97
    iget-object v3, p0, Lcom/android/vending/SearchAssetItemAdapter;->mCorrectedAssets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 99
    .local v1, correctedAssetsCount:I
    invoke-super {p0}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v0

    .line 101
    .local v0, assetsCount:I
    move v2, v0

    .line 102
    .local v2, result:I
    if-lez v0, :cond_0

    .line 104
    add-int/lit8 v2, v2, 0x1

    .line 106
    :cond_0
    if-lez v1, :cond_1

    .line 108
    add-int/lit8 v3, v1, 0x1

    add-int/2addr v2, v3

    .line 110
    invoke-virtual {p0}, Lcom/android/vending/SearchAssetItemAdapter;->hasCorrectedSectionFooterView()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    add-int/lit8 v2, v2, 0x1

    .line 115
    :cond_1
    return v2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 7
    .parameter "position"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 127
    iget-object v4, p0, Lcom/android/vending/SearchAssetItemAdapter;->mCorrectedAssets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 128
    .local v0, correctedAssetsCount:I
    if-nez v0, :cond_1

    .line 130
    if-nez p1, :cond_0

    move-object v4, v5

    .line 165
    :goto_0
    return-object v4

    .line 134
    :cond_0
    sub-int v4, p1, v6

    invoke-super {p0, v4}, Lcom/android/vending/AssetItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 137
    :cond_1
    if-nez p1, :cond_2

    move-object v4, v5

    .line 139
    goto :goto_0

    .line 141
    :cond_2
    if-gt p1, v0, :cond_3

    .line 143
    iget-object v4, p0, Lcom/android/vending/SearchAssetItemAdapter;->mCorrectedAssets:Ljava/util/List;

    sub-int v5, p1, v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 146
    :cond_3
    invoke-virtual {p0}, Lcom/android/vending/SearchAssetItemAdapter;->hasCorrectedSectionFooterView()Z

    move-result v2

    .line 147
    .local v2, hasCorrectedSectionFooter:Z
    if-eqz v2, :cond_4

    add-int/lit8 v4, v0, 0x1

    if-ne p1, v4, :cond_4

    move-object v4, v5

    .line 149
    goto :goto_0

    .line 152
    :cond_4
    add-int/lit8 v1, v0, 0x2

    .line 153
    .local v1, expectedResultCountHeader:I
    if-nez v2, :cond_5

    .line 154
    add-int/lit8 v1, v1, -0x1

    .line 156
    :cond_5
    if-ne p1, v1, :cond_6

    move-object v4, v5

    .line 158
    goto :goto_0

    .line 161
    :cond_6
    sub-int v4, p1, v0

    const/4 v5, 0x2

    sub-int v3, v4, v5

    .line 162
    .local v3, indexForSuper:I
    if-eqz v2, :cond_7

    .line 163
    add-int/lit8 v3, v3, -0x1

    .line 165
    :cond_7
    invoke-super {p0, v3}, Lcom/android/vending/AssetItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 59
    iget-object v3, p0, Lcom/android/vending/SearchAssetItemAdapter;->mCorrectedAssets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 60
    .local v0, correctedAssetsCount:I
    if-nez v0, :cond_1

    .line 61
    if-nez p1, :cond_0

    move v3, v5

    .line 88
    :goto_0
    return v3

    :cond_0
    move v3, v4

    .line 64
    goto :goto_0

    .line 67
    :cond_1
    if-nez p1, :cond_2

    .line 68
    const/4 v3, 0x2

    goto :goto_0

    .line 71
    :cond_2
    if-gt p1, v0, :cond_3

    move v3, v4

    .line 72
    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {p0}, Lcom/android/vending/SearchAssetItemAdapter;->hasCorrectedSectionFooterView()Z

    move-result v2

    .line 76
    .local v2, hasCorrectedSectionFooter:Z
    if-eqz v2, :cond_4

    add-int/lit8 v3, v0, 0x1

    if-ne p1, v3, :cond_4

    .line 77
    const/4 v3, 0x3

    goto :goto_0

    .line 80
    :cond_4
    add-int/lit8 v1, v0, 0x2

    .line 81
    .local v1, expectedResultCountHeader:I
    if-nez v2, :cond_5

    .line 82
    add-int/lit8 v1, v1, -0x1

    .line 84
    :cond_5
    if-ne p1, v1, :cond_6

    move v3, v5

    .line 85
    goto :goto_0

    :cond_6
    move v3, v4

    .line 88
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 193
    iget-object v4, p0, Lcom/android/vending/SearchAssetItemAdapter;->mCorrectedAssets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 194
    .local v0, correctedAssetsCount:I
    if-nez v0, :cond_1

    .line 196
    if-lez p1, :cond_0

    .line 198
    const/4 v4, 0x1

    sub-int v4, p1, v4

    invoke-super {p0, v4, p2, p3}, Lcom/android/vending/AssetItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 236
    :goto_0
    return-object v4

    .line 202
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/vending/SearchAssetItemAdapter;->getResultCountHeaderView(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 205
    :cond_1
    if-nez p1, :cond_2

    .line 207
    invoke-direct {p0, p2}, Lcom/android/vending/SearchAssetItemAdapter;->getCorrectedSectionHeaderView(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 210
    :cond_2
    if-gt p1, v0, :cond_3

    .line 212
    invoke-direct {p0, p1, p2, p3}, Lcom/android/vending/SearchAssetItemAdapter;->getCorrectedAssetView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {p0}, Lcom/android/vending/SearchAssetItemAdapter;->hasCorrectedSectionFooterView()Z

    move-result v2

    .line 216
    .local v2, hasCorrectedSectionFooter:Z
    if-eqz v2, :cond_4

    add-int/lit8 v4, v0, 0x1

    if-ne p1, v4, :cond_4

    .line 218
    invoke-direct {p0, p2}, Lcom/android/vending/SearchAssetItemAdapter;->getCorrectedSectionFooterView(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 221
    :cond_4
    add-int/lit8 v1, v0, 0x2

    .line 222
    .local v1, expectedResultCountHeader:I
    if-nez v2, :cond_5

    .line 223
    add-int/lit8 v1, v1, -0x1

    .line 225
    :cond_5
    if-ne p1, v1, :cond_6

    .line 227
    invoke-direct {p0, p2}, Lcom/android/vending/SearchAssetItemAdapter;->getResultCountHeaderView(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 232
    :cond_6
    sub-int v4, p1, v0

    const/4 v5, 0x2

    sub-int v3, v4, v5

    .line 233
    .local v3, indexForSuper:I
    if-eqz v2, :cond_7

    .line 234
    add-int/lit8 v3, v3, -0x1

    .line 236
    :cond_7
    invoke-super {p0, v3, p2, p3}, Lcom/android/vending/AssetItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x4

    return v0
.end method

.method public hasCorrectedSectionFooterView()Z
    .locals 5

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/vending/SearchAssetItemAdapter;->getCorrectedAssetsCount()I

    move-result v0

    .line 326
    .local v0, numberOfShowingResults:I
    iget-object v3, p0, Lcom/android/vending/SearchAssetItemAdapter;->mActivity:Lcom/android/vending/SearchAssetListActivity;

    invoke-virtual {v3}, Lcom/android/vending/SearchAssetListActivity;->getCorrectedTotalResultCount()J

    move-result-wide v1

    .line 327
    .local v1, numberOfTotalResults:J
    int-to-long v3, v0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/vending/SearchAssetItemAdapter;->mAdapterPopulated:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/SearchAssetItemAdapter;->mCorrectedAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 332
    invoke-virtual {p0, p1}, Lcom/android/vending/SearchAssetItemAdapter;->getItemViewType(I)I

    move-result v0

    .line 333
    .local v0, viewType:I
    if-nez v0, :cond_0

    .line 334
    const/4 v1, 0x0

    .line 336
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public loadBitmapsForCorrectedResults(Lcom/android/vending/model/Asset$AppImageUsage;I)V
    .locals 8
    .parameter "usage"
    .parameter "imageId"

    .prologue
    .line 347
    const/4 v1, 0x1

    .line 348
    .local v1, hasAllCorrectedIcons:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/vending/SearchAssetItemAdapter;->mCorrectedAssets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 349
    iget-object v6, p0, Lcom/android/vending/SearchAssetItemAdapter;->mCorrectedAssets:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 350
    .local v0, corrected:Lcom/android/vending/model/Asset;
    invoke-virtual {v0, p1, p2}, Lcom/android/vending/model/Asset;->areBitmapsLoadedOrLoading(Lcom/android/vending/model/Asset$AppImageUsage;I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 351
    const/4 v1, 0x0

    .line 356
    .end local v0           #corrected:Lcom/android/vending/model/Asset;
    :cond_0
    if-eqz v1, :cond_3

    .line 380
    :cond_1
    :goto_1
    return-void

    .line 348
    .restart local v0       #corrected:Lcom/android/vending/model/Asset;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    .end local v0           #corrected:Lcom/android/vending/model/Asset;
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/vending/SearchAssetItemAdapter;->mCorrectedAssets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 362
    .local v4, requestedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/vending/SearchAssetItemAdapter;->mCorrectedAssets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 364
    .local v5, requestedParameters:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;>;"
    const/4 v3, 0x0

    .line 365
    .local v3, numRequestedImages:I
    const/4 v2, 0x0

    :goto_2
    iget-object v6, p0, Lcom/android/vending/SearchAssetItemAdapter;->mCorrectedAssets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 366
    iget-object v6, p0, Lcom/android/vending/SearchAssetItemAdapter;->mCorrectedAssets:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 367
    .restart local v0       #corrected:Lcom/android/vending/model/Asset;
    invoke-virtual {v0, p1, p2}, Lcom/android/vending/model/Asset;->areBitmapsLoadedOrLoading(Lcom/android/vending/model/Asset$AppImageUsage;I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 368
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance v6, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;

    invoke-direct {v6, v2, p1, p2}, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;-><init>(ILcom/android/vending/model/Asset$AppImageUsage;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-virtual {v0, p1, p2}, Lcom/android/vending/model/Asset;->setLoadingBitmapsState(Lcom/android/vending/model/Asset$AppImageUsage;I)V

    .line 371
    iget-object v6, p0, Lcom/android/vending/SearchAssetItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, p1, p2}, Lcom/android/vending/SearchAssetItemAdapter;->getLoadingImages(Landroid/content/Context;Lcom/android/vending/model/Asset$AppImageUsage;I)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, p1, p2, v6}, Lcom/android/vending/model/Asset;->setLoadingBitmaps(Lcom/android/vending/model/Asset$AppImageUsage;ILjava/util/List;)V

    .line 373
    add-int/lit8 v3, v3, 0x1

    .line 365
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 377
    .end local v0           #corrected:Lcom/android/vending/model/Asset;
    :cond_5
    if-lez v3, :cond_1

    .line 378
    iget-object v6, p0, Lcom/android/vending/SearchAssetItemAdapter;->mAsynchRunner:Lcom/android/vending/AsynchRequestRunner;

    new-instance v7, Lcom/android/vending/AssetItemAdapter$ImagesRequest;

    invoke-direct {v7, p0, v4, v5}, Lcom/android/vending/AssetItemAdapter$ImagesRequest;-><init>(Lcom/android/vending/AssetItemAdapter;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;)V

    goto :goto_1
.end method

.method public onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p2, correctedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-super {p0, p1, p2}, Lcom/android/vending/AssetItemAdapter;->onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V

    .line 43
    iget-object v0, p0, Lcom/android/vending/SearchAssetItemAdapter;->mCorrectedAssets:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    return-void
.end method
