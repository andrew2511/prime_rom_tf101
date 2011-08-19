.class public Lcom/nuance/xt9/input/InputView;
.super Lcom/nuance/xt9/input/KeyboardViewEx;
.source "InputView.java"


# static fields
.field private static KEY_CHARACTER_MAP_PREFIX:Ljava/lang/String; = null

.field private static KEY_LAYOUT_MAP_PREFIX:Ljava/lang/String; = null

.field protected static final MSG_DELAY_HIDE_CANDIDATE_VIEW:I = 0x2

.field protected static final MSG_DELAY_HIDE_SPELL_VIEW:I = 0x3

.field protected static final MSG_DELAY_RESET_INLINE_FLAG:I = 0x8

.field protected static final MSG_DELAY_SHOW_ABC_XT9_KEY_TOAST:I = 0x5

.field protected static final MSG_DELAY_SHOW_TRACE_AUTO_ACCEPT_TIP:I = 0x6

.field protected static final MSG_DELAY_SHOW_TRACE_INPUT_TIP:I = 0x7

.field protected static final MSG_DELAY_UPDATE_DISPLAY:I = 0x4

.field protected static final MSG_GET_MORE_SUGGESTIONS:I = 0x1

.field protected static final MSG_HANDLE_DOUBLE_TAP_RECAPTURE:I = 0x9

.field protected static final MSG_UPDATE_SUGGESTIONS:I = 0x0

.field static final TAG:Ljava/lang/String; = "XT9IME.InputView"


# instance fields
.field protected mAutoCap:Z

.field protected mAutoPunctuation:Z

.field protected mCapsLock:Z

.field protected mCommittedLength:I

.field protected mCompletionOn:Z

.field protected mContext:Landroid/content/Context;

.field protected mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

.field private mDeadKeySelStart:I

.field private mEnabledHardwareKeyboard:Z

.field protected mFuzzyPinyin:I

.field protected mIme:Lcom/nuance/xt9/input/IME;

.field protected mInURLEmail:Z

.field private mInlineKCMWords:Landroid/text/SpannableStringBuilder;

.field protected mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

.field private mKCMMap:Lcom/nuance/xt9/input/XT9KeyCharacterMap;

.field private mKLMap:Lcom/nuance/xt9/input/XT9KeyLayoutMap;

.field protected mKeyEvent:Landroid/view/KeyEvent;

.field private mKeyListener:Lcom/nuance/xt9/input/XT9TextKeyListener;

.field protected mKeyboardLayoutId:I

.field private mPhoneKeyboard:Lcom/nuance/xt9/input/KeyboardEx;

.field protected mPreferExplicit:Z

.field protected mPunctuationSymbols:Ljava/lang/String;

.field protected mSentenceSeparators:Ljava/lang/String;

.field protected mWordCompounders:Ljava/lang/String;

.field protected mWordSeparators:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/xt9/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/xt9/input/KeyboardViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/InputView;->mKeyboardLayoutId:I

    .line 88
    iput-object p1, p0, Lcom/nuance/xt9/input/InputView;->mContext:Landroid/content/Context;

    .line 89
    return-void
.end method

.method private getViewHasWindowToken()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 755
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    .line 756
    iget-object v1, p0, Lcom/nuance/xt9/input/InputView;->mIme:Lcom/nuance/xt9/input/IME;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/InputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/IME;->getEmptyView()Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 757
    .local v0, emptyView:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 764
    .end local v0           #emptyView:Landroid/view/View;
    :goto_1
    return-object v1

    :cond_0
    move-object v0, v2

    .line 756
    goto :goto_0

    .restart local v0       #emptyView:Landroid/view/View;
    :cond_1
    move-object v1, v2

    .line 761
    goto :goto_1

    .end local v0           #emptyView:Landroid/view/View;
    :cond_2
    move-object v1, p0

    .line 764
    goto :goto_1
.end method

