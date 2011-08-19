.class public Lcom/android/setupwizard/SetupWizardActivity;
.super Lcom/android/setupwizard/BaseActivity;
.source "SetupWizardActivity.java"

# interfaces
.implements Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private mAccessibilityModeEnabled:Z

.field private mAndroidAgreement:Landroid/widget/TextView;

.field protected mAndroidLogo:Landroid/view/View;

.field protected mChangeLanguageButton:Landroid/widget/Button;

.field protected mChangeLanguageSpinner:Landroid/widget/Spinner;

.field private mClearAccountsDone:Z

.field private mClickAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field protected mEmergencyCallButton:Landroid/view/View;

.field private mHandAnimation:Landroid/view/animation/AnimationSet;

.field private mHandImage:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mLibrary:Landroid/gesture/GestureLibrary;

.field private mLocaleAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaPlayer:Landroid/media/MediaPlayer;

.field protected mOverrideExit:Z

.field private mStartAnimRunnable:Ljava/lang/Runnable;

.field private mStartButton:Landroid/widget/Button;

.field private mWelcomeTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/setupwizard/BaseActivity;-><init>()V

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandler:Landroid/os/Handler;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mClearAccountsDone:Z

    .line 106
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 110
    new-instance v0, Lcom/android/setupwizard/SetupWizardActivity$1;

    invoke-direct {v0, p0}, Lcom/android/setupwizard/SetupWizardActivity$1;-><init>(Lcom/android/setupwizard/SetupWizardActivity;)V

    iput-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mStartAnimRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/setupwizard/SetupWizardActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/setupwizard/SetupWizardActivity;->startAnimating()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/setupwizard/SetupWizardActivity;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mClickAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/setupwizard/SetupWizardActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mStartAnimRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/setupwizard/SetupWizardActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/setupwizard/SetupWizardActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method private enableAllAccessibilityServices()V
    .locals 9

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/android/setupwizard/SetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 509
    .local v4, resolver:Landroid/content/ContentResolver;
    const-string v7, "accessibility_enabled"

    const/4 v8, 0x1

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 512
    const-string v7, "accessibility"

    invoke-virtual {p0, v7}, Lcom/android/setupwizard/SetupWizardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 514
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    .local v1, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityServiceList()Ljava/util/List;

    move-result-object v6

    .line 517
    .local v6, serviceInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ServiceInfo;

    .line 518
    .local v5, serviceInfo:Landroid/content/pm/ServiceInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 519
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    const/16 v7, 0x3a

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 522
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #serviceInfo:Landroid/content/pm/ServiceInfo;
    :cond_0
    const-string v7, "enabled_accessibility_services"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 524
    return-void
.end method

