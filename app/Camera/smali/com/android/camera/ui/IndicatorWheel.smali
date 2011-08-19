.class public Lcom/android/camera/ui/IndicatorWheel;
.super Landroid/view/ViewGroup;
.source "IndicatorWheel.java"

# interfaces
.implements Lcom/android/camera/ui/BasicSettingPopup$Listener;
.implements Lcom/android/camera/ui/OtherSettingsPopup$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/IndicatorWheel$Listener;
    }
.end annotation


# instance fields
.field private final DISABLED_COLOR:I

.field private final HIGHLIGHT_COLOR:I

.field private final TIME_LAPSE_ARC_COLOR:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBackgroundRect:Landroid/graphics/RectF;

.field private mBasicSettingPopups:[Lcom/android/camera/ui/BasicSettingPopup;

.field private mCenterX:I

.field private mCenterY:I

.field private mContext:Landroid/content/Context;

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mJustDeselectedIndex:I

.field private mListener:Lcom/android/camera/ui/IndicatorWheel$Listener;

.field private mNumberOfFrames:J

.field private mOtherSettingsPopup:Lcom/android/camera/ui/OtherSettingsPopup;

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferenceKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevAnimatingView:Landroid/view/View;

.field private mRecordingStartTime:J

.field private mSectorInitialRadians:[D

.field private mSelectedIndex:I

.field private mShutterButton:Landroid/view/View;

.field private mShutterButtonRadius:D

.field private mStrokeWidth:I

.field private mTimeLapseInterval:I

.field private mWheelRadius:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, -0x1

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const/16 v1, 0x3c

    iput v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mStrokeWidth:I

    .line 74
    iput v2, p0, Lcom/android/camera/ui/IndicatorWheel;->mSelectedIndex:I

    .line 78
    iput v2, p0, Lcom/android/camera/ui/IndicatorWheel;->mJustDeselectedIndex:I

    .line 82
    iput-wide v3, p0, Lcom/android/camera/ui/IndicatorWheel;->mRecordingStartTime:J

    .line 83
    iput-wide v3, p0, Lcom/android/camera/ui/IndicatorWheel;->mNumberOfFrames:J

    .line 107
    iput-object p1, p0, Lcom/android/camera/ui/IndicatorWheel;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/IndicatorWheel;->HIGHLIGHT_COLOR:I

    .line 110
    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/IndicatorWheel;->DISABLED_COLOR:I

    .line 111
    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/IndicatorWheel;->TIME_LAPSE_ARC_COLOR:I

    .line 112
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/IndicatorWheel;->setWillNotDraw(Z)V

    .line 114
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 115
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mBackgroundRect:Landroid/graphics/RectF;

    .line 120
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f05

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mFadeIn:Landroid/view/animation/Animation;

    .line 121
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mContext:Landroid/content/Context;

    const v2, 0x7f050003

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mFadeOut:Landroid/view/animation/Animation;

    .line 122
    return-void
.end method

.method private addOtherSettingIndicator(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 438
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 439
    .local v0, b:Landroid/widget/ImageView;
    const v1, 0x7f02007d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 440
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 441
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/IndicatorWheel;->addView(Landroid/view/View;)V

    .line 442
    return-void
.end method

.method private initializeOtherSettingPopup()V
    .locals 4

    .prologue
    .line 505
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorWheel;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 507
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorWheel;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 508
    .local v1, root:Landroid/view/ViewGroup;
    const v2, 0x7f040007

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/OtherSettingsPopup;

    iput-object v2, p0, Lcom/android/camera/ui/IndicatorWheel;->mOtherSettingsPopup:Lcom/android/camera/ui/OtherSettingsPopup;

    .line 510
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorWheel;->mOtherSettingsPopup:Lcom/android/camera/ui/OtherSettingsPopup;

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/OtherSettingsPopup;->setOtherSettingChangedListener(Lcom/android/camera/ui/OtherSettingsPopup$Listener;)V

    .line 511
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorWheel;->mOtherSettingsPopup:Lcom/android/camera/ui/OtherSettingsPopup;

    iget-object v3, p0, Lcom/android/camera/ui/IndicatorWheel;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/OtherSettingsPopup;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 512
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorWheel;->mOtherSettingsPopup:Lcom/android/camera/ui/OtherSettingsPopup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 513
    return-void
.end method

.method private initializeSettingPopup(I)V
    .locals 6
    .parameter "index"

    .prologue
    .line 490
    iget-object v5, p0, Lcom/android/camera/ui/IndicatorWheel;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/camera/ui/IndicatorWheel;->mPreferenceKeys:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/IconListPreference;

    .line 493
    .local v2, pref:Lcom/android/camera/IconListPreference;
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorWheel;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 495
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorWheel;->getRootView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 496
    .local v3, root:Landroid/view/ViewGroup;
    const v4, 0x7f040001

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/BasicSettingPopup;

    .line 498
    .local v1, popup:Lcom/android/camera/ui/BasicSettingPopup;
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorWheel;->mBasicSettingPopups:[Lcom/android/camera/ui/BasicSettingPopup;

    aput-object v1, v4, p1

    .line 499
    invoke-virtual {v1, p0}, Lcom/android/camera/ui/BasicSettingPopup;->setSettingChangedListener(Lcom/android/camera/ui/BasicSettingPopup$Listener;)V

    .line 500
    invoke-virtual {v1, v2}, Lcom/android/camera/ui/BasicSettingPopup;->initialize(Lcom/android/camera/IconListPreference;)V

    .line 501
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 502
    return-void
.end method

.method private setEnabled(Landroid/widget/ImageView;Z)V
    .locals 2
    .parameter "view"
    .parameter "enabled"

    .prologue
    .line 412
    instance-of v1, p1, Lcom/android/camera/ui/IndicatorButton;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/camera/ui/IndicatorButton;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/camera/ui/IndicatorButton;->isOverridden()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    const/4 p2, 0x0

    .line 418
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v1

    xor-int/2addr v1, p2

    if-eqz v1, :cond_1

    .line 419
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 420
    if-eqz p2, :cond_2

    .line 421
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 426
    :cond_1
    :goto_0
    return-void

    .line 423
    :cond_2
    iget v1, p0, Lcom/android/camera/ui/IndicatorWheel;->DISABLED_COLOR:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0
.end method

.method private setHighlight(IZ)V
    .locals 3
    .parameter "index"
    .parameter "enabled"

    .prologue
    .line 392
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorWheel;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/IndicatorWheel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 394
    .local v0, child:Landroid/widget/ImageView;
    if-eqz p2, :cond_2

    .line 395
    iget v1, p0, Lcom/android/camera/ui/IndicatorWheel;->HIGHLIGHT_COLOR:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 397
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0
.end method

.method private showSettingPopup(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 516
    iget v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mSelectedIndex:I

    if-ne p1, v1, :cond_0

    .line 539
    :goto_0
    return-void

    .line 518
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mBasicSettingPopups:[Lcom/android/camera/ui/BasicSettingPopup;

    array-length v1, v1

    if-ge p1, v1, :cond_3

    .line 519
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mBasicSettingPopups:[Lcom/android/camera/ui/BasicSettingPopup;

    aget-object v1, v1, p1

    if-nez v1, :cond_1

    .line 520
    invoke-direct {p0, p1}, Lcom/android/camera/ui/IndicatorWheel;->initializeSettingPopup(I)V

    .line 527
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mPrevAnimatingView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mPrevAnimatingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 528
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mBasicSettingPopups:[Lcom/android/camera/ui/BasicSettingPopup;

    array-length v1, v1

    if-ne p1, v1, :cond_4

    .line 529
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorWheel;->mOtherSettingsPopup:Lcom/android/camera/ui/OtherSettingsPopup;

    .line 533
    .local v0, popup:Landroid/view/View;
    :goto_2
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 534
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 535
    iput-object v0, p0, Lcom/android/camera/ui/IndicatorWheel;->mPrevAnimatingView:Landroid/view/View;

    .line 536
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/camera/ui/IndicatorWheel;->setHighlight(IZ)V

    .line 537
    iput p1, p0, Lcom/android/camera/ui/IndicatorWheel;->mSelectedIndex:I

    .line 538
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorWheel;->invalidate()V

    goto :goto_0

    .line 522
    .end local v0           #popup:Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mOtherSettingsPopup:Lcom/android/camera/ui/OtherSettingsPopup;

    if-nez v1, :cond_1

    .line 523
    invoke-direct {p0}, Lcom/android/camera/ui/IndicatorWheel;->initializeOtherSettingPopup()V

    goto :goto_1

    .line 531
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mBasicSettingPopups:[Lcom/android/camera/ui/BasicSettingPopup;

    aget-object v0, v1, p1

    .restart local v0       #popup:Landroid/view/View;
    goto :goto_2
.end method


# virtual methods
.method protected addIndicator(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "group"
    .parameter "key"

    .prologue
    .line 430
    invoke-virtual {p2, p3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    .line 431
    .local v1, pref:Lcom/android/camera/IconListPreference;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 434
    :goto_0
    return v2

    .line 432
    :cond_0
    new-instance v0, Lcom/android/camera/ui/IndicatorButton;

    invoke-direct {v0, p1, v1}, Lcom/android/camera/ui/IndicatorButton;-><init>(Landroid/content/Context;Lcom/android/camera/IconListPreference;)V

    .line 433
    .local v0, b:Lcom/android/camera/ui/IndicatorButton;
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/IndicatorWheel;->addView(Landroid/view/View;)V

    .line 434
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public dismissSettingPopup()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 542
    iget v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mSelectedIndex:I

    if-ltz v1, :cond_2

    .line 544
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mPrevAnimatingView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mPrevAnimatingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 545
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mSelectedIndex:I

    iget-object v2, p0, Lcom/android/camera/ui/IndicatorWheel;->mBasicSettingPopups:[Lcom/android/camera/ui/BasicSettingPopup;

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 546
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorWheel;->mOtherSettingsPopup:Lcom/android/camera/ui/OtherSettingsPopup;

    .line 550
    .local v0, popup:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 551
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 552
    iput-object v0, p0, Lcom/android/camera/ui/IndicatorWheel;->mPrevAnimatingView:Landroid/view/View;

    .line 553
    iget v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mSelectedIndex:I

    invoke-direct {p0, v1, v3}, Lcom/android/camera/ui/IndicatorWheel;->setHighlight(IZ)V

    .line 554
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mSelectedIndex:I

    .line 555
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorWheel;->invalidate()V

    .line 556
    const/4 v1, 0x1

    .line 558
    .end local v0           #popup:Landroid/view/View;
    :goto_1
    return v1

    .line 548
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mBasicSettingPopups:[Lcom/android/camera/ui/BasicSettingPopup;

    iget v2, p0, Lcom/android/camera/ui/IndicatorWheel;->mSelectedIndex:I

    aget-object v0, v1, v2

    .restart local v0       #popup:Landroid/view/View;
    goto :goto_0

    .end local v0           #popup:Landroid/view/View;
    :cond_2
    move v1, v3

    .line 558
    goto :goto_1
.end method

.method public getActivePopupWindow()Landroid/view/View;
    .locals 2

    .prologue
    .line 562
    iget v0, p0, Lcom/android/camera/ui/IndicatorWheel;->mSelectedIndex:I

    if-ltz v0, :cond_1

    .line 563
    iget v0, p0, Lcom/android/camera/ui/IndicatorWheel;->mSelectedIndex:I

    iget-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mBasicSettingPopups:[Lcom/android/camera/ui/BasicSettingPopup;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorWheel;->mOtherSettingsPopup:Lcom/android/camera/ui/OtherSettingsPopup;

    .line 569
    :goto_0
    return-object v0

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorWheel;->mBasicSettingPopups:[Lcom/android/camera/ui/BasicSettingPopup;

    iget v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mSelectedIndex:I

    aget-object v0, v0, v1

    goto :goto_0

    .line 569
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;Z)V
    .locals 3
    .parameter "context"
    .parameter "group"
    .parameter "keys"
    .parameter "enableOtherSettings"

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorWheel;->dismissSettingPopup()Z

    .line 448
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorWheel;->removeIndicators()V

    .line 449
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mOtherSettingsPopup:Lcom/android/camera/ui/OtherSettingsPopup;

    .line 450
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mSelectedIndex:I

    .line 451
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mPreferenceKeys:Ljava/util/ArrayList;

    .line 454
    iput-object p2, p0, Lcom/android/camera/ui/IndicatorWheel;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 455
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 456
    aget-object v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/ui/IndicatorWheel;->addIndicator(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mPreferenceKeys:Ljava/util/ArrayList;

    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mPreferenceKeys:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/camera/ui/BasicSettingPopup;

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mBasicSettingPopups:[Lcom/android/camera/ui/BasicSettingPopup;

    .line 462
    if-eqz p4, :cond_2

    .line 463
    invoke-direct {p0, p1}, Lcom/android/camera/ui/IndicatorWheel;->addOtherSettingIndicator(Landroid/content/Context;)V

    .line 465
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorWheel;->requestLayout()V

    .line 466
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .parameter "canvas"

    .prologue
    .line 324
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mStrokeWidth:I

    move v3, v0

    int-to-float v3, v3

    const/high16 v4, 0x3f00

    mul-float v11, v3, v4

    .line 325
    .local v11, delta:F
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mWheelRadius:D

    move-wide v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mStrokeWidth:I

    move v5, v0

    int-to-double v5, v5

    const-wide/high16 v7, 0x3fe0

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x4018

    add-double/2addr v3, v5

    move-wide v0, v3

    double-to-float v0, v0

    move/from16 v16, v0

    .line 326
    .local v16, radius:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mBackgroundRect:Landroid/graphics/RectF;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mCenterX:I

    move v4, v0

    int-to-float v4, v4

    sub-float v4, v4, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mCenterY:I

    move v5, v0

    int-to-float v5, v5

    sub-float v5, v5, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mCenterX:I

    move v6, v0

    int-to-float v6, v6

    add-float v6, v6, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mCenterY:I

    move v7, v0

    int-to-float v7, v7

    add-float v7, v7, v16

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 330
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mSelectedIndex:I

    move v3, v0

    if-ltz v3, :cond_0

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/IndicatorWheel;->getChildCount()I

    move-result v9

    .line 332
    .local v9, count:I
    const/high16 v12, 0x42b4

    .line 333
    .local v12, initialDegrees:F
    const/4 v3, 0x2

    if-gt v9, v3, :cond_2

    const/4 v3, 0x0

    move v13, v3

    .line 334
    .local v13, intervalDegrees:F
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mSelectedIndex:I

    move v3, v0

    int-to-float v3, v3

    mul-float/2addr v3, v13

    add-float v10, v12, v3

    .line 335
    .local v10, degree:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v3, v0

    const/high16 v4, 0x4080

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->HIGHLIGHT_COLOR:I

    move v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mBackgroundRect:Landroid/graphics/RectF;

    move-object v4, v0

    neg-float v3, v10

    const/high16 v5, 0x4170

    sub-float v5, v3, v5

    const/high16 v6, 0x41f0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 343
    .end local v9           #count:I
    .end local v10           #degree:F
    .end local v12           #initialDegrees:F
    .end local v13           #intervalDegrees:F
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mTimeLapseInterval:I

    move v3, v0

    if-eqz v3, :cond_1

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mBackgroundRect:Landroid/graphics/RectF;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mCenterX:I

    move v4, v0

    int-to-double v4, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mShutterButtonRadius:D

    move-wide v6, v0

    sub-double/2addr v4, v6

    double-to-float v4, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mCenterY:I

    move v5, v0

    int-to-double v5, v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mShutterButtonRadius:D

    move-wide v7, v0

    sub-double/2addr v5, v7

    double-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mCenterX:I

    move v6, v0

    int-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mShutterButtonRadius:D

    move-wide v8, v0

    add-double/2addr v6, v8

    double-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mCenterY:I

    move v7, v0

    int-to-double v7, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mShutterButtonRadius:D

    move-wide v9, v0

    add-double/2addr v7, v9

    double-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mBackgroundRect:Landroid/graphics/RectF;

    move-object v3, v0

    const/high16 v4, 0x4040

    const/high16 v5, 0x4040

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v3, v0

    const/high16 v4, 0x40c0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->TIME_LAPSE_ARC_COLOR:I

    move v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 355
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mRecordingStartTime:J

    move-wide v5, v0

    sub-long v17, v3, v5

    .line 356
    .local v17, timeDelta:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mTimeLapseInterval:I

    move v3, v0

    int-to-long v3, v3

    div-long v14, v17, v3

    .line 358
    .local v14, numberOfFrames:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mNumberOfFrames:J

    move-wide v3, v0

    cmp-long v3, v14, v3

    if-lez v3, :cond_3

    .line 361
    const/high16 v6, 0x43b4

    .line 362
    .local v6, sweepAngle:F
    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/camera/ui/IndicatorWheel;->mNumberOfFrames:J

    .line 367
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mBackgroundRect:Landroid/graphics/RectF;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/IndicatorWheel;->invalidate()V

    .line 371
    .end local v6           #sweepAngle:F
    .end local v14           #numberOfFrames:J
    .end local v17           #timeDelta:J
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 372
    return-void

    .line 333
    .restart local v9       #count:I
    .restart local v12       #initialDegrees:F
    :cond_2
    const/high16 v3, 0x4334

    const/4 v4, 0x2

    sub-int v4, v9, v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    move v13, v3

    goto/16 :goto_0

    .line 364
    .end local v9           #count:I
    .end local v12           #initialDegrees:F
    .restart local v14       #numberOfFrames:J
    .restart local v17       #timeDelta:J
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mTimeLapseInterval:I

    move v3, v0

    int-to-long v3, v3

    rem-long v3, v17, v3

    long-to-float v3, v3

    const/high16 v4, 0x43b4

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mTimeLapseInterval:I

    move v4, v0

    int-to-float v4, v4

    div-float v6, v3, v4

    .restart local v6       #sweepAngle:F
    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/IndicatorWheel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorWheel;->mShutterButton:Landroid/view/View;

    .line 213
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorWheel;->invalidate()V

    .line 214
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 129
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 130
    .local v3, y:F
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorWheel;->mShutterButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v0

    .line 131
    .local v0, shutterButtonX:F
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorWheel;->mShutterButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v1

    .line 132
    .local v1, shutterButtonY:F
    cmpl-float v4, v2, v0

    if-ltz v4, :cond_0

    cmpl-float v4, v3, v1

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/ui/IndicatorWheel;->mShutterButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/ui/IndicatorWheel;->mShutterButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorWheel;->dismissSettingPopup()Z

    .line 137
    .end local v0           #shutterButtonX:F
    .end local v1           #shutterButtonY:F
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 30
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/IndicatorWheel;->getChildCount()I

    move-result v5

    .line 260
    .local v5, count:I
    if-nez v5, :cond_1

    .line 307
    :cond_0
    return-void

    .line 263
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mShutterButton:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 264
    .local v19, shutterButtonWidth:I
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4000

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/camera/ui/IndicatorWheel;->mShutterButtonRadius:D

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mShutterButton:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    .line 266
    .local v18, shutterButtonHeight:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mShutterButtonRadius:D

    move-wide/from16 v24, v0

    const-wide v26, 0x3ff0cccccccccccdL

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/IndicatorWheel;->mStrokeWidth:I

    .line 267
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mShutterButtonRadius:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mStrokeWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3feae147ae147ae1L

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move v13, v0

    .line 271
    .local v13, innerRadius:I
    sub-int v24, p4, p2

    const/16 v25, 0x40

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/IndicatorWheel;->mCenterX:I

    .line 272
    sub-int v24, p5, p3

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/IndicatorWheel;->mCenterY:I

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mShutterButton:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mCenterX:I

    move/from16 v25, v0

    div-int/lit8 v26, v19, 0x2

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mCenterY:I

    move/from16 v26, v0

    div-int/lit8 v27, v18, 0x2

    sub-int v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mCenterX:I

    move/from16 v27, v0

    div-int/lit8 v28, v19, 0x2

    add-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mCenterY:I

    move/from16 v28, v0

    div-int/lit8 v29, v18, 0x2

    add-int v28, v28, v29

    invoke-virtual/range {v24 .. v28}, Landroid/view/View;->layout(IIII)V

    .line 280
    const/16 v24, 0x1

    move v0, v5

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 281
    move v0, v13

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mStrokeWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fe0

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/camera/ui/IndicatorWheel;->mWheelRadius:D

    .line 282
    const/16 v24, 0x2

    move v0, v5

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    const-wide v24, 0x4056800000000000L

    move-wide/from16 v14, v24

    .line 283
    .local v14, intervalDegrees:D
    :goto_0
    const-wide v11, 0x4056800000000000L

    .line 284
    .local v11, initialDegrees:D
    const/4 v10, 0x0

    .line 285
    .local v10, index:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v5, :cond_4

    .line 286
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorWheel;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 287
    .local v20, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mShutterButton:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 285
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 282
    .end local v9           #i:I
    .end local v10           #index:I
    .end local v11           #initialDegrees:D
    .end local v14           #intervalDegrees:D
    .end local v20           #view:Landroid/view/View;
    :cond_2
    const-wide v24, 0x4066800000000000L

    const/16 v26, 0x2

    sub-int v26, v5, v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    move-wide/from16 v14, v24

    goto :goto_0

    .line 288
    .restart local v9       #i:I
    .restart local v10       #index:I
    .restart local v11       #initialDegrees:D
    .restart local v14       #intervalDegrees:D
    .restart local v20       #view:Landroid/view/View;
    :cond_3
    move v0, v10

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v14

    add-double v6, v11, v24

    .line 289
    .local v6, degree:D
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .line 290
    .local v16, radian:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mCenterX:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mWheelRadius:D

    move-wide/from16 v25, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    mul-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    add-int v22, v24, v25

    .line 291
    .local v22, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mCenterY:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mWheelRadius:D

    move-wide/from16 v25, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    mul-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    sub-int v23, v24, v25

    .line 292
    .local v23, y:I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 293
    .local v21, width:I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 294
    .local v8, height:I
    div-int/lit8 v24, v21, 0x2

    sub-int v24, v22, v24

    div-int/lit8 v25, v8, 0x2

    sub-int v25, v23, v25

    div-int/lit8 v26, v21, 0x2

    add-int v26, v26, v22

    div-int/lit8 v27, v8, 0x2

    add-int v27, v27, v23

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 296
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 300
    .end local v6           #degree:D
    .end local v8           #height:I
    .end local v16           #radian:D
    .end local v20           #view:Landroid/view/View;
    .end local v21           #width:I
    .end local v22           #x:I
    .end local v23           #y:I
    :cond_4
    move v0, v5

    new-array v0, v0, [D

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/IndicatorWheel;->mSectorInitialRadians:[D

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mSectorInitialRadians:[D

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-wide/high16 v26, 0x4000

    div-double v26, v14, v26

    sub-double v26, v11, v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v26

    aput-wide v26, v24, v25

    .line 303
    const/4 v9, 0x1

    :goto_3
    if-ge v9, v5, :cond_0

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mSectorInitialRadians:[D

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mSectorInitialRadians:[D

    move-object/from16 v25, v0

    const/16 v26, 0x1

    sub-int v26, v9, v26

    aget-wide v25, v25, v26

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v27

    add-double v25, v25, v27

    aput-wide v25, v24, v9

    .line 303
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorWheel;->getChildCount()I

    move-result v0

    .line 228
    .local v0, childCount:I
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 229
    .local v3, freeSpec:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 230
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/IndicatorWheel;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v3, v3}, Landroid/view/View;->measure(II)V

    .line 229
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 234
    :cond_0
    iget-object v9, p0, Lcom/android/camera/ui/IndicatorWheel;->mShutterButton:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    mul-int/lit8 v2, v9, 0x3

    .line 235
    .local v2, desiredWidth:I
    iget-object v9, p0, Lcom/android/camera/ui/IndicatorWheel;->mShutterButton:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-double v9, v9

    const-wide/high16 v11, 0x4012

    mul-double/2addr v9, v11

    double-to-int v9, v9

    add-int/lit8 v1, v9, 0x2

    .line 236
    .local v1, desiredHeight:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 237
    .local v8, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 239
    .local v4, heightMode:I
    if-nez v8, :cond_1

    .line 240
    move v7, v2

    .line 246
    .local v7, measuredWidth:I
    :goto_1
    if-nez v4, :cond_3

    .line 247
    move v6, v1

    .line 253
    .local v6, measuredHeight:I
    :goto_2
    invoke-virtual {p0, v7, v6}, Lcom/android/camera/ui/IndicatorWheel;->setMeasuredDimension(II)V

    .line 254
    return-void

    .line 241
    .end local v6           #measuredHeight:I
    .end local v7           #measuredWidth:I
    :cond_1
    const/high16 v9, -0x8000

    if-ne v8, v9, :cond_2

    .line 242
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .restart local v7       #measuredWidth:I
    goto :goto_1

    .line 244
    .end local v7           #measuredWidth:I
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .restart local v7       #measuredWidth:I
    goto :goto_1

    .line 248
    :cond_3
    const/high16 v9, -0x8000

    if-ne v4, v9, :cond_4

    .line 249
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .restart local v6       #measuredHeight:I
    goto :goto_2

    .line 251
    .end local v6           #measuredHeight:I
    :cond_4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .restart local v6       #measuredHeight:I
    goto :goto_2
.end method

.method public onOtherSettingChanged()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorWheel;->mListener:Lcom/android/camera/ui/IndicatorWheel$Listener;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorWheel;->mListener:Lcom/android/camera/ui/IndicatorWheel$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/IndicatorWheel$Listener;->onSharedPreferenceChanged()V

    .line 472
    :cond_0
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorWheel;->mListener:Lcom/android/camera/ui/IndicatorWheel$Listener;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorWheel;->mListener:Lcom/android/camera/ui/IndicatorWheel$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/IndicatorWheel$Listener;->onRestorePreferencesClicked()V

    .line 478
    :cond_0
    return-void
.end method

.method public onSettingChanged()V
    .locals 2

    .prologue
    .line 482
    iget v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mSelectedIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/IndicatorWheel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/IndicatorButton;

    .line 483
    .local v0, indicator:Lcom/android/camera/ui/IndicatorButton;
    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorButton;->reloadPreference()V

    .line 484
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mListener:Lcom/android/camera/ui/IndicatorWheel$Listener;

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorWheel;->mListener:Lcom/android/camera/ui/IndicatorWheel$Listener;

    invoke-interface {v1}, Lcom/android/camera/ui/IndicatorWheel$Listener;->onSharedPreferenceChanged()V

    .line 487
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "event"

    .prologue
    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/IndicatorWheel;->isEnabled()Z

    move-result v15

    if-nez v15, :cond_0

    const/4 v15, 0x0

    .line 205
    :goto_0
    return v15

    .line 144
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/IndicatorWheel;->getChildCount()I

    move-result v4

    .line 145
    .local v4, count:I
    const/4 v15, 0x1

    if-gt v4, v15, :cond_1

    const/4 v15, 0x0

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 149
    .local v2, action:I
    if-eqz v2, :cond_2

    const/4 v15, 0x2

    if-eq v2, v15, :cond_2

    .line 150
    const/4 v15, 0x0

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mCenterX:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-double v7, v15

    .line 154
    .local v7, dx:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mCenterY:I

    move v15, v0

    int-to-float v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    sub-float v15, v15, v16

    float-to-double v9, v15

    .line 155
    .local v9, dy:D
    mul-double v15, v7, v7

    mul-double v17, v9, v9

    add-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 159
    .local v12, radius:D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mShutterButtonRadius:D

    move-wide v15, v0

    cmpl-double v15, v12, v15

    if-ltz v15, :cond_b

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mWheelRadius:D

    move-wide v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mStrokeWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    add-double v15, v15, v17

    cmpg-double v15, v12, v15

    if-gtz v15, :cond_b

    .line 160
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    .line 161
    .local v5, delta:D
    const-wide/16 v15, 0x0

    cmpg-double v15, v5, v15

    if-gez v15, :cond_3

    const-wide v15, 0x401921fb54442d18L

    add-double/2addr v5, v15

    .line 163
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mSectorInitialRadians:[D

    move-object v15, v0

    const/16 v16, 0x0

    aget-wide v15, v15, v16

    cmpl-double v15, v5, v15

    if-lez v15, :cond_b

    .line 164
    const/4 v11, 0x1

    .local v11, i:I
    :goto_1
    if-ge v11, v4, :cond_b

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mSectorInitialRadians:[D

    move-object v15, v0

    aget-wide v15, v15, v11

    cmpg-double v15, v5, v15

    if-gez v15, :cond_a

    .line 168
    const/4 v15, 0x2

    if-ne v2, v15, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mSelectedIndex:I

    move v15, v0

    const/16 v16, 0x1

    sub-int v16, v11, v16

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 169
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 172
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mSelectedIndex:I

    move v14, v0

    .line 173
    .local v14, selectedIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/IndicatorWheel;->dismissSettingPopup()Z

    .line 176
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorWheel;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 177
    .local v3, child:Landroid/view/View;
    instance-of v15, v3, Lcom/android/camera/ui/IndicatorButton;

    if-eqz v15, :cond_6

    .line 178
    check-cast v3, Lcom/android/camera/ui/IndicatorButton;

    .end local v3           #child:Landroid/view/View;
    invoke-virtual {v3}, Lcom/android/camera/ui/IndicatorButton;->isOverridden()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 181
    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mListener:Lcom/android/camera/ui/IndicatorWheel$Listener;

    move-object v15, v0

    if-eqz v15, :cond_5

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mListener:Lcom/android/camera/ui/IndicatorWheel$Listener;

    move-object v15, v0

    invoke-interface {v15}, Lcom/android/camera/ui/IndicatorWheel$Listener;->onOverriddenPreferencesClicked()V

    .line 184
    :cond_5
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 187
    :cond_6
    if-nez v2, :cond_8

    const/4 v15, 0x1

    sub-int v15, v11, v15

    if-ne v14, v15, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mJustDeselectedIndex:I

    move v15, v0

    const/16 v16, 0x1

    sub-int v16, v11, v16

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_8

    .line 190
    const/4 v15, 0x1

    sub-int v15, v11, v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/IndicatorWheel;->mJustDeselectedIndex:I

    .line 198
    :cond_7
    :goto_2
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 192
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorWheel;->mJustDeselectedIndex:I

    move v15, v0

    const/16 v16, 0x1

    sub-int v16, v11, v16

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_9

    const/4 v15, -0x1

    if-ne v14, v15, :cond_7

    if-nez v2, :cond_7

    .line 194
    :cond_9
    const/4 v15, 0x1

    sub-int v15, v11, v15

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/camera/ui/IndicatorWheel;->showSettingPopup(I)V

    .line 195
    const/4 v15, -0x1

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/IndicatorWheel;->mJustDeselectedIndex:I

    goto :goto_2

    .line 164
    .end local v14           #selectedIndex:I
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 203
    .end local v5           #delta:D
    .end local v11           #i:I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/IndicatorWheel;->dismissSettingPopup()Z

    .line 204
    const/4 v15, -0x1

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/IndicatorWheel;->mJustDeselectedIndex:I

    .line 205
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method public overrideSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorWheel;->getChildCount()I

    move-result v1

    .line 377
    .local v1, count:I
    const/4 v3, 0x1

    .local v3, j:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 378
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/IndicatorWheel;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 379
    .local v4, v:Landroid/view/View;
    instance-of v5, v4, Lcom/android/camera/ui/IndicatorButton;

    if-eqz v5, :cond_2

    .line 380
    move-object v0, v4

    check-cast v0, Lcom/android/camera/ui/IndicatorButton;

    move-object v2, v0

    .line 381
    .local v2, indicator:Lcom/android/camera/ui/IndicatorButton;
    invoke-virtual {v2}, Lcom/android/camera/ui/IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 382
    invoke-virtual {v2, p2}, Lcom/android/camera/ui/IndicatorButton;->overrideSettings(Ljava/lang/String;)V

    .line 383
    if-nez p2, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-direct {p0, v2, v5}, Lcom/android/camera/ui/IndicatorWheel;->setEnabled(Landroid/widget/ImageView;Z)V

    .line 388
    .end local v2           #indicator:Lcom/android/camera/ui/IndicatorButton;
    .end local v4           #v:Landroid/view/View;
    :cond_0
    return-void

    .line 383
    .restart local v2       #indicator:Lcom/android/camera/ui/IndicatorButton;
    .restart local v4       #v:Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 377
    .end local v2           #indicator:Lcom/android/camera/ui/IndicatorButton;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 4
    .parameter "keyvalues"

    .prologue
    .line 575
    array-length v3, p1

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 576
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 579
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/IndicatorWheel;->mOtherSettingsPopup:Lcom/android/camera/ui/OtherSettingsPopup;

    if-nez v3, :cond_1

    .line 580
    invoke-direct {p0}, Lcom/android/camera/ui/IndicatorWheel;->initializeOtherSettingPopup()V

    .line 583
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 584
    aget-object v1, p1, v0

    .line 585
    .local v1, key:Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    aget-object v2, p1, v3

    .line 586
    .local v2, value:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/ui/IndicatorWheel;->overrideSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v3, p0, Lcom/android/camera/ui/IndicatorWheel;->mOtherSettingsPopup:Lcom/android/camera/ui/OtherSettingsPopup;

    invoke-virtual {v3, v1, v2}, Lcom/android/camera/ui/OtherSettingsPopup;->overrideSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 589
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public reloadPreferences()V
    .locals 5

    .prologue
    .line 592
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorWheel;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v4}, Lcom/android/camera/PreferenceGroup;->reloadValue()V

    .line 593
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorWheel;->mBasicSettingPopups:[Lcom/android/camera/ui/BasicSettingPopup;

    .local v0, arr$:[Lcom/android/camera/ui/BasicSettingPopup;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 594
    .local v3, popup:Lcom/android/camera/ui/BasicSettingPopup;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/camera/ui/BasicSettingPopup;->reloadPreference()V

    .line 593
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 596
    .end local v3           #popup:Lcom/android/camera/ui/BasicSettingPopup;
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorWheel;->mOtherSettingsPopup:Lcom/android/camera/ui/OtherSettingsPopup;

    if-eqz v4, :cond_2

    .line 597
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorWheel;->mOtherSettingsPopup:Lcom/android/camera/ui/OtherSettingsPopup;

    invoke-virtual {v4}, Lcom/android/camera/ui/OtherSettingsPopup;->reloadPreference()V

    .line 599
    :cond_2
    return-void
.end method

.method public removeIndicators()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 218
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorWheel;->getChildCount()I

    move-result v0

    .line 219
    .local v0, count:I
    if-le v0, v2, :cond_0

    .line 220
    sub-int v1, v0, v2

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/ui/IndicatorWheel;->removeViews(II)V

    .line 222
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 403
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 404
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorWheel;->getChildCount()I

    move-result v0

    .line 405
    .local v0, count:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 406
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/IndicatorWheel;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-direct {p0, v2, p1}, Lcom/android/camera/ui/IndicatorWheel;->setEnabled(Landroid/widget/ImageView;Z)V

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/camera/ui/IndicatorWheel$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/camera/ui/IndicatorWheel;->mListener:Lcom/android/camera/ui/IndicatorWheel$Listener;

    .line 103
    return-void
.end method

.method public startTimeLapseAnimation(IJ)V
    .locals 2
    .parameter "timeLapseInterval"
    .parameter "startTime"

    .prologue
    .line 310
    iput p1, p0, Lcom/android/camera/ui/IndicatorWheel;->mTimeLapseInterval:I

    .line 311
    iput-wide p2, p0, Lcom/android/camera/ui/IndicatorWheel;->mRecordingStartTime:J

    .line 312
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/ui/IndicatorWheel;->mNumberOfFrames:J

    .line 313
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorWheel;->invalidate()V

    .line 314
    return-void
.end method

.method public stopTimeLapseAnimation()V
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/IndicatorWheel;->mTimeLapseInterval:I

    .line 318
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorWheel;->invalidate()V

    .line 319
    return-void
.end method
