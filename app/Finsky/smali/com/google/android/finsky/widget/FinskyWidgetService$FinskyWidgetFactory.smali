.class Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;
.super Ljava/lang/Object;
.source "FinskyWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/widget/FinskyWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinskyWidgetFactory"
.end annotation


# instance fields
.field private IMAGE_MIN_HEIGHT:I

.field private IMAGE_MIN_WIDTH:I

.field private final mAppWidgetId:I

.field private mBitmapContainers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;",
            ">;"
        }
    .end annotation
.end field

.field mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mContext:Landroid/content/Context;

.field private mItemReq:Lcom/google/android/finsky/api/model/DfeList;

.field private mRetried:Z

.field private mUpdateHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v2, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mRetried:Z

    .line 60
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mBitmapContainers:Ljava/util/HashMap;

    .line 64
    iput-object p1, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mContext:Landroid/content/Context;

    .line 65
    const-string v1, "appWidgetId"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mAppWidgetId:I

    .line 67
    new-instance v1, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory$1;-><init>(Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;)V

    iput-object v1, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mUpdateHandler:Landroid/os/Handler;

    .line 74
    iget-object v1, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->IMAGE_MIN_WIDTH:I

    .line 76
    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->IMAGE_MIN_HEIGHT:I

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mAppWidgetId:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;)Lcom/google/android/finsky/api/model/DfeList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mItemReq:Lcom/google/android/finsky/api/model/DfeList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mBitmapContainers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->notifyDataSetChanged()V

    return-void
.end method

.method private notifyDataSetChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 138
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mUpdateHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 140
    return-void
.end method

.method private setupRequest()V
    .locals 6

    .prologue
    .line 85
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    .line 86
    .local v1, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 87
    if-nez v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setupAccountFromPreferences(Landroid/content/Context;)Z

    .line 99
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v0, Lcom/google/android/finsky/api/model/DfeList;

    sget-object v2, Lcom/google/android/finsky/config/G;->widgetUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v4

    sget-object v5, Lcom/google/android/finsky/analytics/Analytics$Event;->WIDGET:Lcom/google/android/finsky/analytics/Analytics$Event;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;ZLcom/google/android/finsky/analytics/Analytics;Lcom/google/android/finsky/analytics/Analytics$Event;)V

    iput-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mItemReq:Lcom/google/android/finsky/api/model/DfeList;

    .line 94
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mItemReq:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mItemReq:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mItemReq:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mItemReq:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 158
    iget-object v1, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mItemReq:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 159
    .local v0, count:I
    :goto_0
    if-lez v0, :cond_1

    .line 160
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mItemReq:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 158
    .end local v0           #count:I
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mItemReq:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 164
    .restart local v0       #count:I
    :cond_1
    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 251
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 5

    .prologue
    const v4, 0x7f0900b5

    const/4 v3, 0x0

    .line 237
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040048

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 239
    .local v0, remoteViews:Landroid/widget/RemoteViews;
    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 240
    const/4 v1, 0x1

    invoke-virtual {v0, v4, v3, v3, v1}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 241
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 14
    .parameter "position"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mItemReq:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v0

    rem-int v6, p1, v0

    .line 170
    .local v6, adjustedPosition:I
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mItemReq:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v9

    .line 172
    .local v9, doc:Lcom/google/android/finsky/api/model/Document;
    new-instance v12, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f040048

    invoke-direct {v12, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 175
    .local v12, remoteViews:Landroid/widget/RemoteViews;
    const/4 v13, 0x1

    .line 176
    .local v13, shouldFetch:Z
    const/4 v0, 0x2

    invoke-static {v9, v0}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getBitmapUrlFromDocument(Lcom/google/android/finsky/api/model/Document;I)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, imageUrl:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mBitmapContainers:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 179
    .local v8, container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-eqz v8, :cond_0

    .line 182
    invoke-virtual {v8}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v8}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    const/4 v13, 0x0

    .line 195
    :cond_0
    :goto_0
    if-eqz v13, :cond_1

    .line 196
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory$3;

    invoke-direct {v3, p0, v6}, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory$3;-><init>(Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;I)V

    iget v4, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->IMAGE_MIN_WIDTH:I

    iget v5, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->IMAGE_MIN_HEIGHT:I

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v8

    .line 209
    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 210
    const v0, 0x7f0900b4

    invoke-virtual {v8}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .end local v1           #imageUrl:Ljava/lang/String;
    invoke-virtual {v12, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 213
    :cond_2
    const v0, 0x7f0900b1

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 214
    const v0, 0x7f0900b2

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 215
    const v0, 0x7f0900af

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getFormattedPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 217
    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getStarRating()F

    move-result v0

    move v11, v0

    .line 220
    .local v11, rating:F
    :goto_1
    const v0, 0x7f0900b0

    const-string v1, "setImageLevel"

    const/high16 v2, 0x4000

    mul-float/2addr v2, v11

    float-to-int v2, v2

    invoke-virtual {v12, v0, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 222
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v10, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    new-instance v7, Landroid/net/Uri$Builder;

    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    .line 225
    .local v7, builder:Landroid/net/Uri$Builder;
    const-string v0, "http"

    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 226
    const-string v0, "market.android.com"

    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 227
    const-string v0, "details"

    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 228
    const-string v0, "id"

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 229
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 230
    const v0, 0x7f0900b4

    invoke-virtual {v12, v0, v10}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 232
    return-object v12

    .line 188
    .end local v7           #builder:Landroid/net/Uri$Builder;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #rating:F
    .restart local v1       #imageUrl:Ljava/lang/String;
    :cond_3
    invoke-virtual {v8}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 189
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mBitmapContainers:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 217
    .end local v1           #imageUrl:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    move v11, v0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->setupRequest()V

    .line 82
    return-void
.end method

.method public onDataChanged()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->notifyDataSetChanged()V

    .line 130
    return-void
.end method

.method public onDataSetChanged()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mItemReq:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->setupRequest()V

    .line 147
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mItemReq:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mItemReq:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->detachAll()V

    .line 154
    :cond_0
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
    .locals 4
    .parameter "error"
    .parameter "message"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mRetried:Z

    if-eqz v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mRetried:Z

    .line 117
    const-string v0, "Retrying once in 20s"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->mUpdateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory$2;-><init>(Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
