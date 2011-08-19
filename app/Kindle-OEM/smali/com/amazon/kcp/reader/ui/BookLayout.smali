.class public Lcom/amazon/kcp/reader/ui/BookLayout;
.super Lcom/amazon/kcp/reader/ui/ReaderLayout;
.source "BookLayout.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;


# instance fields
.field private chapterTextView:Landroid/widget/TextView;

.field private locationContainer:Landroid/view/ViewGroup;

.field private locationControl:Landroid/widget/SeekBar;

.field private locationTextView:Landroid/widget/TextView;

.field private proposeFPRCallback:Lcom/amazon/foundation/IStringCallback;

.field private sameFPRCallback:Lcom/amazon/foundation/ICallback;

.field private syncMessageFloatsVertically:Z

.field private syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

.field private titleContainer:Landroid/view/ViewGroup;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Lcom/amazon/kcp/reader/ui/BookLayout$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/BookLayout$1;-><init>(Lcom/amazon/kcp/reader/ui/BookLayout;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->proposeFPRCallback:Lcom/amazon/foundation/IStringCallback;

    .line 68
    new-instance v0, Lcom/amazon/kcp/reader/ui/BookLayout$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/BookLayout$2;-><init>(Lcom/amazon/kcp/reader/ui/BookLayout;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->sameFPRCallback:Lcom/amazon/foundation/ICallback;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/BookLayout;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/BookLayout;->proposeFurthestReadLocation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/BookLayout;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/BookLayout;->showAlreadyAtFurthestLocation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/ui/BookLayout;)Lcom/amazon/kcp/ui/SyncMessageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    return-object v0
.end method

.method public static newInstance(Lcom/amazon/kcp/reader/BookReaderActivity;)Lcom/amazon/kcp/reader/ui/BookLayout;
    .locals 3
    .parameter "activity"

    .prologue
    .line 85
    const v1, 0x7f03000a

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/BookLayout;

    .line 86
    .local v0, bookLayout:Lcom/amazon/kcp/reader/ui/BookLayout;
    invoke-virtual {v0, p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->initialize(Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 87
    return-object v0
.end method

.method private proposeFurthestReadLocation(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 538
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    if-nez v0, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    .line 544
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v1

    .line 545
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 549
    :try_start_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 550
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 552
    const v3, 0x7f0b000e

    new-instance v4, Lcom/amazon/kcp/reader/ui/BookLayout$7;

    invoke-direct {v4, p0, v0}, Lcom/amazon/kcp/reader/ui/BookLayout$7;-><init>(Lcom/amazon/kcp/reader/ui/BookLayout;Lcom/amazon/kcp/library/models/ILocalBookInfo;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 562
    const v3, 0x7f0b000f

    new-instance v4, Lcom/amazon/kcp/reader/ui/BookLayout$8;

    invoke-direct {v4, p0, v0}, Lcom/amazon/kcp/reader/ui/BookLayout$8;-><init>(Lcom/amazon/kcp/reader/ui/BookLayout;Lcom/amazon/kcp/library/models/ILocalBookInfo;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 571
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getPageFirstPosition(I)I

    move-result v3

    invoke-interface {v1, v3}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getLocationFromPosition(I)I

    move-result v3

    .line 572
    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getLastPosition()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getLocationFromPosition(I)I

    move-result v4

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getServerLastPageRead()Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;

    move-result-object v0

    iget v0, v0, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;->position:I

    invoke-interface {v1, v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getLocationFromPosition(I)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 573
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0b00b5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 575
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setOverlayVisible(Landroid/view/View;IIIZ)V
    .locals 6
    .parameter "overlay"
    .parameter "overlayFlag"
    .parameter "prevVisibleOverlays"
    .parameter "visibleOverlays"
    .parameter "animated"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 503
    and-int v1, p3, p2

    if-ne v1, p2, :cond_0

    move v1, v4

    :goto_0
    and-int v2, p4, p2

    if-ne v2, p2, :cond_1

    move v2, v4

    :goto_1
    if-ne v1, v2, :cond_2

    .line 522
    :goto_2
    return-void

    :cond_0
    move v1, v3

    .line 503
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 508
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    and-int v2, p4, p2

    if-ne v2, p2, :cond_4

    const/high16 v2, 0x10a

    :goto_3
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 509
    .local v0, animation:Landroid/view/animation/Animation;
    if-nez p5, :cond_3

    .line 511
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 513
    :cond_3
    new-instance v1, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;

    new-instance v2, Lcom/amazon/kcp/reader/ui/BookLayout$6;

    invoke-direct {v2, p0, p1, p4, p2}, Lcom/amazon/kcp/reader/ui/BookLayout$6;-><init>(Lcom/amazon/kcp/reader/ui/BookLayout;Landroid/view/View;II)V

    invoke-direct {v1, v5, v5, v2}, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 521
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 508
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_4
    const v2, 0x10a0001

    goto :goto_3
.end method

.method private setSyncMessageVisible(ZZ)V
    .locals 3
    .parameter "visible"
    .parameter "animated"

    .prologue
    .line 309
    if-eqz p1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->areOverlaysVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/amazon/kcp/ui/SyncMessageView$Style;->SMALL:Lcom/amazon/kcp/ui/SyncMessageView$Style;

    :goto_0
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/ui/SyncMessageView;->setStyle(Lcom/amazon/kcp/ui/SyncMessageView$Style;)V

    .line 312
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->requestLayout()V

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_3

    const/high16 v2, 0x10a

    :goto_1
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 316
    .local v0, animation:Landroid/view/animation/Animation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 317
    if-nez p2, :cond_1

    .line 319
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 321
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/ui/SyncMessageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 322
    return-void

    .line 311
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_2
    sget-object v2, Lcom/amazon/kcp/ui/SyncMessageView$Style;->STANDARD:Lcom/amazon/kcp/ui/SyncMessageView$Style;

    goto :goto_0

    .line 315
    :cond_3
    const v2, 0x10a0001

    goto :goto_1
.end method

.method private showAlreadyAtFurthestLocation(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 526
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 528
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 529
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 530
    const v1, 0x7f0b000b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 531
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 533
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->resetServerLastPageRead()Z

    .line 534
    return-void
.end method

.method private updateLocationDisplay(Z)V
    .locals 12
    .parameter "fromUser"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 329
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    .line 331
    .local v0, navigator:Lcom/amazon/kcp/reader/models/IBookNavigator;
    if-eqz p1, :cond_3

    .line 334
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->locationControl:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 343
    .local v4, startPosition:I
    :goto_0
    const/16 v5, 0x64

    int-to-float v6, v4

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getLastPosition()I

    move-result v7

    sub-int/2addr v7, v11

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x42c8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 344
    .local v1, percent:I
    invoke-interface {v0, v4}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getLocationFromPosition(I)I

    move-result v3

    .line 345
    .local v3, startLocation:I
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->locationTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b00b3

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    const/4 v2, 0x0

    .line 348
    .local v2, section:Lcom/amazon/kcp/reader/models/ITOCItem;
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getTOC()Lcom/amazon/kcp/reader/models/IBookTOC;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 350
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getTOC()Lcom/amazon/kcp/reader/models/IBookTOC;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/amazon/kcp/reader/models/IBookTOC;->getSectionAtPosition(I)Lcom/amazon/kcp/reader/models/ISectionTOCItem;

    move-result-object v2

    .line 353
    :cond_0
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->chapterTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 355
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 357
    :cond_1
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->chapterTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->chapterTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    :cond_2
    :goto_1
    return-void

    .line 338
    .end local v1           #percent:I
    .end local v2           #section:Lcom/amazon/kcp/reader/models/ITOCItem;
    .end local v3           #startLocation:I
    .end local v4           #startPosition:I
    :cond_3
    invoke-interface {v0, v10}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getPageFirstPosition(I)I

    move-result v4

    .line 341
    .restart local v4       #startPosition:I
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->locationControl:Landroid/widget/SeekBar;

    sub-int v6, v4, v11

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 362
    .restart local v1       #percent:I
    .restart local v2       #section:Lcom/amazon/kcp/reader/models/ITOCItem;
    .restart local v3       #startLocation:I
    :cond_4
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->chapterTextView:Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->chapterTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateSoftBackButtonDisplay()V
    .locals 2

    .prologue
    .line 370
    const v1, 0x7f0c00b9

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/BookLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 371
    .local v0, softBackButton:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 373
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookNavigator;->isBackAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->areOverlaysVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 378
    :cond_0
    return-void

    .line 373
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method


# virtual methods
.method public areOverlaysVisible()Z
    .locals 2

    .prologue
    .line 383
    const/4 v0, 0x7

    .line 384
    .local v0, allFlags:I
    iget v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->visibleOverlays:I

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected flashOverlays()V
    .locals 2

    .prologue
    .line 414
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/BookLayout;->setOverlaysVisible(ZZ)V

    .line 415
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/BookLayout;->hideOverlaysAfterDelay(J)V

    .line 416
    return-void
.end method

.method protected initialize(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 6
    .parameter "activity"

    .prologue
    const/4 v5, 0x0

    .line 227
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSynchronizationManager()Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/kcp/ui/SyncMessageView;->newInstance(Landroid/content/Context;Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;)Lcom/amazon/kcp/ui/SyncMessageView;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    .line 228
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/ui/SyncMessageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/BookLayout;->addView(Landroid/view/View;)V

    .line 233
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    new-instance v2, Lcom/amazon/kcp/reader/ui/BookLayout$5;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/reader/ui/BookLayout$5;-><init>(Lcom/amazon/kcp/reader/ui/BookLayout;)V

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/ui/SyncMessageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 243
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->syncMessageFloatsVertically:Z

    .line 246
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    .line 247
    .local v0, settings:Lcom/amazon/kcp/application/SettingsController;
    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getColorMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/BookLayout;->updateExtraUiForColorMode(I)V

    .line 249
    invoke-direct {p0, v5, v5}, Lcom/amazon/kcp/reader/ui/BookLayout;->setSyncMessageVisible(ZZ)V

    .line 252
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->initialize(Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 253
    return-void
.end method

.method protected newPageLayout()Lcom/amazon/kcp/reader/ui/PageLayout;
    .locals 3

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03000b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/reader/ui/PageLayout;

    return-object p0
.end method

.method public onActionBarVisibilityChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 588
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->currentPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/reader/ui/PageLayout;->setBookmarkOverlayVisibility(ZZ)Z

    .line 589
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onFinishInflate()V

    .line 140
    const v0, 0x7f0c0020

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/BookLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->titleContainer:Landroid/view/ViewGroup;

    .line 141
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/BookLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->titleTextView:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f0c0022

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/BookLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->chapterTextView:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/BookLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->locationContainer:Landroid/view/ViewGroup;

    .line 144
    const v0, 0x7f0c0024

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/BookLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->locationTextView:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/BookLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->locationControl:Landroid/widget/SeekBar;

    .line 146
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->locationControl:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->titleContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->titleContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/amazon/kcp/reader/ui/BookLayout$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/BookLayout$3;-><init>(Lcom/amazon/kcp/reader/ui/BookLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->locationContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/amazon/kcp/reader/ui/BookLayout$4;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/BookLayout$4;-><init>(Lcom/amazon/kcp/reader/ui/BookLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 170
    return-void
.end method

.method public onHideSyncMessage(Lcom/amazon/kcp/ui/SyncMessageView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 299
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/BookLayout;->setSyncMessageVisible(ZZ)V

    .line 300
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v5, 0x0

    .line 189
    invoke-super/range {p0 .. p5}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onLayout(ZIIII)V

    .line 192
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->titleContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->titleContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->statusBarHeight:I

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->titleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->locationContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->locationContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->getHeight()I

    move-result v4

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 205
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->syncMessageFloatsVertically:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->visibleOverlays:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->locationContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    invoke-virtual {v1}, Lcom/amazon/kcp/ui/SyncMessageView;->getStyle()Lcom/amazon/kcp/ui/SyncMessageView$Style;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/ui/SyncMessageView$Style;->SMALL:Lcom/amazon/kcp/ui/SyncMessageView$Style;

    if-ne v1, v2, :cond_2

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->locationContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    .line 214
    .local v0, syncMessageBottom:I
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    invoke-virtual {v2}, Lcom/amazon/kcp/ui/SyncMessageView;->getHeight()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->getWidth()I

    move-result v3

    invoke-virtual {v1, v5, v2, v3, v0}, Lcom/amazon/kcp/ui/SyncMessageView;->layout(IIII)V

    .line 215
    return-void

    .line 212
    .end local v0           #syncMessageBottom:I
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->getHeight()I

    move-result v0

    .restart local v0       #syncMessageBottom:I
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 177
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onMeasure(II)V

    .line 178
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->currentPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/PageLayout;->getCalculatedHorizontalMargins()I

    move-result v0

    .line 179
    .local v0, readerMargin:I
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->locationContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->locationContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->locationContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 183
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->locationContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/ViewGroup;->measure(II)V

    .line 184
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seek"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 266
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/BookLayout;->updateLocationDisplay(Z)V

    .line 267
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->updateSoftBackButtonDisplay()V

    .line 268
    return-void
.end method

.method public onShowSyncMessage(Lcom/amazon/kcp/ui/SyncMessageView;Z)Z
    .locals 4
    .parameter "view"
    .parameter "inProgress"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 288
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->areOverlaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/ui/SyncMessageView;->getCurrentSyncType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-ne v0, v1, :cond_2

    .line 290
    :cond_0
    if-nez p2, :cond_1

    move v0, v2

    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/reader/ui/BookLayout;->setSyncMessageVisible(ZZ)V

    move v0, v2

    .line 293
    :goto_1
    return v0

    :cond_1
    move v0, v3

    .line 290
    goto :goto_0

    :cond_2
    move v0, v3

    .line 293
    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seek"

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->cancelHideOverlaysAfterDelay()V

    .line 274
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seek"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/reader/models/IBookNavigator;->gotoPosition(I)V

    .line 280
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 258
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->refresh()V

    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/BookLayout;->updateLocationDisplay(Z)V

    .line 260
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->updateSoftBackButtonDisplay()V

    .line 261
    return-void
.end method

.method public setOverlaysVisible(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 390
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->setActionBarVisibility(Z)V

    .line 391
    const v0, 0x7f0c00b9

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/BookLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 392
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 394
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookNavigator;->isBackAvailable()Z

    move-result v1

    .line 395
    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 397
    :cond_0
    if-eqz p1, :cond_4

    const/4 v0, 0x7

    .line 398
    :goto_1
    invoke-virtual {p0, v0, p2}, Lcom/amazon/kcp/reader/ui/BookLayout;->setVisibleOverlays(IZ)Z

    .line 400
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->isImmersiveReadingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->setSystemUiVisibility(Z)V

    .line 405
    :cond_1
    if-nez p1, :cond_2

    .line 407
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/BookLayout;->setTitleVisibility(Z)V

    .line 409
    :cond_2
    return-void

    .line 395
    :cond_3
    const/16 v1, 0x8

    goto :goto_0

    :cond_4
    move v0, v2

    .line 397
    goto :goto_1
.end method

.method public setPage(Lcom/amazon/kcp/reader/pages/internal/CReaderPage;)V
    .locals 3
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getFurthestReadLocationProposalEvent()Lcom/amazon/foundation/IStringEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->proposeFPRCallback:Lcom/amazon/foundation/IStringCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IStringEventProvider;->unregister(Lcom/amazon/foundation/IStringCallback;)Z

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getAtTheFurtherReadLocationEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->sameFPRCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/ui/SyncMessageView;->setOnSyncMessageListener(Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;)V

    .line 112
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setPage(Lcom/amazon/kcp/reader/pages/internal/CReaderPage;)V

    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getFurthestReadLocationProposalEvent()Lcom/amazon/foundation/IStringEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->proposeFPRCallback:Lcom/amazon/foundation/IStringCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IStringEventProvider;->register(Lcom/amazon/foundation/IStringCallback;)Z

    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getAtTheFurtherReadLocationEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->sameFPRCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/ILocalBookItem;->proposeFurthestReadLocation(I)V

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->titleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->locationControl:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getLastPosition()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/BookLayout;->updateLocationDisplay(Z)V

    .line 130
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->updateSoftBackButtonDisplay()V

    .line 131
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/ui/SyncMessageView;->setOnSyncMessageListener(Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;)V

    .line 133
    :cond_2
    return-void
.end method

.method public setVisibleOverlays(IZ)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x10a

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 427
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->cancelHideOverlaysAfterDelay()V

    .line 428
    iget v3, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->visibleOverlays:I

    .line 429
    if-ne v3, p1, :cond_0

    move v0, v6

    .line 489
    :goto_0
    return v0

    .line 433
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->visibleOverlays:I

    .line 435
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->window:Landroid/view/Window;

    and-int/lit8 v1, p1, 0x1

    if-ne v1, v7, :cond_5

    move v1, v7

    :goto_1
    invoke-static {v0, v1}, Lcom/amazon/android/util/UIUtils;->setStatusBarVisible(Landroid/view/Window;Z)V

    .line 436
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->locationControl:Landroid/widget/SeekBar;

    and-int/lit8 v1, p1, 0x4

    if-ne v1, v8, :cond_6

    move v1, v7

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 438
    if-eqz p1, :cond_1

    .line 440
    invoke-virtual {p0, v6, p2}, Lcom/amazon/kcp/reader/ui/BookLayout;->setOrientationLockTemporarilyVisible(ZZ)V

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->titleContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 445
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->titleContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x3

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/ui/BookLayout;->setOverlayVisible(Landroid/view/View;IIIZ)V

    .line 447
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->locationContainer:Landroid/view/ViewGroup;

    move-object v0, p0

    move v2, v8

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/ui/BookLayout;->setOverlayVisible(Landroid/view/View;IIIZ)V

    .line 449
    const/4 v0, 0x0

    .line 450
    and-int/lit8 v1, p1, 0x4

    if-ne v1, v8, :cond_9

    .line 452
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    invoke-virtual {v1}, Lcom/amazon/kcp/ui/SyncMessageView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 456
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 457
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    sget-object v2, Lcom/amazon/kcp/ui/SyncMessageView$Style;->SMALL:Lcom/amazon/kcp/ui/SyncMessageView$Style;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/ui/SyncMessageView;->setStyle(Lcom/amazon/kcp/ui/SyncMessageView$Style;)V

    .line 481
    :goto_3
    if-eqz v0, :cond_4

    .line 483
    if-nez p2, :cond_3

    .line 485
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 487
    :cond_3
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/ui/SyncMessageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    move v0, v7

    .line 489
    goto :goto_0

    :cond_5
    move v1, v6

    .line 435
    goto :goto_1

    :cond_6
    move v1, v6

    .line 436
    goto :goto_2

    .line 462
    :cond_7
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    if-nez p2, :cond_8

    move v2, v7

    :goto_4
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/ui/SyncMessageView;->requestShow(Z)Z

    goto :goto_3

    :cond_8
    move v2, v6

    goto :goto_4

    .line 467
    :cond_9
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    invoke-virtual {v1}, Lcom/amazon/kcp/ui/SyncMessageView;->getCurrentSyncType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-ne v1, v2, :cond_a

    .line 471
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 472
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    sget-object v2, Lcom/amazon/kcp/ui/SyncMessageView$Style;->STANDARD:Lcom/amazon/kcp/ui/SyncMessageView$Style;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/ui/SyncMessageView;->setStyle(Lcom/amazon/kcp/ui/SyncMessageView$Style;)V

    goto :goto_3

    .line 477
    :cond_a
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    invoke-virtual {v1}, Lcom/amazon/kcp/ui/SyncMessageView;->requestHide()Z

    goto :goto_3
.end method

.method protected updateExtraUiForColorMode(I)V
    .locals 3
    .parameter "colorModeId"

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorModeFactory;->getColorMode(ILandroid/content/res/Resources;)Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getSecondaryTextColor()I

    move-result v0

    .line 594
    .local v0, secondaryTextColor:I
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->locationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 598
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/ui/SyncMessageView;->setTextColor(I)V

    .line 602
    :cond_1
    return-void
.end method
