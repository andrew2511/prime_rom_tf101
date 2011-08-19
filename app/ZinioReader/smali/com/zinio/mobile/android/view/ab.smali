.class final Lcom/zinio/mobile/android/view/ab;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I

.field private f:Landroid/widget/FrameLayout$LayoutParams;

.field private g:Landroid/widget/FrameLayout$LayoutParams;

.field private h:Landroid/widget/FrameLayout$LayoutParams;

.field private i:Landroid/widget/FrameLayout$LayoutParams;

.field private j:Landroid/widget/FrameLayout$LayoutParams;

.field private k:Landroid/widget/FrameLayout$LayoutParams;

.field private final l:Landroid/graphics/drawable/Drawable;

.field private final m:Landroid/graphics/drawable/Drawable;

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private synthetic r:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/zinio/mobile/android/view/ab;->r:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 337
    const/16 v0, 0xf5

    iput v0, p0, Lcom/zinio/mobile/android/view/ab;->a:I

    .line 338
    const/16 v0, 0x9c

    iput v0, p0, Lcom/zinio/mobile/android/view/ab;->b:I

    .line 339
    const/16 v0, 0x14

    iput v0, p0, Lcom/zinio/mobile/android/view/ab;->c:I

    .line 355
    const/16 v0, 0x2a

    iput v0, p0, Lcom/zinio/mobile/android/view/ab;->n:I

    .line 357
    const/16 v0, 0x42

    iput v0, p0, Lcom/zinio/mobile/android/view/ab;->o:I

    .line 359
    const/16 v0, 0x1c

    iput v0, p0, Lcom/zinio/mobile/android/view/ab;->p:I

    .line 361
    const/4 v0, 0x3

    iput v0, p0, Lcom/zinio/mobile/android/view/ab;->q:I

    .line 364
    invoke-virtual {p1}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 365
    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/view/ab;->l:Landroid/graphics/drawable/Drawable;

    .line 366
    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/ab;->m:Landroid/graphics/drawable/Drawable;

    .line 367
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/zinio/mobile/android/view/ab;->e:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/zinio/mobile/android/view/ab;->d:I

    return v0
.end method

