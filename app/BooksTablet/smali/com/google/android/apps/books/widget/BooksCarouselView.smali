.class public Lcom/google/android/apps/books/widget/BooksCarouselView;
.super Lcom/android/ex/carousel/CarouselView;
.source "BooksCarouselView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# static fields
.field private static final BOOKS_FILL_DIRECTION:I = -0x1

.field private static final CARD_CREATION_FADE_DURATION:I = 0x12c

.field private static final CARD_SLOTS:I = 0xf

.field private static final FADE_IN_DURATION:I = 0x64

.field private static final MAX_TEXTURE_CACHE_ENTRIES:I = 0x18


# instance fields
.field private mCoverCache:Lcom/google/android/apps/books/util/GenerationCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/util/GenerationCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mInterpolationMode:I

.field private mVisibleSlots:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/books/widget/BooksCarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/books/widget/BooksCarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/high16 v7, 0x3f80

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 40
    new-instance v5, Lcom/android/ex/carousel/CarouselController;

    invoke-direct {v5}, Lcom/android/ex/carousel/CarouselController;-><init>()V

    invoke-direct {p0, p1, p2, v5}, Lcom/android/ex/carousel/CarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/ex/carousel/CarouselController;)V

    .line 28
    new-instance v5, Lcom/google/android/apps/books/util/GenerationCache;

    const/16 v6, 0x18

    invoke-direct {v5, v6}, Lcom/google/android/apps/books/util/GenerationCache;-><init>(I)V

    iput-object v5, p0, Lcom/google/android/apps/books/widget/BooksCarouselView;->mCoverCache:Lcom/google/android/apps/books/util/GenerationCache;

    .line 116
    iput v8, p0, Lcom/google/android/apps/books/widget/BooksCarouselView;->mInterpolationMode:I

    .line 43
    invoke-static {p1}, Lcom/google/android/apps/books/app/BooksActivity;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    .line 44
    .local v2, isNightMode:Z
    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {p0, v10, v10, v10, v7}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setBackgroundColor(FFFF)V

    .line 50
    :goto_0
    const/high16 v5, 0x40a0

    invoke-virtual {p0, v5}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setRadius(F)V

    .line 51
    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setPrefetchCardCount(I)V

    .line 52
    const/16 v5, 0x102

    invoke-virtual {p0, v5}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setDetailTextureAlignment(I)V

    .line 54
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setDrawRuler(Z)V

    .line 55
    invoke-virtual {p0, v10}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setSwaySensitivity(F)V

    .line 56
    const/high16 v5, 0x41a0

    invoke-virtual {p0, v5}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setFrictionCoefficient(F)V

    .line 57
    const/high16 v5, -0x40c0

    invoke-virtual {p0, v5}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setDragFactor(F)V

    .line 58
    const v5, -0x4036f025

    invoke-virtual {p0, v5}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setCardRotation(F)V

    .line 59
    invoke-virtual {p0, v8}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setCardsFaceTangent(Z)V

    .line 60
    invoke-virtual {p0, v8}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setForceBlendCardsWithZ(Z)V

    .line 61
    invoke-virtual {p0, v11}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setDragModel(I)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/BooksCarouselView;->getController()Lcom/android/ex/carousel/CarouselController;

    move-result-object v5

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Lcom/android/ex/carousel/CarouselController;->setFadeInDuration(J)V

    .line 63
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/BooksCarouselView;->getController()Lcom/android/ex/carousel/CarouselController;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Lcom/android/ex/carousel/CarouselController;->setCardCreationFadeDuration(J)V

    .line 64
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/BooksCarouselView;->getController()Lcom/android/ex/carousel/CarouselController;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/ex/carousel/CarouselController;->setFillDirection(I)V

    .line 66
    const/16 v5, 0xf

    invoke-virtual {p0, v5}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setSlotCount(I)V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 70
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v8, :cond_1

    .line 72
    iput v11, p0, Lcom/google/android/apps/books/widget/BooksCarouselView;->mVisibleSlots:I

    .line 74
    invoke-virtual {p0, v11}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setRowCount(I)V

    .line 75
    const v5, 0x7f0d0013

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setRowSpacing(F)V

    .line 76
    invoke-virtual {p0, v8}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setFirstCardTop(Z)V

    .line 78
    new-array v1, v9, [F

    fill-array-data v1, :array_0

    .line 79
    .local v1, eye:[F
    new-array v0, v9, [F

    fill-array-data v0, :array_1

    .line 80
    .local v0, at:[F
    new-array v4, v9, [F

    fill-array-data v4, :array_2

    .line 81
    .local v4, up:[F
    invoke-virtual {p0, v1, v0, v4}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setLookAt([F[F[F)V

    .line 94
    :goto_1
    iget v5, p0, Lcom/google/android/apps/books/widget/BooksCarouselView;->mVisibleSlots:I

    invoke-virtual {p0, v5}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setVisibleDetails(I)V

    .line 95
    iget v5, p0, Lcom/google/android/apps/books/widget/BooksCarouselView;->mVisibleSlots:I

    invoke-virtual {p0, v5}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setVisibleSlots(I)V

    .line 97
    return-void

    .line 47
    .end local v0           #at:[F
    .end local v1           #eye:[F
    .end local v3           #resources:Landroid/content/res/Resources;
    .end local v4           #up:[F
    :cond_0
    invoke-virtual {p0, v7, v7, v7, v7}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setBackgroundColor(FFFF)V

    goto/16 :goto_0

    .line 83
    .restart local v3       #resources:Landroid/content/res/Resources;
    :cond_1
    const/4 v5, 0x5

    iput v5, p0, Lcom/google/android/apps/books/widget/BooksCarouselView;->mVisibleSlots:I

    .line 85
    invoke-virtual {p0, v8}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setRowCount(I)V

    .line 87
    new-array v1, v9, [F

    fill-array-data v1, :array_3

    .line 88
    .restart local v1       #eye:[F
    new-array v0, v9, [F

    fill-array-data v0, :array_4

    .line 89
    .restart local v0       #at:[F
    new-array v4, v9, [F

    fill-array-data v4, :array_5

    .line 90
    .restart local v4       #up:[F
    invoke-virtual {p0, v1, v0, v4}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setLookAt([F[F[F)V

    goto :goto_1

    .line 78
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x40t 0x41t
    .end array-data

    .line 79
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x20t 0xc1t
    .end array-data

    .line 80
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 87
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x10t 0x41t
    .end array-data

    .line 88
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x20t 0xc1t
    .end array-data

    .line 89
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private configureStartAngle(I)V
    .locals 6
    .parameter "numBooks"

    .prologue
    .line 166
    const v0, 0x3ed67750

    .line 170
    .local v0, slotSectorAngle:F
    iget v2, p0, Lcom/google/android/apps/books/widget/BooksCarouselView;->mVisibleSlots:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .line 171
    .local v1, startOffset:I
    const-wide v2, 0x3ff921fb54442d18L

    const/high16 v4, -0x4080

    int-to-float v5, v1

    mul-float/2addr v4, v5

    const v5, 0x3ed67750

    mul-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    float-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setStartAngle(F)V

    .line 173
    return-void
.end method


# virtual methods
.method public cacheCover(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "key"
    .parameter "bitmap"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselView;->mCoverCache:Lcom/google/android/apps/books/util/GenerationCache;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/books/util/GenerationCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method public clearCoverCache()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselView;->mCoverCache:Lcom/google/android/apps/books/util/GenerationCache;

    invoke-virtual {v0}, Lcom/google/android/apps/books/util/GenerationCache;->clear()V

    .line 156
    return-void
.end method

.method public createCards(I)V
    .locals 2
    .parameter "n"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/BooksCarouselView;->configureStartAngle(I)V

    .line 112
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/BooksCarouselView;->getController()Lcom/android/ex/carousel/CarouselController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/CarouselController;->setCarouselRotationAngle(F)V

    .line 113
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->createCards(I)V

    .line 114
    return-void
.end method

.method public getRenderScriptInfo()Lcom/android/ex/carousel/CarouselView$Info;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/android/ex/carousel/CarouselView$Info;

    const v1, 0x7f080001

    invoke-direct {v0, v1}, Lcom/android/ex/carousel/CarouselView$Info;-><init>(I)V

    return-object v0
.end method

.method public interpretLongPressEvents()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public lookupCover(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "key"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselView;->mCoverCache:Lcom/google/android/apps/books/util/GenerationCache;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/util/GenerationCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public rotateCarouselBackToOrigin()V
    .locals 5

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/BooksCarouselView;->getController()Lcom/android/ex/carousel/CarouselController;

    move-result-object v0

    .line 120
    .local v0, controller:Lcom/android/ex/carousel/CarouselController;
    if-eqz v0, :cond_0

    .line 121
    const/4 v1, 0x0

    const/16 v2, 0x2ee

    iget v3, p0, Lcom/google/android/apps/books/widget/BooksCarouselView;->mInterpolationMode:I

    const/high16 v4, 0x4130

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/ex/carousel/CarouselController;->setCarouselRotationAngle(FIIF)V

    .line 123
    :cond_0
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 180
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    goto :goto_0
.end method
