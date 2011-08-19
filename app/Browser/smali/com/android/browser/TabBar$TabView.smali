.class Lcom/android/browser/TabBar$TabView;
.super Landroid/widget/LinearLayout;
.source "TabBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/TabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field mClose:Landroid/widget/ImageView;

.field mFocusPath:Landroid/graphics/Path;

.field mIconView:Landroid/widget/ImageView;

.field mInLoad:Z

.field mIncognito:Landroid/view/View;

.field mIndicator:Landroid/view/View;

.field mLock:Landroid/widget/ImageView;

.field mPath:Landroid/graphics/Path;

.field mSelected:Z

.field mTab:Lcom/android/browser/Tab;

.field mTabContent:Landroid/view/View;

.field mTitle:Landroid/widget/TextView;

.field mWindowPos:[I

.field final synthetic this$0:Lcom/android/browser/TabBar;


# direct methods
.method public constructor <init>(Lcom/android/browser/TabBar;Landroid/content/Context;Lcom/android/browser/Tab;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "tab"

    .prologue
    const/4 v3, 0x0

    .line 339
    iput-object p1, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    .line 340
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 341
    invoke-virtual {p0, v3}, Lcom/android/browser/TabBar$TabView;->setWillNotDraw(Z)V

    .line 342
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/browser/TabBar$TabView;->mPath:Landroid/graphics/Path;

    .line 343
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/browser/TabBar$TabView;->mFocusPath:Landroid/graphics/Path;

    .line 344
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/browser/TabBar$TabView;->mWindowPos:[I

    .line 345
    iput-object p3, p0, Lcom/android/browser/TabBar$TabView;->mTab:Lcom/android/browser/Tab;

    .line 346
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/browser/TabBar$TabView;->setGravity(I)V

    .line 347
    invoke-virtual {p0, v3}, Lcom/android/browser/TabBar$TabView;->setOrientation(I)V

    .line 348
    invoke-static {p1}, Lcom/android/browser/TabBar;->access$000(Lcom/android/browser/TabBar;)I

    move-result v1

    invoke-static {p1}, Lcom/android/browser/TabBar;->access$100(Lcom/android/browser/TabBar;)I

    move-result v2

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/android/browser/TabBar$TabView;->setPadding(IIII)V

    .line 349
    invoke-virtual {p0}, Lcom/android/browser/TabBar$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 350
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04002b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTabContent:Landroid/view/View;

    .line 351
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTabContent:Landroid/view/View;

    const v2, 0x7f100002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTitle:Landroid/widget/TextView;

    .line 352
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTabContent:Landroid/view/View;

    const v2, 0x7f100001

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/TabBar$TabView;->mIconView:Landroid/widget/ImageView;

    .line 353
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTabContent:Landroid/view/View;

    const v2, 0x7f10007b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/TabBar$TabView;->mLock:Landroid/widget/ImageView;

    .line 354
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTabContent:Landroid/view/View;

    const v2, 0x7f10004f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/TabBar$TabView;->mClose:Landroid/widget/ImageView;

    .line 355
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mClose:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTabContent:Landroid/view/View;

    const v2, 0x7f10007a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/TabBar$TabView;->mIncognito:Landroid/view/View;

    .line 357
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTabContent:Landroid/view/View;

    const v2, 0x7f100079

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/TabBar$TabView;->mIndicator:Landroid/view/View;

    .line 358
    iput-boolean v3, p0, Lcom/android/browser/TabBar$TabView;->mSelected:Z

    .line 359
    iput-boolean v3, p0, Lcom/android/browser/TabBar$TabView;->mInLoad:Z

    .line 361
    invoke-direct {p0}, Lcom/android/browser/TabBar$TabView;->updateFromTab()V

    .line 362
    return-void
.end method

.method private closeTab()V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/browser/TabBar$TabView;->mTab:Lcom/android/browser/Tab;

    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v1}, Lcom/android/browser/TabBar;->access$600(Lcom/android/browser/TabBar;)Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v0}, Lcom/android/browser/TabBar;->access$700(Lcom/android/browser/TabBar;)Lcom/android/browser/UiController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/browser/UiController;->closeCurrentTab()V

    .line 462
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v0}, Lcom/android/browser/TabBar;->access$700(Lcom/android/browser/TabBar;)Lcom/android/browser/UiController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTab:Lcom/android/browser/Tab;

    invoke-interface {v0, v1}, Lcom/android/browser/UiController;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0