.method private initViews()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 317
    invoke-virtual {p0}, Lcom/android/setupwizard/SetupWizardActivity;->getActivityContentView()Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_5

    .line 318
    invoke-virtual {p0}, Lcom/android/setupwizard/SetupWizardActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 319
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f030007

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 320
    .local v0, contentView:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/setupwizard/SetupWizardActivity;->setContentView(Landroid/view/View;)V

    .line 323
    const v8, 0x7f0d0024

    invoke-virtual {p0, v8}, Lcom/android/setupwizard/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandImage:Landroid/widget/ImageView;

    .line 324
    const v8, 0x7f0d0027

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mStartButton:Landroid/widget/Button;

    .line 326
    const v8, 0x7f0d0023

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mChangeLanguageButton:Landroid/widget/Button;

    .line 327
    const v8, 0x7f0d0026

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mChangeLanguageSpinner:Landroid/widget/Spinner;

    .line 330
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mChangeLanguageButton:Landroid/widget/Button;

    if-eqz v8, :cond_0

    .line 331
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mChangeLanguageButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    invoke-virtual {p0}, Lcom/android/setupwizard/SetupWizardActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-le v8, v13, :cond_0

    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mChangeLanguageSpinner:Landroid/widget/Spinner;

    if-nez v8, :cond_0

    .line 333
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mChangeLanguageButton:Landroid/widget/Button;

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 337
    :cond_0
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mChangeLanguageSpinner:Landroid/widget/Spinner;

    if-eqz v8, :cond_2

    .line 338
    const v8, 0x7f030002

    const v9, 0x7f0d0013

    invoke-static {p0, v8, v9}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v8

    iput-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mLocaleAdapter:Landroid/widget/ArrayAdapter;

    .line 340
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mChangeLanguageSpinner:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/android/setupwizard/SetupWizardActivity;->mLocaleAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 341
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mChangeLanguageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 343
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 344
    .local v1, currentLocale:Ljava/util/Locale;
    const/4 v3, 0x0

    .line 345
    .local v3, index:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mLocaleAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v8}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 346
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mLocaleAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v8, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 347
    .local v5, info:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v5}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 348
    move v3, v2

    .line 352
    .end local v5           #info:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_1
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mChangeLanguageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 356
    .end local v1           #currentLocale:Ljava/util/Locale;
    .end local v2           #i:I
    .end local v3           #index:I
    :cond_2
    const v8, 0x7f0d0020

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mWelcomeTitle:Landroid/widget/TextView;

    .line 358
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mStartButton:Landroid/widget/Button;

    if-eqz v8, :cond_7

    .line 359
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mWelcomeTitle:Landroid/widget/TextView;

    const v9, 0x7f0a0002

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 360
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mChangeLanguageButton:Landroid/widget/Button;

    if-eqz v8, :cond_3

    .line 361
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 362
    .local v6, locale:Ljava/util/Locale;
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mChangeLanguageButton:Landroid/widget/Button;

    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 364
    .end local v6           #locale:Ljava/util/Locale;
    :cond_3
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mStartButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    :goto_1
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandImage:Landroid/widget/ImageView;

    if-eqz v8, :cond_5

    .line 375
    const v8, 0x7f0d001f

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mAndroidLogo:Landroid/view/View;

    .line 376
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mAndroidLogo:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    invoke-virtual {p0}, Lcom/android/setupwizard/SetupWizardActivity;->getProvisioningMode()Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    move-result-object v8

    sget-object v9, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;->REQUIRED:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    if-eq v8, v9, :cond_4

    .line 381
    const v8, 0x7f0d0021

    invoke-virtual {p0, v8}, Lcom/android/setupwizard/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mAndroidAgreement:Landroid/widget/TextView;

    .line 382
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mAndroidAgreement:Landroid/widget/TextView;

    const/16 v9, 0xf

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 383
    const v8, 0x7f0a002d

    invoke-static {p0, v8}, Lcom/android/setupwizard/AgreementDialog;->linkify(Lcom/android/setupwizard/BaseActivity;I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 385
    .local v7, msg:Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mAndroidAgreement:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mAndroidAgreement:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 390
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mAndroidAgreement:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    .end local v7           #msg:Ljava/lang/CharSequence;
    :cond_4
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandImage:Landroid/widget/ImageView;

    const v9, 0x7f020007

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 394
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mClickAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 396
    const/high16 v8, 0x7f04

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    check-cast v8, Landroid/view/animation/AnimationSet;

    iput-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandAnimation:Landroid/view/animation/AnimationSet;

    .line 397
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v8, v13}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    .line 398
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v8, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 399
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v8, v12}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    .line 400
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v8}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/animation/Animation;

    new-instance v9, Lcom/android/setupwizard/SetupWizardActivity$2;

    invoke-direct {v9, p0}, Lcom/android/setupwizard/SetupWizardActivity$2;-><init>(Lcom/android/setupwizard/SetupWizardActivity;)V

    invoke-virtual {v8, v9}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 422
    .end local v0           #contentView:Landroid/view/View;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    :cond_5
    return-void

    .line 345
    .restart local v0       #contentView:Landroid/view/View;
    .restart local v1       #currentLocale:Ljava/util/Locale;
    .restart local v2       #i:I
    .restart local v3       #index:I
    .restart local v4       #inflater:Landroid/view/LayoutInflater;
    .restart local v5       #info:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 366
    .end local v1           #currentLocale:Ljava/util/Locale;
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v5           #info:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_7
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mWelcomeTitle:Landroid/widget/TextView;

    const v9, 0x7f0a0001

    invoke-virtual {p0, v9}, Lcom/android/setupwizard/SetupWizardActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/setupwizard/SetupWizardActivity;->getDeviceName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    const v8, 0x7f0d0022

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mEmergencyCallButton:Landroid/view/View;

    .line 369
    iget-object v8, p0, Lcom/android/setupwizard/SetupWizardActivity;->mEmergencyCallButton:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method

