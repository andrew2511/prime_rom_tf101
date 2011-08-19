.class public Lcom/android/browser/TitleBarXLarge;
.super Lcom/android/browser/TitleBarBase;
.source "TitleBarXLarge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/browser/DeviceAccountLogin$AutoLoginCallback;
.implements Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeWatcher;


# instance fields
.field private mAccountsAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllButton:Landroid/view/View;

.field private mAutoLogin:Landroid/view/View;

.field private mAutoLoginAccount:Landroid/widget/Spinner;

.field private mAutoLoginCancel:Landroid/widget/ImageButton;

.field private mAutoLoginError:Landroid/widget/TextView;

.field private mAutoLoginHandler:Lcom/android/browser/DeviceAccountLogin;

.field private mAutoLoginLogin:Landroid/widget/Button;

.field private mAutoLoginProgress:Landroid/widget/ProgressBar;

.field private mBackButton:Landroid/widget/ImageButton;

.field private mClearButton:Landroid/view/View;

.field private mContainer:Landroid/view/View;

.field private mFocusDrawable:Landroid/graphics/drawable/Drawable;

.field private mForwardButton:Landroid/widget/ImageButton;

.field private mGoButton:Landroid/view/View;

.field private mHideNavButtons:Z

.field private mInLoad:Z

.field private mNavButtons:Landroid/view/View;

.field private mProgressView:Lcom/android/browser/PageProgressView;

.field private mReloadDrawable:Landroid/graphics/drawable/Drawable;

.field private mSearchButton:Landroid/widget/ImageView;

.field private mStar:Landroid/widget/ImageView;

.field private mStopButton:Landroid/widget/ImageView;

.field private mStopDrawable:Landroid/graphics/drawable/Drawable;

.field private mUi:Lcom/android/browser/XLargeUi;

.field private mUnfocusDrawable:Landroid/graphics/drawable/Drawable;

.field private mUrlContainer:Landroid/view/View;

.field private mUrlIcon:Landroid/widget/ImageView;

.field private mUseQuickControls:Z

.field private mVoiceSearch:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/XLargeUi;)V
    .locals 2
    .parameter "activity"
    .parameter "controller"
    .parameter "ui"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/TitleBarBase;-><init>(Landroid/content/Context;Lcom/android/browser/UiController;Lcom/android/browser/BaseUi;)V

    .line 102
    iput-object p3, p0, Lcom/android/browser/TitleBarXLarge;->mUi:Lcom/android/browser/XLargeUi;

    .line 103
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f02005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mStopDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    const v1, 0x7f020056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mReloadDrawable:Landroid/graphics/drawable/Drawable;

    .line 106
    const v1, 0x7f020072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 108
    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mUnfocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/TitleBarXLarge;->mInVoiceMode:Z

    .line 111
    invoke-direct {p0, p1}, Lcom/android/browser/TitleBarXLarge;->initLayout(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/TitleBarXLarge;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLogin:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/TitleBarXLarge;)Lcom/android/browser/XLargeUi;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUi:Lcom/android/browser/XLargeUi;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/TitleBarXLarge;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mNavButtons:Landroid/view/View;

    return-object v0
.end method

