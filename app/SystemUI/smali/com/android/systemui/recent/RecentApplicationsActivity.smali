.class public Lcom/android/systemui/recent/RecentApplicationsActivity;
.super Landroid/app/Activity;
.source "RecentApplicationsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/RecentApplicationsActivity$LocalCarouselViewHelper;,
        Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;,
        Lcom/android/systemui/recent/RecentApplicationsActivity$DetailInfo;
    }
.end annotation


# static fields
.field private static DBG:Z


# instance fields
.field private mActivityDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mCarouselView:Lcom/android/ex/carousel/CarouselView;

.field private mDetailInfo:Lcom/android/systemui/recent/RecentApplicationsActivity$DetailInfo;

.field private mHelper:Lcom/android/systemui/recent/RecentApplicationsActivity$LocalCarouselViewHelper;

.field private mHidden:Z

.field private mHiding:Z

.field private mLoadingBitmap:Landroid/graphics/Bitmap;

.field private mNoRecentsView:Landroid/view/View;

.field private mPortraitMode:Z

.field private mRecentOverlay:Landroid/graphics/Bitmap;

.field private final mRefreshRunnable:Ljava/lang/Runnable;

.field private mRunningTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mThumbnailReceiver:Landroid/app/IThumbnailReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recent/RecentApplicationsActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mPortraitMode:Z

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mActivityDescriptions:Ljava/util/ArrayList;

    .line 85
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mHidden:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mHiding:Z

    .line 298
    new-instance v0, Lcom/android/systemui/recent/RecentApplicationsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentApplicationsActivity$1;-><init>(Lcom/android/systemui/recent/RecentApplicationsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mThumbnailReceiver:Landroid/app/IThumbnailReceiver;

    .line 495
    new-instance v0, Lcom/android/systemui/recent/RecentApplicationsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentApplicationsActivity$2;-><init>(Lcom/android/systemui/recent/RecentApplicationsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mRefreshRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentApplicationsActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mActivityDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/systemui/recent/RecentApplicationsActivity;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentApplicationsActivity;Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentApplicationsActivity;->compositeBitmap(Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentApplicationsActivity;)Lcom/android/systemui/recent/RecentApplicationsActivity$DetailInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mDetailInfo:Lcom/android/systemui/recent/RecentApplicationsActivity$DetailInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/RecentApplicationsActivity;I)Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentApplicationsActivity;->findActivityDescription(I)Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/recent/RecentApplicationsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mPortraitMode:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/recent/RecentApplicationsActivity;)Lcom/android/ex/carousel/CarouselView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/recent/RecentApplicationsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentApplicationsActivity;->updateRecentTasks()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/recent/RecentApplicationsActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentApplicationsActivity;->showCarousel(Z)V

    return-void
.end method

.method private compositeBitmap(Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;)Landroid/graphics/Bitmap;
    .locals 22
    .parameter "info"

    .prologue
    .line 243
    const/16 v18, 0x100

    .line 244
    .local v18, targetWidth:I
    const/16 v17, 0x100

    .line 245
    .local v17, targetHeight:I
    const/4 v5, 0x3

    .line 246
    .local v5, border:I
    const/4 v7, 0x1

    .line 247
    .local v7, overlap:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentApplicationsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 248
    .local v9, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mRecentOverlay:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 249
    const v19, 0x7f020051

    move-object v0, v9

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentApplicationsActivity;->mRecentOverlay:Landroid/graphics/Bitmap;

    .line 253
    :cond_0
    const/16 v19, 0x100

    const/16 v20, 0x100

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 254
    .local v10, result:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 255
    .local v6, canvas:Landroid/graphics/Canvas;
    new-instance v19, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v20, 0x4

    const/16 v21, 0x2

    invoke-direct/range {v19 .. v21}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 256
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 257
    .local v8, paint:Landroid/graphics/Paint;
    const/16 v19, 0x0

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 259
    new-instance v19, Landroid/graphics/PorterDuffXfermode;

    sget-object v20, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v19 .. v20}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 260
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 261
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->thumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 263
    const/16 v16, 0xfc

    .line 264
    .local v16, sourceWidth:I
    const/16 v15, 0xfc

    .line 265
    .local v15, sourceHeight:I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->thumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v13, v19, v20

    .line 266
    .local v13, scaleX:F
    move v0, v15

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->thumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v14, v19, v20

    .line 267
    .local v14, scaleY:F
    const/high16 v19, 0x3fc0

    const/high16 v20, 0x3fc0

    move-object v0, v6

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 268
    invoke-virtual {v6, v13, v14}, Landroid/graphics/Canvas;->scale(FF)V

    .line 269
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->thumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v6

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 277
    .end local v15           #sourceHeight:I
    .end local v16           #sourceWidth:I
    :goto_0
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 280
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 281
    const/high16 v19, 0x4380

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mRecentOverlay:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v11, v19, v20

    .line 282
    .local v11, scaleOverlayX:F
    const/high16 v19, 0x4380

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mRecentOverlay:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v12, v19, v20

    .line 283
    .local v12, scaleOverlayY:F
    invoke-virtual {v6, v11, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 284
    new-instance v19, Landroid/graphics/PorterDuffXfermode;

    sget-object v20, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v19 .. v20}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mRecentOverlay:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v6

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 286
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 289
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 290
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 291
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 292
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 295
    :cond_1
    return-object v10

    .line 272
    .end local v11           #scaleOverlayX:F
    .end local v12           #scaleOverlayY:F
    .end local v13           #scaleX:F
    .end local v14           #scaleY:F
    :cond_2
    const/high16 v19, 0x4380

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mLoadingBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v13, v19, v20

    .line 273
    .restart local v13       #scaleX:F
    const/high16 v19, 0x4380

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mLoadingBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v14, v19, v20

    .line 274
    .restart local v14       #scaleY:F
    invoke-virtual {v6, v13, v14}, Landroid/graphics/Canvas;->scale(FF)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mLoadingBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v6

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private findActivityDescription(I)Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;
    .locals 3
    .parameter "id"

    .prologue
    .line 170
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mActivityDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 171
    iget-object v2, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mActivityDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;

    .line 172
    .local v1, item:Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->id:I

    if-ne v2, p1, :cond_0

    move-object v2, v1

    .line 176
    .end local v1           #item:Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;
    :goto_1
    return-object v2

    .line 170
    .restart local v1       #item:Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    .end local v1           #item:Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private refresh()V
    .locals 4

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mHiding:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/CarouselView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 530
    iget-object v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mRefreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/ex/carousel/CarouselView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 532
    :cond_0
    return-void
