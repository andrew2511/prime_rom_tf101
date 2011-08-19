.class public Lcom/nuance/xt9/input/IME;
.super Landroid/inputmethodservice/InputMethodService;
.source "IME.java"

# interfaces
.implements Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;
.implements Lcom/nuance/xt9/input/ToolBar$OnClickAction;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final ALPHA_HANDWRITING:Ljava/lang/String; = "Alpha.HandWriting"

.field private static final ALPHA_INPUT:Ljava/lang/String; = "Alpha.Input"

.field private static final BILINGUE_ALPHA_OFF:I = 0x0

.field private static final BILINGUE_ALPHA_ON:I = 0x1

.field private static final BILINGUE_ALPHA_ON_USER_SWITCHED:I = 0x2

.field private static final CHINESE_HANDWRITING:Ljava/lang/String; = "Chinese.HandWriting"

.field private static final CHINESE_INPUT:Ljava/lang/String; = "Chinese.input"

.field private static final CHINESE_TRACE:Ljava/lang/String; = "Chinese.Trace"

.field private static final DELETE_ACCELERATE_AT:I = 0x14

.field public static final KEYCODE_LANGUAGE_MENU:I = -0x65

.field public static final KEYCODE_OPTION_MENU:I = -0x64

.field private static final KOREAN_INPUT:Ljava/lang/String; = "Korean.Input"

.field private static final MSG_CYCLING_KEYBOARD_INPUTS:I = 0x67

.field private static final MSG_CYCLING_LANGUAGE:I = 0x66

.field private static final MSG_LAUNCH_SETTINGS:I = 0x6a

.field private static final MSG_SHOW_EXPIRATION_DIALOG:I = 0x6d

.field private static final MSG_SHOW_KEYBOARD_MENU:I = 0x68

.field private static final MSG_SHOW_LANGUAGE_MENU:I = 0x69

.field private static final MSG_SHOW_TRIAL_DISCLAIMER_DIALOG:I = 0x6e

.field private static final MSG_SWITCH_INPUTVIEW:I = 0x65

.field private static final MSG_TOGGLE_FULLSCREEN_HWR:I = 0x6c

.field private static final MSG_TOGGLE_HWR_KEYBOARD:I = 0x6b

.field private static final NO_VIEW:Ljava/lang/String; = "NO_VIEW"

.field private static final POS_METHOD:I = 0x1

.field private static final POS_SETTINGS:I = 0x0

.field private static final QUICK_PRESS:I = 0x2ee

.field public static final SYMBOL_TABLE_ACTION:Ljava/lang/String; = "asus.com.xt9.input.symbol_table_action"

.field public static final SYMBOL_TABLE_TEXT:Ljava/lang/String; = "symbol_table_text"

.field private static final TAG:Ljava/lang/String; = "XT9IME"

.field public static final TOGGLE_FULLSCREEN_ACTION:Ljava/lang/String; = "asus.com.xt9.input.toggle_fullscreen_action"

.field private static isUserAMonkey:Ljava/lang/reflect/Method;


# instance fields
.field private final FX_VOLUME:F

.field private final KEYBOARD_MODE:Ljava/lang/String;

.field private final LOCALE_SEPARATER:C

.field final XT9_PACKAGE_NAME:Ljava/lang/String;

.field private mAlertMessageDialog:Landroid/app/AlertDialog;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBilingueAlpha:I

.field private mBuildInfo:Lcom/nuance/xt9/input/BuildInfo;

.field private mCurConf:Landroid/content/res/Configuration;

.field private mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

.field private mCurrentInputViewName:Ljava/lang/String;

.field private mDabaseConfig:Lcom/nuance/xt9/input/DatabaseConfig;

.field private mEmptyView:Landroid/view/View;

.field mHandler:Landroid/os/Handler;

.field mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

.field private mInputLocaleStr:Ljava/lang/String;

.field private mInputMethods:Lcom/nuance/xt9/input/InputMethods;

.field private mInputViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/xt9/input/InputView;",
            ">;"
        }
    .end annotation
.end field

.field mKeyboardContainer:Landroid/view/View;

.field private mLastHardwareKeyCode:I

.field private mLastKey:I

.field private mLastKeyTime:J

.field private mLocale:Ljava/lang/String;

.field private mLocaleChanged:Z

.field private mMode:Ljava/lang/String;

.field private mNeedAdjustInputModeByInputField:Z

.field private mOptionsDialog:Landroid/app/AlertDialog;

.field private mPreviousInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

.field private mPreviousInputModeChar:Ljava/lang/String;

.field private mQuickPressed:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRepeatedKeyCount:I

.field private mShowLanguageMenuOnKeyUp:Z

.field private mSilentMode:Z

.field private mSoundOn:Z

.field private mSuppressShowCandidateView:Z

.field mSymbolKeyRepeatCount:I

.field mSymbolKeyboard:Landroid/app/AlertDialog;

.field mSymbolKeyboardView:Lcom/nuance/xt9/input/KeyboardViewEx;

.field mSymbolTable:Lcom/nuance/xt9/input/SymbolTable;

.field mSymbolTableActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

.field private mSystemLocale:Ljava/util/Locale;

.field private mTextEntryWithPredictionOn:Z

.field private mToastEnabled:Z

.field private mToolBar:Lcom/nuance/xt9/input/ToolBar;

.field public mUDBChineseSimplifyField:Z

.field public mUDBChineseTraditionalField:Z

.field public mUDBSubstitutionField:Z

.field private mVibrateDuration:J