.end method

.method private drawClipped(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;I)V
    .locals 3
    .parameter "canvas"
    .parameter "paint"
    .parameter "clipPath"
    .parameter "left"

    .prologue
    .line 506
    iget-boolean v1, p0, Lcom/android/browser/TabBar$TabView;->mSelected:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v1}, Lcom/android/browser/TabBar;->access$1800(Lcom/android/browser/TabBar;)Landroid/graphics/Matrix;

    move-result-object v1

    move-object v0, v1

    .line 507
    .local v0, matrix:Landroid/graphics/Matrix;
    :goto_0
    neg-int v1, p4

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 508
    iget-boolean v1, p0, Lcom/android/browser/TabBar$TabView;->mSelected:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v1}, Lcom/android/browser/TabBar;->access$1400(Lcom/android/browser/TabBar;)Landroid/graphics/BitmapShader;

    move-result-object v1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 509
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 510
    invoke-virtual {p0}, Lcom/android/browser/TabBar$TabView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mFocusPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v2}, Lcom/android/browser/TabBar;->access$2000(Lcom/android/browser/TabBar;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 513
    :cond_0
    return-void

    .line 506
    .end local v0           #matrix:Landroid/graphics/Matrix;
    :cond_1
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v1}, Lcom/android/browser/TabBar;->access$1900(Lcom/android/browser/TabBar;)Landroid/graphics/Matrix;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 508
    .restart local v0       #matrix:Landroid/graphics/Matrix;
    :cond_2
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v1}, Lcom/android/browser/TabBar;->access$1600(Lcom/android/browser/TabBar;)Landroid/graphics/BitmapShader;

    move-result-object v1

    goto :goto_1
.end method

.method private setFocusPath(Landroid/graphics/Path;IIII)V
    .locals 2
    .parameter "path"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 525
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 526
    int-to-float v0, p2

    int-to-float v1, p5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 527
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 528
    iget-object v0, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v0}, Lcom/android/browser/TabBar;->access$100(Lcom/android/browser/TabBar;)I

    move-result v0

    sub-int v0, p4, v0

    int-to-float v0, v0

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 529
    int-to-float v0, p4

    int-to-float v1, p5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 530
    return-void
.end method

.method private setTabPath(Landroid/graphics/Path;IIII)V
    .locals 2
    .parameter "path"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 516
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 517
    int-to-float v0, p2

    int-to-float v1, p5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 518
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 519
    iget-object v0, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v0}, Lcom/android/browser/TabBar;->access$100(Lcom/android/browser/TabBar;)I

    move-result v0

    sub-int v0, p4, v0

    int-to-float v0, v0

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 520
    int-to-float v0, p4

    int-to-float v1, p5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 521
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 522
    return-void
.end method

