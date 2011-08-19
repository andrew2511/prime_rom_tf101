.class public Lcom/newspaperdirect/pressreader/android/ArticleView;
.super Landroid/app/Activity;
.source "ArticleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/ArticleView$GestureListener;,
        Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;
    }
.end annotation


# static fields
.field private static final AUDIO_CONNECT_TIMEOUT:I = 0x2710

.field private static final AUDIO_RETRY_INTERVAL:I = 0x1f4

.field private static final DEFAULT_TEXT_SIZE_PERCENT:I = 0x64

.field public static final EXTRA_ARTICLE_ID_NAME:Ljava/lang/String; = "com.newspaperdirect.pressreader.android.ArticleId"

.field private static final FONT_SIZE_ID:I = 0x4

.field private static final LISTEN_ID:I = 0x3

.field private static final MAX_TEXT_SIZE_PERCENT:I = 0x12c

.field private static final MIN_TEXT_SIZE_PERCENT:I = 0x32

.field private static final PREF_ARTICLE_VIEW_TEXT_SIZE:Ljava/lang/String; = "article_view_text_size"

.field private static final SHARE_EMAIL:I = 0xc

.field private static final SHARE_FACEBOOK:I = 0xe

.field private static final SHARE_ID:I = 0x2

.field private static final SHARE_TWITTER:I = 0xd

.field private static final STATE_CURRENT_ISSUE_KEY:Ljava/lang/String; = "current_issue_id"

.field private static final TAG:Ljava/lang/String; = "ArticleView"

.field private static final TOC_VIEW_REQUEST_CODE:I = 0x1


# instance fields
.field private mActiveContentView:Landroid/view/View;

.field private mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

.field private mArticleTitle:Lcom/newspaperdirect/pressreader/android/TitleView;

.field public mContext:Landroid/content/Context;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsPopupMenuVisible:Z

.field private mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

.field private mLeftColumn:Landroid/widget/LinearLayout;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPopupMenu:Landroid/view/View;

.field private mPopupMenuSlider:Landroid/widget/SeekBar;

.field private mProgressDialog:Landroid/app/AlertDialog;

.field private mRightColumn:Landroid/widget/LinearLayout;

.field private mSwitcher:Landroid/widget/ViewSwitcher;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTextSizePercent:I

.field private mTitleWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/ArticleView;)I
    .locals 1
    .parameter

    .prologue
    .line 102
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mTextSizePercent:I

    return v0
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/ArticleView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mTextSizePercent:I

    return-void
.end method

.method static synthetic access$10(Lcom/newspaperdirect/pressreader/android/ArticleView;)I
    .locals 1
    .parameter

    .prologue
    .line 110
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mTitleWidth:I

    return v0
.end method