.field private mVibrateOn:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mWantToast:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/xt9/input/IME;->isUserAMonkey:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    .line 112
    const-string v0, "com.nuance.xt9.input"

    iput-object v0, p0, Lcom/nuance/xt9/input/IME;->XT9_PACKAGE_NAME:Ljava/lang/String;

    .line 113
    const/16 v0, 0x5f

    iput-char v0, p0, Lcom/nuance/xt9/input/IME;->LOCALE_SEPARATER:C

    .line 114
    const-string v0, "keyboard"

    iput-object v0, p0, Lcom/nuance/xt9/input/IME;->KEYBOARD_MODE:Ljava/lang/String;

    .line 120
    const-string v0, "NO_VIEW"

    iput-object v0, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/xt9/input/IME;->mLocaleChanged:Z

    .line 132
    iput-boolean v1, p0, Lcom/nuance/xt9/input/IME;->mUDBSubstitutionField:Z

    .line 133
    iput-boolean v1, p0, Lcom/nuance/xt9/input/IME;->mUDBChineseSimplifyField:Z

    .line 134
    iput-boolean v1, p0, Lcom/nuance/xt9/input/IME;->mUDBChineseTraditionalField:Z

    .line 147
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/nuance/xt9/input/IME;->FX_VOLUME:F

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/xt9/input/IME;->mPreviousInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 160
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/xt9/input/IME;->mPreviousInputModeChar:Ljava/lang/String;

    .line 161
    iput v1, p0, Lcom/nuance/xt9/input/IME;->mBilingueAlpha:I

    .line 179
    new-instance v0, Lcom/nuance/xt9/input/IME$1;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/IME$1;-><init>(Lcom/nuance/xt9/input/IME;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/IME;->mSymbolTableActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    .line 1658
    new-instance v0, Lcom/nuance/xt9/input/IME$5;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/IME$5;-><init>(Lcom/nuance/xt9/input/IME;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2089
    new-instance v0, Lcom/nuance/xt9/input/IME$10;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/IME$10;-><init>(Lcom/nuance/xt9/input/IME;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    .line 2354
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/xt9/input/IME;->mLastHardwareKeyCode:I

    .line 2415
    iput-boolean v1, p0, Lcom/nuance/xt9/input/IME;->mNeedAdjustInputModeByInputField:Z

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/xt9/input/IME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/xt9/input/IME;)Lcom/nuance/xt9/input/InputView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getCurrentInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/xt9/input/IME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->togleHwrAndKeyboardInputMode()V

    return-void
.end method

.method static synthetic access$1100(Lcom/nuance/xt9/input/IME;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/IME;->showAlertMessageDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/xt9/input/IME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->toggleFullScreenHwr()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/xt9/input/IME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->launchSettings()V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/xt9/input/IME;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/xt9/input/IME;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/xt9/input/IME;Lcom/nuance/xt9/input/InputFieldInfo;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/xt9/input/IME;->setupInputView(Lcom/nuance/xt9/input/InputFieldInfo;ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/xt9/input/IME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->handleXT9LanguageCyclingKey()V

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/xt9/input/IME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->cyclingKeyboardInput()V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/xt9/input/IME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->showLanguageMenu()V

    return-void
.end method

.method private acquireWindowToken()V
    .locals 2

    .prologue
    .line 2390
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2392
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    .line 2393
    .local v0, imeWindow:Landroid/app/Dialog;
    new-instance v1, Lcom/nuance/xt9/input/IME$11;

    invoke-direct {v1, p0, v0}, Lcom/nuance/xt9/input/IME$11;-><init>(Lcom/nuance/xt9/input/IME;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2400
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2405
    .end local v0           #imeWindow:Landroid/app/Dialog;
    :cond_0
    :goto_0
    return-void

    .line 2401
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private adjustInputModeByInputField()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2418
    iget-boolean v5, p0, Lcom/nuance/xt9/input/IME;->mNeedAdjustInputModeByInputField:Z

    if-eqz v5, :cond_3

    .line 2419
    iput-boolean v7, p0, Lcom/nuance/xt9/input/IME;->mNeedAdjustInputModeByInputField:Z

    .line 2421
    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    const-string v6, "alpha"

    invoke-virtual {v5, v6}, Lcom/nuance/xt9/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    .line 2422
    .local v0, alphaInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v2

    .line 2423
    .local v2, currentInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mPreviousInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mPreviousInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    move v3, v8

    .line 2426
    .local v3, isHandwriting:Z
    :goto_0
    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    .line 2427
    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputFieldInfo;->isPasswordField()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputFieldInfo;->isURLField()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v3, :cond_2

    :cond_1
    iget v5, p0, Lcom/nuance/xt9/input/IME;->mBilingueAlpha:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    .line 2433
    :cond_2
    invoke-virtual {v0, v2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2434
    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/xt9/input/IME;->mPreviousInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 2435
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->setPreviousChar()V

    .line 2436
    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 2437
    iget v5, p0, Lcom/nuance/xt9/input/IME;->mBilingueAlpha:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/nuance/xt9/input/IME;->mBilingueAlpha:I

    .line 2438
    iput-boolean v8, p0, Lcom/nuance/xt9/input/IME;->mWantToast:Z

    .line 2463
    .end local v0           #alphaInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    .end local v2           #currentInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    .end local v3           #isHandwriting:Z
    :cond_3
    :goto_1
    return-void

    .restart local v0       #alphaInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    .restart local v2       #currentInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_4
    move v3, v7

    .line 2423
    goto :goto_0

    .line 2441
    .restart local v3       #isHandwriting:Z
    :cond_5
    invoke-virtual {v0, v2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2442
    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mPreviousInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

    if-nez v5, :cond_6

    .line 2443
    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v5, v5, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v5}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2444
    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    const/16 v6, 0xe0

    invoke-virtual {v5, v6}, Lcom/nuance/xt9/input/InputMethods;->findInputLanguage(I)Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v1

    .line 2445
    .local v1, chtLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    if-eqz v1, :cond_7

    const-string v5, "bpmf"

    invoke-virtual {v1, v5}, Lcom/nuance/xt9/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v5

    :goto_2
    iput-object v5, p0, Lcom/nuance/xt9/input/IME;->mPreviousInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 2454
    .end local v1           #chtLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_6
    :goto_3
    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mPreviousInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

    if-eqz v5, :cond_3

    .line 2455
    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mPreviousInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 2456
    iput v7, p0, Lcom/nuance/xt9/input/IME;->mBilingueAlpha:I

    .line 2457
    iput-boolean v8, p0, Lcom/nuance/xt9/input/IME;->mWantToast:Z

    goto :goto_1

    .restart local v1       #chtLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_7
    move-object v5, v9

    .line 2445
    goto :goto_2

    .line 2447
    .end local v1           #chtLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_8
    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v5, v5, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v5}, Lcom/nuance/xt9/input/InputMethods$Language;->isKoreanLanguageId(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2448
    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Lcom/nuance/xt9/input/InputMethods;->findInputLanguage(I)Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v4

    .line 2449
    .local v4, koreanLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    if-eqz v4, :cond_9

    iget-object v5, v4, Lcom/nuance/xt9/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/nuance/xt9/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v5

    :goto_4
    iput-object v5, p0, Lcom/nuance/xt9/input/IME;->mPreviousInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

    goto :goto_3

    :cond_9
    move-object v5, v9

    goto :goto_4
.end method

.method private checkTrialBuildInfo()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/16 v5, 0x6e

    const/16 v4, 0x6d

    .line 1005
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mBuildInfo:Lcom/nuance/xt9/input/BuildInfo;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/BuildInfo;->isTrialBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1006
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mBuildInfo:Lcom/nuance/xt9/input/BuildInfo;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/BuildInfo;->updateExpirationPeriod()V

    .line 1007
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mBuildInfo:Lcom/nuance/xt9/input/BuildInfo;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/BuildInfo;->isTrialPeriodExpired()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1008
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1009
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mBuildInfo:Lcom/nuance/xt9/input/BuildInfo;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/BuildInfo;->isPrereleaseCandidateBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1013
    invoke-static {p0}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1014
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "trial_disclaimer_msg_already_shown"

    .line 1015
    .local v1, trial_disclaimer_shown_key:Ljava/lang/String;
    const-string v2, "trial_disclaimer_msg_already_shown"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1016
    const-string v2, "trial_disclaimer_msg_already_shown"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/nuance/xt9/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1017
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1018
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private createCandidatesView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 817
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 818
    :cond_0
    const-string v2, "XT9IME"

    const-string v3, "createCandidatesView()...no input views"

    invoke-static {v2, v3}, Lcom/nuance/xt9/input/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 847
    :goto_0
    return-object v2

    .line 830
    :cond_1
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getCurrentInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputView;->createCandidatesView()Landroid/view/View;

    move-result-object v1

    .line 835
    .local v1, wordCandidateView:Landroid/view/View;
    iput-object v4, p0, Lcom/nuance/xt9/input/IME;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    .line 836
    instance-of v2, v1, Lcom/nuance/xt9/input/WordListViewContainer;

    if-eqz v2, :cond_4

    .line 837
    move-object v0, v1

    check-cast v0, Lcom/nuance/xt9/input/WordListViewContainer;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/nuance/xt9/input/WordListViewContainer;->getToolBar()Lcom/nuance/xt9/input/ToolBar;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/IME;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    .line 843
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    if-eqz v2, :cond_3

    .line 844
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    invoke-virtual {v2, p0}, Lcom/nuance/xt9/input/ToolBar;->setOnClickActionListener(Lcom/nuance/xt9/input/ToolBar$OnClickAction;)V

    :cond_3
    move-object v2, v1

    .line 847
    goto :goto_0

    .line 839
    :cond_4
    instance-of v2, v1, Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    if-eqz v2, :cond_2

    .line 840
    move-object v0, v1

    check-cast v0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->getToolBar()Lcom/nuance/xt9/input/ToolBar;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/IME;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    goto :goto_1
.end method

.method private createInputViewFor(Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .parameter "inputViewName"

    .prologue
    const/4 v6, 0x0

    .line 680
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 681
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    .line 684
    :cond_0
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/xt9/input/InputView;

    .line 689
    .local v3, inputView:Lcom/nuance/xt9/input/InputView;
    const-string v4, "Alpha.Input"

    if-eq p1, v4, :cond_1

    const-string v4, "Chinese.HandWriting"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputFieldInfo;->isPasswordField()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 695
    :cond_1
    if-nez v3, :cond_2

    .line 696
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030005

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .end local v3           #inputView:Lcom/nuance/xt9/input/InputView;
    check-cast v3, Lcom/nuance/xt9/input/AlphaInputView;

    .line 697
    .restart local v3       #inputView:Lcom/nuance/xt9/input/InputView;
    invoke-virtual {v3, p0}, Lcom/nuance/xt9/input/AlphaInputView;->create(Lcom/nuance/xt9/input/IME;)V

    .line 698
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v4, v3

    .line 763
    :goto_0
    return-object v4

    .line 703
    :cond_3
    const-string v4, "Chinese.input"

    if-ne p1, v4, :cond_5

    .line 704
    if-nez v3, :cond_4

    .line 705
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03000e

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .end local v3           #inputView:Lcom/nuance/xt9/input/InputView;
    check-cast v3, Lcom/nuance/xt9/input/ChineseInputView;

    .line 706
    .restart local v3       #inputView:Lcom/nuance/xt9/input/InputView;
    invoke-virtual {v3, p0}, Lcom/nuance/xt9/input/ChineseInputView;->create(Lcom/nuance/xt9/input/IME;)V

    .line 707
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v4, v3

    .line 710
    goto :goto_0

    .line 712
    :cond_5
    const-string v4, "Chinese.Trace"

    if-ne p1, v4, :cond_7

    .line 713
    if-nez v3, :cond_6

    .line 714
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03000f

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .end local v3           #inputView:Lcom/nuance/xt9/input/InputView;
    check-cast v3, Lcom/nuance/xt9/input/ChineseTraceInputView;

    .line 715
    .restart local v3       #inputView:Lcom/nuance/xt9/input/InputView;
    invoke-virtual {v3, p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->create(Lcom/nuance/xt9/input/IME;)V

    .line 716
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object v4, v3

    .line 719
    goto :goto_0

    .line 721
    :cond_7
    const-string v4, "Alpha.HandWriting"

    if-ne p1, v4, :cond_9

    .line 722
    if-nez v3, :cond_8

    .line 723
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030003

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nuance/xt9/input/AlphaHandWritingContainerView;

    .line 725
    .local v2, handwritingContainer:Lcom/nuance/xt9/input/AlphaHandWritingContainerView;
    invoke-virtual {v2}, Lcom/nuance/xt9/input/AlphaHandWritingContainerView;->initViews()V

    .line 726
    invoke-virtual {v2}, Lcom/nuance/xt9/input/AlphaHandWritingContainerView;->getInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v3

    .line 727
    invoke-virtual {v3, p0}, Lcom/nuance/xt9/input/InputView;->create(Lcom/nuance/xt9/input/IME;)V

    .line 728
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    .end local v2           #handwritingContainer:Lcom/nuance/xt9/input/AlphaHandWritingContainerView;
    :cond_8
    move-object v0, v3

    check-cast v0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->getContainerView()Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 735
    :cond_9
    const-string v4, "Chinese.HandWriting"

    if-ne p1, v4, :cond_b

    .line 736
    if-nez v3, :cond_a

    .line 737
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03000c

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/ChineseHandWritingContainerView;

    .line 739
    .local v1, container:Lcom/nuance/xt9/input/ChineseHandWritingContainerView;
    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseHandWritingContainerView;->initViews()V

    .line 740
    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseHandWritingContainerView;->getInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v3

    .line 741
    invoke-virtual {v3, p0}, Lcom/nuance/xt9/input/InputView;->create(Lcom/nuance/xt9/input/IME;)V

    .line 742
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    .end local v1           #container:Lcom/nuance/xt9/input/ChineseHandWritingContainerView;
    :cond_a
    move-object v0, v3

    check-cast v0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->getContainerView()Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    .line 749
    :cond_b
    const-string v4, "Korean.Input"

    if-ne p1, v4, :cond_d

    .line 750
    if-nez v3, :cond_c

    .line 751
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030017

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .end local v3           #inputView:Lcom/nuance/xt9/input/InputView;
    check-cast v3, Lcom/nuance/xt9/input/KoreanInputView;

    .line 752
    .restart local v3       #inputView:Lcom/nuance/xt9/input/InputView;
    invoke-virtual {v3, p0}, Lcom/nuance/xt9/input/KoreanInputView;->create(Lcom/nuance/xt9/input/IME;)V

    .line 753
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    move-object v4, v3

    .line 756
    goto/16 :goto_0

    :cond_d
    move-object v4, v6

    .line 763
    goto/16 :goto_0
.end method

.method private cyclingKeyboardInput()V
    .locals 7

    .prologue
    const/16 v5, 0x65

    .line 1966
    iget-object v3, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    .line 1967
    .local v0, currentInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/xt9/input/InputMethods$Layout;

    move-result-object v1

    .line 1968
    .local v1, currentLayout:Lcom/nuance/xt9/input/InputMethods$Layout;
    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getNextLayout()Lcom/nuance/xt9/input/InputMethods$Layout;

    move-result-object v2

    .line 1969
    .local v2, nextLayout:Lcom/nuance/xt9/input/InputMethods$Layout;
    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/InputMethods$Layout;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1970
    iget-object v3, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputView;->flushCurrentActiveWord()V

    .line 1971
    iget-object v3, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1972
    iget-object v3, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1974
    :cond_0
    return-void
.end method

.method private destroyAllInputView()V
    .locals 5

    .prologue
    .line 504
    iget-object v3, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 505
    iget-object v3, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 506
    .local v1, keyArray:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 507
    iget-object v3, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/xt9/input/InputView;

    .line 508
    .local v2, view:Lcom/nuance/xt9/input/InputView;
    if-eqz v2, :cond_0

    .line 509
    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputView;->destroy()V

    .line 506
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    .end local v0           #i:I
    .end local v1           #keyArray:[Ljava/lang/Object;
    .end local v2           #view:Lcom/nuance/xt9/input/InputView;
    :cond_1
    return-void
.end method

.method private destroyAllInputs()V
    .locals 1

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->finishAllInputView()V

    .line 537
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->destroyAllInputView()V

    .line 538
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->resetInputView()V

    .line 540
    const-string v0, "NO_VIEW"

    iput-object v0, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/xt9/input/IME;->mEmptyView:Landroid/view/View;

    .line 546
    return-void
.end method

.method private findMatchedSubtype(Ljava/util/List;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 3
    .parameter
    .parameter "inputMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/view/inputmethod/InputMethodSubtype;"
        }
    .end annotation

    .prologue
    .line 2582
    .local p1, subtypeList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 2583
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    .line 2584
    .local v1, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 2590
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private finishAllInputView()V
    .locals 5

    .prologue
    .line 516
    iget-object v3, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 517
    iget-object v3, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 518
    .local v1, keyArray:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 519
    iget-object v3, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/xt9/input/InputView;

    .line 520
    .local v2, view:Lcom/nuance/xt9/input/InputView;
    if-eqz v2, :cond_0

    .line 521
    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputView;->finishInput()V

    .line 518
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    .end local v0           #i:I
    .end local v1           #keyArray:[Ljava/lang/Object;
    .end local v2           #view:Lcom/nuance/xt9/input/InputView;
    :cond_1
    return-void
.end method

.method private getCurrentInputView()Lcom/nuance/xt9/input/InputView;
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    :cond_0
    const/4 v0, 0x0

    .line 500
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nuance/xt9/input/InputView;

    move-object v0, p0

    goto :goto_0
.end method

.method private getWindowToken()Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 2381
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 2382
    .local v0, windowToken:Landroid/os/IBinder;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2383
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 2385
    :cond_0
    return-object v0
.end method

.method private getXT9EnabledSubtypes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2569
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/nuance/xt9/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 2570
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 2572
    .local v0, enabledInputMethodList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 2573
    .local v3, inputMethod:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.nuance.xt9.input"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2574
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 2578
    .end local v3           #inputMethod:Landroid/view/inputmethod/InputMethodInfo;
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private handleBackspace(I)V
    .locals 3
    .parameter "repeatedCount"

    .prologue
    .line 1573
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getCurrentInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v0

    .line 1575
    .local v0, inputView:Lcom/nuance/xt9/input/InputView;
    if-eqz v0, :cond_0

    const/4 v1, -0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/nuance/xt9/input/InputView;->handleKey(IZI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1582
    :goto_0
    return-void

    .line 1581
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/IME;->sendBackspace(I)V

    goto :goto_0
.end method

.method private handleClose()V
    .locals 1

    .prologue
    .line 1738
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getCurrentInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1739
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getCurrentInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputView;->handleClose()V

    .line 1742
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/IME;->requestHideSelf(I)V

    .line 1743
    return-void
.end method

.method private handleSpace(ZI)V
    .locals 2
    .parameter "quickPressed"
    .parameter "repeatedCount"

    .prologue
    .line 1585
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getCurrentInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v0

    .line 1587
    .local v0, inputView:Lcom/nuance/xt9/input/InputView;
    if-eqz v0, :cond_0

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p1, p2}, Lcom/nuance/xt9/input/InputView;->handleKey(IZI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1595
    :goto_0
    return-void

    .line 1594
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->sendSpace()V

    goto :goto_0
.end method

.method private handleXT9LanguageCyclingKey()V
    .locals 8

    .prologue
    .line 1550
    iget-object v6, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v6, v6, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v6}, Lcom/nuance/xt9/input/InputMethods$Language;->isAlphabetic(I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isAlphaInputMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1553
    iget-object v6, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    const-string v7, "ambig"

    invoke-virtual {v6, v7}, Lcom/nuance/xt9/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v3

    .line 1554
    .local v3, inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    if-eqz v3, :cond_0

    .line 1555
    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 1559
    .end local v3           #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_0
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/nuance/xt9/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 1560
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 1561
    .local v0, currentSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getXT9EnabledSubtypes()Ljava/util/List;

    move-result-object v5

    .line 1562
    .local v5, xt9SubtypeList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v5, :cond_1

    .line 1563
    invoke-interface {v5, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1564
    .local v1, idx:I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 1565
    add-int/lit8 v6, v1, 0x1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    rem-int/2addr v6, v7

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    .line 1566
    .local v4, nextSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodManager;->setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z

    .line 1570
    .end local v1           #idx:I
    .end local v4           #nextSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    return-void
.end method

.method public static isAltPressed(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2176
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    return v0
.end method

.method public static isCapsLocked(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2184
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isCapsLockOn()Z

    move-result v0

    return v0
.end method

.method public static isCtrlPressed(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2180
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    return v0
.end method

.method private isHotKeyForShowLanguageMenu(ILandroid/view/KeyEvent;Z)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"
    .parameter "checkMandatoryKey"

    .prologue
    const/4 v1, 0x1

    .line 2194
    if-eqz p3, :cond_0

    invoke-static {p2}, Lcom/nuance/xt9/input/IME;->isCtrlPressed(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/16 v0, 0x3b

    if-eq v0, p1, :cond_1

    const/16 v0, 0x3c

    if-ne v0, p1, :cond_2

    :cond_1
    move v0, v1

    .line 2206
    :goto_0
    return v0

    .line 2199
    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p2}, Lcom/nuance/xt9/input/IME;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    const/16 v0, 0x71

    if-eq v0, p1, :cond_4

    const/16 v0, 0x72

    if-ne v0, p1, :cond_5

    :cond_4
    move v0, v1

    .line 2203
    goto :goto_0

    .line 2206
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHotKeyForShowSymbolDialog(ILandroid/view/KeyEvent;Z)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"
    .parameter "checkMandatoryKey"

    .prologue
    .line 2226
    if-eqz p3, :cond_0

    invoke-static {p2}, Lcom/nuance/xt9/input/IME;->isAltPressed(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x3e

    if-ne v0, p1, :cond_1

    .line 2229
    const/4 v0, 0x1

    .line 2232
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHotKeyForToggleAlphaInputMode(ILandroid/view/KeyEvent;Z)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"
    .parameter "checkMandatoryKey"

    .prologue
    .line 2213
    if-eqz p3, :cond_0

    invoke-static {p2}, Lcom/nuance/xt9/input/IME;->isCtrlPressed(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x3e

    if-ne v0, p1, :cond_1

    .line 2216
    const/4 v0, 0x1

    .line 2219
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInputViewCanBeShown()Z
    .locals 2

    .prologue
    .line 2408
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->isHardwareKeyboardPresented()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 2411
    .local v0, shown:Z
    :goto_0
    return v0

    .line 2408
    .end local v0           #shown:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static isShiftPressed(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2172
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    return v0
.end method

.method private launchSettings()V
    .locals 5

    .prologue
    .line 1749
    :try_start_0
    sget-object v2, Lcom/nuance/xt9/input/IME;->isUserAMonkey:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/nuance/xt9/input/IME;->isUserAMonkey:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 1767
    :goto_0
    return-void

    .line 1754
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1759
    .local v0, ex:Ljava/lang/Exception;
    goto :goto_0

    .line 1762
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->handleClose()V

    .line 1763
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1764
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/nuance/xt9/input/Settings;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1765
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1766
    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/IME;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private loadInputMethods(Z)V
    .locals 3
    .parameter "refresh"

    .prologue
    const/4 v2, 0x0

    .line 627
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/xt9/input/IME;->mLocaleChanged:Z

    if-eqz v0, :cond_1

    .line 632
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    .line 634
    new-instance v0, Lcom/nuance/xt9/input/InputMethods;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/InputMethods;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    if-eqz v0, :cond_3

    .line 639
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods;->restoreInputLanguage()V

    .line 640
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    iget-boolean v1, p0, Lcom/nuance/xt9/input/IME;->mUDBChineseSimplifyField:Z

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/InputMethods;->setUDBSimplifyField(Z)V

    .line 641
    iget-boolean v0, p0, Lcom/nuance/xt9/input/IME;->mUDBChineseSimplifyField:Z

    if-eqz v0, :cond_2

    .line 643
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    const/16 v1, 0xe1

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/InputMethods;->createLanguageListForUDB(I)V

    .line 645
    :cond_2
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    iget-boolean v1, p0, Lcom/nuance/xt9/input/IME;->mUDBChineseTraditionalField:Z

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/InputMethods;->setUDBTraditionalField(Z)V

    .line 646
    iget-boolean v0, p0, Lcom/nuance/xt9/input/IME;->mUDBChineseTraditionalField:Z

    if-eqz v0, :cond_3

    .line 648
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    const/16 v1, 0xe0

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/InputMethods;->createLanguageListForUDB(I)V

    .line 654
    :cond_3
    if-nez p1, :cond_4

    iget-boolean v0, p0, Lcom/nuance/xt9/input/IME;->mLocaleChanged:Z

    if-eqz v0, :cond_5

    .line 655
    :cond_4
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods;->syncWithCurrentUserConfiguration()V

    .line 659
    :cond_5
    iput-boolean v2, p0, Lcom/nuance/xt9/input/IME;->mLocaleChanged:Z

    .line 662
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/IME;->setInputLanguage(Lcom/nuance/xt9/input/InputMethods$Language;)V

    .line 665
    if-eqz p1, :cond_6

    .line 666
    iput-boolean v2, p0, Lcom/nuance/xt9/input/IME;->mWantToast:Z

    .line 669
    :cond_6
    return-void
.end method

.method private loadSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1771
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1772
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "vibrate_on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/xt9/input/IME;->mVibrateOn:Z

    .line 1773
    const-string v1, "sound_on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/xt9/input/IME;->mSoundOn:Z

    .line 1774
    return-void
.end method

.method private playKeyClick(I)V
    .locals 3
    .parameter "primaryCode"

    .prologue
    .line 1703
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 1704
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 1705
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->updateRingerMode()V

    .line 1708
    :cond_0
    iget-boolean v1, p0, Lcom/nuance/xt9/input/IME;->mSoundOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/nuance/xt9/input/IME;->mSilentMode:Z

    if-nez v1, :cond_1

    .line 1709
    const/4 v0, 0x5

    .line 1710
    .local v0, sound:I
    sparse-switch p1, :sswitch_data_0

    .line 1721
    :goto_0
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mAudioManager:Landroid/media/AudioManager;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 1723
    .end local v0           #sound:I
    :cond_1
    return-void

    .line 1712
    .restart local v0       #sound:I
    :sswitch_0
    const/4 v0, 0x7

    .line 1713
    goto :goto_0

    .line 1715
    :sswitch_1
    const/16 v0, 0x8

    .line 1716
    goto :goto_0

    .line 1718
    :sswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 1710
    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_0
        0xa -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method private removeAllPendingMsgs()V
    .locals 2

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2011
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2012
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2013
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2014
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2015
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2016
    return-void
.end method

.method private removeViewParent(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 2330
    if-nez p1, :cond_1

    .line 2351
    :cond_0
    :goto_0
    return-void

    .line 2334
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2335
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 2336
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 2337
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private resetInputView()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 532
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    .line 533
    return-void
.end method

.method private setCurrentInputViewName()Ljava/lang/String;
    .locals 8

    .prologue
    .line 337
    iget-object v6, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    .line 338
    .local v6, prevInputViewName:Ljava/lang/String;
    iget-object v7, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    .line 352
    .local v0, currentInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    const/4 v3, 0x0

    .line 353
    .local v3, isCKJPredictionOn:Z
    iget-object v7, p0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    if-eqz v7, :cond_0

    .line 356
    iget-object v7, p0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v7}, Lcom/nuance/xt9/input/InputFieldInfo;->isSuggestionEnabledInCKJ()Z

    move-result v3

    .line 359
    :cond_0
    iget-object v7, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v7, v7, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v7}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v4

    .line 361
    .local v4, isChineseLanguageId:Z
    iget-object v7, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v7, v7, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v7}, Lcom/nuance/xt9/input/InputMethods$Language;->isKoreanLanguageId(I)Z

    move-result v5

    .line 363
    .local v5, isKoreanLanguageId:Z
    iget-object v7, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v7, v7, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v7}, Lcom/nuance/xt9/input/InputMethods$Language;->isCKJ(I)Z

    move-result v2

    .line 366
    .local v2, isCKJ:Z
    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v7

    if-nez v7, :cond_3

    .line 367
    iget-object v7, p0, Lcom/nuance/xt9/input/IME;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    invoke-virtual {v7}, Lcom/nuance/xt9/input/InputMethods;->getDefaultAlphabeticInputLanguage()Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v1

    .line 368
    .local v1, defaultAlphaInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    if-eqz v1, :cond_1

    .line 374
    iput-object v1, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    .line 375
    iget-object v7, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 376
    const-string v7, "Alpha.HandWriting"

    iput-object v7, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    .line 413
    .end local v1           #defaultAlphaInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_1
    :goto_0
    return-object v6

    .line 378
    .restart local v1       #defaultAlphaInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_2
    const-string v7, "Alpha.Input"

    iput-object v7, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 382
    .end local v1           #defaultAlphaInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_3
    if-eqz v4, :cond_7

    .line 383
    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 384
    const-string v7, "Chinese.HandWriting"

    iput-object v7, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 385
    :cond_4
    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isChineseTraceInputMode()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 386
    const-string v7, "Chinese.Trace"

    iput-object v7, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 390
    :cond_5
    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isAlphaInputMode()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 391
    const-string v7, "Alpha.Input"

    iput-object v7, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 393
    :cond_6
    const-string v7, "Chinese.input"

    iput-object v7, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 397
    :cond_7
    if-eqz v5, :cond_9

    .line 398
    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isAlphaInputMode()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 399
    const-string v7, "Alpha.Input"

    iput-object v7, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 401
    :cond_8
    const-string v7, "Korean.Input"

    iput-object v7, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 404
    :cond_9
    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 405
    const-string v7, "Alpha.HandWriting"

    iput-object v7, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 407
    :cond_a
    const-string v7, "Alpha.Input"

    iput-object v7, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0
.end method

.method private setInputFieldInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 1
    .parameter "attribute"

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    if-nez v0, :cond_0

    .line 1027
    new-instance v0, Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-direct {v0}, Lcom/nuance/xt9/input/InputFieldInfo;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v0, p1, p0}, Lcom/nuance/xt9/input/InputFieldInfo;->setAttribute(Landroid/view/inputmethod/EditorInfo;Lcom/nuance/xt9/input/IME;)V

    .line 1031
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/IME;->mTextEntryWithPredictionOn:Z

    .line 1032
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputFieldInfo;->isUDBSubstitutionField()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/IME;->mUDBSubstitutionField:Z

    .line 1033
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputFieldInfo;->isUDBChineseSimplifyField()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/IME;->mUDBChineseSimplifyField:Z

    .line 1034
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputFieldInfo;->isUDBChineseTraditionalField()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/IME;->mUDBChineseTraditionalField:Z

    .line 1037
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputFieldInfo;->isSuggestionEnabledInAlphabetic()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputFieldInfo;->isSuggestionEnabledInCKJ()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/xt9/input/IME;->mToastEnabled:Z

    .line 1040
    return-void

    .line 1037
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setInputLanguage(Lcom/nuance/xt9/input/InputMethods$Language;)V
    .locals 2
    .parameter "inputLanguage"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v0, v0, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    iget v1, p1, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    if-eq v0, v1, :cond_1

    .line 673
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/xt9/input/IME;->mWantToast:Z

    .line 676
    :cond_1
    iput-object p1, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    .line 677
    return-void
.end method

.method private setLanguageAndMode()V
    .locals 4

    .prologue
    .line 2547
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    if-nez v2, :cond_1

    .line 2566
    :cond_0
    :goto_0
    return-void

    .line 2551
    :cond_1
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    iget-object v3, p0, Lcom/nuance/xt9/input/IME;->mInputLocaleStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v1

    .line 2552
    .local v1, language:Lcom/nuance/xt9/input/InputMethods$Language;
    if-eqz v1, :cond_0

    .line 2553
    iget v2, v1, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v2}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2554
    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 2564
    :cond_2
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/xt9/input/IME;->mNeedAdjustInputModeByInputField:Z

    goto :goto_0

    .line 2557
    :cond_3
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    .line 2558
    .local v0, inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    if-eqz v0, :cond_2

    .line 2559
    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->saveAsCurrent()V

    goto :goto_1
.end method

.method private setPreviousChar()V
    .locals 2

    .prologue
    .line 1068
    :try_start_0
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v1, v1, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/xt9/input/InputMethods$InputMode;->mChtBackKeyString:Ljava/lang/String;

    move-object v0, v1

    .line 1072
    .local v0, backKeyString:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 1073
    iput-object v0, p0, Lcom/nuance/xt9/input/IME;->mPreviousInputModeChar:Ljava/lang/String;

    .line 1077
    .end local v0           #backKeyString:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 1068
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-object v1, v1, Lcom/nuance/xt9/input/InputMethods$Language;->mBackKeyString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 1075
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private setStatusIcon(I)V
    .locals 0
    .parameter "inputModeIconResId"

    .prologue
    .line 1060
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/IME;->showStatusIcon(I)V

    .line 1061
    return-void
.end method

.method private setupInputView(Lcom/nuance/xt9/input/InputFieldInfo;ZZ)V
    .locals 5
    .parameter "inputFieldInfo"
    .parameter "restarting"
    .parameter "refreshInputMethods"

    .prologue
    const/4 v4, 0x0

    .line 903
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 904
    const/4 v2, -0x1

    iput v2, p0, Lcom/nuance/xt9/input/IME;->mLastKey:I

    .line 906
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->loadSettings()V

    .line 907
    invoke-direct {p0, p3}, Lcom/nuance/xt9/input/IME;->loadInputMethods(Z)V

    .line 911
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->adjustInputModeByInputField()V

    .line 915
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mPreviousInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isAlphaInputMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 917
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v2, v2, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v2}, Lcom/nuance/xt9/input/InputMethods$Language;->isAlphabetic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 919
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    const-string v3, "ambig"

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/InputMethods$Language;->findInputMode(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v1

    .line 920
    .local v1, mCurrentInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 925
    .end local v1           #mCurrentInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_0
    iget-boolean v2, p0, Lcom/nuance/xt9/input/IME;->mToastEnabled:Z

    if-eqz v2, :cond_1

    .line 926
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->showCurrentLanguage()V

    .line 932
    :cond_1
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->switchView()V

    .line 935
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getCurrentInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/InputView;->setCurrentInputLanguage(Lcom/nuance/xt9/input/InputMethods$Language;)V

    .line 936
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getCurrentInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/nuance/xt9/input/InputView;->startInput(Lcom/nuance/xt9/input/InputFieldInfo;Z)V

    .line 938
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getCurrentInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/XT9Keyboard;

    .line 939
    .local v0, keyboard:Lcom/nuance/xt9/input/XT9Keyboard;
    if-eqz v0, :cond_2

    .line 940
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mPreviousInputModeChar:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/nuance/xt9/input/XT9Keyboard;->setPreModeKey(Ljava/lang/String;)V

    .line 943
    :cond_2
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/IME;->updateToolBar(Lcom/nuance/xt9/input/InputFieldInfo;)V

    .line 944
    invoke-direct {p0, v4}, Lcom/nuance/xt9/input/IME;->updateLanguageCyclingKey(Z)V

    .line 947
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getCurrentInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/nuance/xt9/input/InputView;->setOnKeyboardActionListener(Lcom/nuance/xt9/input/IME;)V

    .line 950
    invoke-virtual {p0, v4}, Lcom/nuance/xt9/input/IME;->setCandidatesViewShown(Z)V

    .line 952
    return-void
.end method

.method private showAlertMessageDialog(I)V
    .locals 6
    .parameter "resId"

    .prologue
    .line 1931
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1932
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 1937
    :cond_0
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 1938
    .local v3, windowToken:Landroid/os/IBinder;
    if-nez v3, :cond_1

    .line 1962
    :goto_0
    return-void

    .line 1943
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1944
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1945
    const v4, 0x7f0200c9

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1946
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f08

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1947
    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1949
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/xt9/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    .line 1950
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1951
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1952
    .local v2, window:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1955
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1957
    const/16 v4, 0x3eb

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1958
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1959
    const/high16 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1961
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showCurrentLanguage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1081
    const/4 v0, 0x0

    .line 1083
    .local v0, displayLanguageOrMode:Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v1, v1, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1084
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v1

    iget-object v0, v1, Lcom/nuance/xt9/input/InputMethods$InputMode;->mDisplayInputMode:Ljava/lang/String;

    .line 1097
    :goto_0
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v1

    iget v1, v1, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputModeIconResId:I

    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/IME;->setStatusIcon(I)V

    .line 1100
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/nuance/xt9/input/IME;->mWantToast:Z

    if-eqz v1, :cond_0

    .line 1101
    invoke-static {p0, v0, v3}, Lcom/nuance/xt9/input/InputMethodToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 1102
    iput-boolean v3, p0, Lcom/nuance/xt9/input/IME;->mWantToast:Z

    .line 1104
    :cond_0
    return-void

    .line 1088
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isAlphaInputMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1089
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1091
    :cond_2
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-object v0, v1, Lcom/nuance/xt9/input/InputMethods$Language;->mDisplayLanguageName:Ljava/lang/String;

    goto :goto_0
.end method

.method private showLanguageMenu()V
    .locals 2

    .prologue
    .line 1777
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1792
    :goto_0
    return-void

    .line 1782
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1783
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getCurrentInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputView;->closing()V

    .line 1784
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/IME;->requestHideSelf(I)V

    .line 1789
    :cond_1
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1790
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_0
.end method

.method private showOptionMenu()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1795
    iget-object v6, p0, Lcom/nuance/xt9/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/nuance/xt9/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1854
    :cond_0
    :goto_0
    return-void

    .line 1801
    :cond_1
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    .line 1802
    .local v5, windowToken:Landroid/os/IBinder;
    if-eqz v5, :cond_0

    .line 1807
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1808
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1809
    const v6, 0x7f02005d

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1810
    const/high16 v6, 0x104

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1811
    new-instance v6, Lcom/nuance/xt9/input/IME$6;

    invoke-direct {v6, p0}, Lcom/nuance/xt9/input/IME$6;-><init>(Lcom/nuance/xt9/input/IME;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1822
    const v6, 0x7f080001

    invoke-virtual {p0, v6}, Lcom/nuance/xt9/input/IME;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1823
    .local v2, itemSettings:Ljava/lang/CharSequence;
    const v6, 0x7f08003e

    invoke-virtual {p0, v6}, Lcom/nuance/xt9/input/IME;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1825
    .local v1, itemInputMethod:Ljava/lang/CharSequence;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    aput-object v1, v6, v8

    new-instance v7, Lcom/nuance/xt9/input/IME$7;

    invoke-direct {v7, p0}, Lcom/nuance/xt9/input/IME$7;-><init>(Lcom/nuance/xt9/input/IME;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1842
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f08

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1843
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/nuance/xt9/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 1844
    iget-object v6, p0, Lcom/nuance/xt9/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 1845
    .local v4, window:Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1848
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object v5, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1850
    const/16 v6, 0x3eb

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1851
    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1852
    const/high16 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1853
    iget-object v6, p0, Lcom/nuance/xt9/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private switchView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 772
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getCurrentInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v2

    .line 773
    .local v2, prevInputView:Lcom/nuance/xt9/input/InputView;
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->setCurrentInputViewName()Ljava/lang/String;

    move-result-object v3

    .line 774
    .local v3, prevInputViewName:Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    .line 775
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/nuance/xt9/input/IME;->createInputViewFor(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 779
    .local v1, inputView:Landroid/view/View;
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->isInputViewCanBeShown()Z

    move-result v4

    if-nez v4, :cond_3

    .line 780
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030012

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/xt9/input/IME;->mEmptyView:Landroid/view/View;

    .line 781
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mEmptyView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 782
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mEmptyView:Landroid/view/View;

    .line 789
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 793
    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/IME;->removeViewParent(Landroid/view/View;)V

    .line 794
    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/IME;->setInputView(Landroid/view/View;)V

    .line 796
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->createCandidatesView()Landroid/view/View;

    move-result-object v0

    .line 797
    .local v0, candidateView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 798
    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/IME;->removeViewParent(Landroid/view/View;)V

    .line 799
    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/IME;->setCandidatesView(Landroid/view/View;)V

    .line 803
    .end local v0           #candidateView:Landroid/view/View;
    :cond_1
    if-eqz v2, :cond_2

    if-eq v2, v1, :cond_2

    .line 806
    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputView;->finishInput()V

    .line 812
    .end local v1           #inputView:Landroid/view/View;
    :cond_2
    return-void

    .line 785
    .restart local v1       #inputView:Landroid/view/View;
    :cond_3
    iput-object v6, p0, Lcom/nuance/xt9/input/IME;->mEmptyView:Landroid/view/View;

    goto :goto_0
.end method

.method private toggleFullScreenHwr()V
    .locals 5

    .prologue
    .line 1993
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getCurrentInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v2

    .line 1994
    .local v2, inputView:Lcom/nuance/xt9/input/InputView;
    if-eqz v2, :cond_0

    instance-of v4, v2, Lcom/nuance/xt9/input/HandWritingInputView;

    if-eqz v4, :cond_0

    .line 1996
    move-object v0, v2

    check-cast v0, Lcom/nuance/xt9/input/HandWritingInputView;

    move-object v1, v0

    .line 1997
    .local v1, hwrInputView:Lcom/nuance/xt9/input/HandWritingInputView;
    invoke-virtual {v1}, Lcom/nuance/xt9/input/HandWritingInputView;->toggleFullScreenHandWritingView()Z

    move-result v3

    .line 1998
    .local v3, isFullScreenHwr:Z
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->updateInputViewShown()V

    .line 2001
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/nuance/xt9/input/HandWritingInputView;->showHandWritingView(Z)V

    .line 2002
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    if-eqz v4, :cond_0

    .line 2003
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    invoke-virtual {v4, v3}, Lcom/nuance/xt9/input/ToolBar;->updateFullScreenHandWriting(Z)V

    .line 2007
    .end local v1           #hwrInputView:Lcom/nuance/xt9/input/HandWritingInputView;
    .end local v3           #isFullScreenHwr:Z
    :cond_0
    return-void
.end method

.method private togleHwrAndKeyboardInputMode()V
    .locals 6

    .prologue
    const/16 v4, 0x65

    .line 1977
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    .line 1978
    .local v0, currentInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$Language;->toggleHandwritingAndInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v1

    .line 1980
    .local v1, nextInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1985
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    iget-object v3, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputView;->finishInput()V

    .line 1987
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1988
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1990
    :cond_0
    return-void
.end method

.method private updateInputLocale(Ljava/lang/String;)V
    .locals 5
    .parameter "inputLocaleStr"

    .prologue
    .line 2530
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x5f

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 2531
    .local v1, localeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v1, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 2533
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2534
    iput-object p1, p0, Lcom/nuance/xt9/input/IME;->mInputLocaleStr:Ljava/lang/String;

    .line 2540
    :goto_0
    return-void

    .line 2537
    :cond_0
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mSystemLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 2538
    .local v0, country:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nuance/xt9/input/IME;->mSystemLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/IME;->mInputLocaleStr:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private updateInputMode(Ljava/lang/String;)V
    .locals 0
    .parameter "inputMode"

    .prologue
    .line 2543
    iput-object p1, p0, Lcom/nuance/xt9/input/IME;->mMode:Ljava/lang/String;

    .line 2544
    return-void
.end method

.method private updateInputViewShowFlag(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConf"
    .parameter "oldConf"

    .prologue
    const/4 v2, 0x1

    .line 2304
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 2305
    iget v0, p2, Landroid/content/res/Configuration;->keyboard:I

    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v0, v1, :cond_1

    .line 2308
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v2, :cond_2

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 2312
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->hideWindow()V

    .line 2324
    :cond_1
    :goto_0
    return-void

    .line 2313
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->onEvaluateFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2315
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mSymbolKeyboard:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 2316
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mSymbolKeyboard:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2320
    :cond_3
    invoke-virtual {p0, v2}, Lcom/nuance/xt9/input/IME;->showWindow(Z)V

    goto :goto_0
.end method

.method private updateLanguageCyclingKey(Z)V
    .locals 6
    .parameter "invalidateKey"

    .prologue
    const/4 v5, 0x1

    .line 1043
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getCurrentInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v1

    .line 1045
    .local v1, inputView:Lcom/nuance/xt9/input/InputView;
    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v3

    .line 1046
    .local v3, keyboard:Lcom/nuance/xt9/input/KeyboardEx;
    instance-of v4, v3, Lcom/nuance/xt9/input/XT9Keyboard;

    if-eqz v4, :cond_0

    .line 1049
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputMethods;->getInputLanguageCount()I

    move-result v4

    if-le v4, v5, :cond_1

    move v0, v5

    .line 1051
    .local v0, enabled:Z
    :goto_0
    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/XT9Keyboard;->updateLanguageCyclingKey(Z)Lcom/nuance/xt9/input/KeyboardEx$Key;

    move-result-object v2

    .line 1052
    .local v2, key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 1053
    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/InputView;->invalidateKey(Lcom/nuance/xt9/input/KeyboardEx$Key;)V

    .line 1056
    .end local v0           #enabled:Z
    .end local v2           #key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    :cond_0
    return-void

    .line 1049
    .restart local p0
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 1693
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/nuance/xt9/input/IME;->mAudioManager:Landroid/media/AudioManager;

    .line 1695
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 1696
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/xt9/input/IME;->mSilentMode:Z

    .line 1698
    :cond_1
    return-void

    .line 1696
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateToolBar(Lcom/nuance/xt9/input/InputFieldInfo;)V
    .locals 4
    .parameter "inputFieldInfo"

    .prologue
    .line 852
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    if-eqz v2, :cond_0

    .line 853
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    iget-object v3, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v2, v3, p1}, Lcom/nuance/xt9/input/ToolBar;->updateToolBar(Lcom/nuance/xt9/input/InputMethods$Language;Lcom/nuance/xt9/input/InputFieldInfo;)V

    .line 854
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getCurrentInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v1

    .line 855
    .local v1, view:Lcom/nuance/xt9/input/InputView;
    instance-of v2, v1, Lcom/nuance/xt9/input/HandWritingInputView;

    if-eqz v2, :cond_0

    .line 856
    check-cast v1, Lcom/nuance/xt9/input/HandWritingInputView;

    .end local v1           #view:Lcom/nuance/xt9/input/InputView;
    invoke-virtual {v1}, Lcom/nuance/xt9/input/HandWritingInputView;->isFullScreenHandWritingView()Z

    move-result v0

    .line 857
    .local v0, isFullScreen:Z
    iget-object v2, p0, Lcom/nuance/xt9/input/IME;->mToolBar:Lcom/nuance/xt9/input/ToolBar;

    invoke-virtual {v2, v0}, Lcom/nuance/xt9/input/ToolBar;->updateFullScreenHandWriting(Z)V

    .line 860
    .end local v0           #isFullScreen:Z
    :cond_0
    return-void
.end method

.method private vibrate()V
    .locals 3

    .prologue
    .line 1726
    iget-boolean v0, p0, Lcom/nuance/xt9/input/IME;->mVibrateOn:Z

    if-nez v0, :cond_1

    .line 1735
    :cond_0
    :goto_0
    return-void

    .line 1729
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_2

    .line 1730
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/nuance/xt9/input/IME;->mVibrator:Landroid/os/Vibrator;

    .line 1732
    :cond_2
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 1733
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mVibrator:Landroid/os/Vibrator;

    iget-wide v1, p0, Lcom/nuance/xt9/input/IME;->mVibrateDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method


# virtual methods
.method public countEnabledLanguageMode()I
    .locals 1

    .prologue
    .line 2159
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    if-eqz v0, :cond_0

    .line 2160
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods;->countEnabledLanguageMode()I

    move-result v0

    .line 2162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 2167
    const-string v0, "XT9IME"

    const-string v1, "XT9IME.finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    return-void
.end method

.method public getDatabaseConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mDabaseConfig:Lcom/nuance/xt9/input/DatabaseConfig;

    if-nez v0, :cond_0

    .line 2145
    new-instance v0, Lcom/nuance/xt9/input/DatabaseConfig;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/DatabaseConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/IME;->mDabaseConfig:Lcom/nuance/xt9/input/DatabaseConfig;

    .line 2147
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mDabaseConfig:Lcom/nuance/xt9/input/DatabaseConfig;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/DatabaseConfig;->getDatabaseConfigureFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2361
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getInputMethods()Lcom/nuance/xt9/input/InputMethods;
    .locals 1

    .prologue
    .line 2236
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    return-object v0
.end method

.method public getPreviousInputModeChar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mPreviousInputModeChar:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftInputWindow()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 2155
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public hideWindow()V
    .locals 2

    .prologue
    .line 1132
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1133
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1136
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1137
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1138
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/xt9/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 1141
    :cond_1
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getCurrentInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v0

    .line 1143
    .local v0, inputView:Lcom/nuance/xt9/input/InputView;
    if-eqz v0, :cond_2

    .line 1144
    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputView;->handleClose()V

    .line 1148
    :cond_2
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mSymbolKeyboard:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    .line 1149
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mSymbolKeyboard:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1153
    :cond_3
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 1154
    return-void
.end method

.method public isCandidateCanBeShown()Z
    .locals 2

    .prologue
    .line 2373
    iget-boolean v1, p0, Lcom/nuance/xt9/input/IME;->mSuppressShowCandidateView:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->isHardwareKeyboardPresented()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-boolean v1, v1, Lcom/nuance/xt9/input/InputMethods$Language;->mEnabledHardwareKeyboard:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 2377
    .local v0, showCandidate:Z
    :goto_0
    return v0

    .line 2373
    .end local v0           #showCandidate:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isHardwareKeyboardPresented()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2365
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mCurConf:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mCurConf:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    move v0, v3

    .line 2368
    .local v0, presented:Z
    :goto_0
    return v0

    .line 2365
    .end local v0           #presented:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public onClick(I)V
    .locals 8
    .parameter "buttonId"

    .prologue
    const/16 v7, 0x6b

    const/16 v6, 0x6a

    const/16 v5, 0x67

    const/16 v2, 0x66

    const-wide/16 v3, 0x5

    .line 2023
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mBuildInfo:Lcom/nuance/xt9/input/BuildInfo;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/BuildInfo;->isTrialPeriodExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2054
    :goto_0
    return-void

    .line 2027
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2030
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2031
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2035
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2036
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2040
    :pswitch_3
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2041
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2045
    :pswitch_4
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2046
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2050
    :pswitch_5
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2051
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2027
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 1
    .parameter "outInsets"

    .prologue
    .line 1217
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 1218
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1219
    iget v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 1221
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "conf"

    .prologue
    .line 556
    iget-object v6, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/nuance/xt9/input/IME;->mLocale:Ljava/lang/String;

    .line 570
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->destroyAllInputs()V

    .line 572
    new-instance v4, Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/nuance/xt9/input/IME;->mCurConf:Landroid/content/res/Configuration;

    invoke-direct {v4, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 573
    .local v4, oldConf:Landroid/content/res/Configuration;
    iget-object v6, p0, Lcom/nuance/xt9/input/IME;->mCurConf:Landroid/content/res/Configuration;

    invoke-virtual {v6, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 575
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 590
    iget-object v6, p0, Lcom/nuance/xt9/input/IME;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/nuance/xt9/input/IME;->mSystemLocale:Ljava/util/Locale;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/nuance/xt9/input/IME;->mSystemLocale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/xt9/input/IME;->mLocale:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 594
    :cond_0
    iget-object v6, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v6, p0, Lcom/nuance/xt9/input/IME;->mSystemLocale:Ljava/util/Locale;

    .line 596
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/nuance/xt9/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 597
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getXT9EnabledSubtypes()Ljava/util/List;

    move-result-object v5

    .line 598
    .local v5, xt9SubtypeList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 600
    .local v0, currSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 603
    const/4 v1, 0x0

    .line 604
    .local v1, defaultSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v6, p0, Lcom/nuance/xt9/input/IME;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    iget-object v7, p0, Lcom/nuance/xt9/input/IME;->mSystemLocale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nuance/xt9/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v3

    .line 605
    .local v3, language:Lcom/nuance/xt9/input/InputMethods$Language;
    if-eqz v3, :cond_1

    iget v6, v3, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v6}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 607
    iget-object v6, v3, Lcom/nuance/xt9/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/nuance/xt9/input/IME;->findMatchedSubtype(Ljava/util/List;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 610
    :cond_1
    if-nez v1, :cond_2

    .line 612
    const-string v6, "keyboard"

    invoke-direct {p0, v5, v6}, Lcom/nuance/xt9/input/IME;->findMatchedSubtype(Ljava/util/List;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 614
    if-nez v1, :cond_2

    .line 616
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #defaultSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    .line 620
    .restart local v1       #defaultSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/inputmethod/InputMethodManager;->setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z

    .line 624
    .end local v0           #currSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v1           #defaultSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v3           #language:Lcom/nuance/xt9/input/InputMethods$Language;
    .end local v5           #xt9SubtypeList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_3
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 420
    sget-object v1, Lcom/nuance/xt9/input/IME;->isUserAMonkey:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 424
    :try_start_0
    const-class v1, Landroid/app/ActivityManager;

    const-string v2, "isUserAMonkey"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/nuance/xt9/input/IME;->isUserAMonkey:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :cond_0
    :goto_0
    new-instance v1, Lcom/nuance/xt9/input/BuildInfo;

    invoke-direct {v1, p0}, Lcom/nuance/xt9/input/BuildInfo;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nuance/xt9/input/IME;->mBuildInfo:Lcom/nuance/xt9/input/BuildInfo;

    .line 434
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 436
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/nuance/xt9/input/IME;->mCurConf:Landroid/content/res/Configuration;

    .line 437
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mCurConf:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/xt9/input/IME;->mLocale:Ljava/lang/String;

    .line 439
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/nuance/xt9/input/IME;->mVibrateDuration:J

    .line 440
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/xt9/input/IME;->mWantToast:Z

    .line 443
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 444
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/nuance/xt9/input/IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 447
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/nuance/xt9/input/IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 450
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "asus.com.xt9.input.symbol_table_action"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/nuance/xt9/input/IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 451
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "asus.com.xt9.input.toggle_fullscreen_action"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/nuance/xt9/input/IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 454
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->resetToolTipState()V

    .line 457
    iput-object v4, p0, Lcom/nuance/xt9/input/IME;->mSystemLocale:Ljava/util/Locale;

    .line 458
    iput-object v4, p0, Lcom/nuance/xt9/input/IME;->mInputLocaleStr:Ljava/lang/String;

    .line 459
    const-string v1, "keyboard"

    iput-object v1, p0, Lcom/nuance/xt9/input/IME;->mMode:Ljava/lang/String;

    .line 463
    return-void

    .line 426
    .end local v0           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 1

    .prologue
    .line 899
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 876
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 878
    iput-object v1, p0, Lcom/nuance/xt9/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 881
    :cond_0
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->removeAllPendingMsgs()V

    .line 882
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->destroyAllInputs()V

    .line 887
    return-object v1
.end method

.method public onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 3
    .parameter "subtype"

    .prologue
    .line 2472
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v1, v1, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->isAlphabetic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isAlphaInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2474
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    const-string v2, "ambig"

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    .line 2475
    .local v0, inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    if-eqz v0, :cond_0

    .line 2476
    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 2480
    .end local v0           #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/xt9/input/IME;->mPreviousInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 2481
    const-string v1, ""

    iput-object v1, p0, Lcom/nuance/xt9/input/IME;->mPreviousInputModeChar:Ljava/lang/String;

    .line 2482
    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/xt9/input/IME;->mBilingueAlpha:I

    .line 2484
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/IME;->updateSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 2485
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 469
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, chineseTraceUsed:Z
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    const-string v2, "Chinese.Trace"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    const/4 v0, 0x1

    .line 478
    :cond_0
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->removeAllPendingMsgs()V

    .line 479
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->destroyAllInputs()V

    .line 480
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 482
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/xt9/input/IME;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    .line 486
    if-eqz v0, :cond_1

    .line 487
    invoke-static {}, Lcom/nuance/xt9/input/ChineseTraceInput;->destroyInstance()V

    .line 490
    :cond_1
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 493
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .parameter "completions"

    .prologue
    .line 1171
    return-void
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 1

    .prologue
    .line 2244
    const/4 v0, 0x0

    return v0
.end method

.method public onEvaluateInputViewShown()Z
    .locals 1

    .prologue
    .line 2257
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->isInputViewCanBeShown()Z

    move-result v0

    return v0
.end method

.method public onExtractedTextClicked()V
    .locals 1

    .prologue
    .line 1185
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getCurrentInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v0

    .line 1187
    .local v0, inputView:Lcom/nuance/xt9/input/InputView;
    if-eqz v0, :cond_0

    .line 1188
    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputView;->flushCurrentActiveWord()V

    .line 1189
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->start()V

    .line 1191
    :cond_0
    return-void
.end method

.method public onFinishInput()V
    .locals 3

    .prologue
    .line 976
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 977
    :cond_0
    const-string v1, "XT9IME"

    const-string v2, "onFinishInput()...no input view"

    invoke-static {v1, v2}, Lcom/nuance/xt9/input/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    :goto_0
    return-void

    .line 981
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 983
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getCurrentInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v0

    .line 985
    .local v0, inputView:Lcom/nuance/xt9/input/InputView;
    if-eqz v0, :cond_2

    .line 987
    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputView;->finishInput()V

    .line 996
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/InputView;->setOnKeyboardActionListener(Lcom/nuance/xt9/input/IME;)V

    .line 999
    :cond_2
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 2152
    return-void
.end method

.method public onKey(I[I)V
    .locals 12
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 1349
    iget-object v8, p0, Lcom/nuance/xt9/input/IME;->mBuildInfo:Lcom/nuance/xt9/input/BuildInfo;

    invoke-virtual {v8}, Lcom/nuance/xt9/input/BuildInfo;->isTrialPeriodExpired()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1545
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1357
    :cond_1
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getCurrentInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v4

    .line 1359
    .local v4, inputView:Lcom/nuance/xt9/input/InputView;
    if-eqz v4, :cond_0

    .line 1363
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1364
    .local v6, when:J
    iget v8, p0, Lcom/nuance/xt9/input/IME;->mLastKey:I

    if-ne p1, v8, :cond_2

    iget-wide v8, p0, Lcom/nuance/xt9/input/IME;->mLastKeyTime:J

    const-wide/16 v10, 0x2ee

    add-long/2addr v8, v10

    cmp-long v8, v6, v8

    if-gez v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, p0, Lcom/nuance/xt9/input/IME;->mQuickPressed:Z

    .line 1366
    iput-wide v6, p0, Lcom/nuance/xt9/input/IME;->mLastKeyTime:J

    .line 1367
    iput p1, p0, Lcom/nuance/xt9/input/IME;->mLastKey:I

    .line 1368
    iget v8, p0, Lcom/nuance/xt9/input/IME;->mRepeatedKeyCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/nuance/xt9/input/IME;->mRepeatedKeyCount:I

    .line 1373
    sparse-switch p1, :sswitch_data_0

    .line 1543
    invoke-virtual {v4, p1, p2}, Lcom/nuance/xt9/input/InputView;->handleCharKey(I[I)V

    goto :goto_0

    .line 1364
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 1376
    :sswitch_1
    iget-object v8, p0, Lcom/nuance/xt9/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/nuance/xt9/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1377
    :cond_3
    const/4 v8, -0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v9, v10}, Lcom/nuance/xt9/input/InputView;->handleKey(IZI)Z

    .line 1379
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/nuance/xt9/input/IME;->requestHideSelf(I)V

    goto :goto_0

    .line 1385
    :sswitch_2
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->showOptionMenu()V

    goto :goto_0

    .line 1389
    :sswitch_3
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->showLanguageMenu()V

    goto :goto_0

    .line 1394
    :sswitch_4
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->setPreviousChar()V

    .line 1397
    const/4 v8, -0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v9, v10}, Lcom/nuance/xt9/input/InputView;->handleKey(IZI)Z

    .line 1398
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/nuance/xt9/input/IME;->updateLanguageCyclingKey(Z)V

    goto :goto_0

    .line 1402
    :sswitch_5
    iget v8, p0, Lcom/nuance/xt9/input/IME;->mRepeatedKeyCount:I

    invoke-direct {p0, v8}, Lcom/nuance/xt9/input/IME;->handleBackspace(I)V

    goto :goto_0

    .line 1406
    :sswitch_6
    iget-boolean v8, p0, Lcom/nuance/xt9/input/IME;->mQuickPressed:Z

    iget v9, p0, Lcom/nuance/xt9/input/IME;->mRepeatedKeyCount:I

    invoke-direct {p0, v8, v9}, Lcom/nuance/xt9/input/IME;->handleSpace(ZI)V

    goto :goto_0

    .line 1412
    :sswitch_7
    const/4 v8, -0x7

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v9, v10}, Lcom/nuance/xt9/input/InputView;->handleKey(IZI)Z

    goto :goto_0

    .line 1417
    :sswitch_8
    const/4 v8, -0x8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v9, v10}, Lcom/nuance/xt9/input/InputView;->handleKey(IZI)Z

    goto :goto_0

    .line 1422
    :sswitch_9
    const/16 v8, -0x9

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v9, v10}, Lcom/nuance/xt9/input/InputView;->handleKey(IZI)Z

    goto :goto_0

    .line 1427
    :sswitch_a
    const/16 v8, -0xa

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v9, v10}, Lcom/nuance/xt9/input/InputView;->handleKey(IZI)Z

    goto/16 :goto_0

    .line 1432
    :sswitch_b
    const/16 v8, -0xb

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v9, v10}, Lcom/nuance/xt9/input/InputView;->handleKey(IZI)Z

    goto/16 :goto_0

    .line 1437
    :sswitch_c
    iget-object v3, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    .line 1438
    .local v3, inputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    const-string v8, "alpha"

    invoke-virtual {v3, v8}, Lcom/nuance/xt9/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    .line 1439
    .local v0, alphaInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    iget-object v8, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v8}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v2

    .line 1441
    .local v2, currentInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1443
    iget-object v8, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v8}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v8

    iput-object v8, p0, Lcom/nuance/xt9/input/IME;->mPreviousInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 1446
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->setPreviousChar()V

    .line 1448
    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 1449
    const/4 v8, 0x2

    iput v8, p0, Lcom/nuance/xt9/input/IME;->mBilingueAlpha:I

    .line 1451
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/nuance/xt9/input/IME;->mWantToast:Z

    .line 1452
    iget-object v8, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v8, v8, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v8}, Lcom/nuance/xt9/input/InputMethods$Language;->isAlphabetic(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1457
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/nuance/xt9/input/IME;->mSuppressShowCandidateView:Z

    .line 1458
    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputView;->flushCurrentActiveWord()V

    .line 1459
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/nuance/xt9/input/IME;->mSuppressShowCandidateView:Z

    .line 1463
    iget-object v8, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x65

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1464
    iget-object v8, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x65

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0xa

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1466
    :cond_4
    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputView;->finishInput()V

    .line 1467
    iget-object v8, p0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/nuance/xt9/input/IME;->setupInputView(Lcom/nuance/xt9/input/InputFieldInfo;ZZ)V

    .line 1468
    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputView;->invalidate()V

    goto/16 :goto_0

    .line 1477
    .end local v0           #alphaInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    .end local v2           #currentInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    .end local v3           #inputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    :sswitch_d
    iget-object v8, p0, Lcom/nuance/xt9/input/IME;->mPreviousInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

    if-nez v8, :cond_5

    .line 1478
    iget-object v8, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v8, v8, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v8}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1479
    iget-object v8, p0, Lcom/nuance/xt9/input/IME;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    const/16 v9, 0xe0

    invoke-virtual {v8, v9}, Lcom/nuance/xt9/input/InputMethods;->findInputLanguage(I)Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v1

    .line 1480
    .local v1, chtLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    if-eqz v1, :cond_6

    const-string v8, "bpmf"

    invoke-virtual {v1, v8}, Lcom/nuance/xt9/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v8

    :goto_2
    iput-object v8, p0, Lcom/nuance/xt9/input/IME;->mPreviousInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 1490
    .end local v1           #chtLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_5
    :goto_3
    iget-object v8, p0, Lcom/nuance/xt9/input/IME;->mPreviousInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

    if-eqz v8, :cond_0

    .line 1494
    iget-object v8, p0, Lcom/nuance/xt9/input/IME;->mPreviousInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

    invoke-virtual {v8}, Lcom/nuance/xt9/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 1495
    const/4 v8, 0x0

    iput v8, p0, Lcom/nuance/xt9/input/IME;->mBilingueAlpha:I

    .line 1497
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/nuance/xt9/input/IME;->mWantToast:Z

    .line 1498
    iget-object v8, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v8, v8, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v8}, Lcom/nuance/xt9/input/InputMethods$Language;->isAlphabetic(I)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1503
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/nuance/xt9/input/IME;->mSuppressShowCandidateView:Z

    .line 1504
    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputView;->flushCurrentActiveWord()V

    .line 1505
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/nuance/xt9/input/IME;->mSuppressShowCandidateView:Z

    .line 1509
    iget-object v8, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x65

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1510
    iget-object v8, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x65

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0xa

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1480
    .restart local v1       #chtLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 1482
    .end local v1           #chtLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_7
    iget-object v8, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v8, v8, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v8}, Lcom/nuance/xt9/input/InputMethods$Language;->isKoreanLanguageId(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1483
    iget-object v8, p0, Lcom/nuance/xt9/input/IME;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    const/16 v9, 0x12

    invoke-virtual {v8, v9}, Lcom/nuance/xt9/input/InputMethods;->findInputLanguage(I)Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v5

    .line 1484
    .local v5, koreanLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    if-eqz v5, :cond_8

    iget-object v8, v5, Lcom/nuance/xt9/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/nuance/xt9/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v8

    :goto_4
    iput-object v8, p0, Lcom/nuance/xt9/input/IME;->mPreviousInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

    goto :goto_3

    :cond_8
    const/4 v8, 0x0

    goto :goto_4

    .line 1512
    .end local v5           #koreanLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_9
    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputView;->finishInput()V

    .line 1513
    iget-object v8, p0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/nuance/xt9/input/IME;->setupInputView(Lcom/nuance/xt9/input/InputFieldInfo;ZZ)V

    .line 1514
    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputView;->invalidate()V

    goto/16 :goto_0

    .line 1524
    :sswitch_e
    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v9, v10}, Lcom/nuance/xt9/input/InputView;->handleKey(IZI)Z

    goto/16 :goto_0

    .line 1528
    :sswitch_f
    iget-boolean v8, p0, Lcom/nuance/xt9/input/IME;->mTextEntryWithPredictionOn:Z

    if-eqz v8, :cond_0

    .line 1529
    const/16 v8, -0x13

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v9, v10}, Lcom/nuance/xt9/input/InputView;->handleKey(IZI)Z

    .line 1530
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/nuance/xt9/input/IME;->updateLanguageCyclingKey(Z)V

    goto/16 :goto_0

    .line 1535
    :sswitch_10
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->handleXT9LanguageCyclingKey()V

    goto/16 :goto_0

    .line 1539
    :sswitch_11
    const/16 v8, -0x15

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v9, v10}, Lcom/nuance/xt9/input/InputView;->handleKey(IZI)Z

    goto/16 :goto_0

    .line 1373
    :sswitch_data_0
    .sparse-switch
        -0x3e7 -> :sswitch_0
        -0x65 -> :sswitch_3
        -0x64 -> :sswitch_2
        -0x15 -> :sswitch_11
        -0x14 -> :sswitch_10
        -0x13 -> :sswitch_f
        -0xd -> :sswitch_d
        -0xc -> :sswitch_c
        -0xb -> :sswitch_b
        -0xa -> :sswitch_a
        -0x9 -> :sswitch_9
        -0x8 -> :sswitch_8
        -0x7 -> :sswitch_7
        -0x5 -> :sswitch_5
        -0x3 -> :sswitch_1
        -0x2 -> :sswitch_4
        -0x1 -> :sswitch_e
        0x20 -> :sswitch_6
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    const/16 v9, -0xc

    const/16 v8, -0xd

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1225
    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mBuildInfo:Lcom/nuance/xt9/input/BuildInfo;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/BuildInfo;->isTrialPeriodExpired()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1226
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    .line 1295
    :goto_0
    return v5

    .line 1232
    :cond_0
    const/4 v0, 0x0

    .line 1235
    .local v0, handled:Z
    move v4, p1

    .line 1236
    .local v4, oldKeyCode:I
    move-object v3, p2

    .line 1237
    .local v3, oldEvent:Landroid/view/KeyEvent;
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getCurrentInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v1

    .line 1238
    .local v1, inputView:Lcom/nuance/xt9/input/InputView;
    if-eqz v1, :cond_1

    .line 1239
    invoke-virtual {v1, v3}, Lcom/nuance/xt9/input/InputView;->remapKeyEvent(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p2

    .line 1240
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    .line 1243
    :cond_1
    invoke-direct {p0, p1, p2, v6}, Lcom/nuance/xt9/input/IME;->isHotKeyForShowLanguageMenu(ILandroid/view/KeyEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1244
    iput-boolean v6, p0, Lcom/nuance/xt9/input/IME;->mShowLanguageMenuOnKeyUp:Z

    .line 1245
    const/4 v0, 0x1

    .line 1268
    :cond_2
    :goto_1
    iget-boolean v5, p0, Lcom/nuance/xt9/input/IME;->mShowLanguageMenuOnKeyUp:Z

    if-eqz v5, :cond_3

    invoke-direct {p0, p1, p2, v7}, Lcom/nuance/xt9/input/IME;->isHotKeyForShowLanguageMenu(ILandroid/view/KeyEvent;Z)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1271
    iput-boolean v7, p0, Lcom/nuance/xt9/input/IME;->mShowLanguageMenuOnKeyUp:Z

    .line 1275
    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1, p2}, Lcom/nuance/xt9/input/InputView;->handleKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1276
    const/4 v0, 0x1

    .line 1279
    :cond_4
    if-nez v0, :cond_e

    .line 1280
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1286
    :goto_2
    if-eq p2, v3, :cond_6

    .line 1287
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    const/high16 v6, 0x4000

    and-int/2addr v5, v6

    if-eqz v5, :cond_5

    .line 1288
    invoke-virtual {v3}, Landroid/view/KeyEvent;->startTracking()V

    .line 1291
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->recycle()V

    .line 1292
    move-object p2, v3

    .line 1293
    move p1, v4

    :cond_6
    move v5, v0

    .line 1295
    goto :goto_0

    .line 1246
    :cond_7
    invoke-direct {p0, v4, v3, v6}, Lcom/nuance/xt9/input/IME;->isHotKeyForToggleAlphaInputMode(ILandroid/view/KeyEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1247
    iget v5, p0, Lcom/nuance/xt9/input/IME;->mBilingueAlpha:I

    if-eqz v5, :cond_8

    move v5, v8

    :goto_3
    invoke-virtual {p0, v5, v10}, Lcom/nuance/xt9/input/IME;->onKey(I[I)V

    .line 1250
    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    move v5, v9

    .line 1247
    goto :goto_3

    .line 1251
    :cond_9
    invoke-direct {p0, v4, v3, v6}, Lcom/nuance/xt9/input/IME;->isHotKeyForShowSymbolDialog(ILandroid/view/KeyEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1252
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->showSymbolTable()V

    .line 1253
    const/4 v0, 0x1

    goto :goto_1

    .line 1254
    :cond_a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0x3a

    if-ne v5, p1, :cond_2

    .line 1255
    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v5, v5, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v5}, Lcom/nuance/xt9/input/InputMethods$Language;->isKoreanLanguageId(I)Z

    move-result v5

    if-eqz v5, :cond_b

    move v2, v6

    .line 1257
    .local v2, isKorean:Z
    :goto_4
    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mPreviousInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mPreviousInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getLanguageId()I

    move-result v5

    invoke-static {v5}, Lcom/nuance/xt9/input/InputMethods$Language;->isKoreanLanguageId(I)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v6

    :goto_5
    or-int/2addr v2, v5

    .line 1259
    if-eqz v2, :cond_2

    .line 1260
    iget v5, p0, Lcom/nuance/xt9/input/IME;->mBilingueAlpha:I

    if-eqz v5, :cond_d

    move v5, v8

    :goto_6
    invoke-virtual {p0, v5, v10}, Lcom/nuance/xt9/input/IME;->onKey(I[I)V

    .line 1263
    const/4 v0, 0x1

    goto/16 :goto_1

    .end local v2           #isKorean:Z
    :cond_b
    move v2, v7

    .line 1255
    goto :goto_4

    .restart local v2       #isKorean:Z
    :cond_c
    move v5, v7

    .line 1257
    goto :goto_5

    :cond_d
    move v5, v9

    .line 1260
    goto :goto_6

    .line 1283
    .end local v2           #isKorean:Z
    :cond_e
    iput p1, p0, Lcom/nuance/xt9/input/IME;->mLastHardwareKeyCode:I

    goto :goto_2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    .line 1302
    const/4 v0, 0x0

    .line 1305
    .local v0, handled:Z
    move v3, p1

    .line 1306
    .local v3, oldKeyCode:I
    move-object v2, p2

    .line 1307
    .local v2, oldEvent:Landroid/view/KeyEvent;
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getCurrentInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v1

    .line 1308
    .local v1, inputView:Lcom/nuance/xt9/input/InputView;
    if-eqz v1, :cond_0

    .line 1309
    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/InputView;->remapKeyEvent(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p2

    .line 1310
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    .line 1314
    :cond_0
    iput v6, p0, Lcom/nuance/xt9/input/IME;->mRepeatedKeyCount:I

    .line 1317
    iget v4, p0, Lcom/nuance/xt9/input/IME;->mLastHardwareKeyCode:I

    if-ne v4, p1, :cond_1

    .line 1318
    const/4 v4, -0x1

    iput v4, p0, Lcom/nuance/xt9/input/IME;->mLastHardwareKeyCode:I

    .line 1319
    const/4 v0, 0x1

    .line 1322
    :cond_1
    iget-boolean v4, p0, Lcom/nuance/xt9/input/IME;->mShowLanguageMenuOnKeyUp:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    invoke-direct {p0, v3, v2, v4}, Lcom/nuance/xt9/input/IME;->isHotKeyForShowLanguageMenu(ILandroid/view/KeyEvent;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1325
    const/16 v4, -0x65

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/nuance/xt9/input/IME;->onKey(I[I)V

    .line 1326
    iput-boolean v6, p0, Lcom/nuance/xt9/input/IME;->mShowLanguageMenuOnKeyUp:Z

    .line 1327
    const/4 v0, 0x1

    .line 1331
    :cond_2
    if-nez v0, :cond_3

    .line 1332
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1335
    :cond_3
    if-eq p2, v2, :cond_4

    .line 1336
    invoke-virtual {p2}, Landroid/view/KeyEvent;->recycle()V

    .line 1337
    move-object p2, v2

    .line 1338
    move p1, v3

    .line 1340
    :cond_4
    return v0
.end method

.method public onLongClick(I)V
    .locals 6
    .parameter "buttonId"

    .prologue
    const-wide/16 v4, 0x5

    const/16 v3, 0x69

    const/16 v2, 0x68

    .line 2060
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mBuildInfo:Lcom/nuance/xt9/input/BuildInfo;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/BuildInfo;->isTrialPeriodExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2076
    :goto_0
    return-void

    .line 2064
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2067
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2068
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2072
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2073
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2064
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMultitapTimeout()V
    .locals 1

    .prologue
    .line 1645
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getCurrentInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputView;->onMultitapTimeout()V

    .line 1646
    return-void
.end method

.method public onPress(I)V
    .locals 1
    .parameter "primaryCode"

    .prologue
    .line 1632
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->vibrate()V

    .line 1633
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/IME;->playKeyClick(I)V

    .line 1637
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/IME;->mRepeatedKeyCount:I

    .line 1638
    return-void
.end method

.method public onRelease(I)V
    .locals 0
    .parameter "primaryCode"

    .prologue
    .line 1642
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 3
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    const/4 v2, 0x1

    .line 2270
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->isInputViewShown()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->isShowInputRequested()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2272
    iput-boolean v2, p0, Lcom/nuance/xt9/input/IME;->mSuppressShowCandidateView:Z

    .line 2275
    iput-boolean v2, p0, Lcom/nuance/xt9/input/IME;->mNeedAdjustInputModeByInputField:Z

    .line 2277
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/IME;->setInputFieldInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 2278
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-direct {p0, v1, p2, v2}, Lcom/nuance/xt9/input/IME;->setupInputView(Lcom/nuance/xt9/input/InputFieldInfo;ZZ)V

    .line 2279
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->acquireWindowToken()V

    .line 2282
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mSymbolKeyboard:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 2283
    iget-object v1, p0, Lcom/nuance/xt9/input/IME;->mSymbolKeyboard:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2287
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/xt9/input/IME;->mSuppressShowCandidateView:Z

    .line 2291
    :cond_1
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2292
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/IME;->updateSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 2296
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 2
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    const/4 v1, 0x1

    .line 960
    iput-boolean v1, p0, Lcom/nuance/xt9/input/IME;->mNeedAdjustInputModeByInputField:Z

    .line 963
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/IME;->setInputFieldInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 964
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-direct {p0, v0, p2, v1}, Lcom/nuance/xt9/input/IME;->setupInputView(Lcom/nuance/xt9/input/InputFieldInfo;ZZ)V

    .line 967
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->checkTrialBuildInfo()V

    .line 970
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mBuildInfo:Lcom/nuance/xt9/input/BuildInfo;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/BuildInfo;->isTrialPeriodExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1603
    :goto_0
    return-void

    .line 1602
    :cond_0
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getCurrentInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/InputView;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onTrace(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 1650
    .local p1, trace:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mBuildInfo:Lcom/nuance/xt9/input/BuildInfo;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/BuildInfo;->isTrialPeriodExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1655
    :goto_0
    return-void

    .line 1654
    :cond_0
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getCurrentInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/InputView;->handleTrace(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 7
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 1110
    invoke-super/range {p0 .. p6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 1115
    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1116
    :cond_0
    const-string v0, "XT9IME"

    const-string v1, "onUpdateSelection()...no input view"

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    :goto_0
    return-void

    .line 1121
    :cond_1
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getCurrentInputView()Lcom/nuance/xt9/input/InputView;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/xt9/input/InputView;->updateSelection(IIIIII)V

    goto :goto_0
.end method

.method public sendBackspace(I)V
    .locals 2
    .parameter "repeatedCount"

    .prologue
    const/16 v1, 0x43

    .line 1606
    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/IME;->sendDownUpKeyEvents(I)V

    .line 1607
    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    .line 1608
    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/IME;->sendDownUpKeyEvents(I)V

    .line 1610
    :cond_0
    return-void
.end method

.method public sendSpace()V
    .locals 1

    .prologue
    .line 1613
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/IME;->sendKeyChar(C)V

    .line 1614
    return-void
.end method

.method public setCandidatesViewShown(Z)V
    .locals 1
    .parameter "shown"

    .prologue
    .line 1198
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->isCandidateCanBeShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1204
    :cond_1
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 1205
    if-eqz p1, :cond_0

    goto :goto_0
.end method

.method public showKeyboardLayoutOption()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1859
    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1928
    :cond_0
    :goto_0
    return-void

    .line 1863
    :cond_1
    new-instance v1, Lcom/nuance/xt9/input/KeyboardLayoutListAdapter;

    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Lcom/nuance/xt9/input/KeyboardLayoutListAdapter;-><init>(Landroid/content/Context;Lcom/nuance/xt9/input/InputMethods$InputMode;)V

    .line 1866
    .local v1, listAdapter:Lcom/nuance/xt9/input/KeyboardLayoutListAdapter;
    iget-object v5, v1, Lcom/nuance/xt9/input/KeyboardLayoutListAdapter;->mKeyboardLayouts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v6, :cond_0

    .line 1872
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 1873
    .local v4, windowToken:Landroid/os/IBinder;
    if-eqz v4, :cond_0

    .line 1878
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1879
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1880
    const v5, 0x7f0200c9

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1881
    const/high16 v5, 0x104

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1882
    new-instance v5, Lcom/nuance/xt9/input/IME$8;

    invoke-direct {v5, p0}, Lcom/nuance/xt9/input/IME$8;-><init>(Lcom/nuance/xt9/input/IME;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1893
    new-instance v5, Lcom/nuance/xt9/input/IME$9;

    invoke-direct {v5, p0, v1}, Lcom/nuance/xt9/input/IME$9;-><init>(Lcom/nuance/xt9/input/IME;Lcom/nuance/xt9/input/KeyboardLayoutListAdapter;)V

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1916
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1917
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/xt9/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 1918
    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1919
    .local v3, window:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1922
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object v4, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1924
    const/16 v5, 0x3eb

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1925
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1926
    const/high16 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/view/Window;->addFlags(I)V

    .line 1927
    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected showSymbolTable()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 231
    iget-object v7, p0, Lcom/nuance/xt9/input/IME;->mSymbolKeyboard:Landroid/app/AlertDialog;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/nuance/xt9/input/IME;->mSymbolKeyboard:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 333
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 236
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f03001d

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/nuance/xt9/input/IME;->mKeyboardContainer:Landroid/view/View;

    .line 237
    iget-object v7, p0, Lcom/nuance/xt9/input/IME;->mKeyboardContainer:Landroid/view/View;

    const v8, 0x7f090004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/nuance/xt9/input/KeyboardViewEx;

    iput-object v7, p0, Lcom/nuance/xt9/input/IME;->mSymbolKeyboardView:Lcom/nuance/xt9/input/KeyboardViewEx;

    .line 239
    new-instance v7, Lcom/nuance/xt9/input/SymbolTable;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050026

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/nuance/xt9/input/SymbolTable;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    iput-object v7, p0, Lcom/nuance/xt9/input/IME;->mSymbolTable:Lcom/nuance/xt9/input/SymbolTable;

    .line 240
    iget-object v7, p0, Lcom/nuance/xt9/input/IME;->mSymbolKeyboardView:Lcom/nuance/xt9/input/KeyboardViewEx;

    iget-object v8, p0, Lcom/nuance/xt9/input/IME;->mSymbolTable:Lcom/nuance/xt9/input/SymbolTable;

    invoke-virtual {v8, v11}, Lcom/nuance/xt9/input/SymbolTable;->getPage(I)Lcom/nuance/xt9/input/SymKeyboard;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/nuance/xt9/input/KeyboardViewEx;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 241
    iget-object v7, p0, Lcom/nuance/xt9/input/IME;->mSymbolKeyboardView:Lcom/nuance/xt9/input/KeyboardViewEx;

    iget-object v8, p0, Lcom/nuance/xt9/input/IME;->mSymbolTableActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-virtual {v7, v8}, Lcom/nuance/xt9/input/KeyboardViewEx;->setOnKeyboardActionListener(Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;)V

    .line 243
    iget-object v7, p0, Lcom/nuance/xt9/input/IME;->mKeyboardContainer:Landroid/view/View;

    const v8, 0x7f090030

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 244
    .local v4, tv:Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 245
    const-string v7, "%d/%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/nuance/xt9/input/IME;->mSymbolTable:Lcom/nuance/xt9/input/SymbolTable;

    invoke-virtual {v9}, Lcom/nuance/xt9/input/SymbolTable;->getCurrentPage()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/nuance/xt9/input/IME;->mSymbolTable:Lcom/nuance/xt9/input/SymbolTable;

    invoke-virtual {v10}, Lcom/nuance/xt9/input/SymbolTable;->getTotalPage()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :cond_1
    iget-object v7, p0, Lcom/nuance/xt9/input/IME;->mKeyboardContainer:Landroid/view/View;

    const v8, 0x7f09002c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 249
    .local v1, closeButton:Landroid/widget/ImageButton;
    new-instance v7, Lcom/nuance/xt9/input/IME$2;

    invoke-direct {v7, p0}, Lcom/nuance/xt9/input/IME$2;-><init>(Lcom/nuance/xt9/input/IME;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 256
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lcom/nuance/xt9/input/IME;->mKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 257
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/nuance/xt9/input/IME;->mSymbolKeyboard:Landroid/app/AlertDialog;

    .line 258
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    .line 259
    .local v6, windowToken:Landroid/os/IBinder;
    iget-object v7, p0, Lcom/nuance/xt9/input/IME;->mSymbolKeyboard:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 260
    .local v5, window:Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 261
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object v6, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 262
    const/16 v7, 0x3eb

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 263
    const/16 v7, 0x50

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 264
    invoke-virtual {v5, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 265
    const/high16 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/view/Window;->addFlags(I)V

    .line 268
    iget-object v7, p0, Lcom/nuance/xt9/input/IME;->mSymbolKeyboard:Landroid/app/AlertDialog;

    new-instance v8, Lcom/nuance/xt9/input/IME$3;

    invoke-direct {v8, p0}, Lcom/nuance/xt9/input/IME$3;-><init>(Lcom/nuance/xt9/input/IME;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 274
    iget-object v7, p0, Lcom/nuance/xt9/input/IME;->mSymbolKeyboard:Landroid/app/AlertDialog;

    new-instance v8, Lcom/nuance/xt9/input/IME$4;

    invoke-direct {v8, p0}, Lcom/nuance/xt9/input/IME$4;-><init>(Lcom/nuance/xt9/input/IME;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 331
    iput v11, p0, Lcom/nuance/xt9/input/IME;->mSymbolKeyRepeatCount:I

    .line 332
    iget-object v7, p0, Lcom/nuance/xt9/input/IME;->mSymbolKeyboard:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 1625
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 1621
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 1617
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 1629
    return-void
.end method

.method public updateSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 8
    .parameter "subtype"

    .prologue
    const/16 v6, 0x65

    .line 2490
    const/4 v0, 0x0

    .line 2491
    .local v0, languageChanged:Z
    const/4 v1, 0x0

    .line 2493
    .local v1, modeChanged:Z
    if-nez p1, :cond_5

    .line 2494
    const-string v2, "en_US"

    .line 2495
    .local v2, newLocale:Ljava/lang/String;
    const-string v3, "keyboard"

    .line 2501
    .local v3, newMode:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mInputLocaleStr:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2502
    const/4 v0, 0x1

    .line 2503
    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/IME;->updateInputLocale(Ljava/lang/String;)V

    .line 2506
    :cond_0
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2507
    const/4 v1, 0x1

    .line 2508
    invoke-direct {p0, v3}, Lcom/nuance/xt9/input/IME;->updateInputMode(Ljava/lang/String;)V

    .line 2511
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_4

    .line 2512
    :cond_2
    invoke-direct {p0}, Lcom/nuance/xt9/input/IME;->setLanguageAndMode()V

    .line 2514
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    if-eqz v4, :cond_4

    .line 2515
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 2516
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mInputViews:Ljava/util/Map;

    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputView;->finishInput()V

    .line 2520
    :cond_3
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    iget-object v4, v4, Lcom/nuance/xt9/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    invoke-direct {p0, v4}, Lcom/nuance/xt9/input/IME;->setInputFieldInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 2522
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2523
    iget-object v4, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/nuance/xt9/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x5

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2524
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/nuance/xt9/input/IME;->mWantToast:Z

    .line 2527
    :cond_4
    return-void

    .line 2497
    .end local v2           #newLocale:Ljava/lang/String;
    .end local v3           #newMode:Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v2

    .line 2498
    .restart local v2       #newLocale:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #newMode:Ljava/lang/String;
    goto :goto_0
.end method
