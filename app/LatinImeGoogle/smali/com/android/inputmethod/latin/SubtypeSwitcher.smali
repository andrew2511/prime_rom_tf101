.class public Lcom/android/inputmethod/latin/SubtypeSwitcher;
.super Ljava/lang/Object;
.source "SubtypeSwitcher.java"


# static fields
.field private static DBG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/android/inputmethod/latin/SubtypeSwitcher;


# instance fields
.field private mAllEnabledSubtypesOfCurrentInputMethod:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigUseSpacebarLanguageSwitcher:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field private final mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputLocale:Ljava/util/Locale;

.field private mInputLocaleStr:Ljava/lang/String;

.field private mIsNetworkConnected:Z

.field private mIsSystemLanguageSameAsInputLanguage:Z

.field private mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

.field private final mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private mNeedsToDisplayLanguage:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mResources:Landroid/content/res/Resources;

.field private mService:Lcom/android/inputmethod/latin/LatinIME;

.field private mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

.field private mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field private mSystemLocale:Ljava/util/Locale;

.field private mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->DBG:Z

    .line 49
    const-class v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->sInstance:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x5f

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/latin/SubtypeSwitcher;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private static contains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "hay"
    .parameter "needle"

    .prologue
    .line 351
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 352
    .local v1, element:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 353
    const/4 v4, 0x1

    .line 355
    .end local v1           #element:Ljava/lang/String;
    :goto_1
    return v4

    .line 351
    .restart local v1       #element:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    .end local v1           #element:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter "locale"

    .prologue
    .line 549
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFullDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;
    .locals 1
    .parameter "locale"
    .parameter "returnsNameInThisLocale"

    .prologue
    .line 541
    if-eqz p1, :cond_0

    .line 542
    invoke-static {p0}, Lcom/android/inputmethod/latin/SubtypeLocale;->getFullDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->sInstance:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    return-object v0
.end method