.method private clearOrClose()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->getUserText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->clearFocus()V

    .line 430
    :goto_0
    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getCurrentWebView()Landroid/webkit/WebView;
    .locals 2

    .prologue
    .line 574
    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v1}, Lcom/android/browser/XLargeUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 575
    .local v0, t:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 578
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hideAutoLogin()V
    .locals 3

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/browser/TitleBarXLarge;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 358
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v1, Lcom/android/browser/TitleBarXLarge$1;

    invoke-direct {v1, p0}, Lcom/android/browser/TitleBarXLarge$1;-><init>(Lcom/android/browser/TitleBarXLarge;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 366
    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLogin:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 367
    return-void
.end method

.method private hideNavButtons()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 587
    iget-object v5, p0, Lcom/android/browser/TitleBarXLarge;->mNavButtons:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 588
    .local v3, awidth:I
    iget-object v5, p0, Lcom/android/browser/TitleBarXLarge;->mNavButtons:Landroid/view/View;

    const-string v6, "translationX"

    new-array v7, v9, [F

    const/4 v8, 0x0

    aput v8, v7, v10

    neg-int v8, v3

    int-to-float v8, v8

    aput v8, v7, v11

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 589
    .local v0, anim1:Landroid/animation/Animator;
    iget-object v5, p0, Lcom/android/browser/TitleBarXLarge;->mUrlContainer:Landroid/view/View;

    const-string v6, "left"

    new-array v7, v9, [I

    iget-object v8, p0, Lcom/android/browser/TitleBarXLarge;->mUrlContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    aput v8, v7, v10

    iget-object v8, p0, Lcom/android/browser/TitleBarXLarge;->mUrlContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    aput v8, v7, v11

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 591
    .local v1, anim2:Landroid/animation/Animator;
    iget-object v5, p0, Lcom/android/browser/TitleBarXLarge;->mNavButtons:Landroid/view/View;

    const-string v6, "alpha"

    new-array v7, v9, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 592
    .local v2, anim3:Landroid/animation/Animator;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 593
    .local v4, combo:Landroid/animation/AnimatorSet;
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v10

    aput-object v1, v5, v11

    aput-object v2, v5, v9

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 594
    new-instance v5, Lcom/android/browser/TitleBarXLarge$2;

    invoke-direct {v5, p0}, Lcom/android/browser/TitleBarXLarge$2;-><init>(Lcom/android/browser/TitleBarXLarge;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 613
    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 614
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 615
    return-void

    .line 591
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private initLayout(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 115
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 116
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/browser/TitleBarXLarge;->mHideNavButtons:Z

    .line 117
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 118
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f040030

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 120
    const v2, 0x7f100082

    invoke-virtual {p0, v2}, Lcom/android/browser/TitleBarXLarge;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mContainer:Landroid/view/View;

    .line 121
    const v2, 0x7f10008d

    invoke-virtual {p0, v2}, Lcom/android/browser/TitleBarXLarge;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/browser/UrlInputView;

    iput-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    .line 122
    const v2, 0x7f100092

    invoke-virtual {p0, v2}, Lcom/android/browser/TitleBarXLarge;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAllButton:Landroid/view/View;

    .line 125
    const v2, 0x7f100089

    invoke-virtual {p0, v2}, Lcom/android/browser/TitleBarXLarge;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mBackButton:Landroid/widget/ImageButton;

    .line 126
    const v2, 0x7f10008a

    invoke-virtual {p0, v2}, Lcom/android/browser/TitleBarXLarge;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mForwardButton:Landroid/widget/ImageButton;

    .line 127
    const v2, 0x7f10008c

    invoke-virtual {p0, v2}, Lcom/android/browser/TitleBarXLarge;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mUrlIcon:Landroid/widget/ImageView;

    .line 128
    const v2, 0x7f10004a

    invoke-virtual {p0, v2}, Lcom/android/browser/TitleBarXLarge;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mStar:Landroid/widget/ImageView;

    .line 129
    const v2, 0x7f10007e

    invoke-virtual {p0, v2}, Lcom/android/browser/TitleBarXLarge;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mStopButton:Landroid/widget/ImageView;

    .line 130
    const v2, 0x7f100091

    invoke-virtual {p0, v2}, Lcom/android/browser/TitleBarXLarge;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mSearchButton:Landroid/widget/ImageView;

    .line 131
    const v2, 0x7f10007b

    invoke-virtual {p0, v2}, Lcom/android/browser/TitleBarXLarge;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mLockIcon:Landroid/widget/ImageView;

    .line 132
    const v2, 0x7f10008f

    invoke-virtual {p0, v2}, Lcom/android/browser/TitleBarXLarge;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mGoButton:Landroid/view/View;

    .line 133
    const v2, 0x7f10008e

    invoke-virtual {p0, v2}, Lcom/android/browser/TitleBarXLarge;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mClearButton:Landroid/view/View;

    .line 134
    const v2, 0x7f100090

    invoke-virtual {p0, v2}, Lcom/android/browser/TitleBarXLarge;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mVoiceSearch:Landroid/widget/ImageView;

    .line 135
    const v2, 0x7f100093

    invoke-virtual {p0, v2}, Lcom/android/browser/TitleBarXLarge;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/browser/PageProgressView;

    iput-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mProgressView:Lcom/android/browser/PageProgressView;

    .line 136
    const v2, 0x7f100088

    invoke-virtual {p0, v2}, Lcom/android/browser/TitleBarXLarge;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mNavButtons:Landroid/view/View;

    .line 137
    const v2, 0x7f10008b

    invoke-virtual {p0, v2}, Lcom/android/browser/TitleBarXLarge;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mUrlContainer:Landroid/view/View;

    .line 138
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mStar:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAllButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mGoButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mClearButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mVoiceSearch:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v2, p0}, Lcom/android/browser/UrlInputView;->setUrlInputListener(Lcom/android/browser/UrlInputView$UrlInputListener;)V

    .line 148
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    iget-object v3, p0, Lcom/android/browser/TitleBarXLarge;->mUrlContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/browser/UrlInputView;->setContainer(Landroid/view/View;)V

    .line 149
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    iget-object v3, p0, Lcom/android/browser/TitleBarXLarge;->mUiController:Lcom/android/browser/UiController;

    invoke-virtual {v2, v3}, Lcom/android/browser/UrlInputView;->setController(Lcom/android/browser/UiController;)V

    .line 150
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v2, p0}, Lcom/android/browser/UrlInputView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 151
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/browser/UrlInputView;->setSelectAllOnFocus(Z)V

    .line 152
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v2, p0}, Lcom/android/browser/UrlInputView;->addQueryTextWatcher(Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeWatcher;)V

    .line 153
    const v2, 0x7f100081

    invoke-virtual {p0, v2}, Lcom/android/browser/TitleBarXLarge;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLogin:Landroid/view/View;

    .line 154
    const v2, 0x7f100083

    invoke-virtual {p0, v2}, Lcom/android/browser/TitleBarXLarge;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginAccount:Landroid/widget/Spinner;

    .line 155
    const v2, 0x7f100084

    invoke-virtual {p0, v2}, Lcom/android/browser/TitleBarXLarge;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginLogin:Landroid/widget/Button;

    .line 156
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginLogin:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v2, 0x7f100085

    invoke-virtual {p0, v2}, Lcom/android/browser/TitleBarXLarge;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginProgress:Landroid/widget/ProgressBar;

    .line 159
    const v2, 0x7f100086

    invoke-virtual {p0, v2}, Lcom/android/browser/TitleBarXLarge;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginError:Landroid/widget/TextView;

    .line 160
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLogin:Landroid/view/View;

    const v3, 0x7f100087

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginCancel:Landroid/widget/ImageButton;

    .line 162
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginCancel:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/browser/TitleBarXLarge;->setFocusState(Z)V

    .line 165
    return-void
.end method

.method private makeLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 260
    iget-boolean v0, p0, Lcom/android/browser/TitleBarXLarge;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 261
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 264
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, v2, v1, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    goto :goto_0
.end method

.method private setFocusState(Z)V
    .locals 5
    .parameter "focus"

    .prologue
    const v4, 0x7f02005b

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 433
    if-eqz p1, :cond_1

    .line 434
    iget-boolean v0, p0, Lcom/android/browser/TitleBarXLarge;->mHideNavButtons:Z

    if-eqz v0, :cond_0

    .line 435
    invoke-direct {p0}, Lcom/android/browser/TitleBarXLarge;->hideNavButtons()V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mUrlContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setDropDownWidth(I)V

    .line 438
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->getLeft()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setDropDownHorizontalOffset(I)V

    .line 439
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mStar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mClearButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUrlIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 443
    invoke-direct {p0, v3}, Lcom/android/browser/TitleBarXLarge;->updateSearchMode(Z)V

    .line 461
    :goto_0
    return-void

    .line 445
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/TitleBarXLarge;->mHideNavButtons:Z

    if-eqz v0, :cond_2

    .line 446
    invoke-direct {p0}, Lcom/android/browser/TitleBarXLarge;->showNavButtons()V

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mGoButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mVoiceSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mStar:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mClearButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-boolean v0, p0, Lcom/android/browser/TitleBarXLarge;->mUseQuickControls:Z

    if-eqz v0, :cond_3

    .line 453
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 457
    :goto_1
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUrlIcon:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/browser/TitleBarXLarge;->mInVoiceMode:Z

    if-eqz v1, :cond_4

    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 455
    :cond_3
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 457
    :cond_4
    const v1, 0x7f020062

    goto :goto_2
.end method

.method private setSearchMode(Z)V
    .locals 6
    .parameter "voiceSearchEnabled"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 502
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v0

    .line 504
    .local v0, searchEngine:Lcom/android/browser/search/SearchEngine;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/browser/search/SearchEngine;->supportsVoiceSearch()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v1, v2

    .line 506
    .local v1, showvoicebutton:Z
    :goto_0
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mVoiceSearch:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 508
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mGoButton:Landroid/view/View;

    if-eqz p1, :cond_2

    move v3, v5

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 510
    return-void

    .end local v1           #showvoicebutton:Z
    :cond_0
    move v1, v4

    .line 504
    goto :goto_0

    .restart local v1       #showvoicebutton:Z
    :cond_1
    move v3, v5

    .line 506
    goto :goto_1

    :cond_2
    move v3, v4

    .line 508
    goto :goto_2
.end method

.method private showNavButtons()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 618
    iget-object v5, p0, Lcom/android/browser/TitleBarXLarge;->mNavButtons:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 619
    .local v3, awidth:I
    iget-object v5, p0, Lcom/android/browser/TitleBarXLarge;->mNavButtons:Landroid/view/View;

    const-string v6, "translationX"

    new-array v7, v10, [F

    neg-int v8, v3

    int-to-float v8, v8

    aput v8, v7, v9

    const/4 v8, 0x0

    aput v8, v7, v11

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 620
    .local v0, anim1:Landroid/animation/Animator;
    iget-object v5, p0, Lcom/android/browser/TitleBarXLarge;->mUrlContainer:Landroid/view/View;

    const-string v6, "left"

    new-array v7, v10, [I

    aput v9, v7, v9

    aput v3, v7, v11

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 621
    .local v1, anim2:Landroid/animation/Animator;
    iget-object v5, p0, Lcom/android/browser/TitleBarXLarge;->mNavButtons:Landroid/view/View;

    const-string v6, "alpha"

    new-array v7, v10, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 622
    .local v2, anim3:Landroid/animation/Animator;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 623
    .local v4, combo:Landroid/animation/AnimatorSet;
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v9

    aput-object v1, v5, v11

    aput-object v2, v5, v10

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 624
    iget-object v5, p0, Lcom/android/browser/TitleBarXLarge;->mNavButtons:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 625
    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 626
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 627
    return-void

    .line 621
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private stopOrRefresh()V
    .locals 1

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/android/browser/TitleBarXLarge;->mInLoad:Z

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->stopLoading()V

    .line 469
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0
.end method

.method private updateSearchMode(Z)V
    .locals 1
    .parameter "userEdited"

    .prologue
    .line 498
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->getUserText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/browser/TitleBarXLarge;->setSearchMode(Z)V

    .line 499
    return-void

    .line 498
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method clearCompletions()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setSuggestedText(Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "evt"

    .prologue
    .line 565
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->clearFocus()V

    .line 568
    const/4 v0, 0x1

    .line 570
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/browser/TitleBarBase;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "focused"
    .parameter "dir"

    .prologue
    .line 553
    const/16 v0, 0x82

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/TitleBarXLarge;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    invoke-direct {p0}, Lcom/android/browser/TitleBarXLarge;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 556
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/browser/TitleBarBase;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getEmbeddedHeight()I
    .locals 2

    .prologue
    .line 272
    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 273
    .local v0, height:I
    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLogin:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLogin:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 276
    :cond_0
    return v0
.end method

.method inAutoLogin()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginHandler:Lcom/android/browser/DeviceAccountLogin;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEditingUrl()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public loginFailed()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 413
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginAccount:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 414
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginLogin:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 415
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginError:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 371
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mBackButton:Landroid/widget/ImageButton;

    if-ne v0, p1, :cond_1

    .line 372
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mForwardButton:Landroid/widget/ImageButton;

    if-ne v0, p1, :cond_2

    .line 374
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mStar:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_3

    .line 376
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUiController:Lcom/android/browser/UiController;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/browser/UiController;->bookmarkCurrentPage(JZ)V

    goto :goto_0

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mAllButton:Landroid/view/View;

    if-ne v0, p1, :cond_4

    .line 379
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0, v1}, Lcom/android/browser/UiController;->bookmarksOrHistoryPicker(Z)V

    goto :goto_0

    .line 380
    :cond_4
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mSearchButton:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_5

    .line 381
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v0, v3}, Lcom/android/browser/XLargeUi;->editUrl(Z)V

    goto :goto_0

    .line 382
    :cond_5
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mStopButton:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_6

    .line 383
    invoke-direct {p0}, Lcom/android/browser/TitleBarXLarge;->stopOrRefresh()V

    goto :goto_0

    .line 384
    :cond_6
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mGoButton:Landroid/view/View;

    if-ne v0, p1, :cond_7

    .line 385
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "browser-type"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/browser/TitleBarXLarge;->onAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_7
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mClearButton:Landroid/view/View;

    if-ne v0, p1, :cond_8

    .line 390
    invoke-direct {p0}, Lcom/android/browser/TitleBarXLarge;->clearOrClose()V

    goto :goto_0

    .line 391
    :cond_8
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mVoiceSearch:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_9

    .line 392
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->startVoiceSearch()V

    goto :goto_0

    .line 393
    :cond_9
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginCancel:Landroid/widget/ImageButton;

    if-ne v0, p1, :cond_b

    .line 394
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginHandler:Lcom/android/browser/DeviceAccountLogin;

    if-eqz v0, :cond_a

    .line 395
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginHandler:Lcom/android/browser/DeviceAccountLogin;

    invoke-virtual {v0}, Lcom/android/browser/DeviceAccountLogin;->cancel()V

    .line 396
    iput-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginHandler:Lcom/android/browser/DeviceAccountLogin;

    .line 398
    :cond_a
    invoke-direct {p0}, Lcom/android/browser/TitleBarXLarge;->hideAutoLogin()V

    goto :goto_0

    .line 399
    :cond_b
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginLogin:Landroid/widget/Button;

    if-ne v0, p1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginHandler:Lcom/android/browser/DeviceAccountLogin;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginAccount:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 402
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginLogin:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 403
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginError:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginHandler:Lcom/android/browser/DeviceAccountLogin;

    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginAccount:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/android/browser/DeviceAccountLogin;->login(ILcom/android/browser/DeviceAccountLogin$AutoLoginCallback;)V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "config"

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 169
    invoke-super {p0, p1}, Lcom/android/browser/TitleBarBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 170
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 171
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/browser/TitleBarXLarge;->mHideNavButtons:Z

    .line 172
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v2}, Lcom/android/browser/UrlInputView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    iget-boolean v2, p0, Lcom/android/browser/TitleBarXLarge;->mHideNavButtons:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mNavButtons:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mNavButtons:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 175
    .local v0, aw:I
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mNavButtons:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mNavButtons:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 177
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mNavButtons:Landroid/view/View;

    neg-int v3, v0

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 184
    .end local v0           #aw:I
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-boolean v2, p0, Lcom/android/browser/TitleBarXLarge;->mHideNavButtons:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mNavButtons:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 179
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mNavButtons:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mNavButtons:Landroid/view/View;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 181
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mNavButtons:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 295
    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->needsUpdate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/browser/TitleBarXLarge;->setFocusState(Z)V

    .line 297
    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mUrlContainer:Landroid/view/View;

    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    :cond_1
    if-eqz p2, :cond_4

    .line 301
    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->forceIme()V

    .line 302
    iget-boolean v1, p0, Lcom/android/browser/TitleBarXLarge;->mInVoiceMode:Z

    if-eqz v1, :cond_2

    .line 303
    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->forceFilter()V

    .line 319
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->clearNeedsUpdate()V

    .line 320
    return-void

    .line 297
    :cond_3
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mUnfocusDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 305
    :cond_4
    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->needsUpdate()Z

    move-result v1

    if-nez v1, :cond_2

    .line 306
    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->dismissDropDown()V

    .line 307
    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->hideIME()V

    .line 308
    iget-boolean v1, p0, Lcom/android/browser/TitleBarXLarge;->mUseQuickControls:Z

    if-eqz v1, :cond_5

    .line 309
    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v1}, Lcom/android/browser/XLargeUi;->hideTitleBar()V

    .line 312
    :cond_5
    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 313
    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 314
    .local v0, currentTab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_2

    .line 315
    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_1
.end method

.method public onTextChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "newText"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/browser/TitleBarXLarge;->updateSearchMode(Z)V

    .line 527
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/TitleBarXLarge;->setInVoiceMode(ZLjava/util/List;)V

    .line 529
    :cond_0
    return-void
.end method

.method registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0, p1}, Lcom/android/browser/UrlInputView;->registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V

    .line 584
    return-void