.end method

.method private showCarousel(Z)V
    .locals 9
    .parameter "show"

    .prologue
    const/4 v6, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 504
    if-eqz p1, :cond_1

    .line 505
    iget-object v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mActivityDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/ex/carousel/CarouselView;->createCards(I)V

    .line 506
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mActivityDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    invoke-virtual {v0, v1, v6}, Lcom/android/ex/carousel/CarouselView;->setTextureForItem(ILandroid/graphics/Bitmap;)V

    .line 511
    iget-object v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/ex/carousel/CarouselView;->setDetailTextureForItem(IFFFFLandroid/graphics/Bitmap;)V

    .line 506
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mNoRecentsView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    invoke-virtual {v0, v7}, Lcom/android/ex/carousel/CarouselView;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mActivityDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/ex/carousel/CarouselView;->createCards(I)V

    .line 522
    .end local v1           #i:I
    :goto_1
    return-void

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mNoRecentsView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    invoke-virtual {v0, v8}, Lcom/android/ex/carousel/CarouselView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateRecentTasks()V
    .locals 19

    .prologue
    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentApplicationsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 441
    .local v15, pm:Landroid/content/pm/PackageManager;
    const-string v3, "activity"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentApplicationsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 443
    .local v9, am:Landroid/app/ActivityManager;
    const/16 v3, 0xe

    const/16 v4, 0x1002

    invoke-virtual {v9, v3, v4}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v17

    .line 447
    .local v17, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v15, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v10

    .line 452
    .local v10, homeInfo:Landroid/content/pm/ActivityInfo;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v14

    .line 453
    .local v14, numTasks:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mActivityDescriptions:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 454
    const/4 v11, 0x0

    .local v11, i:I
    const/4 v8, 0x0

    .local v8, index:I
    :goto_0
    if-ge v11, v14, :cond_5

    const/16 v3, 0xe

    if-ge v8, v3, :cond_5

    .line 455
    move-object/from16 v0, v17

    move v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 457
    .local v16, recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object v3, v0

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 458
    .local v13, intent:Landroid/content/Intent;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object v3, v0

    if-eqz v3, :cond_0

    .line 459
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object v3, v0

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 463
    :cond_0
    if-eqz v10, :cond_2

    iget-object v3, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 454
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 469
    :cond_2
    invoke-virtual {v13}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const v4, -0x200001

    and-int/2addr v3, v4

    const/high16 v4, 0x1000

    or-int/2addr v3, v4

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 471
    const/4 v3, 0x0

    invoke-virtual {v15, v13, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v18

    .line 472
    .local v18, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v18, :cond_1

    .line 473
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v12, v0

    .line 474
    .local v12, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v12, v15}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 475
    .local v5, title:Ljava/lang/String;
    invoke-virtual {v12, v15}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 477
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v17

    move v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v7, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 478
    .local v7, id:I
    const/4 v3, -0x1

    if-eq v7, v3, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    if-eqz v4, :cond_4

    .line 480
    new-instance v2, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;II)V

    .line 482
    .local v2, item:Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;
    iput-object v13, v2, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->intent:Landroid/content/Intent;

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mActivityDescriptions:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    sget-boolean v3, Lcom/android/systemui/recent/RecentApplicationsActivity;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "RecentApplicationsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added item["

    .end local v5           #title:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", title="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 488
    goto/16 :goto_1

    .line 489
    .end local v2           #item:Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;
    .restart local v4       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v5       #title:Ljava/lang/String;
    :cond_4
    sget-boolean v3, Lcom/android/systemui/recent/RecentApplicationsActivity;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "RecentApplicationsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SKIPPING item "

    .end local v5           #title:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 493
    .end local v7           #id:I
    .end local v12           #info:Landroid/content/pm/ActivityInfo;
    .end local v13           #intent:Landroid/content/Intent;
    .end local v16           #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v18           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_5
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentApplicationsActivity;->moveTaskToBack(Z)Z

    .line 340
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x1

    .line 405
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 406
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mPortraitMode:Z

    .line 407
    sget-boolean v0, Lcom/android/systemui/recent/RecentApplicationsActivity;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "RecentApplicationsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONFIG CHANGE, mPortraitMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mPortraitMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentApplicationsActivity;->refresh()V

    .line 409
    return-void

    .line 406
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x0

    .line 356
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 358
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentApplicationsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 359
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentApplicationsActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 361
    .local v0, decorView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentApplicationsActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    const/high16 v10, -0x8000

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 363
    iget-object v9, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    if-nez v9, :cond_0

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 365
    .local v6, t:J
    const v9, 0x7f030003

    invoke-virtual {p0, v9}, Lcom/android/systemui/recent/RecentApplicationsActivity;->setContentView(I)V

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v3, v9, v6

    .line 367
    .local v3, elapsed:J
    const-string v9, "RecentApplicationsActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Recents layout took "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms to load"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const v9, 0x7f020052

    invoke-static {v5, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 369
    const v9, 0x7f0b000d

    invoke-virtual {p0, v9}, Lcom/android/systemui/recent/RecentApplicationsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/ex/carousel/CarouselView;

    iput-object v9, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    .line 370
    new-instance v9, Lcom/android/systemui/recent/RecentApplicationsActivity$LocalCarouselViewHelper;

    invoke-direct {v9, p0, p0}, Lcom/android/systemui/recent/RecentApplicationsActivity$LocalCarouselViewHelper;-><init>(Lcom/android/systemui/recent/RecentApplicationsActivity;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mHelper:Lcom/android/systemui/recent/RecentApplicationsActivity$LocalCarouselViewHelper;

    .line 371
    iget-object v9, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mHelper:Lcom/android/systemui/recent/RecentApplicationsActivity$LocalCarouselViewHelper;

    iget-object v10, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    invoke-virtual {v9, v10}, Lcom/android/systemui/recent/RecentApplicationsActivity$LocalCarouselViewHelper;->setCarouselView(Lcom/android/ex/carousel/CarouselView;)V

    .line 373
    iget-object v9, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    const/16 v10, 0x38

    invoke-virtual {v9, v10}, Lcom/android/ex/carousel/CarouselView;->setSlotCount(I)V

    .line 374
    iget-object v9, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Lcom/android/ex/carousel/CarouselView;->setVisibleSlots(I)V

    .line 375
    iget-object v9, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    invoke-virtual {v9, v12}, Lcom/android/ex/carousel/CarouselView;->createCards(I)V

    .line 376
    iget-object v9, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    const v10, -0x40f06264

    invoke-virtual {v9, v10}, Lcom/android/ex/carousel/CarouselView;->setStartAngle(F)V

    .line 377
    iget-object v9, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    iget-object v10, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v10}, Lcom/android/ex/carousel/CarouselView;->setDefaultBitmap(Landroid/graphics/Bitmap;)V

    .line 378
    iget-object v9, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    iget-object v10, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v10}, Lcom/android/ex/carousel/CarouselView;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 379
    iget-object v9, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    const/high16 v10, 0x4040

    invoke-virtual {v9, v10}, Lcom/android/ex/carousel/CarouselView;->setRezInCardCount(F)V

    .line 380
    iget-object v9, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    invoke-virtual {v9}, Lcom/android/ex/carousel/CarouselView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v9

    const/4 v10, -0x3

    invoke-interface {v9, v10}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 382
    const v9, 0x7f0b000c

    invoke-virtual {p0, v9}, Lcom/android/systemui/recent/RecentApplicationsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mNoRecentsView:Landroid/view/View;

    .line 384
    const-string v9, "activity"

    invoke-virtual {p0, v9}, Lcom/android/systemui/recent/RecentApplicationsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    iput-object v9, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mActivityManager:Landroid/app/ActivityManager;

    .line 385
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v10

    if-le v9, v10, :cond_1

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mPortraitMode:Z

    .line 388
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentApplicationsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030004

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 389
    .local v2, detail:Landroid/view/View;
    const v9, 0x7f0b000e

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 390
    .local v8, title:Landroid/widget/TextView;
    const v9, 0x7f0b000f

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 391
    .local v1, description:Landroid/widget/TextView;
    new-instance v9, Lcom/android/systemui/recent/RecentApplicationsActivity$DetailInfo;

    invoke-direct {v9, v2, v8, v1}, Lcom/android/systemui/recent/RecentApplicationsActivity$DetailInfo;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-object v9, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mDetailInfo:Lcom/android/systemui/recent/RecentApplicationsActivity$DetailInfo;

    .line 393
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentApplicationsActivity;->refresh()V

    .line 395
    .end local v1           #description:Landroid/widget/TextView;
    .end local v2           #detail:Landroid/view/View;
    .end local v3           #elapsed:J
    .end local v6           #t:J
    .end local v8           #title:Landroid/widget/TextView;
    :cond_0
    return-void

    .restart local v3       #elapsed:J
    .restart local v6       #t:J
    :cond_1
    move v9, v12

    .line 385
    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 344
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mHidden:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mHidden:Z

    .line 345
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mHidden:Z

    if-eqz v0, :cond_1

    .line 346
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mHiding:Z

    .line 347
    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentApplicationsActivity;->moveTaskToBack(Z)Z

    .line 351
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 352
    return-void

    :cond_0
    move v0, v2

    .line 344
    goto :goto_0

    .line 349
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mHiding:Z

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 399
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 400
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentApplicationsActivity;->refresh()V

    .line 401
    return-void