.method private loadKCMMap(Lcom/nuance/xt9/input/InputMethods$Language;)V
    .locals 6
    .parameter "inputLanguage"

    .prologue
    const/4 v5, 0x0

    .line 838
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/InputView;->retrieveKCMFile(Lcom/nuance/xt9/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v2

    .line 840
    .local v2, newKCMFile:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 841
    :cond_0
    iput-object v5, p0, Lcom/nuance/xt9/input/InputView;->mKCMMap:Lcom/nuance/xt9/input/XT9KeyCharacterMap;

    .line 856
    :goto_0
    return-void

    .line 844
    :cond_1
    :try_start_0
    sget-object v3, Lcom/nuance/xt9/input/InputView;->KEY_CHARACTER_MAP_PREFIX:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 845
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080092

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/nuance/xt9/input/InputView;->KEY_CHARACTER_MAP_PREFIX:Ljava/lang/String;

    .line 849
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/nuance/xt9/input/InputView;->KEY_CHARACTER_MAP_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".kcm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 850
    .local v1, kcmFilepath:Ljava/lang/String;
    invoke-static {v1}, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->load(Ljava/lang/String;)Lcom/nuance/xt9/input/XT9KeyCharacterMap;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/xt9/input/InputView;->mKCMMap:Lcom/nuance/xt9/input/XT9KeyCharacterMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 851
    .end local v1           #kcmFilepath:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 852
    .local v0, e:Ljava/lang/Exception;
    iput-object v5, p0, Lcom/nuance/xt9/input/InputView;->mKCMMap:Lcom/nuance/xt9/input/XT9KeyCharacterMap;

    goto :goto_0
.end method

.method private loadKLMap(Lcom/nuance/xt9/input/InputMethods$Language;)V
    .locals 6
    .parameter "inputLanguage"

    .prologue
    const/4 v5, 0x0

    .line 859
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/InputView;->retrieveKLFile(Lcom/nuance/xt9/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v2

    .line 861
    .local v2, newKLFile:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 862
    :cond_0
    iput-object v5, p0, Lcom/nuance/xt9/input/InputView;->mKLMap:Lcom/nuance/xt9/input/XT9KeyLayoutMap;

    .line 877
    :goto_0
    return-void

    .line 865
    :cond_1
    :try_start_0
    sget-object v3, Lcom/nuance/xt9/input/InputView;->KEY_LAYOUT_MAP_PREFIX:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 866
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/nuance/xt9/input/InputView;->KEY_LAYOUT_MAP_PREFIX:Ljava/lang/String;

    .line 870
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/nuance/xt9/input/InputView;->KEY_LAYOUT_MAP_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".kl"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 871
    .local v1, klFilepath:Ljava/lang/String;
    invoke-static {v1}, Lcom/nuance/xt9/input/XT9KeyLayoutMap;->load(Ljava/lang/String;)Lcom/nuance/xt9/input/XT9KeyLayoutMap;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/xt9/input/InputView;->mKLMap:Lcom/nuance/xt9/input/XT9KeyLayoutMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 872
    .end local v1           #klFilepath:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 873
    .local v0, e:Ljava/lang/Exception;
    iput-object v5, p0, Lcom/nuance/xt9/input/InputView;->mKLMap:Lcom/nuance/xt9/input/XT9KeyLayoutMap;

    goto :goto_0
.end method

.method private loadSettings()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 550
    iget-object v0, p0, Lcom/nuance/xt9/input/InputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/Settings;->getAutoCap(Landroid/content/SharedPreferences;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/InputView;->mAutoCap:Z

    .line 551
    iget-object v0, p0, Lcom/nuance/xt9/input/InputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/Settings;->getAutoPunctuation(Landroid/content/SharedPreferences;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/InputView;->mAutoPunctuation:Z

    .line 552
    iget-object v0, p0, Lcom/nuance/xt9/input/InputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/xt9/input/InputMethods$Layout;

    move-result-object v0

    iget v0, v0, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutId:I

    iput v0, p0, Lcom/nuance/xt9/input/InputView;->mKeyboardLayoutId:I

    .line 553
    iget-object v0, p0, Lcom/nuance/xt9/input/InputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/Settings;->getFuzzyPairs(Landroid/content/SharedPreferences;I)I

    move-result v0

    iput v0, p0, Lcom/nuance/xt9/input/InputView;->mFuzzyPinyin:I

    .line 554
    return-void
.end method

.method private retrieveKCMFile(Lcom/nuance/xt9/input/InputMethods$Language;)Ljava/lang/String;
    .locals 4
    .parameter "inputLanguage"

    .prologue
    const/4 v3, 0x0

    .line 880
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v2

    move-object v0, v2

    .line 881
    .local v0, inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mKCMFile:Ljava/lang/String;

    move-object v1, v2

    .line 882
    .local v1, kcmFile:Ljava/lang/String;
    :goto_1
    return-object v1

    .end local v0           #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    .end local v1           #kcmFile:Ljava/lang/String;
    :cond_0
    move-object v0, v3

    .line 880
    goto :goto_0

    .restart local v0       #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_1
    move-object v1, v3

    .line 881
    goto :goto_1
.end method

.method private retrieveKLFile(Lcom/nuance/xt9/input/InputMethods$Language;)Ljava/lang/String;
    .locals 4
    .parameter "inputLanguage"

    .prologue
    const/4 v3, 0x0

    .line 886
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v2

    move-object v0, v2

    .line 887
    .local v0, inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mKLFile:Ljava/lang/String;

    move-object v1, v2

    .line 888
    .local v1, klFile:Ljava/lang/String;
    :goto_1
    return-object v1

    .end local v0           #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    .end local v1           #klFile:Ljava/lang/String;
    :cond_0
    move-object v0, v3

    .line 886
    goto :goto_0

    .restart local v0       #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_1
    move-object v1, v3

    .line 887
    goto :goto_1
.end method

.method private updateEnabledHardwareKeyboard(Lcom/nuance/xt9/input/InputMethods$Language;)V
    .locals 3
    .parameter "inputLanguage"

    .prologue
    .line 795
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nuance/xt9/input/InputView;->mEnabledHardwareKeyboard:Z

    .line 797
    if-eqz p1, :cond_0

    .line 798
    iget-boolean v2, p1, Lcom/nuance/xt9/input/InputMethods$Language;->mEnabledHardwareKeyboard:Z

    iput-boolean v2, p0, Lcom/nuance/xt9/input/InputView;->mEnabledHardwareKeyboard:Z

    .line 800
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v1

    .line 801
    .local v1, inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isAlphaInputMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 802
    iget-object v2, p1, Lcom/nuance/xt9/input/InputMethods$Language;->mParent:Lcom/nuance/xt9/input/InputMethods;

    invoke-virtual {p0, v2}, Lcom/nuance/xt9/input/InputView;->getAlphaLanguage(Lcom/nuance/xt9/input/InputMethods;)Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v0

    .line 803
    .local v0, alphaLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    if-eqz v0, :cond_0

    .line 804
    iget-boolean v2, v0, Lcom/nuance/xt9/input/InputMethods$Language;->mEnabledHardwareKeyboard:Z

    iput-boolean v2, p0, Lcom/nuance/xt9/input/InputView;->mEnabledHardwareKeyboard:Z

    .line 808
    .end local v0           #alphaLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    .end local v1           #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_0
    return-void
.end method


# virtual methods
.method protected changeKeyboardMode()V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method public create(Lcom/nuance/xt9/input/IME;)V
    .locals 2
    .parameter "ime"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/nuance/xt9/input/InputView;->mIme:Lcom/nuance/xt9/input/IME;

    .line 115
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/InputView;->mWordSeparators:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/InputView;->mSentenceSeparators:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/InputView;->mPunctuationSymbols:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/InputView;->mWordCompounders:Ljava/lang/String;

    .line 122
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/InputView;->mInlineKCMWords:Landroid/text/SpannableStringBuilder;

    .line 124
    return-void
.end method

.method public createCandidatesView()Landroid/view/View;
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/nuance/xt9/input/InputView;->mIme:Lcom/nuance/xt9/input/IME;

    .line 132
    iput-object v0, p0, Lcom/nuance/xt9/input/InputView;->mContext:Landroid/content/Context;

    .line 133
    iput-object v0, p0, Lcom/nuance/xt9/input/InputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    .line 134
    iput-object v0, p0, Lcom/nuance/xt9/input/InputView;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    .line 135
    iput-object v0, p0, Lcom/nuance/xt9/input/InputView;->mWordSeparators:Ljava/lang/String;

    .line 136
    iput-object v0, p0, Lcom/nuance/xt9/input/InputView;->mSentenceSeparators:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lcom/nuance/xt9/input/InputView;->mPunctuationSymbols:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Lcom/nuance/xt9/input/InputView;->mWordCompounders:Ljava/lang/String;

    .line 142
    iput-object v0, p0, Lcom/nuance/xt9/input/InputView;->mKCMMap:Lcom/nuance/xt9/input/XT9KeyCharacterMap;

    .line 143
    iput-object v0, p0, Lcom/nuance/xt9/input/InputView;->mKLMap:Lcom/nuance/xt9/input/XT9KeyLayoutMap;

    .line 144
    iput-object v0, p0, Lcom/nuance/xt9/input/InputView;->mKeyListener:Lcom/nuance/xt9/input/XT9TextKeyListener;

    .line 145
    iput-object v0, p0, Lcom/nuance/xt9/input/InputView;->mInlineKCMWords:Landroid/text/SpannableStringBuilder;

    .line 147
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .parameter "completions"

    .prologue
    .line 421
    return-void
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 625
    const-string v0, "InputView"

    const-string v1, "InputView.finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return-void
.end method

.method public finishInput()V
    .locals 0

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->multitapClearInvalid()V

    .line 206
    return-void
.end method

.method public flushCurrentActiveWord()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 403
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 404
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/InputView;->mInlineKCMWords:Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/InputView;->mInlineKCMWords:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 405
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 406
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 407
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->end()V

    .line 408
    iget-object v1, p0, Lcom/nuance/xt9/input/InputView;->mInlineKCMWords:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 409
    iget-object v1, p0, Lcom/nuance/xt9/input/InputView;->mInlineKCMWords:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 410
    iput v2, p0, Lcom/nuance/xt9/input/InputView;->mDeadKeySelStart:I

    .line 411
    iget-object v1, p0, Lcom/nuance/xt9/input/InputView;->mInlineKCMWords:Landroid/text/SpannableStringBuilder;

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 412
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 415
    :cond_0
    return-void
.end method

.method public getAlphaLanguage(Lcom/nuance/xt9/input/InputMethods;)Lcom/nuance/xt9/input/InputMethods$Language;
    .locals 4
    .parameter "inputMethods"

    .prologue
    .line 779
    const/4 v1, 0x0

    .line 781
    .local v1, language:Lcom/nuance/xt9/input/InputMethods$Language;
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 783
    .local v0, alphaLanguageId:I
    invoke-virtual {p1, v0}, Lcom/nuance/xt9/input/InputMethods;->findInputLanguage(I)Lcom/nuance/xt9/input/InputMethods$Language;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 787
    .end local v0           #alphaLanguageId:I
    :goto_0
    return-object v1

    .line 784
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/nuance/xt9/input/InputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/nuance/xt9/input/InputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/nuance/xt9/input/InputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/IME;->getDatabaseConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getWordSeparators()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/nuance/xt9/input/InputView;->mWordSeparators:Ljava/lang/String;

    return-object v0
.end method

.method protected handleBackspace(I)Z
    .locals 1
    .parameter "repeatedCount"

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public handleCharKey(I[I)V
    .locals 0
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 293
    return-void
.end method

.method public handleClose()V
    .locals 0

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->closing()V

    .line 377
    return-void
.end method

.method public handleKey(IZI)Z
    .locals 3
    .parameter "primaryCode"
    .parameter "quickPressed"
    .parameter "repeatedCount"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 319
    sparse-switch p1, :sswitch_data_0

    move v0, v2

    .line 368
    :goto_0
    return v0

    .line 321
    :sswitch_0
    invoke-virtual {p0, p3}, Lcom/nuance/xt9/input/InputView;->handleBackspace(I)Z

    move-result v0

    goto :goto_0

    .line 324
    :sswitch_1
    invoke-virtual {p0, p2, p3}, Lcom/nuance/xt9/input/InputView;->handleSpace(ZI)Z

    move-result v0

    goto :goto_0

    .line 327
    :sswitch_2
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->handleShift()V

    move v0, v1

    .line 328
    goto :goto_0

    .line 331
    :sswitch_3
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->handleMultitapDeadkey()V

    move v0, v1

    .line 332
    goto :goto_0

    .line 336
    :sswitch_4
    iget-object v0, p0, Lcom/nuance/xt9/input/InputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v0, v2}, Lcom/nuance/xt9/input/IME;->requestHideSelf(I)V

    move v0, v1

    .line 338
    goto :goto_0

    .line 341
    :sswitch_5
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->changeKeyboardMode()V

    move v0, v1

    .line 342
    goto :goto_0

    .line 346
    :sswitch_6
    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/InputView;->handleTone(I)Z

    move v0, v1

    .line 347
    goto :goto_0

    .line 350
    :sswitch_7
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/InputView;->handleTone(I)Z

    move v0, v1

    .line 351
    goto :goto_0

    .line 354
    :sswitch_8
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/InputView;->handleTone(I)Z

    move v0, v1

    .line 355
    goto :goto_0

    .line 358
    :sswitch_9
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/InputView;->handleTone(I)Z

    move v0, v1

    .line 359
    goto :goto_0

    .line 362
    :sswitch_a
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/InputView;->handleTone(I)Z

    move v0, v1

    .line 363
    goto :goto_0

    .line 319
    :sswitch_data_0
    .sparse-switch
        -0x15 -> :sswitch_3
        -0xb -> :sswitch_a
        -0xa -> :sswitch_9
        -0x9 -> :sswitch_8
        -0x8 -> :sswitch_7
        -0x7 -> :sswitch_6
        -0x5 -> :sswitch_0
        -0x3 -> :sswitch_4
        -0x2 -> :sswitch_5
        -0x1 -> :sswitch_2
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 251
    sparse-switch p1, :sswitch_data_0

    .line 272
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 253
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->handleBack()Z

    move-result v1

    goto :goto_0

    .line 260
    :sswitch_1
    iget-boolean v1, p0, Lcom/nuance/xt9/input/InputView;->mEnabledHardwareKeyboard:Z

    if-nez v1, :cond_1

    .line 261
    iput-object p2, p0, Lcom/nuance/xt9/input/InputView;->mKeyEvent:Landroid/view/KeyEvent;

    .line 263
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/InputView;->handleBackspace(I)Z

    move-result v0

    .line 264
    .local v0, result:Z
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/xt9/input/InputView;->mKeyEvent:Landroid/view/KeyEvent;

    move v1, v0

    .line 265
    goto :goto_0

    .line 251
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method protected handleKeyForCandidate(Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;ILandroid/view/KeyEvent;Z)Z
    .locals 4
    .parameter "preCandidate"
    .parameter "currCandidate"
    .parameter "nextCandidate"
    .parameter "keyCode"
    .parameter "event"
    .parameter "hasActiveKeySeq"

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 636
    iget-boolean v1, p0, Lcom/nuance/xt9/input/InputView;->mEnabledHardwareKeyboard:Z

    if-nez v1, :cond_0

    move v1, v2

    .line 681
    :goto_0
    return v1

    .line 638
    :cond_0
    const/4 v0, 0x0

    .line 640
    .local v0, handled:Z
    invoke-virtual {p0, p2}, Lcom/nuance/xt9/input/InputView;->isCandidateReady(Lcom/nuance/xt9/input/CandidatesListView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 641
    invoke-virtual {p2}, Lcom/nuance/xt9/input/CandidatesListView;->isEnableHighlight()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 642
    const/16 v1, 0x13

    if-ne p4, v1, :cond_3

    .line 643
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/InputView;->isCandidateReady(Lcom/nuance/xt9/input/CandidatesListView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 644
    invoke-virtual {p1}, Lcom/nuance/xt9/input/CandidatesListView;->enableHighlight()V

    .line 645
    invoke-virtual {p1}, Lcom/nuance/xt9/input/CandidatesListView;->invalidate()V

    .line 646
    invoke-virtual {p2}, Lcom/nuance/xt9/input/CandidatesListView;->disableHighlight()V

    .line 647
    invoke-virtual {p2}, Lcom/nuance/xt9/input/CandidatesListView;->invalidate()V

    .line 648
    const/4 v0, 0x1

    :cond_1
    :goto_1
    move v1, v0

    .line 681
    goto :goto_0

    .line 649
    :cond_2
    if-nez p6, :cond_1

    .line 650
    invoke-virtual {p2}, Lcom/nuance/xt9/input/CandidatesListView;->disableHighlight()V

    .line 651
    invoke-virtual {p2}, Lcom/nuance/xt9/input/CandidatesListView;->invalidate()V

    .line 652
    const/4 v0, 0x1

    goto :goto_1

    .line 654
    :cond_3
    if-ne p4, v3, :cond_4

    .line 655
    invoke-virtual {p0, p3}, Lcom/nuance/xt9/input/InputView;->isCandidateReady(Lcom/nuance/xt9/input/CandidatesListView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 656
    invoke-virtual {p2}, Lcom/nuance/xt9/input/CandidatesListView;->disableHighlight()V

    .line 657
    invoke-virtual {p2}, Lcom/nuance/xt9/input/CandidatesListView;->invalidate()V

    .line 658
    invoke-virtual {p3}, Lcom/nuance/xt9/input/CandidatesListView;->enableHighlight()V

    .line 659
    invoke-virtual {p3}, Lcom/nuance/xt9/input/CandidatesListView;->invalidate()V

    .line 660
    const/4 v0, 0x1

    goto :goto_1

    .line 662
    :cond_4
    const/16 v1, 0x15

    if-ne p4, v1, :cond_5

    .line 663
    invoke-virtual {p2, v2}, Lcom/nuance/xt9/input/CandidatesListView;->moveSelectedIndex(Z)V

    .line 664
    const/4 v0, 0x1

    goto :goto_1

    .line 665
    :cond_5
    const/16 v1, 0x16

    if-ne p4, v1, :cond_6

    .line 666
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/nuance/xt9/input/CandidatesListView;->moveSelectedIndex(Z)V

    .line 667
    const/4 v0, 0x1

    goto :goto_1

    .line 668
    :cond_6
    const/16 v1, 0x17

    if-eq p4, v1, :cond_7

    const/16 v1, 0x42

    if-ne p4, v1, :cond_1

    .line 669
    :cond_7
    invoke-virtual {p2}, Lcom/nuance/xt9/input/CandidatesListView;->selectActiveWord()V

    .line 670
    const/4 v0, 0x1

    goto :goto_1

    .line 673
    :cond_8
    if-ne p4, v3, :cond_1

    .line 674
    invoke-virtual {p2}, Lcom/nuance/xt9/input/CandidatesListView;->enableHighlight()V

    .line 675
    invoke-virtual {p2}, Lcom/nuance/xt9/input/CandidatesListView;->invalidate()V

    .line 676
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected handleKeyForKCM(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 686
    invoke-direct {p0}, Lcom/nuance/xt9/input/InputView;->getViewHasWindowToken()Landroid/view/View;

    move-result-object v3

    .line 687
    .local v3, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 688
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/nuance/xt9/input/InputView;->mKCMMap:Lcom/nuance/xt9/input/XT9KeyCharacterMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/xt9/input/InputView;->mKCMMap:Lcom/nuance/xt9/input/XT9KeyCharacterMap;

    invoke-virtual {v4, p1}, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->isPrintingKey(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/xt9/input/InputView;->mKeyListener:Lcom/nuance/xt9/input/XT9TextKeyListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/xt9/input/InputView;->mInlineKCMWords:Landroid/text/SpannableStringBuilder;

    if-nez v4, :cond_1

    :cond_0
    move v4, v7

    .line 720
    :goto_0
    return v4

    .line 698
    :cond_1
    iget-object v4, p0, Lcom/nuance/xt9/input/InputView;->mKeyListener:Lcom/nuance/xt9/input/XT9TextKeyListener;

    iget-object v5, p0, Lcom/nuance/xt9/input/InputView;->mInlineKCMWords:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v3, v5, p1, p2}, Lcom/nuance/xt9/input/XT9TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/nuance/xt9/input/InputView;->mInlineKCMWords:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 701
    iget-object v4, p0, Lcom/nuance/xt9/input/InputView;->mInlineKCMWords:Landroid/text/SpannableStringBuilder;

    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 702
    .local v2, selStart:I
    iget-object v4, p0, Lcom/nuance/xt9/input/InputView;->mInlineKCMWords:Landroid/text/SpannableStringBuilder;

    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 704
    .local v1, selEnd:I
    if-le v1, v2, :cond_3

    .line 706
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 707
    iget-object v4, p0, Lcom/nuance/xt9/input/InputView;->mInlineKCMWords:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v4, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 708
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .end local v1           #selEnd:I
    .end local v2           #selStart:I
    :cond_2
    :goto_1
    move v4, v6

    .line 720
    goto :goto_0

    .line 711
    .restart local v1       #selEnd:I
    .restart local v2       #selStart:I
    :cond_3
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 712
    iget-object v4, p0, Lcom/nuance/xt9/input/InputView;->mInlineKCMWords:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v4, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 713
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 714
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->flushCurrentActiveWord()V

    goto :goto_1

    .line 716
    .end local v1           #selEnd:I
    .end local v2           #selStart:I
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v7

    .line 717
    goto :goto_0
.end method

.method protected handleKeyForPrediction(ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 726
    iget-boolean v8, p0, Lcom/nuance/xt9/input/InputView;->mEnabledHardwareKeyboard:Z

    if-nez v8, :cond_0

    move v8, v10

    .line 751
    :goto_0
    return v8

    .line 728
    :cond_0
    const/4 v3, 0x0

    .line 729
    .local v3, handled:Z
    invoke-static {p2}, Lcom/nuance/xt9/input/IME;->isAltPressed(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 730
    .local v0, alt:Z
    invoke-static {p2}, Lcom/nuance/xt9/input/IME;->isCtrlPressed(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 732
    .local v2, ctrl:Z
    if-nez v0, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    :goto_1
    move v8, v3

    .line 751
    goto :goto_0

    .line 735
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v6

    .line 736
    .local v6, keyboard:Lcom/nuance/xt9/input/KeyboardEx;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/nuance/xt9/input/KeyboardEx;->getHardwareKeys()Ljava/util/HashMap;

    move-result-object v8

    move-object v5, v8

    .line 737
    .local v5, hardwareKeys:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;>;"
    :goto_2
    if-eqz v5, :cond_4

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;

    move-object v4, v8

    .line 738
    .local v4, hardwareKey:Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;
    :goto_3
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->getOnKeyboardActionListener()Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v7

    .line 740
    .local v7, listener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;
    if-eqz v4, :cond_1

    if-eqz v7, :cond_1

    .line 741
    iget-object v8, v4, Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;->codes:[I

    aget v1, v8, v10

    .line 742
    .local v1, code:I
    iput-object p2, p0, Lcom/nuance/xt9/input/InputView;->mKeyEvent:Landroid/view/KeyEvent;

    .line 743
    iget-object v8, v4, Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;->codes:[I

    invoke-interface {v7, v1, v8}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(I[I)V

    .line 744
    invoke-interface {v7, v1}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->onRelease(I)V

    .line 745
    iput-object v9, p0, Lcom/nuance/xt9/input/InputView;->mKeyEvent:Landroid/view/KeyEvent;

    .line 747
    const/4 v3, 0x1

    goto :goto_1

    .end local v1           #code:I
    .end local v4           #hardwareKey:Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;
    .end local v5           #hardwareKeys:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;>;"
    .end local v7           #listener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;
    :cond_3
    move-object v5, v9

    .line 736
    goto :goto_2

    .restart local v5       #hardwareKeys:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;>;"
    :cond_4
    move-object v4, v9

    .line 737
    goto :goto_3
.end method

.method public handleKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method protected handleMultitapDeadkey()V
    .locals 0

    .prologue
    .line 437
    return-void
.end method

.method protected handleMultitapToggle()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method protected handleShift()V
    .locals 0

    .prologue
    .line 440
    return-void
.end method

.method protected handleSpace(ZI)Z
    .locals 1
    .parameter "quickPressed"
    .parameter "repeatedCount"

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->sendSpace()V

    .line 425
    const/4 v0, 0x1

    return v0
.end method

.method protected handleTone(I)Z
    .locals 1
    .parameter "tone"

    .prologue
    .line 430
    const/4 v0, 0x1

    return v0
.end method

.method public handleTrace(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p1, trace:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    return-void
.end method

.method protected isAlphabet(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 446
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    const/4 v0, 0x1

    .line 449
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCandidateReady(Lcom/nuance/xt9/input/CandidatesListView;)Z
    .locals 1
    .parameter "candidate"

    .prologue
    .line 768
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nuance/xt9/input/CandidatesListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 770
    const/4 v0, 0x1

    .line 773
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCursorTouchingWord()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 466
    iget-object v3, p0, Lcom/nuance/xt9/input/InputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 467
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    move v3, v4

    .line 478
    :goto_0
    return v3

    .line 468
    :cond_0
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 469
    .local v1, toLeft:Ljava/lang/CharSequence;
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 470
    .local v2, toRight:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/nuance/xt9/input/InputView;->isWordSeparator(I)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    .line 472
    goto :goto_0

    .line 474
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/nuance/xt9/input/InputView;->isWordSeparator(I)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v5

    .line 476
    goto :goto_0

    :cond_2
    move v3, v4

    .line 478
    goto :goto_0
.end method

.method public isEnabledHardwareKeyboard()Z
    .locals 1

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/nuance/xt9/input/InputView;->mEnabledHardwareKeyboard:Z

    return v0
.end method

.method protected isLeftCursorWordWhiteSpace(Ljava/lang/CharSequence;)Z
    .locals 8
    .parameter "wordJustSelected"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 486
    iget-object v4, p0, Lcom/nuance/xt9/input/InputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 487
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_0

    move v4, v6

    .line 512
    :goto_0
    return v4

    .line 489
    :cond_0
    const/16 v4, 0x41

    invoke-interface {v1, v4, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 490
    .local v3, seqBeforeCursor:Ljava/lang/CharSequence;
    if-eqz v3, :cond_3

    .line 491
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 492
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v2, v4, v6

    .line 494
    .local v2, index:I
    if-lez v2, :cond_3

    .line 495
    :goto_1
    if-lez v2, :cond_1

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/nuance/xt9/input/InputView;->isWhiteSpace(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 496
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 499
    :cond_1
    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/nuance/xt9/input/InputView;->isWhiteSpace(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 500
    add-int/lit8 v2, v2, 0x1

    .line 503
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, compoundWord:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v4, v5, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x40

    if-gt v4, v5, :cond_3

    move v4, v7

    .line 508
    goto :goto_0

    .end local v0           #compoundWord:Ljava/lang/String;
    .end local v2           #index:I
    :cond_3
    move v4, v6

    .line 512
    goto :goto_0
.end method

.method protected isPunctuationOrSymbol(I)Z
    .locals 2
    .parameter "code"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/nuance/xt9/input/InputView;->mPunctuationSymbols:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected isSentenceSeparator(I)Z
    .locals 2
    .parameter "code"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/nuance/xt9/input/InputView;->mSentenceSeparators:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isShowShiftAnnotation()Z
    .locals 1

    .prologue
    .line 893
    const/4 v0, 0x0

    return v0
.end method

.method protected isUDBShortcutSubstitutionField()Z
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/nuance/xt9/input/InputView;->mIme:Lcom/nuance/xt9/input/IME;

    iget-boolean v0, v0, Lcom/nuance/xt9/input/IME;->mUDBSubstitutionField:Z

    return v0
.end method

.method protected isValidAlphabeticChar(I)Z
    .locals 1
    .parameter "iChar"

    .prologue
    .line 608
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/InputView;->isValidChineseChar(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidChineseChar(I)Z
    .locals 1
    .parameter "iChar"

    .prologue
    .line 594
    const/16 v0, 0x3000

    if-lt p1, v0, :cond_0

    const v0, 0x9fa5

    if-le p1, v0, :cond_5

    :cond_0
    const v0, 0xe000

    if-lt p1, v0, :cond_1

    const v0, 0xeeb1

    if-le p1, v0, :cond_5

    :cond_1
    const v0, 0xf3a0

    if-lt p1, v0, :cond_2

    const v0, 0xf7ed

    if-le p1, v0, :cond_5

    :cond_2
    const v0, 0xef50

    if-lt p1, v0, :cond_3

    const v0, 0xfe6b

    if-le p1, v0, :cond_5

    :cond_3
    const v0, 0xff01

    if-lt p1, v0, :cond_4

    const v0, 0xff5e

    if-le p1, v0, :cond_5

    :cond_4
    const v0, 0xffe0

    if-lt p1, v0, :cond_6

    const v0, 0xffe5

    if-gt p1, v0, :cond_6

    .line 600
    :cond_5
    const/4 v0, 0x1

    .line 603
    :goto_0
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isWhiteSpace(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 482
    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isWordCompounder(I)Z
    .locals 2
    .parameter "code"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/nuance/xt9/input/InputView;->mWordCompounders:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected isWordSeparator(I)Z
    .locals 2
    .parameter "code"

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->getWordSeparators()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, separators:Ljava/lang/String;
    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method protected onLongPress(Lcom/nuance/xt9/input/KeyboardEx$Key;)Z
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 563
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->getOnKeyboardActionListener()Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    array-length v0, v0

    if-nez v0, :cond_1

    .line 565
    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/xt9/input/KeyboardViewEx;->onLongPress(Lcom/nuance/xt9/input/KeyboardEx$Key;)Z

    move-result v0

    .line 589
    :goto_0
    return v0

    .line 568
    :cond_1
    iget-object v0, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    aget v0, v0, v2

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 571
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->getOnKeyboardActionListener()Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    const/16 v1, -0x64

    invoke-interface {v0, v1, v4}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(I[I)V

    move v0, v3

    .line 572
    goto :goto_0

    .line 574
    :cond_2
    iget-object v0, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    aget v0, v0, v2

    const/16 v1, -0x14

    if-ne v0, v1, :cond_3

    .line 576
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->getOnKeyboardActionListener()Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    const/16 v1, -0x65

    invoke-interface {v0, v1, v4}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(I[I)V

    move v0, v3

    .line 577
    goto :goto_0

    .line 579
    :cond_3
    iget-object v0, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    aget v0, v0, v2

    const/16 v1, -0x13

    if-ne v0, v1, :cond_4

    .line 580
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->handleMultitapToggle()V

    move v0, v3

    .line 581
    goto :goto_0

    .line 583
    :cond_4
    iget-object v0, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    aget v0, v0, v2

    const/16 v1, 0x30

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/xt9/input/InputView;->mPhoneKeyboard:Lcom/nuance/xt9/input/KeyboardEx;

    if-ne v0, v1, :cond_5

    .line 585
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->getOnKeyboardActionListener()Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-interface {v0, v1, v4}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(I[I)V

    move v0, v3

    .line 586
    goto :goto_0

    .line 589
    :cond_5
    invoke-super {p0, p1}, Lcom/nuance/xt9/input/KeyboardViewEx;->onLongPress(Lcom/nuance/xt9/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMultitapTimeout()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 310
    return-void
.end method

.method public remapKeyEvent(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 14
    .parameter "event"

    .prologue
    .line 817
    iget-object v0, p0, Lcom/nuance/xt9/input/InputView;->mKLMap:Lcom/nuance/xt9/input/XT9KeyLayoutMap;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 818
    iget-object v0, p0, Lcom/nuance/xt9/input/InputView;->mKLMap:Lcom/nuance/xt9/input/XT9KeyLayoutMap;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/XT9KeyLayoutMap;->map(I)I

    move-result v5

    .line 819
    .local v5, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v11

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v13

    .local v13, newEvent:Landroid/view/KeyEvent;
    move-object v0, v13

    .line 834
    .end local v5           #keyCode:I
    .end local v13           #newEvent:Landroid/view/KeyEvent;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method protected sendBackspace(I)V
    .locals 1
    .parameter "repeatedCount"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/nuance/xt9/input/InputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/IME;->sendBackspace(I)V

    .line 538
    return-void
.end method

.method protected sendKeyChar(C)V
    .locals 1
    .parameter "character"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/nuance/xt9/input/InputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/IME;->sendKeyChar(C)V

    .line 542
    return-void
.end method

.method protected sendSpace()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/nuance/xt9/input/InputView;->mIme:Lcom/nuance/xt9/input/IME;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/IME;->sendKeyChar(C)V

    .line 546
    return-void
.end method

.method protected setCandidatesViewShown(Z)V
    .locals 1
    .parameter "shown"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/nuance/xt9/input/InputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/IME;->setCandidatesViewShown(Z)V

    .line 455
    return-void
.end method

.method public setCurrentInputLanguage(Lcom/nuance/xt9/input/InputMethods$Language;)V
    .locals 0
    .parameter "inputLanguage"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/InputView;->updateEnabledHardwareKeyboard(Lcom/nuance/xt9/input/InputMethods$Language;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/InputView;->loadKCMMap(Lcom/nuance/xt9/input/InputMethods$Language;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/InputView;->loadKLMap(Lcom/nuance/xt9/input/InputMethods$Language;)V

    .line 102
    iput-object p1, p0, Lcom/nuance/xt9/input/InputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    .line 103
    return-void
.end method

.method public setOnKeyboardActionListener(Lcom/nuance/xt9/input/IME;)V
    .locals 0
    .parameter "ime"

    .prologue
    .line 616
    invoke-super {p0, p1}, Lcom/nuance/xt9/input/KeyboardViewEx;->setOnKeyboardActionListener(Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;)V

    .line 617
    return-void
.end method

.method public setPhoneKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V
    .locals 0
    .parameter "phoneKeyboard"

    .prologue
    .line 558
    iput-object p1, p0, Lcom/nuance/xt9/input/InputView;->mPhoneKeyboard:Lcom/nuance/xt9/input/KeyboardEx;

    .line 559
    return-void
.end method

.method public startInput(Lcom/nuance/xt9/input/InputFieldInfo;Z)V
    .locals 6
    .parameter "inputFieldInfo"
    .parameter "restarting"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 167
    iput-object p1, p0, Lcom/nuance/xt9/input/InputView;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    .line 168
    iget-object v3, p0, Lcom/nuance/xt9/input/InputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {p0, v3}, Lcom/nuance/xt9/input/InputView;->setOnKeyboardActionListener(Lcom/nuance/xt9/input/IME;)V

    .line 169
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isSearchField()Z

    move-result v3

    iput-boolean v3, p0, Lcom/nuance/xt9/input/InputView;->mCompletionOn:Z

    .line 170
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isNameField()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isURLField()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lcom/nuance/xt9/input/InputView;->mPreferExplicit:Z

    .line 171
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isURLField()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    move v3, v5

    :goto_1
    iput-boolean v3, p0, Lcom/nuance/xt9/input/InputView;->mInURLEmail:Z

    .line 172
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->multitapClearInvalid()V

    .line 173
    invoke-direct {p0}, Lcom/nuance/xt9/input/InputView;->loadSettings()V

    .line 177
    iget-object v3, p0, Lcom/nuance/xt9/input/InputView;->mKCMMap:Lcom/nuance/xt9/input/XT9KeyCharacterMap;

    if-eqz v3, :cond_2

    .line 178
    iget-object v3, p0, Lcom/nuance/xt9/input/InputView;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputFieldInfo;->getInputType()I

    move-result v2

    .line 179
    .local v2, inputType:I
    const v3, 0x8000

    and-int/2addr v3, v2

    if-eqz v3, :cond_5

    move v0, v5

    .line 182
    .local v0, autotext:Z
    :goto_2
    and-int/lit16 v3, v2, 0x1000

    if-eqz v3, :cond_6

    .line 183
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 192
    .local v1, cap:Landroid/text/method/TextKeyListener$Capitalize;
    :goto_3
    invoke-static {v0, v1}, Lcom/nuance/xt9/input/XT9TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Lcom/nuance/xt9/input/XT9TextKeyListener;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/xt9/input/InputView;->mKeyListener:Lcom/nuance/xt9/input/XT9TextKeyListener;

    .line 193
    iget-object v3, p0, Lcom/nuance/xt9/input/InputView;->mKCMMap:Lcom/nuance/xt9/input/XT9KeyCharacterMap;

    invoke-static {v3}, Lcom/nuance/xt9/input/XT9TextKeyListener;->setXT9KeyCharacterMap(Lcom/nuance/xt9/input/XT9KeyCharacterMap;)V

    .line 194
    iget-object v3, p0, Lcom/nuance/xt9/input/InputView;->mInlineKCMWords:Landroid/text/SpannableStringBuilder;

    invoke-static {v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 197
    .end local v0           #autotext:Z
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    .end local v2           #inputType:I
    :cond_2
    return-void

    :cond_3
    move v3, v4

    .line 170
    goto :goto_0

    :cond_4
    move v3, v4

    .line 171
    goto :goto_1

    .restart local v2       #inputType:I
    :cond_5
    move v0, v4

    .line 179
    goto :goto_2

    .line 184
    .restart local v0       #autotext:Z
    :cond_6
    and-int/lit16 v3, v2, 0x2000

    if-eqz v3, :cond_7

    .line 185
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_3

    .line 186
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_7
    and-int/lit16 v3, v2, 0x4000

    if-eqz v3, :cond_8

    .line 187
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_3

    .line 189
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_8
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_3
.end method

.method public updateSelection(IIIIII)V
    .locals 4
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newStart"
    .parameter "newEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 225
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/InputView;->mInlineKCMWords:Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/InputView;->mInlineKCMWords:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 226
    const/4 v1, -0x1

    if-eq p5, v1, :cond_1

    if-ne p5, p1, :cond_1

    if-ne p6, p4, :cond_1

    .line 227
    if-ne p3, p4, :cond_0

    .line 229
    iput p3, p0, Lcom/nuance/xt9/input/InputView;->mDeadKeySelStart:I

    .line 230
    iget v1, p0, Lcom/nuance/xt9/input/InputView;->mDeadKeySelStart:I

    iget v2, p0, Lcom/nuance/xt9/input/InputView;->mDeadKeySelStart:I

    iget-object v3, p0, Lcom/nuance/xt9/input/InputView;->mInlineKCMWords:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget v1, p0, Lcom/nuance/xt9/input/InputView;->mDeadKeySelStart:I

    if-ne p3, v1, :cond_2

    iget v1, p0, Lcom/nuance/xt9/input/InputView;->mDeadKeySelStart:I

    iget-object v2, p0, Lcom/nuance/xt9/input/InputView;->mInlineKCMWords:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-eq p4, v1, :cond_0

    .line 236
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputView;->flushCurrentActiveWord()V

    goto :goto_0
.end method
