.class public Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;
.super Ljava/lang/Object;
.source "DetailsSummaryViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mContext:Landroid/content/Context;

.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mIsPendingDownload:Z

.field private mLayout:Landroid/view/View;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mNumberFormatInstance:Ljava/text/NumberFormat;

.field private mOfferTypeForPendingPurchase:I

.field private mPurchaseStatusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bindDetails()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 193
    iget-object v9, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mLayout:Landroid/view/View;

    const v10, 0x7f090042

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 194
    .local v5, firstLineText:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mLayout:Landroid/view/View;

    const v10, 0x7f090043

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 195
    .local v6, secondLineText:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mLayout:Landroid/view/View;

    const v10, 0x7f090044

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 197
    .local v7, thirdLineText:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    move-result-object v0

    .line 198
    .local v0, appDetails:Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    if-eqz v0, :cond_4

    .line 204
    iget-object v9, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v10}, Lcom/google/android/finsky/api/model/Document;->getNormalizedContentRating()I

    move-result v10

    invoke-static {v9, v10}, Lcom/google/android/finsky/activities/ContentFilterActivity;->getLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, contentRating:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    const v10, 0x7f0b00a0

    new-array v11, v14, [Ljava/lang/Object;

    aput-object v3, v11, v13

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v2, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasVersionString()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 211
    iget-object v9, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    const v10, 0x7f0b0066

    new-array v11, v14, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getVersionString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasUploadDate()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 217
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getUploadDate()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .restart local v2       #builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasInstallationSize()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 225
    iget-object v9, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getInstallationSize()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasNumDownloads()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 231
    iget-object v9, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    const v10, 0x7f0b0064

    new-array v11, v14, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getNumDownloads()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    .end local v2           #builder:Ljava/lang/StringBuilder;
    .end local v3           #contentRating:Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    move-result-object v1

    .line 239
    .local v1, bookDetails:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    if-eqz v1, :cond_7

    .line 241
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublicationDate()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 243
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPublicationDate()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/finsky/utils/DateUtils;->formatIso8601Date(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_5
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublisher()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 252
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPublisher()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :cond_6
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasNumberOfPages()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 257
    iget-object v9, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    const v10, 0x7f0b0065

    new-array v11, v14, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getNumberOfPages()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :cond_7
    iget-object v9, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getVideoDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;

    move-result-object v8

    .line 263
    .local v8, videoDetails:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;
    if-eqz v8, :cond_9

    .line 265
    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->hasContentRating()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 266
    iget-object v9, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    const v10, 0x7f0b006a

    new-array v11, v14, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getContentRating()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :goto_1
    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->hasReleaseDate()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 275
    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :cond_8
    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->hasDuration()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 280
    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getDuration()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    :cond_9
    return-void

    .line 245
    .end local v8           #videoDetails:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 246
    .local v4, e:Ljava/text/ParseException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot parse ISO 8601 date "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 269
    .end local v4           #e:Ljava/text/ParseException;
    .restart local v8       #videoDetails:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;
    :cond_a
    iget-object v9, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    const v10, 0x7f0b006b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private bindImage()V
    .locals 13

    .prologue
    const/4 v12, -0x2

    .line 134
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mLayout:Landroid/view/View;

    const v2, 0x7f090005

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 137
    .local v8, divider:Landroid/view/View;
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/CorpusMetadata;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v6

    .line 138
    .local v6, color:I
    invoke-virtual {v8, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 141
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mLayout:Landroid/view/View;

    const v2, 0x7f090034

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 142
    .local v9, iv:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBestThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, url:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 147
    .local v10, res:Landroid/content/res/Resources;
    const v0, 0x7f08002a

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 148
    .local v4, width:I
    const v0, 0x7f08002b

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 149
    .local v5, height:I
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/finsky/layout/ThumbnailListener;

    const/4 v11, 0x1

    invoke-direct {v3, v9, v8, v11}, Lcom/google/android/finsky/layout/ThumbnailListener;-><init>(Landroid/widget/ImageView;Landroid/view/View;Z)V

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v7

    .line 151
    .local v7, container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-virtual {v7}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v12, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 154
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v12, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 157
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v7}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 159
    invoke-virtual {v7}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 162
    .end local v4           #width:I
    .end local v5           #height:I
    .end local v7           #container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    .end local v10           #res:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method private bindPrice()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 165
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mLayout:Landroid/view/View;

    const v3, 0x7f090037

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 169
    .local v1, priceView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 170
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mLayout:Landroid/view/View;

    const v3, 0x7f090038

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 173
    .local v0, convertedPriceView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/finsky/api/model/Document;->setPrice(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private bindRatingAndReviewsCount()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 178
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mLayout:Landroid/view/View;

    const v3, 0x7f090035

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    .line 179
    .local v0, ratingBar:Landroid/widget/RatingBar;
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mLayout:Landroid/view/View;

    const v3, 0x7f090036

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 180
    .local v1, reviewNumberView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {v0, v4}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 182
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getStarRating()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 184
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mNumberFormatInstance:Ljava/text/NumberFormat;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 187
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private getBuyButtonString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->needsCheckoutFlow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0043

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 347
    :goto_0
    return-object v0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 343
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0045

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    const v1, 0x7f0b003d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getOpenButtonStringId()I
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 376
    const v0, 0x7f0b0046

    .line 378
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b0045

    goto :goto_0
.end method

.method private getPurchasePendingString(I)Ljava/lang/String;
    .locals 2
    .parameter "offerType"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->needsCheckoutFlow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0022

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    :goto_0
    return-object v0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 365
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 363
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private setupActionButtons()V
    .locals 21

    .prologue
    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mLayout:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f09003b

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    .line 390
    .local v17, tryButton:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mLayout:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f090039

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 391
    .local v5, buyButton:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mLayout:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f09003a

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 392
    .local v6, buyButton2:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mLayout:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f09003c

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 393
    .local v9, launchButton:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mLayout:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f09003d

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 397
    .local v10, manageButton:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mLayout:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f090005

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 398
    .local v7, divider:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mLayout:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f090040

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 399
    .local v15, purchaseProgress:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mLayout:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f09003e

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 400
    .local v14, pendingStatus:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mLayout:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f090041

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 403
    .local v12, ownershipStatus:Landroid/widget/ImageView;
    const/16 v18, 0x8

    move-object v0, v9

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 404
    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setVisibility(I)V

    .line 405
    const/16 v18, 0x8

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 406
    const/16 v18, 0x8

    move-object v0, v6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 407
    const/16 v18, 0x8

    move-object v0, v10

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 410
    const/16 v18, 0x0

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 411
    const/16 v18, 0x8

    move-object v0, v15

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 412
    const/16 v18, 0x8

    move-object v0, v14

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mPurchaseStatusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->isPendingPurchase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 418
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mOfferTypeForPendingPurchase:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->getPurchasePendingString(I)Ljava/lang/String;

    move-result-object v11

    .line 419
    .local v11, message:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v7

    move-object v3, v15

    move-object v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->showPendingState(Ljava/lang/String;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;)V

    .line 498
    .end local v11           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 426
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mIsPendingDownload:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b0023

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 428
    .restart local v11       #message:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v7

    move-object v3, v15

    move-object v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->showPendingState(Ljava/lang/String;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;)V

    goto :goto_0

    .line 434
    .end local v11           #message:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoCache()Lcom/google/android/finsky/utils/PackageInfoCache;

    move-result-object v13

    .line 435
    .local v13, packageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/Document;->isLocallyAvailable(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v8

    .line 436
    .local v8, isLocallyAvailable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/Document;->ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v18

    if-nez v18, :cond_2

    if-eqz v8, :cond_b

    .line 442
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/Document;->canLaunch(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v18

    if-eqz v18, :cond_6

    :cond_3
    const/16 v18, 0x1

    move/from16 v16, v18

    .line 444
    .local v16, showLaunchButton:Z
    :goto_1
    if-eqz v16, :cond_8

    .line 445
    const/16 v18, 0x0

    move-object v0, v9

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 446
    if-eqz v8, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->getOpenButtonStringId()I

    move-result v18

    :goto_2
    move-object v0, v9

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getOpenClickListener(Lcom/google/android/finsky/api/model/Document;)Landroid/view/View$OnClickListener;

    move-result-object v18

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    :goto_3
    if-eqz v8, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/Document;->canManage(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 458
    const v18, 0x7f0b0043

    move-object v0, v10

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 466
    :goto_4
    const/16 v18, 0x0

    move-object v0, v10

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getManageClickListener(Lcom/google/android/finsky/api/model/Document;)Landroid/view/View$OnClickListener;

    move-result-object v18

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    .end local v16           #showLaunchButton:Z
    :cond_4
    :goto_5
    if-eqz v8, :cond_d

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/google/android/finsky/utils/CorpusMetadata;->getOwnedIconResource(I)I

    move-result v18

    move-object v0, v12

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 494
    :cond_5
    :goto_6
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 495
    invoke-virtual {v5}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 496
    invoke-virtual {v9}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 497
    invoke-virtual {v10}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 442
    :cond_6
    const/16 v18, 0x0

    move/from16 v16, v18

    goto/16 :goto_1

    .line 446
    .restart local v16       #showLaunchButton:Z
    :cond_7
    const v18, 0x7f0b0047

    goto/16 :goto_2

    .line 450
    :cond_8
    const/16 v18, 0x8

    move-object v0, v9

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3

    .line 459
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/Document;->isUpdateAvailable(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 461
    const v18, 0x7f0b0049

    move-object v0, v10

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_4

    .line 464
    :cond_a
    const v18, 0x7f0b0048

    move-object v0, v10

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_4

    .line 471
    .end local v16           #showLaunchButton:Z
    :cond_b
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->setupBuyButtons(Landroid/widget/Button;Landroid/widget/Button;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/api/model/Document;->hasSample()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 474
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setVisibility(I)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/api/model/Document;->sampleOwnedByUser()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getOpenClickListener(Lcom/google/android/finsky/api/model/Document;)Landroid/view/View$OnClickListener;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 478
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v18 .. v20}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Lcom/google/android/finsky/api/model/Document;I)Landroid/view/View$OnClickListener;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 488
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/Document;->ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/google/android/finsky/utils/CorpusMetadata;->getOwnedNotLocalIconResource(I)I

    move-result v18

    move-object v0, v12

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6
.end method

.method private setupBuyButtons(Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 10
    .parameter "buyButton"
    .parameter "buyButtonSecondary"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 296
    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 321
    invoke-virtual {p1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 322
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->getBuyButtonString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4, v5, v9}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Lcom/google/android/finsky/api/model/Document;I)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    :cond_0
    return-void

    .line 298
    :pswitch_0
    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v3

    .line 299
    .local v3, offers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 300
    .local v1, o:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v2

    .line 302
    .local v2, offerType:I
    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    .line 303
    invoke-virtual {p1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 304
    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    const v5, 0x7f0b003e

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4, v5, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Lcom/google/android/finsky/api/model/Document;I)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    :cond_2
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 311
    invoke-virtual {p2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 312
    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    const v5, 0x7f0b003f

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4, v5, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Lcom/google/android/finsky/api/model/Document;I)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private setupItemDetails()V
    .locals 4

    .prologue
    .line 120
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mLayout:Landroid/view/View;

    const v3, 0x7f090020

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 121
    .local v1, title:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mLayout:Landroid/view/View;

    const v3, 0x7f090033

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 125
    .local v0, creator:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->bindImage()V

    .line 128
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->bindPrice()V

    .line 129
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->bindRatingAndReviewsCount()V

    .line 130
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->bindDetails()V

    .line 131
    return-void
.end method

.method private showPendingState(Ljava/lang/String;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 2
    .parameter "message"
    .parameter "divider"
    .parameter "purchaseProgressBar"
    .parameter "statusTextView"

    .prologue
    const/4 v1, 0x0

    .line 502
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 503
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 504
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V
    .locals 1
    .parameter "view"
    .parameter "document"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mLayout:Landroid/view/View;

    .line 97
    iput-object p2, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 99
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mPurchaseStatusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;

    .line 100
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mPurchaseStatusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->attach(Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;)V

    .line 102
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->setupItemDetails()V

    .line 105
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->setupActionButtons()V

    .line 108
    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 1
    .parameter "context"
    .parameter "api"
    .parameter "navManager"
    .parameter "bitmapLoader"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    .line 89
    iput-object p3, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 90
    iput-object p4, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 92
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mNumberFormatInstance:Ljava/text/NumberFormat;

    .line 93
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mPurchaseStatusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mPurchaseStatusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->detach(Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;)V

    .line 606
    :cond_0
    return-void
.end method

.method public onPackageInstalled(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mIsPendingDownload:Z

    .line 586
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->refreshPage()V

    .line 588
    :cond_0
    return-void
.end method

.method public onPurchaseCompleted(Ljava/lang/String;Z)V
    .locals 2
    .parameter "docId"
    .parameter "hadError"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    :goto_0
    return-void

    .line 544
    :cond_0
    if-eqz p2, :cond_1

    .line 545
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->refreshPage()V

    goto :goto_0

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 569
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->refreshPage()V

    .line 571
    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mOfferTypeForPendingPurchase:I

    goto :goto_0

    .line 554
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mIsPendingDownload:Z

    .line 555
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->refresh()V

    goto :goto_1

    .line 560
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->refreshPage()V

    .line 563
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->needsCheckoutFlow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mOfferTypeForPendingPurchase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 564
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->sampleItem(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_1

    .line 550
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPurchaseInitiated(Ljava/lang/String;I)V
    .locals 1
    .parameter "docId"
    .parameter "offerType"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    :goto_0
    return-void

    .line 525
    :cond_0
    iput p2, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mOfferTypeForPendingPurchase:I

    .line 526
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->refresh()V

    goto :goto_0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V

    .line 112
    return-void
.end method