.method private updateFromTab()V
    .locals 3

    .prologue
    .line 392
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, displayTitle:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 394
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 396
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/browser/TabBar$TabView;->setDisplayTitle(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getLoadProgress()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/browser/TabBar$TabView;->setProgress(I)V

    .line 398
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 399
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    iget-object v2, p0, Lcom/android/browser/TabBar$TabView;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v2}, Lcom/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/browser/TabBar;->access$300(Lcom/android/browser/TabBar;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/browser/TabBar$TabView;->setFavicon(Landroid/graphics/drawable/Drawable;)V

    .line 401
    :cond_1
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mTab:Lcom/android/browser/Tab;

    if-eqz v1, :cond_2

    .line 402
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mIncognito:Landroid/view/View;

    iget-object v2, p0, Lcom/android/browser/TabBar$TabView;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v2}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 406
    :cond_2
    return-void

    .line 402
    :cond_3
    const/16 v2, 0x8

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 473
    iget-object v4, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v4}, Lcom/android/browser/TabBar;->access$800(Lcom/android/browser/TabBar;)I

    move-result v4

    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v5}, Lcom/android/browser/TabBar;->access$900(Lcom/android/browser/TabBar;)Lcom/android/browser/XLargeUi;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/XLargeUi;->getContentWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v4}, Lcom/android/browser/TabBar;->access$1000(Lcom/android/browser/TabBar;)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/browser/TabBar$TabView;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 475
    :cond_0
    iget-object v4, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v5}, Lcom/android/browser/TabBar;->access$900(Lcom/android/browser/TabBar;)Lcom/android/browser/XLargeUi;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/XLargeUi;->getContentWidth()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/browser/TabBar;->access$802(Lcom/android/browser/TabBar;I)I

    .line 476
    iget-object v4, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-virtual {p0}, Lcom/android/browser/TabBar$TabView;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/browser/TabBar;->access$1002(Lcom/android/browser/TabBar;I)I

    .line 478
    iget-object v4, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v4}, Lcom/android/browser/TabBar;->access$800(Lcom/android/browser/TabBar;)I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v4}, Lcom/android/browser/TabBar;->access$1000(Lcom/android/browser/TabBar;)I

    move-result v4

    if-lez v4, :cond_1

    .line 479
    iget-object v4, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v4}, Lcom/android/browser/TabBar;->access$1100(Lcom/android/browser/TabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v5}, Lcom/android/browser/TabBar;->access$800(Lcom/android/browser/TabBar;)I

    move-result v5

    iget-object v6, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v6}, Lcom/android/browser/TabBar;->access$1000(Lcom/android/browser/TabBar;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/browser/TabBar;->access$1200(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 481
    .local v0, activeTexture:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v4}, Lcom/android/browser/TabBar;->access$1300(Lcom/android/browser/TabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v5}, Lcom/android/browser/TabBar;->access$800(Lcom/android/browser/TabBar;)I

    move-result v5

    iget-object v6, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v6}, Lcom/android/browser/TabBar;->access$1000(Lcom/android/browser/TabBar;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/browser/TabBar;->access$1200(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 484
    .local v1, inactiveTexture:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v0, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-static {v4, v5}, Lcom/android/browser/TabBar;->access$1402(Lcom/android/browser/TabBar;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;

    .line 486
    iget-object v4, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v4}, Lcom/android/browser/TabBar;->access$1500(Lcom/android/browser/TabBar;)Landroid/graphics/Paint;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v5}, Lcom/android/browser/TabBar;->access$1400(Lcom/android/browser/TabBar;)Landroid/graphics/BitmapShader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 488
    iget-object v4, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v1, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-static {v4, v5}, Lcom/android/browser/TabBar;->access$1602(Lcom/android/browser/TabBar;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;

    .line 490
    iget-object v4, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v4}, Lcom/android/browser/TabBar;->access$1700(Lcom/android/browser/TabBar;)Landroid/graphics/Paint;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v5}, Lcom/android/browser/TabBar;->access$1600(Lcom/android/browser/TabBar;)Landroid/graphics/BitmapShader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 494
    .end local v0           #activeTexture:Landroid/graphics/Bitmap;
    .end local v1           #inactiveTexture:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v4, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v4}, Lcom/android/browser/TabBar;->access$1400(Lcom/android/browser/TabBar;)Landroid/graphics/BitmapShader;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v4}, Lcom/android/browser/TabBar;->access$1600(Lcom/android/browser/TabBar;)Landroid/graphics/BitmapShader;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 495
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 496
    .local v3, state:I
    iget-object v4, p0, Lcom/android/browser/TabBar$TabView;->mWindowPos:[I

    invoke-virtual {p0, v4}, Lcom/android/browser/TabBar$TabView;->getLocationInWindow([I)V

    .line 497
    iget-boolean v4, p0, Lcom/android/browser/TabBar$TabView;->mSelected:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v4}, Lcom/android/browser/TabBar;->access$1500(Lcom/android/browser/TabBar;)Landroid/graphics/Paint;

    move-result-object v4

    move-object v2, v4

    .line 498
    .local v2, paint:Landroid/graphics/Paint;
    :goto_0
    iget-object v4, p0, Lcom/android/browser/TabBar$TabView;->mPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/browser/TabBar$TabView;->mWindowPos:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-direct {p0, p1, v2, v4, v5}, Lcom/android/browser/TabBar$TabView;->drawClipped(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;I)V

    .line 499
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 501
    .end local v2           #paint:Landroid/graphics/Paint;
    .end local v3           #state:I
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 502
    return-void

    .line 497
    .restart local v3       #state:I
    :cond_3
    iget-object v4, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v4}, Lcom/android/browser/TabBar;->access$1700(Lcom/android/browser/TabBar;)Landroid/graphics/Paint;

    move-result-object v4

    move-object v2, v4

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/browser/TabBar$TabView;->mClose:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/android/browser/TabBar$TabView;->closeTab()V

    .line 389
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    .line 466
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 467
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mPath:Landroid/graphics/Path;

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/TabBar$TabView;->setTabPath(Landroid/graphics/Path;IIII)V

    .line 468
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mFocusPath:Landroid/graphics/Path;

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/TabBar$TabView;->setFocusPath(Landroid/graphics/Path;IIII)V

    .line 469
    return-void