.end method

.method updateRunningTasks()V
    .locals 11

    .prologue
    const/high16 v10, 0x4000

    .line 412
    iget-object v6, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v7, 0xe

    const/16 v8, 0x1000

    iget-object v9, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mThumbnailReceiver:Landroid/app/IThumbnailReceiver;

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/ActivityManager;->getRunningTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mRunningTaskList:Ljava/util/List;

    .line 414
    sget-boolean v6, Lcom/android/systemui/recent/RecentApplicationsActivity;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "RecentApplicationsActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Portrait: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mPortraitMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mRunningTaskList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 416
    .local v3, r:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_6

    .line 417
    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 418
    .local v5, thumbWidth:I
    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 419
    .local v4, thumbHeight:I
    sget-boolean v6, Lcom/android/systemui/recent/RecentApplicationsActivity;->DBG:Z

    if-eqz v6, :cond_2

    const-string v6, "RecentApplicationsActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got thumbnail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_2
    iget v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/systemui/recent/RecentApplicationsActivity;->findActivityDescription(I)Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;

    move-result-object v0

    .line 421
    .local v0, desc:Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;
    if-eqz v0, :cond_5

    .line 422
    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->thumbnail:Landroid/graphics/Bitmap;

    iput-object v6, v0, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->thumbnail:Landroid/graphics/Bitmap;

    .line 423
    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->description:Ljava/lang/CharSequence;

    iput-object v6, v0, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->description:Ljava/lang/CharSequence;

    .line 424
    iget-boolean v6, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mPortraitMode:Z

    if-eqz v6, :cond_3

    if-gt v5, v4, :cond_4

    :cond_3
    iget-boolean v6, p0, Lcom/android/systemui/recent/RecentApplicationsActivity;->mPortraitMode:Z

    if-nez v6, :cond_1

    if-ge v5, v4, :cond_1

    .line 426
    :cond_4
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 427
    .local v2, matrix:Landroid/graphics/Matrix;
    const/high16 v6, 0x42b4

    int-to-float v7, v5

    div-float/2addr v7, v10

    int-to-float v8, v4

    div-float/2addr v8, v10

    invoke-virtual {v2, v6, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 428
    iput-object v2, v0, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->matrix:Landroid/graphics/Matrix;

    goto :goto_0

    .line 431
    .end local v2           #matrix:Landroid/graphics/Matrix;
    :cond_5
    sget-boolean v6, Lcom/android/systemui/recent/RecentApplicationsActivity;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "RecentApplicationsActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find ActivityDesc for id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 434
    .end local v0           #desc:Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;
    .end local v4           #thumbHeight:I
    .end local v5           #thumbWidth:I
    :cond_6
    sget-boolean v6, Lcom/android/systemui/recent/RecentApplicationsActivity;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "RecentApplicationsActivity"

    const-string v7, "*** RUNNING THUMBNAIL WAS NULL ***"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 437
    .end local v3           #r:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_7
    return-void
.end method
