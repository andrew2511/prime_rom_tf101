.class public Lcom/nuance/xt9/input/ToolBar;
.super Landroid/widget/LinearLayout;
.source "ToolBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/xt9/input/ToolBar$OnClickAction;
    }
.end annotation


# static fields
.field public static final HIDDEN_STATE:I = 0x0

.field public static final MAXIMIZED_STATE:I = 0x2

.field public static final MINIMIZED_STATE:I = 0x1

.field public static final TOOL_BAR_FULLSCREEN_HWR_TOGGLE:I = 0x6

.field public static final TOOL_BAR_FULL_SCREEN_HANDWRITING_TOGGLE:I = 0x4

.field public static final TOOL_BAR_HWR_KEYBOARD_TOGGLE:I = 0x5

.field public static final TOOL_BAR_KEYBOARD_LAYOUTS:I = 0x2

.field public static final TOOL_BAR_LANGUAGE_BUTTON:I = 0x1

.field public static final TOOL_BAR_SETTINGS:I = 0x3


# instance fields
.field private final mAllButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

.field private mFullScreenHwrToggleButton:Landroid/view/View;

.field private mHwrKeyboardToggleButton:Landroid/view/View;

.field private mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

.field private mKeyboardCyclingButton:Landroid/view/View;

.field private mLanguageCycleButton:Landroid/view/View;

.field private mOnClickActionListener:Lcom/nuance/xt9/input/ToolBar$OnClickAction;

.field private mPinnedDown:Z

.field private mPrevShowingState:I

.field private mSettingsButton:Landroid/view/View;

.field private mShowingState:I

.field private mSlideCloseButton:Landroid/view/View;

.field private mSlideOpenButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/xt9/input/ToolBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mAllButtons:Ljava/util/List;

    .line 43
    iput v1, p0, Lcom/nuance/xt9/input/ToolBar;->mShowingState:I

    .line 44
    iput v1, p0, Lcom/nuance/xt9/input/ToolBar;->mPrevShowingState:I

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/xt9/input/ToolBar;)Lcom/nuance/xt9/input/ToolBar$OnClickAction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mOnClickActionListener:Lcom/nuance/xt9/input/ToolBar$OnClickAction;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/xt9/input/ToolBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/nuance/xt9/input/ToolBar;->mPinnedDown:Z

    return p1
.end method

.method private resetDrawableState()V
    .locals 3

    .prologue
    .line 351
    iget-object v2, p0, Lcom/nuance/xt9/input/ToolBar;->mAllButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 352
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 353
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 356
    .end local v1           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private updateHwrKeyboardToggleButton()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 388
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v0, v0, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-nez v0, :cond_3

    .line 392
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mHwrKeyboardToggleButton:Landroid/view/View;

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 399
    :goto_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->isHandWritingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->enabledKeyboardLayoutCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mHwrKeyboardToggleButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mHwrKeyboardToggleButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 418
    :cond_0
    :goto_1
    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mHwrKeyboardToggleButton:Landroid/view/View;

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mHwrKeyboardToggleButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 408
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mHwrKeyboardToggleButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 413
    :cond_3
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mHwrKeyboardToggleButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 414
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mHwrKeyboardToggleButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateKeyboardCycleButton()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 372
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->enabledKeyboardLayoutCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mKeyboardCyclingButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 376
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mKeyboardCyclingButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 384
    :cond_1
    :goto_0
    return-void

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mKeyboardCyclingButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mKeyboardCyclingButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateLanguageButton()V
    .locals 3

    .prologue
    .line 421
    iget-object v1, p0, Lcom/nuance/xt9/input/ToolBar;->mLanguageCycleButton:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/xt9/input/ToolBar;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    if-eqz v1, :cond_1

    .line 422
    iget-object v1, p0, Lcom/nuance/xt9/input/ToolBar;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move v0, v1

    .line 423
    .local v0, visibility:I
    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/ToolBar;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputFieldInfo;->countEnabledLanguageMode()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 424
    const/16 v0, 0x8

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/ToolBar;->mLanguageCycleButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 427
    iget-object v1, p0, Lcom/nuance/xt9/input/ToolBar;->mLanguageCycleButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 430
    .end local v0           #visibility:I
    :cond_1
    return-void

    .line 422
    :cond_2
    const/16 v1, 0x8

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getShowingState()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/nuance/xt9/input/ToolBar;->mShowingState:I

    return v0