.end method

.method public setActivated(Z)V
    .locals 5
    .parameter "selected"

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 410
    iput-boolean p1, p0, Lcom/android/browser/TabBar$TabView;->mSelected:Z

    .line 411
    iget-object v0, p0, Lcom/android/browser/TabBar$TabView;->mClose:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/browser/TabBar$TabView;->mSelected:Z

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/android/browser/TabBar$TabView;->mIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/android/browser/TabBar$TabView;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v1}, Lcom/android/browser/TabBar;->access$400(Lcom/android/browser/TabBar;)Landroid/app/Activity;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/browser/TabBar$TabView;->mSelected:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0e000d

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 415
    iget-boolean v0, p0, Lcom/android/browser/TabBar$TabView;->mSelected:Z

    if-nez v0, :cond_2

    move v0, v4

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/browser/TabBar$TabView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 416
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 417
    invoke-virtual {p0}, Lcom/android/browser/TabBar$TabView;->updateLayoutParams()V

    .line 418
    if-nez p1, :cond_3

    move v0, v4

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/browser/TabBar$TabView;->setFocusable(Z)V

    .line 419
    invoke-virtual {p0}, Lcom/android/browser/TabBar$TabView;->postInvalidate()V

    .line 420
    return-void

    :cond_0
    move v1, v2

    .line 411
    goto :goto_0

    .line 413
    :cond_1
    const v2, 0x7f0e000e

    goto :goto_1

    :cond_2
    move v0, v3

    .line 415
    goto :goto_2

    :cond_3
    move v0, v3

    .line 418
    goto :goto_3
.end method

.method setDisplayTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/browser/TabBar$TabView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    return-void
.end method

.method setFavicon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/browser/TabBar$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 435
    return-void
.end method

.method setProgress(I)V
    .locals 1
    .parameter "newProgress"

    .prologue
    .line 447
    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/TabBar$TabView;->mInLoad:Z

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/TabBar$TabView;->mInLoad:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/TabBar$TabView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/TabBar$TabView;->mInLoad:Z

    goto :goto_0
.end method

.method showIndicator(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/16 v2, 0x8

    .line 365
    iget-boolean v1, p0, Lcom/android/browser/TabBar$TabView;->mSelected:Z

    if-eqz v1, :cond_2

    .line 366
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mIndicator:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 367
    invoke-virtual {p0}, Lcom/android/browser/TabBar$TabView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 368
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_1

    .line 369
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v1}, Lcom/android/browser/TabBar;->access$200(Lcom/android/browser/TabBar;)I

    move-result v1

    iget-object v2, p0, Lcom/android/browser/TabBar$TabView;->mIndicator:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 373
    :goto_0
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 374
    invoke-virtual {p0, v0}, Lcom/android/browser/TabBar$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    return-void

    .line 371
    .restart local v0       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v1}, Lcom/android/browser/TabBar;->access$200(Lcom/android/browser/TabBar;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 376
    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->mIndicator:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method showsIndicator()Z
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/browser/TabBar$TabView;->mIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateLayoutParams()V
    .locals 2

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/android/browser/TabBar$TabView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 424
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v1, p0, Lcom/android/browser/TabBar$TabView;->mSelected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v1}, Lcom/android/browser/TabBar;->access$200(Lcom/android/browser/TabBar;)I

    move-result v1

    :goto_0
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 425
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 426
    invoke-virtual {p0, v0}, Lcom/android/browser/TabBar$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    return-void

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/android/browser/TabBar$TabView;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v1}, Lcom/android/browser/TabBar;->access$500(Lcom/android/browser/TabBar;)I

    move-result v1

    goto :goto_0
.end method