.end method

.method public setCurrentUrlIsBookmark(Z)V
    .locals 1
    .parameter "isBookmark"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mStar:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 325
    return-void
.end method

.method setDisplayTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/android/browser/TitleBarXLarge;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;Z)V

    .line 517
    :cond_0
    return-void
.end method

.method setFavicon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 420
    return-void
.end method

.method public setInVoiceMode(Z)V
    .locals 1
    .parameter "voicemode"

    .prologue
    .line 535
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/TitleBarXLarge;->setInVoiceMode(ZLjava/util/List;)V

    .line 536
    return-void
.end method

.method public setInVoiceMode(ZLjava/util/List;)V
    .locals 2
    .parameter "voicemode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 539
    .local p2, voiceResults:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-boolean p1, p0, Lcom/android/browser/TitleBarXLarge;->mInVoiceMode:Z

    .line 540
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0, p2}, Lcom/android/browser/UrlInputView;->setVoiceResults(Ljava/util/List;)V

    .line 541
    if-eqz p1, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUrlIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 544
    :cond_0
    return-void
.end method

.method setIncognitoMode(Z)V
    .locals 1
    .parameter "incognito"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0, p1}, Lcom/android/browser/UrlInputView;->setIncognitoMode(Z)V

    .line 549
    return-void