.method public final c()V
    .locals 10

    .prologue
    const/16 v9, 0x53

    const/16 v5, 0xf

    const/4 v4, 0x3

    const/4 v6, 0x5

    const/16 v8, 0xb

    .line 378
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 379
    iget-object v1, p0, Lcom/zinio/mobile/android/view/ab;->r:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 382
    iget-object v1, p0, Lcom/zinio/mobile/android/view/ab;->r:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    invoke-static {v1}, Lcom/zinio/mobile/android/d/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/zinio/mobile/android/view/ab;->r:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    invoke-static {v2}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->b(Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x14

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/zinio/mobile/android/view/ab;->r:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    invoke-static {v2}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->b(Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;)I

    move-result v2

    div-int/2addr v1, v2

    iput v1, p0, Lcom/zinio/mobile/android/view/ab;->d:I

    .line 384
    iget v1, p0, Lcom/zinio/mobile/android/view/ab;->d:I

    int-to-float v1, v1

    sget v2, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->e:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/zinio/mobile/android/view/ab;->e:I

    .line 385
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/zinio/mobile/android/view/ab;->d:I

    iget v3, p0, Lcom/zinio/mobile/android/view/ab;->e:I

    invoke-direct {v1, v2, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v1, p0, Lcom/zinio/mobile/android/view/ab;->j:Landroid/widget/FrameLayout$LayoutParams;

    .line 387
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/zinio/mobile/android/view/ab;->d:I

    iget v3, p0, Lcom/zinio/mobile/android/view/ab;->e:I

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v1, p0, Lcom/zinio/mobile/android/view/ab;->k:Landroid/widget/FrameLayout$LayoutParams;

    .line 398
    :goto_0
    const/high16 v1, 0x4228

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 399
    const/high16 v2, 0x4284

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 400
    iget v3, p0, Lcom/zinio/mobile/android/view/ab;->d:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    .line 402
    iget v4, p0, Lcom/zinio/mobile/android/view/ab;->d:I

    sub-int/2addr v4, v2

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 404
    const/high16 v5, 0x41e0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    .line 406
    iget-object v5, p0, Lcom/zinio/mobile/android/view/ab;->r:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    invoke-static {v5}, Lcom/zinio/mobile/android/d/a;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    .line 408
    :goto_1
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x55

    invoke-direct {v6, v1, v0, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v6, p0, Lcom/zinio/mobile/android/view/ab;->f:Landroid/widget/FrameLayout$LayoutParams;

    .line 410
    iget-object v6, p0, Lcom/zinio/mobile/android/view/ab;->f:Landroid/widget/FrameLayout$LayoutParams;

    sub-int v7, v8, v5

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 411
    iget-object v6, p0, Lcom/zinio/mobile/android/view/ab;->f:Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 413
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v1, v0, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v6, p0, Lcom/zinio/mobile/android/view/ab;->h:Landroid/widget/FrameLayout$LayoutParams;

    .line 415
    iget-object v1, p0, Lcom/zinio/mobile/android/view/ab;->h:Landroid/widget/FrameLayout$LayoutParams;

    sub-int v6, v8, v5

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 416
    iget-object v1, p0, Lcom/zinio/mobile/android/view/ab;->h:Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 418
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x55

    invoke-direct {v1, v2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v1, p0, Lcom/zinio/mobile/android/view/ab;->g:Landroid/widget/FrameLayout$LayoutParams;

    .line 420
    iget-object v1, p0, Lcom/zinio/mobile/android/view/ab;->g:Landroid/widget/FrameLayout$LayoutParams;

    sub-int v3, v8, v5

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 421
    iget-object v1, p0, Lcom/zinio/mobile/android/view/ab;->g:Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 423
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v1, p0, Lcom/zinio/mobile/android/view/ab;->i:Landroid/widget/FrameLayout$LayoutParams;

    .line 425
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ab;->i:Landroid/widget/FrameLayout$LayoutParams;

    sub-int v1, v8, v5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 426
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ab;->i:Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 427
    return-void

    .line 390
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v2, 0x28

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/zinio/mobile/android/view/ab;->d:I

    .line 391
    iget v1, p0, Lcom/zinio/mobile/android/view/ab;->d:I

    int-to-float v1, v1

    sget v2, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->e:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/zinio/mobile/android/view/ab;->e:I

    .line 392
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/zinio/mobile/android/view/ab;->d:I

    iget v3, p0, Lcom/zinio/mobile/android/view/ab;->e:I

    invoke-direct {v1, v2, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v1, p0, Lcom/zinio/mobile/android/view/ab;->j:Landroid/widget/FrameLayout$LayoutParams;

    .line 394
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/zinio/mobile/android/view/ab;->d:I

    iget v3, p0, Lcom/zinio/mobile/android/view/ab;->e:I

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v1, p0, Lcom/zinio/mobile/android/view/ab;->k:Landroid/widget/FrameLayout$LayoutParams;

    goto/16 :goto_0

    .line 406
    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ab;->r:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    if-nez v0, :cond_0

    .line 431
    const/4 v0, 0x1

    .line 433
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ab;->r:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->r()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 437
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 441
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 450
    .line 451
    if-nez p2, :cond_2

    .line 452
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ab;->r:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->c(Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 454
    new-instance v1, Lcom/zinio/mobile/android/view/cy;

    invoke-direct {v1, p0, v0, p1}, Lcom/zinio/mobile/android/view/cy;-><init>(Lcom/zinio/mobile/android/view/ab;Landroid/view/View;I)V

    .line 455
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    move-object v1, v0

    .line 461
    :goto_0
    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/cy;->a()Landroid/widget/ImageView;

    move-result-object v3

    .line 462
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_3

    move v4, v8

    .line 464
    :goto_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ab;->r:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->a(I)I

    move-result v5

    .line 466
    if-eqz v5, :cond_9

    .line 467
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ab;->r:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iget v0, v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->i:I

    const/4 v6, 0x2

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/view/ab;->r:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iget v0, v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->i:I

    if-eq v0, v8, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/view/ab;->r:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iget-boolean v0, v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->l:Z

    if-eqz v0, :cond_5

    .line 472
    :cond_0
    if-eqz v4, :cond_4

    sget-object v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->c:Landroid/graphics/drawable/Drawable;

    .line 473
    :goto_2
    invoke-virtual {v2, v8}, Lcom/zinio/mobile/android/view/cy;->a(Z)V

    .line 488
    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 489
    instance-of v6, v0, Lcom/zinio/mobile/android/view/c;

    if-eqz v6, :cond_1

    .line 490
    check-cast v0, Lcom/zinio/mobile/android/view/c;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/c;->a()V

    .line 496
    :cond_1
    :goto_4
    invoke-static {v2}, Lcom/zinio/mobile/android/view/cy;->a(Lcom/zinio/mobile/android/view/cy;)Landroid/widget/TextView;

    move-result-object v0

    .line 498
    if-lez v5, :cond_b

    iget-object v2, p0, Lcom/zinio/mobile/android/view/ab;->r:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->r()I

    move-result v2

    if-gt v5, v2, :cond_b

    .line 500
    iget-object v2, p0, Lcom/zinio/mobile/android/view/ab;->r:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2, v5}, Lcom/zinio/mobile/android/a/a/j;->e(I)Lcom/zinio/mobile/android/a/a/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/k;->a()Ljava/lang/String;

    move-result-object v2

    .line 501
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 507
    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x3

    if-le v2, v5, :cond_c

    .line 511
    iget-object v2, p0, Lcom/zinio/mobile/android/view/ab;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move v2, v8

    .line 518
    :goto_6
    if-eqz v4, :cond_e

    .line 519
    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/zinio/mobile/android/view/ab;->g:Landroid/widget/FrameLayout$LayoutParams;

    :goto_7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ab;->j:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    :goto_8
    return-object v1

    .line 457
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/cy;

    .line 458
    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/view/cy;->a(I)V

    move-object v1, p2

    move-object v2, v0

    goto/16 :goto_0

    :cond_3
    move v4, v9

    .line 462
    goto :goto_1

    .line 472
    :cond_4
    sget-object v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 475
    :cond_5
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ab;->r:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    invoke-static {v5}, Lcom/zinio/mobile/android/a/a/h;->a(I)Lcom/zinio/mobile/android/a/a/h;

    move-result-object v6

    iget-object v7, p0, Lcom/zinio/mobile/android/view/ab;->r:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iget-object v7, v7, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->f:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v6, v7}, Lcom/zinio/mobile/android/resources/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/h;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_7

    .line 477
    new-instance v6, Lcom/zinio/mobile/android/view/c;

    if-eqz v4, :cond_6

    sget-object v7, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->a:Landroid/graphics/Bitmap;

    :goto_9
    invoke-direct {v6, v7, v0, v4}, Lcom/zinio/mobile/android/view/c;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    .line 479
    invoke-virtual {v2, v9}, Lcom/zinio/mobile/android/view/cy;->a(Z)V

    move-object v0, v6

    goto :goto_3

    .line 477
    :cond_6
    sget-object v7, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->b:Landroid/graphics/Bitmap;

    goto :goto_9

    .line 481
    :cond_7
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    iget-object v6, p0, Lcom/zinio/mobile/android/view/ab;->r:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iget-object v6, v6, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    invoke-static {v5}, Lcom/zinio/mobile/android/a/a/h;->a(I)Lcom/zinio/mobile/android/a/a/h;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)V

    .line 483
    if-eqz v4, :cond_8

    sget-object v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->c:Landroid/graphics/drawable/Drawable;

    .line 484
    :goto_a
    invoke-virtual {v2, v8}, Lcom/zinio/mobile/android/view/cy;->a(Z)V

    goto/16 :goto_3

    .line 483
    :cond_8
    sget-object v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_a

    .line 493
    :cond_9
    if-eqz v4, :cond_a

    sget-object v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->c:Landroid/graphics/drawable/Drawable;

    :goto_b
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_a
    sget-object v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_b

    .line 504
    :cond_b
    const-string v2, ""

    .line 505
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 514
    :cond_c
    iget-object v2, p0, Lcom/zinio/mobile/android/view/ab;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move v2, v9

    .line 515
    goto :goto_6

    .line 519
    :cond_d
    iget-object v2, p0, Lcom/zinio/mobile/android/view/ab;->f:Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_7

    .line 523
    :cond_e
    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/zinio/mobile/android/view/ab;->i:Landroid/widget/FrameLayout$LayoutParams;

    :goto_c
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ab;->k:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 523
    :cond_f
    iget-object v2, p0, Lcom/zinio/mobile/android/view/ab;->h:Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_c
.end method