.method public static getShortDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter "locale"

    .prologue
    .line 553
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "service"
    .parameter "prefs"

    .prologue
    .line 91
    sget-object v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->sInstance:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-direct {v0, p0, p1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->initialize(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V

    .line 92
    sget-object v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->sInstance:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateAllParameters()V

    .line 94
    invoke-static {p0}, Lcom/android/inputmethod/latin/SubtypeLocale;->init(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method private initLanguageSwitcher(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 666
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 667
    .local v0, conf:Landroid/content/res/Configuration;
    new-instance v1, Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-direct {v1, p1}, Lcom/android/inputmethod/latin/LanguageSwitcher;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    .line 668
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    iget-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;)Z

    .line 669
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/LanguageSwitcher;->setSystemLocale(Ljava/util/Locale;)V

    .line 670
    return-void
.end method

.method private initialize(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "service"
    .parameter "prefs"

    .prologue
    const/4 v2, 0x0

    .line 102
    iput-object p1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mService:Lcom/android/inputmethod/latin/LatinIME;

    .line 103
    iput-object p2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    .line 104
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mResources:Landroid/content/res/Resources;

    .line 105
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Lcom/android/inputmethod/latin/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 106
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Lcom/android/inputmethod/latin/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 108
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 109
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 110
    iput-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    .line 111
    iput-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocale:Ljava/util/Locale;

    .line 112
    iput-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    .line 113
    iput-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 114
    iput-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mAllEnabledSubtypesOfCurrentInputMethod:Ljava/util/List;

    .line 116
    iput-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    .line 117
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mConfigUseSpacebarLanguageSwitcher:Z

    .line 119
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mConfigUseSpacebarLanguageSwitcher:Z

    if-eqz v1, :cond_0

    .line 120
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->initLanguageSwitcher(Lcom/android/inputmethod/latin/LatinIME;)V

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 123
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mIsNetworkConnected:Z

    .line 124
    return-void

    .line 123
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 557
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 560
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private triggerVoiceIME()V
    .locals 3

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->isInputViewShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-static {}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->getInstance()Lcom/android/inputmethod/voice/VoiceIMEConnector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->startListening(ZLandroid/os/IBinder;)V

    goto :goto_0
.end method

.method private updateAllParameters()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    .line 130
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateParametersOnStartInputView()V

    .line 132
    return-void
.end method

.method private updateEnabledSubtypes()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 147
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeMode()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, currentMode:Ljava/lang/String;
    const/4 v1, 0x1

    .line 149
    .local v1, foundCurrentSubtypeBecameDisabled:Z
    iget-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mAllEnabledSubtypesOfCurrentInputMethod:Ljava/util/List;

    .line 151
    iget-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 152
    iget-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 153
    iget-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mAllEnabledSubtypesOfCurrentInputMethod:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 154
    .local v3, ims:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, locale:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, mode:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v6, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 157
    iget-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 158
    iget-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_1
    iget-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 161
    const/4 v1, 0x0

    .line 163
    :cond_2
    const-string v6, "keyboard"

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 164
    iget-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    .end local v3           #ims:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v4           #locale:Ljava/lang/String;
    .end local v5           #mode:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getEnabledKeyboardLocaleCount()I

    move-result v6

    if-gt v6, v8, :cond_4

    iget-boolean v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mIsSystemLanguageSameAsInputLanguage:Z

    if-nez v6, :cond_7

    :cond_4
    move v6, v8

    :goto_1
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mNeedsToDisplayLanguage:Z

    .line 169
    if-eqz v1, :cond_6

    .line 170
    sget-boolean v6, Lcom/android/inputmethod/latin/SubtypeSwitcher;->DBG:Z

    if-eqz v6, :cond_5

    .line 171
    sget-object v6, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current subtype: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v6, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    const-string v7, "Last subtype was disabled. Update to the current one."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_5
    iget-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 176
    :cond_6
    return-void

    .line 167
    :cond_7
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private updateForSpacebarLanguageSwitch()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 566
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getEnabledKeyboardLocaleCount()I

    move-result v0

    if-gt v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getSystemLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mNeedsToDisplayLanguage:Z

    .line 569
    return-void

    .line 566
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateInputLocale(Ljava/lang/String;)V
    .locals 6
    .parameter "inputLocaleStr"

    .prologue
    const/4 v5, 0x1

    .line 280
    iget-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 281
    iget-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 282
    iget-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, language:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    new-instance v2, Ljava/util/Locale;

    iget-object v3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocale:Ljava/util/Locale;

    .line 288
    :goto_0
    iput-object p1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    .line 295
    .end local v1           #language:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getSystemLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mIsSystemLanguageSameAsInputLanguage:Z

    .line 297
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getEnabledKeyboardLocaleCount()I

    move-result v2

    if-gt v2, v5, :cond_0

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mIsSystemLanguageSameAsInputLanguage:Z

    if-nez v2, :cond_4

    :cond_0
    move v2, v5

    :goto_2
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mNeedsToDisplayLanguage:Z

    .line 299
    return-void

    .line 286
    .restart local v1       #language:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocale:Ljava/util/Locale;

    goto :goto_0

    .line 290
    .end local v1           #language:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocale:Ljava/util/Locale;

    .line 291
    iget-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, country:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, ""

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 297
    .end local v0           #country:Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private updateShortcutIME()V
    .locals 8

    .prologue
    .line 179
    sget-boolean v4, Lcom/android/inputmethod/latin/SubtypeSwitcher;->DBG:Z

    if-eqz v4, :cond_0

    .line 180
    sget-object v4, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update shortcut IME from : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    if-nez v6, :cond_3

    const-string v6, "<null>"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v6, :cond_4

    const-string v6, "<null>"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->getShortcutInputMethodsAndSubtypes()Ljava/util/Map;

    move-result-object v2

    .line 189
    .local v2, shortcuts:Ljava/util/Map;,"Ljava/util/Map<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 190
    .local v1, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 193
    .local v3, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    iput-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 196
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    :goto_2
    iput-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 199
    .end local v1           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v3           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_1
    sget-boolean v4, Lcom/android/inputmethod/latin/SubtypeSwitcher;->DBG:Z

    if-eqz v4, :cond_2

    .line 200
    sget-object v4, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update shortcut IME to : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    if-nez v6, :cond_6

    const-string v6, "<null>"

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v6, :cond_7

    const-string v6, "<null>"

    :goto_4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_2
    return-void

    .line 180
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #shortcuts:Ljava/util/Map;,"Ljava/util/Map<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    :cond_3
    iget-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 196
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #imi:Landroid/view/inputmethod/InputMethodInfo;
    .restart local v2       #shortcuts:Ljava/util/Map;,"Ljava/util/Map<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .restart local v3       #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 200
    .end local v1           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v3           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    iget-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4
.end method


# virtual methods
.method public changeSystemLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 4
    .parameter "newLocale"

    .prologue
    .line 494
    iget-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 495
    .local v0, conf:Landroid/content/res/Configuration;
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 496
    .local v1, oldLocale:Ljava/util/Locale;
    iput-object p1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 497
    iget-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 498
    return-object v1
.end method

.method public currentSubtypeContainsExtraValueKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentSubtypeMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "keyboard"

    goto :goto_0
.end method

.method public getEnabledKeyboardLocaleCount()I
    .locals 1

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mConfigUseSpacebarLanguageSwitcher:Z

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    .line 404
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getEnabledLanguages()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 439
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mConfigUseSpacebarLanguageSwitcher:Z

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getEnabledLanguages()[Ljava/lang/String;

    move-result-object v1

    .line 449
    .end local p0
    :goto_0
    return-object v1

    .line 442
    .restart local p0
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 444
    .local v0, enabledLanguageCount:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 445
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    add-int/lit8 v0, v0, 0x1

    .line 449
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v1, p0

    goto :goto_0
.end method

.method public getInputLanguageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mConfigUseSpacebarLanguageSwitcher:Z

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v0

    .line 420
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocale:Ljava/util/Locale;

    goto :goto_0
.end method

.method public getInputLocaleStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 425
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mConfigUseSpacebarLanguageSwitcher:Z

    if-eqz v1, :cond_1

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, inputLanguage:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v0

    .line 429
    if-nez v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getSystemLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v1, v0

    .line 434
    .end local v0           #inputLanguage:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNextInputLanguageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mConfigUseSpacebarLanguageSwitcher:Z

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getNextInputLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 579
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getPreviousInputLanguageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mConfigUseSpacebarLanguageSwitcher:Z

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getPrevInputLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 587
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSystemLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mConfigUseSpacebarLanguageSwitcher:Z

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getSystemLocale()Ljava/util/Locale;

    move-result-object v0

    .line 458
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    goto :goto_0
.end method

.method public isKeyboardMode()Z
    .locals 2

    .prologue
    .line 502
    const-string v0, "keyboard"

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isShortcutImeEnabled()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 359
    iget-object v3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    if-nez v3, :cond_0

    move v3, v6

    .line 369
    :goto_0
    return v3

    .line 361
    :cond_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v3, :cond_1

    move v3, v5

    .line 362
    goto :goto_0

    .line 363
    :cond_1
    const/4 v0, 0x1

    .line 364
    .local v0, allowsImplicitlySelectedSubtypes:Z
    iget-object v3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    .line 366
    .local v1, enabledSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v1, v3}, Landroid/view/inputmethod/InputMethodSubtype;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    .line 367
    goto :goto_0

    .end local v1           #enabledSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_3
    move v3, v6

    .line 369
    goto :goto_0
.end method

.method public isShortcutImeReady()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 373
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    if-nez v0, :cond_0

    .line 374
    const/4 v0, 0x0

    .line 381
    :goto_0
    return v0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v0, :cond_1

    move v0, v2

    .line 376
    goto :goto_0

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "requireNetworkConnectivity"

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mIsNetworkConnected:Z

    goto :goto_0

    :cond_2
    move v0, v2

    .line 381
    goto :goto_0
.end method

.method public isSystemLanguageSameAsInputLanguage()Z
    .locals 4

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mConfigUseSpacebarLanguageSwitcher:Z

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getSystemLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocaleStr()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 467
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mIsSystemLanguageSameAsInputLanguage:Z

    goto :goto_0
.end method

.method public isVoiceMode()Z
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "voice"

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isVoiceSupported(Ljava/lang/String;)Z
    .locals 5
    .parameter "locale"

    .prologue
    .line 635
    iget-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "latin_ime_voice_input_supported_locales"

    const-string v4, "en en_US en_GB en_AU en_CA en_IE en_IN en_NZ en_SG en_ZA "

    invoke-static {v2, v3, v4}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, supportedLocalesString:Ljava/lang/String;
    const-string v2, "\\s+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 641
    .local v1, voiceInputSupportedLocales:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public loadSettings()V
    .locals 2

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mConfigUseSpacebarLanguageSwitcher:Z

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;)Z

    .line 648
    :cond_0
    return-void
.end method

.method public needsToDisplayLanguage()Z
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mNeedsToDisplayLanguage:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "conf"

    .prologue
    .line 472
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 474
    .local v0, systemLocale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 475
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mConfigUseSpacebarLanguageSwitcher:Z

    if-eqz v1, :cond_1

    .line 480
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    iget-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;)Z

    .line 481
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->setSystemLocale(Ljava/util/Locale;)V

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateAllParameters()V

    goto :goto_0
.end method

.method public onNetworkStateChanged(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 385
    const-string v3, "noConnectivity"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 387
    .local v1, noConnection:Z
    if-nez v1, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mIsNetworkConnected:Z

    .line 389
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v2

    .line 390
    .local v2, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 391
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isShortcutImeReady()Z

    move-result v3

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->updateShortcutKey(ZLcom/android/inputmethod/keyboard/LatinKeyboardView;)V

    .line 394
    :cond_0
    return-void

    .end local v0           #keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    .end local v2           #switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    :cond_1
    move v3, v4

    .line 387
    goto :goto_0
.end method

.method public setVoiceInput(Lcom/android/inputmethod/voice/VoiceInput;)Z
    .locals 3
    .parameter "vi"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 512
    iput-object p1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    .line 513
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isVoiceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    sget-boolean v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->DBG:Z

    if-eqz v0, :cond_0

    .line 515
    sget-object v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set and call voice input.: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocaleStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->triggerVoiceIME()V

    .line 518
    const/4 v0, 0x1

    .line 521
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchToShortcutIME()V
    .locals 6

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 307
    .local v3, token:Landroid/os/IBinder;
    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    if-nez v0, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, imiId:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 312
    .local v5, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    new-instance v0, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;

    const-string v2, "SwitchToShortcutIME"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;-><init>(Lcom/android/inputmethod/latin/SubtypeSwitcher;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;->start()V

    goto :goto_0
.end method

.method public toggleLanguage(ZZ)V
    .locals 2
    .parameter "reset"
    .parameter "next"

    .prologue
    .line 651
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mConfigUseSpacebarLanguageSwitcher:Z

    if-eqz v0, :cond_0

    .line 652
    if-eqz p1, :cond_1

    .line 653
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->reset()V

    .line 661
    :goto_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LanguageSwitcher;->persist(Landroid/content/SharedPreferences;)V

    .line 663
    :cond_0
    return-void

    .line 655
    :cond_1
    if-eqz p2, :cond_2

    .line 656
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->next()V

    goto :goto_0

    .line 658
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->prev()V

    goto :goto_0
.end method

.method public updateParametersOnStartInputView()V
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mConfigUseSpacebarLanguageSwitcher:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateForSpacebarLanguageSwitch()V

    .line 142
    :goto_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateShortcutIME()V

    .line 143
    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateEnabledSubtypes()V

    goto :goto_0
.end method

.method public updateSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 8
    .parameter "newSubtype"

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeMode()Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, oldMode:Ljava/lang/String;
    if-nez p1, :cond_7

    .line 216
    sget-object v5, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    const-string v6, "Couldn\'t get the current subtype."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v2, "en_US"

    .line 218
    .local v2, newLocale:Ljava/lang/String;
    const-string v3, "keyboard"

    .line 223
    .local v3, newMode:Ljava/lang/String;
    :goto_0
    sget-boolean v5, Lcom/android/inputmethod/latin/SubtypeSwitcher;->DBG:Z

    if-eqz v5, :cond_0

    .line 224
    sget-object v5, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update subtype to:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    const/4 v0, 0x0

    .line 228
    .local v0, languageChanged:Z
    iget-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 229
    iget-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 230
    const/4 v0, 0x1

    .line 232
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateInputLocale(Ljava/lang/String;)V

    .line 234
    :cond_2
    const/4 v1, 0x0

    .line 235
    .local v1, modeChanged:Z
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 236
    if-eqz v4, :cond_3

    .line 237
    const/4 v1, 0x1

    .line 240
    :cond_3
    iput-object p1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 244
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isKeyboardMode()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 245
    if-eqz v1, :cond_4

    .line 246
    const-string v5, "voice"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    if-eqz v5, :cond_4

    .line 247
    iget-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v5}, Lcom/android/inputmethod/voice/VoiceInput;->cancel()V

    .line 250
    :cond_4
    if-nez v1, :cond_5

    if-eqz v0, :cond_6

    .line 251
    :cond_5
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateShortcutIME()V

    .line 252
    iget-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LatinIME;->onRefreshKeyboard()V

    .line 272
    :cond_6
    :goto_1
    return-void

    .line 220
    .end local v0           #languageChanged:Z
    .end local v1           #modeChanged:Z
    .end local v2           #newLocale:Ljava/lang/String;
    .end local v3           #newMode:Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v2

    .line 221
    .restart local v2       #newLocale:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #newMode:Ljava/lang/String;
    goto/16 :goto_0

    .line 254
    .restart local v0       #languageChanged:Z
    .restart local v1       #modeChanged:Z
    :cond_8
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isVoiceMode()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    if-eqz v5, :cond_b

    .line 255
    const-string v5, "voice"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 256
    iget-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v5}, Lcom/android/inputmethod/voice/VoiceInput;->reset()V

    .line 260
    :cond_9
    if-nez v0, :cond_a

    if-nez v1, :cond_a

    invoke-static {}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->getInstance()Lcom/android/inputmethod/voice/VoiceIMEConnector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->needsToShowWarningDialog()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 262
    :cond_a
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->triggerVoiceIME()V

    goto :goto_1

    .line 265
    :cond_b
    sget-object v5, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown subtype mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v5, "voice"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    if-eqz v5, :cond_6

    .line 269
    iget-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v5}, Lcom/android/inputmethod/voice/VoiceInput;->reset()V

    goto :goto_1
.end method

.method public useSpacebarLanguageSwitcher()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mConfigUseSpacebarLanguageSwitcher:Z

    return v0
.end method