.end method

.method setProgress(I)V
    .locals 5
    .parameter "newProgress"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 476
    iget-boolean v1, p0, Lcom/android/browser/TitleBarXLarge;->mUseQuickControls:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/browser/TitleBarXLarge;->isEditingUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v4

    .line 477
    .local v0, blockvisuals:Z
    :goto_0
    const/16 v1, 0x64

    if-lt p1, v1, :cond_2

    .line 478
    if-nez v0, :cond_0

    .line 479
    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mProgressView:Lcom/android/browser/PageProgressView;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Lcom/android/browser/PageProgressView;->setProgress(I)V

    .line 480
    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mProgressView:Lcom/android/browser/PageProgressView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/browser/PageProgressView;->setVisibility(I)V

    .line 481
    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mStopButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mReloadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 483
    :cond_0
    iput-boolean v3, p0, Lcom/android/browser/TitleBarXLarge;->mInLoad:Z

    .line 495
    :goto_1
    return-void

    .end local v0           #blockvisuals:Z
    :cond_1
    move v0, v3

    .line 476
    goto :goto_0

    .line 485
    .restart local v0       #blockvisuals:Z
    :cond_2
    iget-boolean v1, p0, Lcom/android/browser/TitleBarXLarge;->mInLoad:Z

    if-nez v1, :cond_4

    .line 486
    if-nez v0, :cond_3

    .line 487
    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mProgressView:Lcom/android/browser/PageProgressView;

    invoke-virtual {v1, v3}, Lcom/android/browser/PageProgressView;->setVisibility(I)V

    .line 488
    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mStopButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mStopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 490
    :cond_3
    iput-boolean v4, p0, Lcom/android/browser/TitleBarXLarge;->mInLoad:Z

    .line 492
    :cond_4
    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mProgressView:Lcom/android/browser/PageProgressView;

    mul-int/lit16 v2, p1, 0x2710

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/browser/PageProgressView;->setProgress(I)V

    goto :goto_1