.method private startAnimating()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 460
    :cond_0
    return-void
.end method

.method private stopAnimating()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/setupwizard/SetupWizardActivity;->mStartAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 465
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 467
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mClickAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0, v0}, Lcom/android/setupwizard/SetupWizardActivity;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 471
    :cond_1
    return-void
.end method

.method private stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 494
    if-eqz p1, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/setupwizard/SetupWizardActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/android/setupwizard/SetupWizardActivity$4;-><init>(Lcom/android/setupwizard/SetupWizardActivity;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 502
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mAndroidLogo:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mAndroidLogo:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mStartButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mStartButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/android/setupwizard/SetupWizardActivity;->getTelephonyInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-nez v0, :cond_3

    .line 145
    const-string v0, "SetupWizard"

    const-string v1, "Ignoring touch event because phone interface was null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_2
    :goto_0
    return-void

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 151
    invoke-direct {p0}, Lcom/android/setupwizard/SetupWizardActivity;->stopAnimating()V

    .line 152
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    invoke-virtual {p0}, Lcom/android/setupwizard/SetupWizardActivity;->getActivityContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 161
    :cond_4
    const/16 v0, 0x2711

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizard/SetupWizardActivity;->onPageCompleted(II)V

    goto :goto_0

    .line 162
    :cond_5
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mEmergencyCallButton:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mEmergencyCallButton:Landroid/view/View;

    if-ne p1, v0, :cond_6

    .line 163
    invoke-virtual {p0}, Lcom/android/setupwizard/SetupWizardActivity;->placeEmergencyCall()V

    goto :goto_0

    .line 164
    :cond_6
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mChangeLanguageButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mChangeLanguageButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 165
    invoke-virtual {p0}, Lcom/android/setupwizard/SetupWizardActivity;->changeLanguage()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/android/setupwizard/SetupWizardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 185
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    const-string v4, "firstRun"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 186
    const-string v4, "firstRun"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizard/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 192
    iget-boolean v4, p0, Lcom/android/setupwizard/SetupWizardActivity;->mOverrideExit:Z

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/setupwizard/SetupWizardActivity;->provisioningDisabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 193
    invoke-virtual {p0, v6}, Lcom/android/setupwizard/SetupWizardActivity;->onSetupComplete(Z)V

    .line 219
    :cond_1
    :goto_0
    sget-object v4, Lcom/android/setupwizard/SetupWizardActivity;->mUserData:Ljava/util/HashMap;

    const-string v5, "testMode"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 220
    iget-object v4, p0, Lcom/android/setupwizard/SetupWizardActivity;->mAndroidLogo:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/setupwizard/SetupWizardActivity;->onClick(Landroid/view/View;)V

    .line 225
    :cond_2
    invoke-virtual {p0}, Lcom/android/setupwizard/SetupWizardActivity;->maybeRegisterOtaspPhoneStateListener()V

    .line 228
    const/high16 v4, 0x7f05

    invoke-static {p0, v4}, Landroid/gesture/GestureLibraries;->fromRawResource(Landroid/content/Context;I)Landroid/gesture/GestureLibrary;

    move-result-object v4

    iput-object v4, p0, Lcom/android/setupwizard/SetupWizardActivity;->mLibrary:Landroid/gesture/GestureLibrary;

    .line 229
    iget-object v4, p0, Lcom/android/setupwizard/SetupWizardActivity;->mLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v4}, Landroid/gesture/GestureLibrary;->load()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 232
    iget-object v4, p0, Lcom/android/setupwizard/SetupWizardActivity;->mLibrary:Landroid/gesture/GestureLibrary;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/gesture/GestureLibrary;->setSequenceType(I)V

    .line 233
    const v4, 0x7f0d001e

    invoke-virtual {p0, v4}, Lcom/android/setupwizard/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/gesture/GestureOverlayView;

    .line 234
    .local v1, gestures:Landroid/gesture/GestureOverlayView;
    invoke-virtual {v1, p0}, Landroid/gesture/GestureOverlayView;->addOnGesturePerformedListener(Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;)V

    .line 238
    .end local v1           #gestures:Landroid/gesture/GestureOverlayView;
    :goto_1
    return-void

    .line 199
    :cond_3
    invoke-virtual {p0}, Lcom/android/setupwizard/SetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v0, v7

    .line 201
    .local v0, firstBoot:Z
    :goto_2
    if-nez v0, :cond_5

    if-nez p1, :cond_5

    .line 202
    sget-boolean v4, Lcom/android/setupwizard/SetupWizardActivity;->LOCAL_LOGV:Z

    if-eqz v4, :cond_4

    const-string v4, "SetupWizard"

    const-string v5, "Resetting DEVICE_PROVISIONED FLAG to 0\n"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_4
    invoke-virtual {p0}, Lcom/android/setupwizard/SetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 206
    :cond_5
    invoke-direct {p0}, Lcom/android/setupwizard/SetupWizardActivity;->initViews()V

    .line 209
    invoke-virtual {p0}, Lcom/android/setupwizard/SetupWizardActivity;->disableNotifications()V

    .line 211
    invoke-virtual {p0}, Lcom/android/setupwizard/SetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8

    move v3, v7

    .line 214
    .local v3, provisioned:Z
    :goto_3
    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/android/setupwizard/SetupWizardActivity;->isHomeActivity()Z

    move-result v4

    if-nez v4, :cond_1

    .line 216
    :cond_6
    iput-boolean v7, p0, Lcom/android/setupwizard/SetupWizardActivity;->mClearAccountsDone:Z

    goto :goto_0

    .end local v0           #firstBoot:Z
    .end local v3           #provisioned:Z
    :cond_7
    move v0, v6

    .line 199
    goto :goto_2

    .restart local v0       #firstBoot:Z
    :cond_8
    move v3, v6

    .line 211
    goto :goto_3

    .line 236
    .end local v0           #firstBoot:Z
    :cond_9
    const-string v4, "SetupWizard"

    const-string v5, "Failed to load gesture library."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 263
    invoke-super {p0}, Lcom/android/setupwizard/BaseActivity;->onDestroy()V

    .line 264
    const v0, 0x7f0d001e

    invoke-virtual {p0, v0}, Lcom/android/setupwizard/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/gesture/GestureOverlayView;

    invoke-virtual {v0}, Landroid/gesture/GestureOverlayView;->removeAllOnGestureListeners()V

    .line 265
    invoke-virtual {p0}, Lcom/android/setupwizard/SetupWizardActivity;->maybeUnregisterOtaspPhoneStateListener()V

    .line 266
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 267
    return-void