.end method

.method public hideAll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 237
    iget v2, p0, Lcom/nuance/xt9/input/ToolBar;->mShowingState:I

    if-eqz v2, :cond_0

    .line 238
    iget v2, p0, Lcom/nuance/xt9/input/ToolBar;->mShowingState:I

    iput v2, p0, Lcom/nuance/xt9/input/ToolBar;->mPrevShowingState:I

    .line 239
    iput v3, p0, Lcom/nuance/xt9/input/ToolBar;->mShowingState:I

    .line 240
    iput-boolean v3, p0, Lcom/nuance/xt9/input/ToolBar;->mPinnedDown:Z

    .line 241
    iget-object v2, p0, Lcom/nuance/xt9/input/ToolBar;->mAllButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 242
    .local v1, view:Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 247
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 59
    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ToolBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mLanguageCycleButton:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mLanguageCycleButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mAllButtons:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/xt9/input/ToolBar;->mLanguageCycleButton:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mLanguageCycleButton:Landroid/view/View;

    new-instance v1, Lcom/nuance/xt9/input/ToolBar$1;

    invoke-direct {v1, p0}, Lcom/nuance/xt9/input/ToolBar$1;-><init>(Lcom/nuance/xt9/input/ToolBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mLanguageCycleButton:Landroid/view/View;

    new-instance v1, Lcom/nuance/xt9/input/ToolBar$2;

    invoke-direct {v1, p0}, Lcom/nuance/xt9/input/ToolBar$2;-><init>(Lcom/nuance/xt9/input/ToolBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 81
    :cond_0
    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ToolBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mSlideOpenButton:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mSlideOpenButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mAllButtons:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/xt9/input/ToolBar;->mSlideOpenButton:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mSlideOpenButton:Landroid/view/View;

    new-instance v1, Lcom/nuance/xt9/input/ToolBar$3;

    invoke-direct {v1, p0}, Lcom/nuance/xt9/input/ToolBar$3;-><init>(Lcom/nuance/xt9/input/ToolBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mSlideOpenButton:Landroid/view/View;

    new-instance v1, Lcom/nuance/xt9/input/ToolBar$4;

    invoke-direct {v1, p0}, Lcom/nuance/xt9/input/ToolBar$4;-><init>(Lcom/nuance/xt9/input/ToolBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 99
    :cond_1
    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ToolBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mHwrKeyboardToggleButton:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mHwrKeyboardToggleButton:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mAllButtons:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/xt9/input/ToolBar;->mHwrKeyboardToggleButton:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mHwrKeyboardToggleButton:Landroid/view/View;

    new-instance v1, Lcom/nuance/xt9/input/ToolBar$5;

    invoke-direct {v1, p0}, Lcom/nuance/xt9/input/ToolBar$5;-><init>(Lcom/nuance/xt9/input/ToolBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mHwrKeyboardToggleButton:Landroid/view/View;

    new-instance v1, Lcom/nuance/xt9/input/ToolBar$6;

    invoke-direct {v1, p0}, Lcom/nuance/xt9/input/ToolBar$6;-><init>(Lcom/nuance/xt9/input/ToolBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 124
    :cond_2
    const v0, 0x7f090035

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ToolBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mFullScreenHwrToggleButton:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mFullScreenHwrToggleButton:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mAllButtons:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/xt9/input/ToolBar;->mFullScreenHwrToggleButton:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mFullScreenHwrToggleButton:Landroid/view/View;

    new-instance v1, Lcom/nuance/xt9/input/ToolBar$7;

    invoke-direct {v1, p0}, Lcom/nuance/xt9/input/ToolBar$7;-><init>(Lcom/nuance/xt9/input/ToolBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mFullScreenHwrToggleButton:Landroid/view/View;

    new-instance v1, Lcom/nuance/xt9/input/ToolBar$8;

    invoke-direct {v1, p0}, Lcom/nuance/xt9/input/ToolBar$8;-><init>(Lcom/nuance/xt9/input/ToolBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 148
    :cond_3
    const v0, 0x7f090034

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ToolBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mKeyboardCyclingButton:Landroid/view/View;

    .line 149
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mKeyboardCyclingButton:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 150
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mAllButtons:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/xt9/input/ToolBar;->mKeyboardCyclingButton:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mKeyboardCyclingButton:Landroid/view/View;

    new-instance v1, Lcom/nuance/xt9/input/ToolBar$9;

    invoke-direct {v1, p0}, Lcom/nuance/xt9/input/ToolBar$9;-><init>(Lcom/nuance/xt9/input/ToolBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mKeyboardCyclingButton:Landroid/view/View;

    new-instance v1, Lcom/nuance/xt9/input/ToolBar$10;

    invoke-direct {v1, p0}, Lcom/nuance/xt9/input/ToolBar$10;-><init>(Lcom/nuance/xt9/input/ToolBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 172
    :cond_4
    const v0, 0x7f090036

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ToolBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mSettingsButton:Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mSettingsButton:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 174
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mAllButtons:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/xt9/input/ToolBar;->mSettingsButton:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mSettingsButton:Landroid/view/View;

    new-instance v1, Lcom/nuance/xt9/input/ToolBar$11;

    invoke-direct {v1, p0}, Lcom/nuance/xt9/input/ToolBar$11;-><init>(Lcom/nuance/xt9/input/ToolBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mSettingsButton:Landroid/view/View;

    new-instance v1, Lcom/nuance/xt9/input/ToolBar$12;

    invoke-direct {v1, p0}, Lcom/nuance/xt9/input/ToolBar$12;-><init>(Lcom/nuance/xt9/input/ToolBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 197
    :cond_5
    const v0, 0x7f090038

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ToolBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mSlideCloseButton:Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mSlideCloseButton:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 199
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mAllButtons:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/xt9/input/ToolBar;->mSlideCloseButton:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mSlideCloseButton:Landroid/view/View;

    new-instance v1, Lcom/nuance/xt9/input/ToolBar$13;

    invoke-direct {v1, p0}, Lcom/nuance/xt9/input/ToolBar$13;-><init>(Lcom/nuance/xt9/input/ToolBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mSlideCloseButton:Landroid/view/View;

    new-instance v1, Lcom/nuance/xt9/input/ToolBar$14;

    invoke-direct {v1, p0}, Lcom/nuance/xt9/input/ToolBar$14;-><init>(Lcom/nuance/xt9/input/ToolBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 216
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ToolBar;->showMinimize()V

    .line 217
    return-void
.end method

.method public restore()V
    .locals 2

    .prologue
    .line 313
    iget v0, p0, Lcom/nuance/xt9/input/ToolBar;->mPrevShowingState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ToolBar;->showMinimize()V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget v0, p0, Lcom/nuance/xt9/input/ToolBar;->mPrevShowingState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ToolBar;->showMaximize()V

    goto :goto_0
.end method

.method public setOnClickActionListener(Lcom/nuance/xt9/input/ToolBar$OnClickAction;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/nuance/xt9/input/ToolBar;->mOnClickActionListener:Lcom/nuance/xt9/input/ToolBar$OnClickAction;

    .line 221
    return-void
.end method

.method public showMaximize()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 252
    iget-boolean v2, p0, Lcom/nuance/xt9/input/ToolBar;->mPinnedDown:Z

    if-nez v2, :cond_7

    iget v2, p0, Lcom/nuance/xt9/input/ToolBar;->mShowingState:I

    if-eq v2, v4, :cond_7

    .line 254
    iget-object v2, p0, Lcom/nuance/xt9/input/ToolBar;->mAllButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 255
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/nuance/xt9/input/ToolBar;->mSlideOpenButton:Landroid/view/View;

    if-ne v1, v2, :cond_1

    .line 256
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v2, p0, Lcom/nuance/xt9/input/ToolBar;->mHwrKeyboardToggleButton:Landroid/view/View;

    if-ne v1, v2, :cond_2

    .line 260
    invoke-direct {p0}, Lcom/nuance/xt9/input/ToolBar;->updateHwrKeyboardToggleButton()V

    goto :goto_0

    .line 262
    :cond_2
    iget-object v2, p0, Lcom/nuance/xt9/input/ToolBar;->mLanguageCycleButton:Landroid/view/View;

    if-ne v1, v2, :cond_3

    .line 263
    invoke-direct {p0}, Lcom/nuance/xt9/input/ToolBar;->updateLanguageButton()V

    goto :goto_0

    .line 265
    :cond_3
    iget-object v2, p0, Lcom/nuance/xt9/input/ToolBar;->mKeyboardCyclingButton:Landroid/view/View;

    if-ne v1, v2, :cond_4

    .line 266
    invoke-direct {p0}, Lcom/nuance/xt9/input/ToolBar;->updateKeyboardCycleButton()V

    goto :goto_0

    .line 268
    :cond_4
    iget-object v2, p0, Lcom/nuance/xt9/input/ToolBar;->mFullScreenHwrToggleButton:Landroid/view/View;

    if-ne v1, v2, :cond_5

    .line 269
    iget-object v2, p0, Lcom/nuance/xt9/input/ToolBar;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/xt9/input/ToolBar;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/xt9/input/ToolBar;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputFieldInfo;->isPasswordField()Z

    move-result v2

    if-nez v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/nuance/xt9/input/ToolBar;->mFullScreenHwrToggleButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/nuance/xt9/input/ToolBar;->mFullScreenHwrToggleButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 279
    :cond_5
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 284
    .end local v1           #view:Landroid/view/View;
    :cond_6
    iput v4, p0, Lcom/nuance/xt9/input/ToolBar;->mShowingState:I

    .line 285
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/xt9/input/ToolBar;->mPinnedDown:Z

    .line 287
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_7
    return-void
.end method

.method public showMinimize()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 292
    iget-boolean v2, p0, Lcom/nuance/xt9/input/ToolBar;->mPinnedDown:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/nuance/xt9/input/ToolBar;->mShowingState:I

    if-eq v2, v3, :cond_3

    .line 293
    iget-object v2, p0, Lcom/nuance/xt9/input/ToolBar;->mAllButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 294
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/nuance/xt9/input/ToolBar;->mSlideOpenButton:Landroid/view/View;

    if-ne v1, v2, :cond_0

    .line 295
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 297
    :cond_0
    iget-object v2, p0, Lcom/nuance/xt9/input/ToolBar;->mLanguageCycleButton:Landroid/view/View;

    if-ne v1, v2, :cond_1

    .line 298
    invoke-direct {p0}, Lcom/nuance/xt9/input/ToolBar;->updateLanguageButton()V

    goto :goto_0

    .line 301
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 305
    .end local v1           #view:Landroid/view/View;
    :cond_2
    iput v3, p0, Lcom/nuance/xt9/input/ToolBar;->mShowingState:I

    .line 306
    iput-boolean v3, p0, Lcom/nuance/xt9/input/ToolBar;->mPinnedDown:Z

    .line 308
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public unpin()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/ToolBar;->mPinnedDown:Z

    .line 226
    return-void
.end method

.method public updateFullScreenHandWriting(Z)V
    .locals 2
    .parameter "isFullScreenHwr"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mFullScreenHwrToggleButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 360
    if-eqz p1, :cond_1

    .line 361
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mFullScreenHwrToggleButton:Landroid/view/View;

    const v1, 0x7f020097

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar;->mFullScreenHwrToggleButton:Landroid/view/View;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public updateToolBar(Lcom/nuance/xt9/input/InputMethods$Language;Lcom/nuance/xt9/input/InputFieldInfo;)V
    .locals 2
    .parameter "inputLanguage"
    .parameter "inputFieldInfo"

    .prologue
    const/16 v1, 0x8

    .line 326
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ToolBar;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 328
    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/ToolBar;->setVisibility(I)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ToolBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ToolBar;->setVisibility(I)V

    .line 338
    :cond_2
    iput-object p1, p0, Lcom/nuance/xt9/input/ToolBar;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    .line 339
    iput-object p2, p0, Lcom/nuance/xt9/input/ToolBar;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    .line 341
    invoke-direct {p0}, Lcom/nuance/xt9/input/ToolBar;->updateLanguageButton()V

    .line 343
    iget v0, p0, Lcom/nuance/xt9/input/ToolBar;->mShowingState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 344
    invoke-direct {p0}, Lcom/nuance/xt9/input/ToolBar;->resetDrawableState()V

    .line 345
    invoke-direct {p0}, Lcom/nuance/xt9/input/ToolBar;->updateHwrKeyboardToggleButton()V

    .line 346
    invoke-direct {p0}, Lcom/nuance/xt9/input/ToolBar;->updateKeyboardCycleButton()V

    goto :goto_0
.end method