.end method

.method setShowProgressOnly(Z)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 285
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/TitleBarXLarge;->inAutoLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method setUseQuickControls(Z)V
    .locals 1
    .parameter "useQuickControls"

    .prologue
    .line 280
    iput-boolean p1, p0, Lcom/android/browser/TitleBarXLarge;->mUseQuickControls:Z

    .line 281
    invoke-direct {p0}, Lcom/android/browser/TitleBarXLarge;->makeLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/TitleBarXLarge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    return-void
.end method

.method startEditingUrl(Z)V
    .locals 2
    .parameter "clearInput"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iget-boolean v0, p0, Lcom/android/browser/TitleBarXLarge;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mProgressView:Lcom/android/browser/PageProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/browser/PageProgressView;->setVisibility(I)V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->requestFocus()Z

    .line 340
    :cond_1
    if-eqz p1, :cond_3

    .line 341
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :cond_2
    :goto_0
    return-void

    .line 342
    :cond_3
    iget-boolean v0, p0, Lcom/android/browser/TitleBarXLarge;->mInVoiceMode:Z

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->showDropDown()V

    goto :goto_0
.end method

.method stopEditingUrl()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->clearFocus()V

    .line 353
    return-void
.end method

.method updateAutoLogin(Lcom/android/browser/Tab;Z)V
    .locals 8
    .parameter "tab"
    .parameter "animate"

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 199
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getDeviceAccountLogin()Lcom/android/browser/DeviceAccountLogin;

    move-result-object v0

    .line 200
    .local v0, login:Lcom/android/browser/DeviceAccountLogin;
    if-eqz v0, :cond_2

    .line 201
    iput-object v0, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginHandler:Lcom/android/browser/DeviceAccountLogin;

    .line 202
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLogin:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 203
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mContext:Landroid/content/Context;

    const v3, 0x103006e

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 205
    .local v1, wrapper:Landroid/view/ContextThemeWrapper;
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-virtual {v0}, Lcom/android/browser/DeviceAccountLogin;->getAccountNames()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAccountsAdapter:Landroid/widget/ArrayAdapter;

    .line 207
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAccountsAdapter:Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 209
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginAccount:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/browser/TitleBarXLarge;->mAccountsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 210
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginAccount:Landroid/widget/Spinner;

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 211
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginAccount:Landroid/widget/Spinner;

    invoke-virtual {v2, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 212
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginLogin:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 213
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 214
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginError:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    invoke-virtual {v0}, Lcom/android/browser/DeviceAccountLogin;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 228
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 217
    :pswitch_0
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginAccount:Landroid/widget/Spinner;

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 218
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginLogin:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 219
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 230
    :goto_0
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/browser/TitleBarXLarge;->mUseQuickControls:Z

    if-eqz v2, :cond_1

    .line 231
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v2}, Lcom/android/browser/XLargeUi;->showTitleBar()V

    .line 253
    .end local v1           #wrapper:Landroid/view/ContextThemeWrapper;
    :cond_0
    :goto_1
    return-void

    .line 222
    .restart local v1       #wrapper:Landroid/view/ContextThemeWrapper;
    :pswitch_2
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 223
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginError:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 233
    :cond_1
    if-eqz p2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLogin:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/browser/TitleBarXLarge;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f05

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 239
    .end local v1           #wrapper:Landroid/view/ContextThemeWrapper;
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLoginHandler:Lcom/android/browser/DeviceAccountLogin;

    .line 240
    iget-boolean v2, p0, Lcom/android/browser/TitleBarXLarge;->mUseQuickControls:Z

    if-eqz v2, :cond_3

    .line 241
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v2}, Lcom/android/browser/XLargeUi;->hideTitleBar()V

    .line 242
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLogin:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v2}, Lcom/android/browser/XLargeUi;->refreshWebView()V

    goto :goto_1

    .line 245
    :cond_3
    if-eqz p2, :cond_4

    .line 246
    invoke-direct {p0}, Lcom/android/browser/TitleBarXLarge;->hideAutoLogin()V

    goto :goto_1

    .line 247
    :cond_4
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLogin:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_0

    .line 248
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mAutoLogin:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v2, p0, Lcom/android/browser/TitleBarXLarge;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v2}, Lcom/android/browser/XLargeUi;->refreshWebView()V

    goto :goto_1

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method updateNavigationState(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 188
    .local v0, web:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f020025

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 192
    iget-object v1, p0, Lcom/android/browser/TitleBarXLarge;->mForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f02003a

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 196
    :cond_0
    return-void

    .line 189
    :cond_1
    const v2, 0x7f020023

    goto :goto_0

    .line 192
    :cond_2
    const v2, 0x7f020039

    goto :goto_1
.end method