.end method

.method public onGesturePerformed(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)V
    .locals 9
    .parameter "overlay"
    .parameter "gesture"

    .prologue
    const/4 v8, 0x0

    .line 426
    iget-object v5, p0, Lcom/android/setupwizard/SetupWizardActivity;->mLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v5, p2}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v2

    .line 427
    .local v2, predictions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/Prediction;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 428
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/gesture/Prediction;

    iget-wide v3, v5, Landroid/gesture/Prediction;->score:D

    .line 429
    .local v3, score:D
    const-string v5, "SetupWizard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Gesture detected. score: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-wide/high16 v5, 0x4014

    cmpl-double v5, v3, v5

    if-lez v5, :cond_0

    .line 432
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/gesture/Prediction;

    iget-object v0, v5, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    .line 433
    .local v0, action:Ljava/lang/String;
    const-string v5, "enable"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/setupwizard/SetupWizardActivity;->mAccessibilityModeEnabled:Z

    if-nez v5, :cond_1

    .line 434
    const-string v5, "SetupWizard"

    const-string v6, "Accessibility mode enabled."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-direct {p0}, Lcom/android/setupwizard/SetupWizardActivity;->enableAllAccessibilityServices()V

    .line 436
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/setupwizard/SetupWizardActivity;->mAccessibilityModeEnabled:Z

    .line 439
    :try_start_0
    iget-object v5, p0, Lcom/android/setupwizard/SetupWizardActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 440
    iget-object v5, p0, Lcom/android/setupwizard/SetupWizardActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v6, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v5, p0, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 441
    iget-object v5, p0, Lcom/android/setupwizard/SetupWizardActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    .end local v0           #action:Ljava/lang/String;
    .end local v3           #score:D
    :cond_0
    :goto_0
    return-void

    .line 443
    .restart local v0       #action:Ljava/lang/String;
    .restart local v3       #score:D
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 444
    .local v1, e:Ljava/io/IOException;
    const-string v5, "SetupWizard"

    const-string v6, "Exception thrown during preparing sound."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 447
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    const-string v5, "SetupWizard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onGlsConnected(Lcom/google/android/gsf/IGoogleLoginService;)V
    .locals 3
    .parameter "gls"

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/android/setupwizard/BaseActivity;->onGlsConnected(Lcom/google/android/gsf/IGoogleLoginService;)V

    .line 244
    :try_start_0
    iget-boolean v1, p0, Lcom/android/setupwizard/SetupWizardActivity;->mClearAccountsDone:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/setupwizard/SetupWizardActivity;->provisioningDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    invoke-interface {p1}, Lcom/google/android/gsf/IGoogleLoginService;->deleteAllAccounts()V

    .line 246
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/setupwizard/SetupWizardActivity;->mClearAccountsDone:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 249
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SetupWizard"

    const-string v2, "GLS died.  There might be spurious accounts."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 173
    .local v2, localeInfo:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 174
    .local v1, locale:Ljava/util/Locale;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 175
    .local v0, currentLocale:Ljava/util/Locale;
    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 176
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/android/setupwizard/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/setupwizard/SetupWizardActivity;->setIntent(Landroid/content/Intent;)V

    .line 129
    const-string v1, "completed"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    const-string v1, "completed"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 132
    .local v0, completed:Z
    sget-boolean v1, Lcom/android/setupwizard/SetupWizardActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    .line 133
    const-string v1, "SetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetupWizard completion detected, completed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    if-eqz v0, :cond_2

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/setupwizard/SetupWizardActivity;->setResult(I)V

    .line 135
    invoke-super {p0}, Lcom/android/setupwizard/BaseActivity;->finish()V

    .line 137
    .end local v0           #completed:Z
    :cond_1
    return-void

    .line 134
    .restart local v0       #completed:Z
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0}, Lcom/android/setupwizard/BaseActivity;->onPause()V

    .line 258
    invoke-direct {p0}, Lcom/android/setupwizard/SetupWizardActivity;->stopAnimating()V

    .line 259
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 456
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 271
    invoke-super {p0}, Lcom/android/setupwizard/BaseActivity;->onResume()V

    .line 274
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    invoke-virtual {p0}, Lcom/android/setupwizard/SetupWizardActivity;->isSimPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/setupwizard/SetupWizardActivity;->mStartAnimRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    :cond_0
    return-void
.end method

.method protected onSimStateChanged(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/android/setupwizard/BaseActivity;->onSimStateChanged(Landroid/content/Intent;)V

    .line 313
    invoke-virtual {p0}, Lcom/android/setupwizard/SetupWizardActivity;->isSimPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/setupwizard/SetupWizardActivity;->stopAnimating()V

    .line 314
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    const/4 v1, -0x2

    .line 288
    invoke-super {p0, p1}, Lcom/android/setupwizard/BaseActivity;->onWindowFocusChanged(Z)V

    .line 290
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mEmergencyCallButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mChangeLanguageButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 291
    if-eqz p1, :cond_2

    .line 293
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mEmergencyCallButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/setupwizard/SetupWizardActivity;->mChangeLanguageButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mEmergencyCallButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/setupwizard/SetupWizardActivity;->mChangeLanguageButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 295
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mEmergencyCallButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mChangeLanguageButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/setupwizard/SetupWizardActivity;->mEmergencyCallButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mChangeLanguageButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/setupwizard/SetupWizardActivity;->mEmergencyCallButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 298
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mChangeLanguageButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestLayout()V

    goto :goto_0

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mEmergencyCallButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 304
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity;->mChangeLanguageButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method
