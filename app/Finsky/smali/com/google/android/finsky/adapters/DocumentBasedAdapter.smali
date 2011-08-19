.class public abstract Lcom/google/android/finsky/adapters/DocumentBasedAdapter;
.super Lcom/google/android/finsky/adapters/PaginatedListAdapter;
.source "DocumentBasedAdapter.java"


# instance fields
.field private final mIncludeLinkToAllResults:Z

.field protected final mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mShowIndividualRatings:Z

.field private final mShowResultCount:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/analytics/Analytics$Event;ZZLcom/google/android/finsky/utils/BitmapLoader;ZZ)V
    .locals 0
    .parameter "context"
    .parameter "navManager"
    .parameter "event"
    .parameter "showIndividualRatings"
    .parameter "showAllResultsLink"
    .parameter "loader"
    .parameter "isRequestInErrorState"
    .parameter "showResultCount"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p7}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/analytics/Analytics$Event;Z)V

    .line 46
    iput-boolean p4, p0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->mShowIndividualRatings:Z

    .line 47
    iput-boolean p8, p0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->mShowResultCount:Z

    .line 48
    iput-boolean p5, p0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->mIncludeLinkToAllResults:Z

    .line 49
    iput-object p6, p0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 50
    return-void
.end method

.method private bindImage(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;II)V
    .locals 8
    .parameter "safeView"
    .parameter "urlToLoad"
    .parameter "temporaryDisplay"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 124
    .local v7, oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v7}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {v7}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    new-instance v3, Lcom/google/android/finsky/adapters/DocumentBasedAdapter$2;

    invoke-direct {v3, p0, p1}, Lcom/google/android/finsky/adapters/DocumentBasedAdapter$2;-><init>(Lcom/google/android/finsky/adapters/DocumentBasedAdapter;Landroid/widget/ImageView;)V

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v6

    .line 143
    .local v6, newContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 144
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 145
    invoke-virtual {v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private setHeaderIcon(Lcom/google/android/finsky/model/Bucket;Landroid/widget/ImageView;II)V
    .locals 6
    .parameter "bucket"
    .parameter "bucketIconView"
    .parameter "maxIconWidth"
    .parameter "maxIconHeight"

    .prologue
    .line 150
    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getBackend()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/finsky/utils/CorpusMetadata;->getIconResource(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->bindImage(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;II)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getBackend()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/CorpusMetadata;->getIconResource(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected bindBucketHeader(Lcom/google/android/finsky/model/Bucket;Landroid/view/ViewGroup;Ljava/lang/String;II)V
    .locals 19
    .parameter "bucket"
    .parameter "bucketView"
    .parameter "originalQuery"
    .parameter "maxIconWidth"
    .parameter "maxIconHeight"

    .prologue
    .line 162
    const v16, 0x7f09000d

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 163
    .local v7, bucketHeader:Landroid/view/View;
    const v16, 0x7f09000e

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 164
    .local v11, headerContents:Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/model/Bucket;->getItemCount()I

    move-result v16

    if-nez v16, :cond_0

    .line 165
    const/16 v16, 0x8

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    :goto_0
    return-void

    .line 168
    :cond_0
    const/16 v16, 0x0

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    const v16, 0x7f09000f

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 170
    .local v8, bucketIconView:Landroid/widget/ImageView;
    const v16, 0x7f090011

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 172
    .local v9, bucketMoreIconView:Landroid/widget/ImageView;
    const v16, 0x7f090010

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 173
    .local v12, headerView:Landroid/widget/TextView;
    const v16, 0x7f090012

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 174
    .local v14, searchResultsView:Landroid/widget/TextView;
    const v16, 0x7f090013

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 175
    .local v5, allResults:Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/model/Bucket;->getBackend()I

    move-result v6

    .line 176
    .local v6, backend:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->makeHeaderClickListener(Lcom/google/android/finsky/model/Bucket;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v10

    .line 178
    .local v10, headerClickHandler:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->getHintColor(I)I

    move-result v16

    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/model/Bucket;->getHeaderText()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->setHeaderIcon(Lcom/google/android/finsky/model/Bucket;Landroid/widget/ImageView;II)V

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/model/Bucket;->hasMoreItems()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 184
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->mIncludeLinkToAllResults:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 186
    const/16 v16, 0x8

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    :goto_1
    const/16 v16, 0x0

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    invoke-virtual {v11, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v16, 0x7f020018

    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 200
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->mShowResultCount:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/model/Bucket;->getEstimatedResults()I

    move-result v13

    .line 202
    .local v13, numMatchingAssets:I
    if-lez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const/high16 v17, 0x7f0c

    move-object/from16 v0, v16

    move/from16 v1, v17

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v15, v16

    .line 205
    .local v15, template:Ljava/lang/String;
    :goto_3
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    const/16 v16, 0x0

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    .end local v13           #numMatchingAssets:I
    .end local v15           #template:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->mIncludeLinkToAllResults:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 212
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    const/16 v16, 0x0

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 188
    :cond_1
    const/16 v16, 0x0

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    invoke-static {v6}, Lcom/google/android/finsky/utils/CorpusMetadata;->getMoreArrowResource(I)I

    move-result v16

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 195
    :cond_2
    const/16 v16, 0x8

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    const/16 v16, 0x0

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const/16 v16, 0x0

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 202
    .restart local v13       #numMatchingAssets:I
    :cond_3
    const-string v16, ""

    move-object/from16 v15, v16

    goto :goto_3

    .line 208
    .end local v13           #numMatchingAssets:I
    :cond_4
    const/16 v16, 0x8

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 215
    :cond_5
    const/16 v16, 0x8

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    const/16 v16, 0x0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method protected bindDocument(Lcom/google/android/finsky/api/model/Document;Landroid/view/ViewGroup;II)V
    .locals 10
    .parameter "doc"
    .parameter "docEntry"
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 74
    const v0, 0x7f0900a3

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RatingBar;

    .line 75
    .local v8, ratingBar:Landroid/widget/RatingBar;
    const v0, 0x7f0900a4

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 76
    .local v9, ratingCount:Landroid/widget/TextView;
    const v0, 0x7f09000c

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 77
    .local v7, priceView:Landroid/widget/TextView;
    const v0, 0x7f090008

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 79
    .local v1, bitmapView:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getDetailsClickListener(Lcom/google/android/finsky/api/model/Document;)Landroid/view/View$OnClickListener;

    move-result-object v6

    .line 80
    .local v6, openDetails:Landroid/view/View$OnClickListener;
    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->getEntryBackground(Lcom/google/android/finsky/api/model/Document;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    const v0, 0x7f09000a

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const v0, 0x7f09000b

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {v7, p1, v0}, Lcom/google/android/finsky/utils/Utils;->bindPurchaseButton(Landroid/widget/TextView;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 86
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->mShowIndividualRatings:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v8, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 88
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getStarRating()F

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/RatingBar;->setRating(F)V

    .line 90
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :goto_0
    invoke-static {p1}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getBitmapUrlFromDocument(Lcom/google/android/finsky/api/model/Document;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getDefaultIcon(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->bindImage(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;II)V

    .line 99
    return-void

    .line 92
    :cond_0
    invoke-virtual {v8, v4}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 93
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected getEntryBackground(Lcom/google/android/finsky/api/model/Document;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "doc"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/CorpusMetadata;->getBucketEntryBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getHintColor(I)I
    .locals 1
    .parameter "backend"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/finsky/utils/CorpusMetadata;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method protected makeHeaderClickListener(Lcom/google/android/finsky/model/Bucket;Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 3
    .parameter "bucket"
    .parameter "originalQuery"

    .prologue
    .line 104
    if-eqz p2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getHeaderUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getBackend()I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->createSearchMoreClickListener(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    .line 109
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getHeaderUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    new-instance v0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/adapters/DocumentBasedAdapter$1;-><init>(Lcom/google/android/finsky/adapters/DocumentBasedAdapter;Lcom/google/android/finsky/model/Bucket;)V

    goto :goto_0

    .line 117
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