.method static synthetic access$11(Lcom/newspaperdirect/pressreader/android/ArticleView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mActiveContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$12(Lcom/newspaperdirect/pressreader/android/ArticleView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mTitleWidth:I

    return-void
.end method

.method static synthetic access$13(Lcom/newspaperdirect/pressreader/android/ArticleView;)V
    .locals 0
    .parameter

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->listenToArticle()V

    return-void
.end method

.method static synthetic access$14(Lcom/newspaperdirect/pressreader/android/ArticleView;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    return-object v0
.end method

.method static synthetic access$15(Lcom/newspaperdirect/pressreader/android/ArticleView;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    return-object v0
.end method

.method static synthetic access$16(Lcom/newspaperdirect/pressreader/android/ArticleView;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mProgressDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/ArticleView;)Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mPopupMenuSlider:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/ArticleView;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->showArticle()V

    return-void
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/ArticleView;)Landroid/view/GestureDetector;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$5(Lcom/newspaperdirect/pressreader/android/ArticleView;)Z
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mIsPopupMenuVisible:Z

    return v0
.end method

.method static synthetic access$6(Lcom/newspaperdirect/pressreader/android/ArticleView;)V
    .locals 0
    .parameter

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->showNextArticle()V

    return-void
.end method

.method static synthetic access$7(Lcom/newspaperdirect/pressreader/android/ArticleView;)V
    .locals 0
    .parameter

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->showPrevArticle()V

    return-void
.end method

.method static synthetic access$8(Lcom/newspaperdirect/pressreader/android/ArticleView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$9(Lcom/newspaperdirect/pressreader/android/ArticleView;)Lcom/newspaperdirect/pressreader/android/TitleView;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticleTitle:Lcom/newspaperdirect/pressreader/android/TitleView;

    return-object v0
.end method

.method private changeActiveViews()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mActiveContentView:Landroid/view/View;

    .line 376
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->setActiveViews()V

    .line 377
    return-void
.end method

.method private getAdjustedSize(I)I
    .locals 1
    .parameter "initialSize"

    .prologue
    .line 642
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mTextSizePercent:I

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method private getTextSize(F)F
    .locals 2
    .parameter "initialTextSize"

    .prologue
    .line 638
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mTextSizePercent:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    return v0
.end method

.method private hidePopupMenu()V
    .locals 2

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mIsPopupMenuVisible:Z

    if-nez v0, :cond_0

    .line 740
    :goto_0
    return-void

    .line 738
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mIsPopupMenuVisible:Z

    .line 739
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mPopupMenu:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private listenToArticle()V
    .locals 7

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    :goto_0
    return-void

    .line 768
    :cond_0
    new-instance v6, Lcom/newspaperdirect/pressreader/android/ArticleView$9;

    invoke-direct {v6, p0}, Lcom/newspaperdirect/pressreader/android/ArticleView$9;-><init>(Lcom/newspaperdirect/pressreader/android/ArticleView;)V

    .line 868
    .local v6, thread:Ljava/lang/Thread;
    const-string v1, ""

    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 869
    new-instance v5, Lcom/newspaperdirect/pressreader/android/ArticleView$10;

    invoke-direct {v5, p0, v6}, Lcom/newspaperdirect/pressreader/android/ArticleView$10;-><init>(Lcom/newspaperdirect/pressreader/android/ArticleView;Ljava/lang/Thread;)V

    move-object v0, p0

    .line 868
    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mProgressDialog:Landroid/app/AlertDialog;

    .line 876
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private setActiveViews()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 380
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mActiveContentView:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->scrollTo(II)V

    .line 381
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mActiveContentView:Landroid/view/View;

    const v1, 0x7f0c0082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/TitleView;

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticleTitle:Lcom/newspaperdirect/pressreader/android/TitleView;

    .line 382
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticleTitle:Lcom/newspaperdirect/pressreader/android/TitleView;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/ArticleView$6;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/ArticleView$6;-><init>(Lcom/newspaperdirect/pressreader/android/ArticleView;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/TitleView;->setOnLayoutSetupListener(Lcom/newspaperdirect/pressreader/android/TitleView$OnLayoutSetupListener;)Lcom/newspaperdirect/pressreader/android/TitleView;

    .line 394
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticleTitle:Lcom/newspaperdirect/pressreader/android/TitleView;

    const/high16 v1, 0x41d0

    invoke-direct {p0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->getTextSize(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/TitleView;->setTextSize(F)V

    .line 395
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mActiveContentView:Landroid/view/View;

    const v1, 0x7f0c0083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mLeftColumn:Landroid/widget/LinearLayout;

    .line 396
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mActiveContentView:Landroid/view/View;

    const v1, 0x7f0c0084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mRightColumn:Landroid/widget/LinearLayout;

    .line 397
    return-void
.end method

.method private setBackgrounds()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    const v5, 0x3dcccccd

    .line 400
    const/4 v3, 0x3

    new-array v1, v3, [Landroid/graphics/drawable/Drawable;

    .line 401
    .local v1, layers:[Landroid/graphics/drawable/Drawable;
    new-array v2, v8, [F

    fill-array-data v2, :array_0

    .line 402
    .local v2, rr:[F
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v2, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 403
    .local v0, drawable:Landroid/graphics/drawable/ShapeDrawable;
    new-instance v3, Lcom/newspaperdirect/pressreader/android/ArticleView$7;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/ArticleView$7;-><init>(Lcom/newspaperdirect/pressreader/android/ArticleView;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    .line 409
    const/4 v3, 0x0

    aput-object v0, v1, v3

    .line 410
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .end local v0           #drawable:Landroid/graphics/drawable/ShapeDrawable;
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v5, v7, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v3, v2, v4, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 411
    .restart local v0       #drawable:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const v4, -0xd0d0e

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 412
    const/4 v3, 0x1

    aput-object v0, v1, v3

    .line 413
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .end local v0           #drawable:Landroid/graphics/drawable/ShapeDrawable;
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v5, v5, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v3, v2, v4, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 414
    .restart local v0       #drawable:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const v4, -0x6c6c6d

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 415
    const/4 v3, 0x2

    aput-object v0, v1, v3

    .line 416
    const/high16 v3, 0x7f0c

    invoke-virtual {p0, v3}, Lcom/newspaperdirect/pressreader/android/ArticleView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 417
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .end local v0           #drawable:Landroid/graphics/drawable/ShapeDrawable;
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    new-array v4, v8, [F

    fill-array-data v4, :array_1

    invoke-direct {v3, v4, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 418
    .restart local v0       #drawable:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 419
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3, v0}, Landroid/widget/ViewSwitcher;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 420
    return-void

    .line 401
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 417
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
    .end array-data
.end method

.method private setupLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 228
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->setContentView(I)V

    .line 229
    const v1, 0x7f0c008f

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    const v1, 0x7f0c0001

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mSwitcher:Landroid/widget/ViewSwitcher;

    .line 231
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mActiveContentView:Landroid/view/View;

    .line 232
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->setActiveViews()V

    .line 233
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->setBackgrounds()V

    .line 234
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->updateTitles()V

    .line 235
    const v1, 0x7f0c0057

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mPopupMenu:Landroid/view/View;

    .line 236
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mPopupMenu:Landroid/view/View;

    new-instance v2, Lcom/newspaperdirect/pressreader/android/ArticleView$4;

    invoke-direct {v2, p0}, Lcom/newspaperdirect/pressreader/android/ArticleView$4;-><init>(Lcom/newspaperdirect/pressreader/android/ArticleView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 241
    iget-boolean v1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mIsPopupMenuVisible:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->showPopupMenu()V

    .line 242
    :cond_0
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/newspaperdirect/pressreader/android/ArticleView$GestureListener;

    invoke-direct {v2, p0, v3}, Lcom/newspaperdirect/pressreader/android/ArticleView$GestureListener;-><init>(Lcom/newspaperdirect/pressreader/android/ArticleView;Lcom/newspaperdirect/pressreader/android/ArticleView$GestureListener;)V

    invoke-direct {v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 243
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;

    invoke-direct {v2, p0, v3}, Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;-><init>(Lcom/newspaperdirect/pressreader/android/ArticleView;Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 244
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;

    invoke-direct {v2, p0, v3}, Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;-><init>(Lcom/newspaperdirect/pressreader/android/ArticleView;Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 245
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 246
    .local v0, progressBar:Landroid/widget/ProgressBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 247
    const v1, 0x7f0c0089

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mPopupMenuSlider:Landroid/widget/SeekBar;

    .line 248
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mPopupMenuSlider:Landroid/widget/SeekBar;

    const/16 v2, 0xfa

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 249
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mPopupMenuSlider:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mTextSizePercent:I

    const/16 v3, 0x32

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 250
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mPopupMenuSlider:Landroid/widget/SeekBar;

    new-instance v2, Lcom/newspaperdirect/pressreader/android/ArticleView$5;

    invoke-direct {v2, p0}, Lcom/newspaperdirect/pressreader/android/ArticleView$5;-><init>(Lcom/newspaperdirect/pressreader/android/ArticleView;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 263
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mPopupMenuSlider:Landroid/widget/SeekBar;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 264
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->showArticle()V

    .line 265
    return-void
.end method

.method private showArticle()V
    .locals 31

    .prologue
    .line 434
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/newspaperdirect/pressreader/android/ArticleView;->mTitleWidth:I

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticleTitle:Lcom/newspaperdirect/pressreader/android/TitleView;

    move-object/from16 v27, v0

    const/high16 v28, 0x41d0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->getTextSize(F)F

    move-result v28

    invoke-virtual/range {v27 .. v28}, Lcom/newspaperdirect/pressreader/android/TitleView;->setTextSize(F)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mRightColumn:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    if-nez v27, :cond_1

    .line 437
    invoke-direct/range {p0 .. p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->showSingleColumnArticle()V

    .line 548
    :cond_0
    return-void

    .line 440
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticleTitle:Lcom/newspaperdirect/pressreader/android/TitleView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/newspaperdirect/pressreader/android/TitleView;->getWidth()I

    move-result v27

    div-int/lit8 v26, v27, 0x2

    .line 441
    .local v26, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mLeftColumn:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mRightColumn:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mLeftColumn:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    move/from16 v0, v26

    move-object/from16 v1, v27

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mRightColumn:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    move/from16 v0, v26

    move-object/from16 v1, v27

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 445
    const/4 v14, 0x0

    .line 446
    .local v14, lheight:I
    const/16 v18, 0x0

    .line 448
    .local v18, rheight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getByline()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v27

    if-nez v27, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getCopyright()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v27

    if-eqz v27, :cond_5

    .line 449
    :cond_2
    new-instance v25, Landroid/widget/TextView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 450
    .local v25, text:Landroid/widget/TextView;
    new-instance v27, Landroid/view/ViewGroup$LayoutParams;

    const/16 v28, -0x1

    const/16 v29, -0x2

    invoke-direct/range {v27 .. v29}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    const/high16 v27, -0x100

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 452
    const/16 v22, 0x0

    .line 453
    .local v22, str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getCopyright()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v27

    if-eqz v27, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getCopyright()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->getText()Ljava/lang/String;

    move-result-object v22

    .line 454
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getByline()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v27

    if-eqz v27, :cond_4

    .line 455
    if-nez v22, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getByline()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->getText()Ljava/lang/String;

    move-result-object v22

    .line 458
    :cond_4
    :goto_0
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    const/16 v27, 0x0

    const/16 v28, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->getAdjustedSize(I)I

    move-result v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 460
    sget-object v27, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 461
    const/high16 v27, 0x4140

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->getTextSize(F)F

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 462
    const/16 v27, 0x10

    sub-int v27, v26, v27

    const/high16 v28, 0x4000

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 463
    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v27

    add-int v14, v14, v27

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mLeftColumn:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 466
    .end local v22           #str:Ljava/lang/String;
    .end local v25           #text:Landroid/widget/TextView;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getSubtitle()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v27

    if-eqz v27, :cond_6

    .line 467
    new-instance v25, Landroid/widget/TextView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 468
    .restart local v25       #text:Landroid/widget/TextView;
    new-instance v27, Landroid/view/ViewGroup$LayoutParams;

    const/16 v28, -0x1

    const/16 v29, -0x2

    invoke-direct/range {v27 .. v29}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    const/high16 v27, -0x100

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getSubtitle()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->getText()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    const/16 v27, 0x0

    const/16 v28, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->getAdjustedSize(I)I

    move-result v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 472
    sget-object v27, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 473
    const/high16 v27, 0x41a0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->getTextSize(F)F

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 474
    const/16 v27, 0x10

    sub-int v27, v26, v27

    const/high16 v28, 0x4000

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 475
    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v27

    add-int v14, v14, v27

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mLeftColumn:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 478
    .end local v25           #text:Landroid/widget/TextView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getImages()Ljava/util/List;

    move-result-object v27

    if-eqz v27, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getImages()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_a

    .line 479
    const/4 v11, 0x0

    .line 480
    .local v11, image:Lcom/newspaperdirect/pressreader/android/core/layout/Image;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getImages()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_7
    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-nez v28, :cond_c

    .line 485
    if-eqz v11, :cond_a

    .line 486
    new-instance v12, Landroid/widget/ImageView;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 487
    .local v12, imageView:Landroid/widget/ImageView;
    new-instance v27, Landroid/view/ViewGroup$LayoutParams;

    const/16 v28, -0x2

    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v12

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    const/4 v8, 0x0

    .line 489
    .local v8, file:Ljava/util/zip/ZipFile;
    const/16 v23, 0x0

    .line 491
    .local v23, stream:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v9, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPagesFile()Ljava/io/File;

    move-result-object v27

    move-object v0, v9

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    .end local v8           #file:Ljava/util/zip/ZipFile;
    .local v9, file:Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "p"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ".jpg"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object v0, v9

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    .line 493
    .local v7, entry:Ljava/util/zip/ZipEntry;
    if-nez v7, :cond_8

    .line 494
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "p"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ".png"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object v0, v9

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    .line 495
    if-nez v7, :cond_8

    .line 496
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "p"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "_bg.jpg"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object v0, v9

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    .line 499
    :cond_8
    new-instance v24, Ljava/io/BufferedInputStream;

    invoke-virtual {v9, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 500
    .end local v23           #stream:Ljava/io/BufferedInputStream;
    .local v24, stream:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "bg_"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 501
    .local v5, bm:Landroid/graphics/Bitmap;
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 502
    const/16 v23, 0x0

    .line 503
    .end local v24           #stream:Ljava/io/BufferedInputStream;
    .restart local v23       #stream:Ljava/io/BufferedInputStream;
    :try_start_3
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 504
    const/4 v8, 0x0

    .line 505
    .end local v9           #file:Ljava/util/zip/ZipFile;
    .restart local v8       #file:Ljava/util/zip/ZipFile;
    :try_start_4
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual {v11}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v21, v27, v28

    .line 506
    .local v21, scale:F
    invoke-virtual {v11}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->x:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v21

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual {v11}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->y:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v21

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    .line 507
    invoke-virtual {v11}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v21

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    invoke-virtual {v11}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v30

    move-object/from16 v0, v30

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, v21

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    .line 506
    move-object v0, v5

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 508
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    mul-int v27, v27, v26

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    div-int v18, v27, v28

    .line 509
    const/16 v27, 0x1

    move-object v0, v5

    move/from16 v1, v26

    move/from16 v2, v18

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v27

    move-object v0, v12

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 510
    const/4 v5, 0x0

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mRightColumn:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 517
    if-eqz v23, :cond_9

    :try_start_5
    throw v23
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 518
    :cond_9
    :goto_2
    if-eqz v8, :cond_a

    :try_start_6
    throw v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 522
    .end local v5           #bm:Landroid/graphics/Bitmap;
    .end local v7           #entry:Ljava/util/zip/ZipEntry;
    .end local v8           #file:Ljava/util/zip/ZipFile;
    .end local v11           #image:Lcom/newspaperdirect/pressreader/android/core/layout/Image;
    .end local v12           #imageView:Landroid/widget/ImageView;
    .end local v21           #scale:F
    .end local v23           #stream:Ljava/io/BufferedInputStream;
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getTextLines()Ljava/util/List;

    move-result-object v17

    .line 523
    .local v17, lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 524
    .local v15, lidx:I
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v27

    const/16 v28, 0x1

    sub-int v19, v27, v28

    .line 525
    .local v19, ridx:I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v20, rviews:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    :goto_4
    move v0, v15

    move/from16 v1, v19

    if-le v0, v1, :cond_11

    .line 546
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v27

    const/16 v28, 0x1

    sub-int v10, v27, v28

    .local v10, i:I
    :goto_5
    if-ltz v10, :cond_0

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mRightColumn:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v20

    move v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 546
    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    .line 456
    .end local v10           #i:I
    .end local v15           #lidx:I
    .end local v17           #lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v19           #ridx:I
    .end local v20           #rviews:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    .restart local v22       #str:Ljava/lang/String;
    .restart local v25       #text:Landroid/widget/TextView;
    :cond_b
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getByline()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->getText()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    .line 480
    .end local v22           #str:Ljava/lang/String;
    .end local v25           #text:Landroid/widget/TextView;
    .restart local v11       #image:Lcom/newspaperdirect/pressreader/android/core/layout/Image;
    :cond_c
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/newspaperdirect/pressreader/android/core/layout/Image;

    .line 481
    .local v13, img:Lcom/newspaperdirect/pressreader/android/core/layout/Image;
    invoke-virtual {v13}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_7

    .line 482
    if-eqz v11, :cond_d

    invoke-virtual {v11}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->getSize()I

    move-result v28

    invoke-virtual {v13}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->getSize()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_7

    .line 483
    :cond_d
    move-object v11, v13

    goto/16 :goto_1

    .line 513
    .end local v13           #img:Lcom/newspaperdirect/pressreader/android/core/layout/Image;
    .restart local v8       #file:Ljava/util/zip/ZipFile;
    .restart local v12       #imageView:Landroid/widget/ImageView;
    .restart local v23       #stream:Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v27

    move-object/from16 v6, v27

    .line 514
    .local v6, e:Ljava/lang/Exception;
    :goto_6
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 517
    if-eqz v23, :cond_e

    :try_start_8
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 518
    :cond_e
    :goto_7
    if-eqz v8, :cond_a

    :try_start_9
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v27

    goto/16 :goto_3

    .line 516
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v27

    .line 517
    :goto_8
    if-eqz v23, :cond_f

    :try_start_a
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 518
    :cond_f
    :goto_9
    if-eqz v8, :cond_10

    :try_start_b
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 519
    :cond_10
    :goto_a
    throw v27

    .line 527
    .end local v8           #file:Ljava/util/zip/ZipFile;
    .end local v11           #image:Lcom/newspaperdirect/pressreader/android/core/layout/Image;
    .end local v12           #imageView:Landroid/widget/ImageView;
    .end local v23           #stream:Ljava/io/BufferedInputStream;
    .restart local v15       #lidx:I
    .restart local v17       #lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19       #ridx:I
    .restart local v20       #rviews:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    :cond_11
    move/from16 v0, v18

    move v1, v14

    if-le v0, v1, :cond_12

    move-object/from16 v0, v17

    move v1, v15

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v16, v5

    .line 528
    .local v16, line:Ljava/lang/String;
    :goto_b
    new-instance v25, Landroid/widget/TextView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 529
    .restart local v25       #text:Landroid/widget/TextView;
    new-instance v27, Landroid/view/ViewGroup$LayoutParams;

    const/16 v28, -0x1

    const/16 v29, -0x2

    invoke-direct/range {v27 .. v29}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    const/high16 v27, -0x100

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 531
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    const/16 v27, 0x0

    const/16 v28, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->getAdjustedSize(I)I

    move-result v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 533
    const/high16 v27, 0x4140

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->getTextSize(F)F

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 534
    const/16 v27, 0x10

    sub-int v27, v26, v27

    const/high16 v28, 0x4000

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 535
    move/from16 v0, v18

    move v1, v14

    if-lt v0, v1, :cond_13

    .line 536
    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v27

    add-int v14, v14, v27

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mLeftColumn:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 538
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .line 527
    .end local v16           #line:Ljava/lang/String;
    .end local v25           #text:Landroid/widget/TextView;
    :cond_12
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v16, v5

    goto/16 :goto_b

    .line 541
    .restart local v16       #line:Ljava/lang/String;
    .restart local v25       #text:Landroid/widget/TextView;
    :cond_13
    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v27

    add-int v18, v18, v27

    .line 542
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    add-int/lit8 v19, v19, -0x1

    goto/16 :goto_4

    .line 517
    .end local v15           #lidx:I
    .end local v16           #line:Ljava/lang/String;
    .end local v17           #lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v19           #ridx:I
    .end local v20           #rviews:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    .end local v25           #text:Landroid/widget/TextView;
    .restart local v6       #e:Ljava/lang/Exception;
    .restart local v8       #file:Ljava/util/zip/ZipFile;
    .restart local v11       #image:Lcom/newspaperdirect/pressreader/android/core/layout/Image;
    .restart local v12       #imageView:Landroid/widget/ImageView;
    .restart local v23       #stream:Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v27

    goto/16 :goto_7

    .end local v6           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v28

    goto/16 :goto_9

    .line 518
    :catch_4
    move-exception v28

    goto/16 :goto_a

    .line 517
    .restart local v5       #bm:Landroid/graphics/Bitmap;
    .restart local v7       #entry:Ljava/util/zip/ZipEntry;
    .restart local v21       #scale:F
    :catch_5
    move-exception v27

    goto/16 :goto_2

    .line 518
    :catch_6
    move-exception v27

    goto/16 :goto_3

    .line 516
    .end local v5           #bm:Landroid/graphics/Bitmap;
    .end local v7           #entry:Ljava/util/zip/ZipEntry;
    .end local v8           #file:Ljava/util/zip/ZipFile;
    .end local v21           #scale:F
    .restart local v9       #file:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v27

    move-object v8, v9

    .end local v9           #file:Ljava/util/zip/ZipFile;
    .restart local v8       #file:Ljava/util/zip/ZipFile;
    goto/16 :goto_8

    .end local v8           #file:Ljava/util/zip/ZipFile;
    .end local v23           #stream:Ljava/io/BufferedInputStream;
    .restart local v7       #entry:Ljava/util/zip/ZipEntry;
    .restart local v9       #file:Ljava/util/zip/ZipFile;
    .restart local v24       #stream:Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v27

    move-object/from16 v23, v24

    .end local v24           #stream:Ljava/io/BufferedInputStream;
    .restart local v23       #stream:Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9           #file:Ljava/util/zip/ZipFile;
    .restart local v8       #file:Ljava/util/zip/ZipFile;
    goto/16 :goto_8

    .line 513
    .end local v7           #entry:Ljava/util/zip/ZipEntry;
    .end local v8           #file:Ljava/util/zip/ZipFile;
    .restart local v9       #file:Ljava/util/zip/ZipFile;
    :catch_7
    move-exception v27

    move-object/from16 v6, v27

    move-object v8, v9

    .end local v9           #file:Ljava/util/zip/ZipFile;
    .restart local v8       #file:Ljava/util/zip/ZipFile;
    goto/16 :goto_6

    .end local v8           #file:Ljava/util/zip/ZipFile;
    .end local v23           #stream:Ljava/io/BufferedInputStream;
    .restart local v7       #entry:Ljava/util/zip/ZipEntry;
    .restart local v9       #file:Ljava/util/zip/ZipFile;
    .restart local v24       #stream:Ljava/io/BufferedInputStream;
    :catch_8
    move-exception v27

    move-object/from16 v6, v27

    move-object/from16 v23, v24

    .end local v24           #stream:Ljava/io/BufferedInputStream;
    .restart local v23       #stream:Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9           #file:Ljava/util/zip/ZipFile;
    .restart local v8       #file:Ljava/util/zip/ZipFile;
    goto/16 :goto_6
.end method

.method private showNextArticle()V
    .locals 5

    .prologue
    .line 658
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getIdx()I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 659
    .local v0, idx:I
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getArticles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 660
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v2

    .line 661
    .local v2, pidx:I
    :goto_0
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPagesCount()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 669
    :goto_1
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPagesCount()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 678
    .end local v2           #pidx:I
    :goto_2
    return-void

    .line 662
    .restart local v2       #pidx:I
    :cond_0
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayout()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getPages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    .line 663
    .local v1, page:Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getArticles()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getArticles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 664
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getArticles()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    goto :goto_1

    .line 667
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 671
    .end local v1           #page:Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    .end local v2           #pidx:I
    :cond_2
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getArticles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    .line 672
    :cond_3
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->changeActiveViews()V

    .line 673
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->updateTitles()V

    .line 674
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->showArticle()V

    .line 675
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mSwitcher:Landroid/widget/ViewSwitcher;

    const v4, 0x7f040002

    invoke-virtual {v3, p0, v4}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/content/Context;I)V

    .line 676
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mSwitcher:Landroid/widget/ViewSwitcher;

    const v4, 0x7f040003

    invoke-virtual {v3, p0, v4}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    .line 677
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->showNext()V

    goto :goto_2
.end method

.method private showPopupMenu()V
    .locals 3

    .prologue
    .line 729
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mIsPopupMenuVisible:Z

    .line 730
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mPopupMenu:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 731
    const/high16 v1, 0x10a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 732
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 733
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mPopupMenu:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 734
    return-void
.end method

.method private showPrevArticle()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 681
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getIdx()I

    move-result v3

    sub-int v0, v3, v5

    .line 682
    .local v0, idx:I
    if-gez v0, :cond_2

    .line 683
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v3

    const/4 v4, 0x2

    sub-int v2, v3, v4

    .line 684
    .local v2, pidx:I
    :goto_0
    if-gez v2, :cond_0

    .line 692
    :goto_1
    if-gez v2, :cond_3

    .line 701
    .end local v2           #pidx:I
    :goto_2
    return-void

    .line 685
    .restart local v2       #pidx:I
    :cond_0
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayout()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getPages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    .line 686
    .local v1, page:Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getArticles()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getArticles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 687
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getArticles()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getArticles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    goto :goto_1

    .line 690
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 694
    .end local v1           #page:Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    .end local v2           #pidx:I
    :cond_2
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getArticles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    .line 695
    :cond_3
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->changeActiveViews()V

    .line 696
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->updateTitles()V

    .line 697
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->showArticle()V

    .line 698
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mSwitcher:Landroid/widget/ViewSwitcher;

    const v4, 0x7f040004

    invoke-virtual {v3, p0, v4}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/content/Context;I)V

    .line 699
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mSwitcher:Landroid/widget/ViewSwitcher;

    const v4, 0x7f040005

    invoke-virtual {v3, p0, v4}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    .line 700
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->showNext()V

    goto :goto_2
.end method

.method private showSingleColumnArticle()V
    .locals 25

    .prologue
    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mLeftColumn:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getByline()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v19

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getCopyright()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v19

    if-eqz v19, :cond_3

    .line 554
    :cond_0
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 555
    .local v18, text:Landroid/widget/TextView;
    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    const/high16 v19, -0x100

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextColor(I)V

    .line 557
    const/4 v15, 0x0

    .line 558
    .local v15, str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getCopyright()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getCopyright()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->getText()Ljava/lang/String;

    move-result-object v15

    .line 559
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getByline()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v19

    if-eqz v19, :cond_2

    .line 560
    if-nez v15, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getByline()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->getText()Ljava/lang/String;

    move-result-object v15

    .line 563
    :cond_2
    :goto_0
    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    const/16 v19, 0x0

    const/16 v20, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->getAdjustedSize(I)I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 565
    sget-object v19, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 566
    const/high16 v19, 0x4160

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->getTextSize(F)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextSize(F)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mLeftColumn:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 569
    .end local v15           #str:Ljava/lang/String;
    .end local v18           #text:Landroid/widget/TextView;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getSubtitle()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v19

    if-eqz v19, :cond_4

    .line 570
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 571
    .restart local v18       #text:Landroid/widget/TextView;
    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    const/high16 v19, -0x100

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextColor(I)V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getSubtitle()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->getText()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    const/16 v19, 0x0

    const/16 v20, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->getAdjustedSize(I)I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 575
    sget-object v19, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 576
    const/high16 v19, 0x41a0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->getTextSize(F)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextSize(F)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mLeftColumn:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 579
    .end local v18           #text:Landroid/widget/TextView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mLeftColumn:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v19

    if-eqz v19, :cond_8

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getImages()Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getImages()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_8

    .line 581
    const/4 v10, 0x0

    .line 582
    .local v10, image:Lcom/newspaperdirect/pressreader/android/core/layout/Image;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getImages()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_5
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_a

    .line 587
    if-eqz v10, :cond_8

    .line 588
    new-instance v11, Landroid/widget/ImageView;

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 589
    .local v11, imageView:Landroid/widget/ImageView;
    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 590
    const/16 v19, 0x0

    const/16 v20, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->getAdjustedSize(I)I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v0, v11

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 591
    const/4 v8, 0x0

    .line 592
    .local v8, file:Ljava/util/zip/ZipFile;
    const/16 v16, 0x0

    .line 594
    .local v16, stream:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v9, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPagesFile()Ljava/io/File;

    move-result-object v19

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    .end local v8           #file:Ljava/util/zip/ZipFile;
    .local v9, file:Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "p"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".jpg"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    .line 596
    .local v7, entry:Ljava/util/zip/ZipEntry;
    if-nez v7, :cond_6

    .line 597
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "p"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".png"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    .line 598
    if-nez v7, :cond_6

    .line 599
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "p"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_bg.jpg"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    .line 602
    :cond_6
    new-instance v17, Ljava/io/BufferedInputStream;

    invoke-virtual {v9, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 603
    .end local v16           #stream:Ljava/io/BufferedInputStream;
    .local v17, stream:Ljava/io/BufferedInputStream;
    :try_start_2
    invoke-static/range {v17 .. v17}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v19

    sget-object v20, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 604
    .local v5, bm:Landroid/graphics/Bitmap;
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 605
    const/16 v16, 0x0

    .line 606
    .end local v17           #stream:Ljava/io/BufferedInputStream;
    .restart local v16       #stream:Ljava/io/BufferedInputStream;
    :try_start_3
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 607
    const/4 v8, 0x0

    .line 608
    .end local v9           #file:Ljava/util/zip/ZipFile;
    .restart local v8       #file:Ljava/util/zip/ZipFile;
    :try_start_4
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual {v10}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v14, v19, v20

    .line 609
    .local v14, scale:F
    invoke-virtual {v10}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->x:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual {v10}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v14

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    .line 610
    invoke-virtual {v10}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v14

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual {v10}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v14

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    .line 609
    move-object v0, v5

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 611
    const-string v19, "ARTICLEVIEW"

    const-string v20, "%d*%d"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mLeftColumn:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mLeftColumn:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v23

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    mul-int v23, v23, v24

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    div-int v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mLeftColumn:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mLeftColumn:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v20

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    mul-int v20, v20, v21

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    div-int v20, v20, v21

    const/16 v21, 0x1

    move-object v0, v5

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 613
    const/4 v5, 0x0

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mLeftColumn:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 620
    if-eqz v16, :cond_7

    :try_start_5
    throw v16
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 621
    :cond_7
    :goto_2
    if-eqz v8, :cond_8

    :try_start_6
    throw v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 626
    .end local v5           #bm:Landroid/graphics/Bitmap;
    .end local v7           #entry:Ljava/util/zip/ZipEntry;
    .end local v8           #file:Ljava/util/zip/ZipFile;
    .end local v10           #image:Lcom/newspaperdirect/pressreader/android/core/layout/Image;
    .end local v11           #imageView:Landroid/widget/ImageView;
    .end local v14           #scale:F
    .end local v16           #stream:Ljava/io/BufferedInputStream;
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getTextLines()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_f

    .line 635
    return-void

    .line 561
    .restart local v15       #str:Ljava/lang/String;
    .restart local v18       #text:Landroid/widget/TextView;
    :cond_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getByline()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->getText()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 582
    .end local v15           #str:Ljava/lang/String;
    .end local v18           #text:Landroid/widget/TextView;
    .restart local v10       #image:Lcom/newspaperdirect/pressreader/android/core/layout/Image;
    :cond_a
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/newspaperdirect/pressreader/android/core/layout/Image;

    .line 583
    .local v12, img:Lcom/newspaperdirect/pressreader/android/core/layout/Image;
    invoke-virtual {v12}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    .line 584
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->getSize()I

    move-result v20

    invoke-virtual {v12}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->getSize()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 585
    :cond_b
    move-object v10, v12

    goto/16 :goto_1

    .line 616
    .end local v12           #img:Lcom/newspaperdirect/pressreader/android/core/layout/Image;
    .restart local v8       #file:Ljava/util/zip/ZipFile;
    .restart local v11       #imageView:Landroid/widget/ImageView;
    .restart local v16       #stream:Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v19

    move-object/from16 v6, v19

    .line 617
    .local v6, e:Ljava/lang/Exception;
    :goto_5
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 620
    if-eqz v16, :cond_c

    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 621
    :cond_c
    :goto_6
    if-eqz v8, :cond_8

    :try_start_9
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v19

    goto/16 :goto_3

    .line 619
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v19

    .line 620
    :goto_7
    if-eqz v16, :cond_d

    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 621
    :cond_d
    :goto_8
    if-eqz v8, :cond_e

    :try_start_b
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 622
    :cond_e
    :goto_9
    throw v19

    .line 626
    .end local v8           #file:Ljava/util/zip/ZipFile;
    .end local v10           #image:Lcom/newspaperdirect/pressreader/android/core/layout/Image;
    .end local v11           #imageView:Landroid/widget/ImageView;
    .end local v16           #stream:Ljava/io/BufferedInputStream;
    :cond_f
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 627
    .local v13, line:Ljava/lang/String;
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 628
    .restart local v18       #text:Landroid/widget/TextView;
    new-instance v20, Landroid/view/ViewGroup$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    const/high16 v20, -0x100

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 630
    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    const/16 v20, 0x0

    const/16 v21, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->getAdjustedSize(I)I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 632
    const/high16 v20, 0x4140

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->getTextSize(F)F

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mLeftColumn:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 620
    .end local v13           #line:Ljava/lang/String;
    .end local v18           #text:Landroid/widget/TextView;
    .restart local v6       #e:Ljava/lang/Exception;
    .restart local v8       #file:Ljava/util/zip/ZipFile;
    .restart local v10       #image:Lcom/newspaperdirect/pressreader/android/core/layout/Image;
    .restart local v11       #imageView:Landroid/widget/ImageView;
    .restart local v16       #stream:Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v19

    goto/16 :goto_6

    .end local v6           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v20

    goto :goto_8

    .line 621
    :catch_4
    move-exception v20

    goto :goto_9

    .line 620
    .restart local v5       #bm:Landroid/graphics/Bitmap;
    .restart local v7       #entry:Ljava/util/zip/ZipEntry;
    .restart local v14       #scale:F
    :catch_5
    move-exception v19

    goto/16 :goto_2

    .line 621
    :catch_6
    move-exception v19

    goto/16 :goto_3

    .line 619
    .end local v5           #bm:Landroid/graphics/Bitmap;
    .end local v7           #entry:Ljava/util/zip/ZipEntry;
    .end local v8           #file:Ljava/util/zip/ZipFile;
    .end local v14           #scale:F
    .restart local v9       #file:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v19

    move-object v8, v9

    .end local v9           #file:Ljava/util/zip/ZipFile;
    .restart local v8       #file:Ljava/util/zip/ZipFile;
    goto/16 :goto_7

    .end local v8           #file:Ljava/util/zip/ZipFile;
    .end local v16           #stream:Ljava/io/BufferedInputStream;
    .restart local v7       #entry:Ljava/util/zip/ZipEntry;
    .restart local v9       #file:Ljava/util/zip/ZipFile;
    .restart local v17       #stream:Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v19

    move-object/from16 v16, v17

    .end local v17           #stream:Ljava/io/BufferedInputStream;
    .restart local v16       #stream:Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9           #file:Ljava/util/zip/ZipFile;
    .restart local v8       #file:Ljava/util/zip/ZipFile;
    goto/16 :goto_7

    .line 616
    .end local v7           #entry:Ljava/util/zip/ZipEntry;
    .end local v8           #file:Ljava/util/zip/ZipFile;
    .restart local v9       #file:Ljava/util/zip/ZipFile;
    :catch_7
    move-exception v19

    move-object/from16 v6, v19

    move-object v8, v9

    .end local v9           #file:Ljava/util/zip/ZipFile;
    .restart local v8       #file:Ljava/util/zip/ZipFile;
    goto/16 :goto_5

    .end local v8           #file:Ljava/util/zip/ZipFile;
    .end local v16           #stream:Ljava/io/BufferedInputStream;
    .restart local v7       #entry:Ljava/util/zip/ZipEntry;
    .restart local v9       #file:Ljava/util/zip/ZipFile;
    .restart local v17       #stream:Ljava/io/BufferedInputStream;
    :catch_8
    move-exception v19

    move-object/from16 v6, v19

    move-object/from16 v16, v17

    .end local v17           #stream:Ljava/io/BufferedInputStream;
    .restart local v16       #stream:Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9           #file:Ljava/util/zip/ZipFile;
    .restart local v8       #file:Ljava/util/zip/ZipFile;
    goto/16 :goto_5
.end method

.method private stopPlaying()V
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 745
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 747
    :cond_0
    return-void
.end method

.method private updateTitles()V
    .locals 5

    .prologue
    .line 423
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "E, d MMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 424
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, subtitle:Ljava/lang/String;
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayout()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 426
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v1

    .line 427
    .local v1, page:Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getSection()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    .end local v1           #page:Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    :cond_0
    const v3, 0x7f0c0090

    invoke-virtual {p0, v3}, Lcom/newspaperdirect/pressreader/android/ArticleView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticleTitle:Lcom/newspaperdirect/pressreader/android/TitleView;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getTitle()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/newspaperdirect/pressreader/android/TitleView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 282
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 284
    :catch_0
    move-exception v0

    .line 286
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "ArticleView"

    const-string v2, "ArrayIndexOutOfBoundsException occurred during touch event dispatch"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 293
    packed-switch p1, :pswitch_data_0

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 295
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Lcom/newspaperdirect/pressreader/android/ArticleView;->setResult(ILandroid/content/Intent;)V

    .line 297
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->finish()V

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackToPageBtnClicked(Landroid/view/View;)V
    .locals 4
    .parameter "btn"

    .prologue
    .line 710
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->hidePopupMenu()V

    .line 711
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->stopPlaying()V

    .line 712
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.newspaperdirect.pressreader.android.PageNumber"

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->setResult(ILandroid/content/Intent;)V

    .line 713
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->finish()V

    .line 714
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 319
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 320
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->setupLayout()V

    .line 321
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->init(Landroid/content/Context;)V

    .line 127
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->init(Landroid/content/Context;)Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    .line 128
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->create(Landroid/content/Context;)V

    .line 129
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/HandlerHolder;->init()V

    .line 131
    iput-object p0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mContext:Landroid/content/Context;

    .line 132
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mIsPopupMenuVisible:Z

    .line 133
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "article_view_text_size"

    const/16 v4, 0x32

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    iput v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mTextSizePercent:I

    .line 134
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCurrent()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v2

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 135
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    if-nez v2, :cond_2

    .line 136
    const-string v2, "current_issue_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, issue:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->findItem(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v2

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    if-nez v2, :cond_1

    .line 139
    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/ArticleView;->setResult(I)V

    .line 140
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->finish()V

    .line 191
    .end local v0           #issue:Ljava/lang/String;
    :goto_0
    return-void

    .line 143
    .restart local v0       #issue:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->setAsCurrent()V

    .line 145
    .end local v0           #issue:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayout()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v1

    .line 146
    .local v1, layout:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;
    if-eqz v1, :cond_3

    .line 147
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.newspaperdirect.pressreader.android.ArticleId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getArticle(Ljava/util/UUID;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v2

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    .line 149
    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    if-nez v2, :cond_5

    .line 150
    :cond_4
    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/ArticleView;->setResult(I)V

    .line 151
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->finish()V

    goto :goto_0

    .line 156
    :cond_5
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 157
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0, v5}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 158
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/newspaperdirect/pressreader/android/ArticleView$1;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/ArticleView$1;-><init>(Lcom/newspaperdirect/pressreader/android/ArticleView;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 163
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/newspaperdirect/pressreader/android/ArticleView$2;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/ArticleView$2;-><init>(Lcom/newspaperdirect/pressreader/android/ArticleView;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 180
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/ArticleView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 181
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v3, Lcom/newspaperdirect/pressreader/android/ArticleView$3;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/ArticleView$3;-><init>(Lcom/newspaperdirect/pressreader/android/ArticleView;)V

    .line 190
    const/16 v4, 0x20

    .line 181
    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 331
    const/4 v1, 0x3

    const v2, 0x7f090070

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 332
    const v2, 0x7f020041

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 333
    const/4 v1, 0x2

    const v2, 0x7f090071

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v1

    .line 334
    const v2, 0x7f020045

    invoke-interface {v1, v2}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 335
    .local v0, share:Landroid/view/SubMenu;
    const/16 v1, 0xc

    const v2, 0x7f0900c7

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 336
    const/16 v1, 0xd

    const v2, 0x7f0900c5

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 337
    const/16 v1, 0xe

    const v2, 0x7f0900c6

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 339
    const/4 v1, 0x4

    const v2, 0x7f090076

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 340
    const v2, 0x7f02003d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 341
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 304
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 305
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mIsPopupMenuVisible:Z

    if-eqz v0, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->hidePopupMenu()V

    .line 312
    :goto_0
    const/4 v0, 0x1

    .line 314
    :goto_1
    return v0

    .line 308
    :cond_0
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->stopPlaying()V

    .line 309
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.newspaperdirect.pressreader.android.PageNumber"

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->setResult(ILandroid/content/Intent;)V

    .line 310
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->finish()V

    goto :goto_0

    .line 314
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onListenMenuItemChosen()V
    .locals 2

    .prologue
    .line 750
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->hidePopupMenu()V

    .line 751
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->stopPlaying()V

    .line 762
    :goto_0
    return-void

    .line 754
    :cond_0
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;-><init>(Landroid/app/Activity;)V

    .line 755
    new-instance v1, Lcom/newspaperdirect/pressreader/android/ArticleView$8;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/ArticleView$8;-><init>(Lcom/newspaperdirect/pressreader/android/ArticleView;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->setPositiveResult(Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;

    move-result-object v0

    .line 760
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->check()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 346
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 347
    .local v0, selected:I
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/Sharing;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    invoke-direct {v1, p0, v2}, Lcom/newspaperdirect/pressreader/android/core/Sharing;-><init>(Landroid/app/Activity;Lcom/newspaperdirect/pressreader/android/core/layout/Article;)V

    .line 348
    .local v1, share:Lcom/newspaperdirect/pressreader/android/core/Sharing;
    packed-switch v0, :pswitch_data_0

    .line 371
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 350
    :pswitch_1
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->onListenMenuItemChosen()V

    move v2, v5

    .line 351
    goto :goto_0

    :pswitch_2
    move v2, v5

    .line 353
    goto :goto_0

    .line 355
    :pswitch_3
    iget-boolean v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mIsPopupMenuVisible:Z

    if-nez v2, :cond_0

    .line 356
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mPopupMenuSlider:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mTextSizePercent:I

    const/16 v4, 0x32

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 357
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->showPopupMenu()V

    :goto_1
    move v2, v5

    .line 360
    goto :goto_0

    .line 359
    :cond_0
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->hidePopupMenu()V

    goto :goto_1

    .line 362
    :pswitch_4
    sget-object v2, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;->Email:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->share(Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;)V

    move v2, v5

    .line 363
    goto :goto_0

    .line 365
    :pswitch_5
    sget-object v2, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;->Twitter:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->share(Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;)V

    move v2, v5

    .line 366
    goto :goto_0

    .line 368
    :pswitch_6
    sget-object v2, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;->Facebook:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->share(Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;)V

    move v2, v5

    .line 369
    goto :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 215
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    if-nez v0, :cond_1

    .line 216
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->setResult(I)V

    .line 217
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->finish()V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->checkFilesConsistency()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->setResult(I)V

    .line 222
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->finish()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 325
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 326
    const-string v0, "current_issue_id"

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public onShowNextBtnClicked(Landroid/view/View;)V
    .locals 0
    .parameter "btn"

    .prologue
    .line 646
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->hidePopupMenu()V

    .line 647
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->stopPlaying()V

    .line 648
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->showNextArticle()V

    .line 649
    return-void
.end method

.method public onShowPrevBtnClicked(Landroid/view/View;)V
    .locals 0
    .parameter "btn"

    .prologue
    .line 652
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->hidePopupMenu()V

    .line 653
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->stopPlaying()V

    .line 654
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->showPrevArticle()V

    .line 655
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 209
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->setupLayout()V

    .line 210
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 269
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 271
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 273
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mProgressDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 277
    :cond_1
    return-void
.end method

.method public onTOCBtnClicked(Landroid/view/View;)V
    .locals 2
    .parameter "btn"

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->hidePopupMenu()V

    .line 718
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->stopPlaying()V

    .line 719
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayout()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v0

    if-nez v0, :cond_0

    .line 721
    :goto_0
    return-void

    .line 720
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/newspaperdirect/pressreader/android/TOCView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
