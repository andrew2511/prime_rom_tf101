.class public Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final DEBUG:Z

.field private static final KEYBOARD_THEMES:[I

.field private static final TAG:Ljava/lang/String;

.field private static sConfigDefaultKeyboardThemeId:Ljava/lang/String;

.field private static final sInstance:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;


# instance fields
.field private mAttribute:Landroid/view/inputmethod/EditorInfo;

.field private mAutoModeSwitchState:I

.field private mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

.field private mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

.field private mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

.field private mIsAutoCorrectionActive:Z

.field private mIsSymbols:Z

.field private final mKeyboardCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/inputmethod/keyboard/KeyboardId;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/android/inputmethod/keyboard/LatinKeyboard;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLayoutId:I

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSettingsKeyEnabledInSettings:Z

.field private mShiftKeyState:Lcom/android/inputmethod/keyboard/ShiftKeyState;

.field private mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

.field private mSymbolKeyState:Lcom/android/inputmethod/keyboard/ModifierKeyState;

.field private mSymbolsId:Lcom/android/inputmethod/keyboard/KeyboardId;

.field private mSymbolsShiftedId:Lcom/android/inputmethod/keyboard/KeyboardId;

.field private mVoiceButtonOnPrimary:Z

.field private mVoiceKeyEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    .line 40
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->DEBUG:Z

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->KEYBOARD_THEMES:[I

    .line 98
    new-instance v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;-><init>()V

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    return-void

    .line 45
    :array_0
    .array-data 0x4
        0x3t 0x0t 0x3t 0x7ft
        0x4t 0x0t 0x3t 0x7ft
        0x8t 0x0t 0x3t 0x7ft
        0x7t 0x0t 0x3t 0x7ft
        0x5t 0x0t 0x3t 0x7ft
        0x6t 0x0t 0x3t 0x7ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/android/inputmethod/keyboard/ShiftKeyState;

    const-string v1, "Shift"

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/ShiftKeyState;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mShiftKeyState:Lcom/android/inputmethod/keyboard/ShiftKeyState;

    .line 61
    new-instance v0, Lcom/android/inputmethod/keyboard/ModifierKeyState;

    const-string v1, "Symbol"

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/ModifierKeyState;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/ModifierKeyState;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardCache:Ljava/util/HashMap;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/latin/LatinIME;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    return-object v0
.end method

.method private createInputViewInternal(IZ)V
    .locals 7
    .parameter "newLayout"
    .parameter "forceReset"

    .prologue
    .line 686
    move v2, p1

    .line 687
    .local v2, layoutId:I
    iget v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mLayoutId:I

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v4, :cond_0

    if-eqz p2, :cond_4

    .line 688
    :cond_0
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v4, :cond_1

    .line 689
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->closing()V

    .line 691
    :cond_1
    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->KEYBOARD_THEMES:[I

    array-length v4, v4

    if-gt v4, v2, :cond_2

    .line 692
    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->sConfigDefaultKeyboardThemeId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 695
    :cond_2
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$GCUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$GCUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/Utils$GCUtils;->reset()V

    .line 696
    const/4 v3, 0x1

    .line 697
    .local v3, tryGC:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x5

    if-ge v1, v4, :cond_3

    if-eqz v3, :cond_3

    .line 699
    :try_start_0
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LatinIME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget-object v5, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->KEYBOARD_THEMES:[I

    aget v5, v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    iput-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 701
    const/4 v3, 0x0

    .line 697
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 702
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 703
    .local v0, e:Ljava/lang/OutOfMemoryError;
    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load keyboard failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$GCUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$GCUtils;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mLayoutId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/android/inputmethod/latin/Utils$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v3

    .line 710
    goto :goto_1

    .line 706
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 707
    .local v0, e:Landroid/view/InflateException;
    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load keyboard failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$GCUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$GCUtils;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mLayoutId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/android/inputmethod/latin/Utils$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v3

    goto :goto_1

    .line 712
    .end local v0           #e:Landroid/view/InflateException;
    :cond_3
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v4, v5}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setOnKeyboardActionListener(Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V

    .line 713
    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mLayoutId:I

    .line 715
    .end local v1           #i:I
    .end local v3           #tryGC:Z
    :cond_4
    return-void
.end method

.method private getColorScheme()I
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getColorScheme()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getF2KeyMode(Landroid/content/SharedPreferences;Landroid/content/Context;Landroid/view/inputmethod/EditorInfo;)I
    .locals 7
    .parameter "prefs"
    .parameter "context"
    .parameter "attribute"

    .prologue
    const v6, 0x7f0c002b

    const/4 v5, 0x2

    .line 782
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "noSettingsKey"

    invoke-static {v3, v4, p2}, Lcom/android/inputmethod/latin/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    .line 784
    .local v0, clobberSettingsKey:Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 785
    .local v1, res:Landroid/content/res/Resources;
    const-string v3, "settings_key"

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 787
    .local v2, settingsKeyMode:Ljava/lang/String;
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 788
    if-eqz v0, :cond_0

    move v3, v5

    .line 793
    :goto_0
    return v3

    .line 788
    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    .line 790
    :cond_1
    const v3, 0x7f0c002c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 791
    if-eqz v0, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v5

    .line 793
    goto :goto_0
.end method

.method public static getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    return-object v0
.end method

.method private getKeyboard(Lcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/LatinKeyboard;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .line 169
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 170
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/inputmethod/keyboard/LatinKeyboard;>;"
    if-nez v1, :cond_3

    move-object v0, v6

    .line 171
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    :goto_0
    if-nez v0, :cond_5

    .line 172
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->changeSystemLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v2

    .line 175
    .local v2, savedLocale:Ljava/util/Locale;
    new-instance v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    .end local v0           #keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-direct {v0, v3, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;-><init>(Landroid/content/Context;Lcom/android/inputmethod/keyboard/KeyboardId;)V

    .line 177
    .restart local v0       #keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    iget-boolean v3, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mEnableShiftLock:Z

    if-eqz v3, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->enableShiftLock()V

    .line 181
    :cond_0
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardCache:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-boolean v3, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 183
    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyboard cache size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_4

    const-string v5, "LOAD"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v3, v2}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->changeSystemLocale(Ljava/util/Locale;)Ljava/util/Locale;

    .line 191
    .end local v2           #savedLocale:Ljava/util/Locale;
    :cond_2
    :goto_2
    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mIsAutoCorrectionActive:Z

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->onAutoCorrectionStateChanged(Z)Lcom/android/inputmethod/keyboard/Key;

    .line 192
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->setShifted(Z)Z

    .line 196
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v6}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->setSpacebarTextFadeFactor(FLcom/android/inputmethod/keyboard/LatinKeyboardView;)V

    .line 197
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isShortcutImeReady()Z

    move-result v3

    invoke-virtual {v0, v3, v6}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->updateShortcutKey(ZLcom/android/inputmethod/keyboard/LatinKeyboardView;)V

    .line 198
    return-object v0

    .line 170
    .end local v0           #keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-object v0, v3

    goto/16 :goto_0

    .line 183
    .restart local v0       #keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    .restart local v2       #savedLocale:Ljava/util/Locale;
    :cond_4
    const-string v5, "GCed"

    goto :goto_1

    .line 187
    .end local v2           #savedLocale:Ljava/util/Locale;
    :cond_5
    sget-boolean v3, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 188
    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyboard cache size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": HIT  id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getKeyboardId(Landroid/view/inputmethod/EditorInfo;Z)Lcom/android/inputmethod/keyboard/KeyboardId;
    .locals 18
    .parameter "attribute"
    .parameter "isSymbols"

    .prologue
    .line 212
    invoke-static/range {p1 .. p1}, Lcom/android/inputmethod/latin/Utils;->getKeyboardMode(Landroid/view/inputmethod/EditorInfo;)I

    move-result v9

    .line 213
    .local v9, mode:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->hasVoiceKey(Z)Z

    move-result v15

    .line 214
    .local v15, hasVoiceKey:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getColorScheme()I

    move-result v6

    .line 218
    .local v6, charColorId:I
    if-eqz p2, :cond_2

    .line 219
    const/4 v3, 0x4

    if-ne v9, v3, :cond_0

    .line 220
    const v5, 0x7f050006

    .line 227
    .local v5, xmlId:I
    :goto_0
    const/16 v16, 0x0

    .line 240
    .local v16, enableShiftLock:Z
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->hasSettingsKey(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v11

    .line 241
    .local v11, hasSettingsKey:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    move-object v4, v0

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getF2KeyMode(Landroid/content/SharedPreferences;Landroid/content/Context;Landroid/view/inputmethod/EditorInfo;)I

    move-result v12

    .line 242
    .local v12, f2KeyMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "noSettingsKey"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v13

    .line 245
    .local v13, clobberSettingsKey:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 246
    .local v17, res:Landroid/content/res/Resources;
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v8, v3, Landroid/content/res/Configuration;->orientation:I

    .line 247
    .local v8, orientation:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v7

    .line 248
    .local v7, locale:Ljava/util/Locale;
    new-instance v3, Lcom/android/inputmethod/keyboard/KeyboardId;

    move-object/from16 v0, v17

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mVoiceKeyEnabled:Z

    move v14, v0

    move-object/from16 v10, p1

    invoke-direct/range {v3 .. v16}, Lcom/android/inputmethod/keyboard/KeyboardId;-><init>(Ljava/lang/String;IILjava/util/Locale;IILandroid/view/inputmethod/EditorInfo;ZIZZZZ)V

    return-object v3

    .line 221
    .end local v5           #xmlId:I
    .end local v7           #locale:Ljava/util/Locale;
    .end local v8           #orientation:I
    .end local v11           #hasSettingsKey:Z
    .end local v12           #f2KeyMode:I
    .end local v13           #clobberSettingsKey:Z
    .end local v16           #enableShiftLock:Z
    .end local v17           #res:Landroid/content/res/Resources;
    :cond_0
    const/4 v3, 0x5

    if-ne v9, v3, :cond_1

    .line 223
    const v5, 0x7f050003

    .restart local v5       #xmlId:I
    goto :goto_0

    .line 225
    .end local v5           #xmlId:I
    :cond_1
    const v5, 0x7f050015

    .restart local v5       #xmlId:I
    goto :goto_0

    .line 229
    .end local v5           #xmlId:I
    :cond_2
    const/4 v3, 0x4

    if-ne v9, v3, :cond_3

    .line 230
    const v5, 0x7f050005

    .line 231
    .restart local v5       #xmlId:I
    const/16 v16, 0x0

    .restart local v16       #enableShiftLock:Z
    goto :goto_1

    .line 232
    .end local v5           #xmlId:I
    .end local v16           #enableShiftLock:Z
    :cond_3
    const/4 v3, 0x5

    if-ne v9, v3, :cond_4

    .line 233
    const v5, 0x7f050003

    .line 234
    .restart local v5       #xmlId:I
    const/16 v16, 0x0

    .restart local v16       #enableShiftLock:Z
    goto :goto_1

    .line 236
    .end local v5           #xmlId:I
    .end local v16           #enableShiftLock:Z
    :cond_4
    const v5, 0x7f050008

    .line 237
    .restart local v5       #xmlId:I
    const/16 v16, 0x1

    .restart local v16       #enableShiftLock:Z
    goto :goto_1
.end method

.method private getPointerCount()I
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getPointerCount()I

    move-result v0

    goto :goto_0
.end method

.method private static getSettingsKeyMode(Landroid/content/SharedPreferences;Landroid/content/Context;)Z
    .locals 7
    .parameter "prefs"
    .parameter "context"

    .prologue
    const v6, 0x7f0c002b

    const/4 v5, 0x1

    .line 759
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 760
    .local v0, res:Landroid/content/res/Resources;
    const v3, 0x7f080002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 762
    .local v2, showSettingsKeyOption:Z
    if-eqz v2, :cond_2

    .line 763
    const-string v3, "settings_key"

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 767
    .local v1, settingsKeyMode:Ljava/lang/String;
    const v3, 0x7f0c002c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "input_method"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p0}, Lcom/android/inputmethod/latin/Utils;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v5

    .line 777
    .end local v1           #settingsKeyMode:Ljava/lang/String;
    :goto_0
    return v3

    .line 774
    .restart local v1       #settingsKeyMode:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .end local v1           #settingsKeyMode:Ljava/lang/String;
    .restart local p0
    :cond_2
    move v3, v5

    .line 777
    goto :goto_0
.end method

.method private hasSettingsKey(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 2
    .parameter "attribute"

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSettingsKeyEnabledInSettings:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "noSettingsKey"

    invoke-static {v0, v1, p1}, Lcom/android/inputmethod/latin/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasVoiceKey(Z)Z
    .locals 1
    .parameter "isSymbols"

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mVoiceKeyEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mVoiceButtonOnPrimary:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter "ims"
    .parameter "prefs"

    .prologue
    .line 109
    sget-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    iput-object p0, v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    .line 110
    sget-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    iput-object p1, v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    .line 111
    sget-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v2

    iput-object v2, v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    .line 114
    const/high16 v1, 0x7f0c

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->sConfigDefaultKeyboardThemeId:Ljava/lang/String;

    .line 116
    sget-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    const-string v2, "pref_keyboard_layout_20100902"

    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->sConfigDefaultKeyboardThemeId:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mLayoutId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    sget-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 123
    return-void

    .line 118
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 119
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "0"

    sput-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->sConfigDefaultKeyboardThemeId:Ljava/lang/String;

    .line 120
    sget-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mLayoutId:I

    goto :goto_0
.end method

.method private isManualTemporaryUpperCaseFromAuto()Z
    .locals 2

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 346
    .local v0, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isManualTemporaryUpperCaseFromAuto()Z

    move-result v1

    .line 348
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadKeyboardInternal(Landroid/view/inputmethod/EditorInfo;ZZZ)V
    .locals 4
    .parameter "attribute"
    .parameter "voiceButtonEnabled"
    .parameter "voiceButtonOnPrimary"
    .parameter "isSymbols"

    .prologue
    .line 140
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-nez v2, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 143
    iput-boolean p2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mVoiceKeyEnabled:Z

    .line 144
    iput-boolean p3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mVoiceButtonOnPrimary:Z

    .line 145
    iput-boolean p4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mIsSymbols:Z

    .line 147
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v2, v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getSettingsKeyMode(Landroid/content/SharedPreferences;Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSettingsKeyEnabledInSettings:Z

    .line 148
    invoke-direct {p0, p1, p4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardId(Landroid/view/inputmethod/EditorInfo;Z)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    .line 150
    .local v0, id:Lcom/android/inputmethod/keyboard/KeyboardId;
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v1

    .line 151
    .local v1, oldKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/keyboard/KeyboardId;->equals(Lcom/android/inputmethod/keyboard/KeyboardId;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    :cond_2
    iget v2, v0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    invoke-direct {p0, v2, p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->makeSymbolsKeyboardIds(ILandroid/view/inputmethod/EditorInfo;)V

    .line 155
    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 156
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME;->getPopupOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setPreviewEnabled(Z)V

    .line 157
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    goto :goto_0
.end method

.method private makeSymbolsKeyboardIds(ILandroid/view/inputmethod/EditorInfo;)V
    .locals 18
    .parameter "mode"
    .parameter "attribute"

    .prologue
    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v7

    .line 256
    .local v7, locale:Ljava/util/Locale;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 257
    .local v17, res:Landroid/content/res/Resources;
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v8, v3, Landroid/content/res/Configuration;->orientation:I

    .line 258
    .local v8, orientation:I
    invoke-direct/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getColorScheme()I

    move-result v6

    .line 259
    .local v6, colorScheme:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mVoiceKeyEnabled:Z

    move v3, v0

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mVoiceButtonOnPrimary:Z

    move v3, v0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    move v15, v3

    .line 260
    .local v15, hasVoiceKey:Z
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->hasSettingsKey(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v11

    .line 261
    .local v11, hasSettingsKey:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    move-object v4, v0

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getF2KeyMode(Landroid/content/SharedPreferences;Landroid/content/Context;Landroid/view/inputmethod/EditorInfo;)I

    move-result v12

    .line 262
    .local v12, f2KeyMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "noSettingsKey"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v13

    .line 272
    .local v13, clobberSettingsKey:Z
    const/4 v3, 0x4

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_1

    const v3, 0x7f050005

    move v5, v3

    .line 273
    .local v5, xmlId:I
    :goto_1
    move-object/from16 v0, v17

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, xmlName:Ljava/lang/String;
    new-instance v3, Lcom/android/inputmethod/keyboard/KeyboardId;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mVoiceKeyEnabled:Z

    move v14, v0

    const/16 v16, 0x1

    move/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v16}, Lcom/android/inputmethod/keyboard/KeyboardId;-><init>(Ljava/lang/String;IILjava/util/Locale;IILandroid/view/inputmethod/EditorInfo;ZIZZZZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 277
    const/4 v3, 0x4

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_2

    const v3, 0x7f050006

    move v5, v3

    .line 278
    :goto_2
    new-instance v3, Lcom/android/inputmethod/keyboard/KeyboardId;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mVoiceKeyEnabled:Z

    move v14, v0

    const/16 v16, 0x1

    move/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v16}, Lcom/android/inputmethod/keyboard/KeyboardId;-><init>(Ljava/lang/String;IILjava/util/Locale;IILandroid/view/inputmethod/EditorInfo;ZIZZZZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsShiftedId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 281
    return-void

    .line 259
    .end local v4           #xmlName:Ljava/lang/String;
    .end local v5           #xmlId:I
    .end local v11           #hasSettingsKey:Z
    .end local v12           #f2KeyMode:I
    .end local v13           #clobberSettingsKey:Z
    .end local v15           #hasVoiceKey:Z
    :cond_0
    const/4 v3, 0x0

    move v15, v3

    goto :goto_0

    .line 272
    .restart local v11       #hasSettingsKey:Z
    .restart local v12       #f2KeyMode:I
    .restart local v13       #clobberSettingsKey:Z
    .restart local v15       #hasVoiceKey:Z
    :cond_1
    const v3, 0x7f050015

    move v5, v3

    goto :goto_1

    .line 277
    .restart local v4       #xmlName:Ljava/lang/String;
    .restart local v5       #xmlId:I
    :cond_2
    const v3, 0x7f050018

    move v5, v3

    goto :goto_2
.end method

.method private postSetInputView()V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    new-instance v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$1;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$1;-><init>(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)V

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->post(Ljava/lang/Runnable;)Z

    .line 727
    return-void
.end method

.method private setAutomaticTemporaryUpperCase()V
    .locals 2

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 411
    .local v0, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->setAutomaticTemporaryUpperCase()V

    .line 413
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    .line 415
    :cond_0
    return-void
.end method

.method private setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .locals 4
    .parameter "newKeyboard"

    .prologue
    .line 161
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v1

    .line 162
    .local v1, oldKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v2, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 163
    if-eqz v1, :cond_0

    iget-object v2, p1, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v2, v2, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    iget-object v3, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v3, v3, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    move v0, v2

    .line 165
    .local v0, localeChanged:Z
    :goto_0
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v2, v2, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->startDisplayLanguageOnSpacebar(Z)V

    .line 166
    return-void

    .line 163
    .end local v0           #localeChanged:Z
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private setManualTemporaryUpperCase(Z)V
    .locals 2
    .parameter "shifted"

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 353
    .local v0, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_2

    .line 358
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->setShiftLocked(Z)Z

    .line 362
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->setShifted(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    .line 366
    :cond_2
    return-void
.end method

.method private setShiftLocked(Z)V
    .locals 2
    .parameter "shiftLocked"

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 370
    .local v0, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->setShiftLocked(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    .line 373
    :cond_0
    return-void
.end method

.method private toggleKeyboardMode()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 610
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mVoiceKeyEnabled:Z

    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mVoiceButtonOnPrimary:Z

    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mIsSymbols:Z

    if-nez v3, :cond_0

    move v3, v5

    :goto_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->loadKeyboardInternal(Landroid/view/inputmethod/EditorInfo;ZZZ)V

    .line 611
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mIsSymbols:Z

    if-eqz v0, :cond_1

    .line 612
    iput v5, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    .line 616
    :goto_1
    return-void

    :cond_0
    move v3, v4

    .line 610
    goto :goto_0

    .line 614
    :cond_1
    iput v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    goto :goto_1
.end method

.method private toggleShiftInSymbol()V
    .locals 3

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardId;->equals(Lcom/android/inputmethod/keyboard/KeyboardId;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsShiftedId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardId;->equals(Lcom/android/inputmethod/keyboard/KeyboardId;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 580
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsShiftedId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 581
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 586
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->setShiftLocked(Z)Z

    .line 594
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    goto :goto_0

    .line 588
    .end local v0           #keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    :cond_2
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 589
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 592
    .restart local v0       #keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->setShifted(Z)Z

    goto :goto_1
.end method


# virtual methods
.method public changeKeyboardMode()V
    .locals 1

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleKeyboardMode()V

    .line 449
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setShiftLocked(Z)V

    .line 451
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 452
    return-void
.end method

.method public getInputView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    return-object v0
.end method

.method public getKeyboardMode()I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;
    .locals 2

    .prologue
    .line 302
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    .line 304
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    instance-of v1, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    if-eqz v1, :cond_0

    .line 305
    check-cast v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    .end local v0           #keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    move-object v1, v0

    .line 307
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasDistinctMultitouch()Z
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->hasDistinctMultitouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlphabetMode()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardId;->isAlphabetKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutomaticTemporaryUpperCase()Z
    .locals 2

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 332
    .local v0, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isAutomaticTemporaryUpperCase()Z

    move-result v1

    .line 334
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInMomentaryAutoModeSwitchState()Z
    .locals 2

    .prologue
    .line 598
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInputViewShown()Z
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyboardAvailable()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 298
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 297
    goto :goto_0

    :cond_1
    move v0, v1

    .line 298
    goto :goto_0
.end method

.method public isManualTemporaryUpperCase()Z
    .locals 2

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 339
    .local v0, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isManualTemporaryUpperCase()Z

    move-result v1

    .line 341
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isShiftLocked()Z
    .locals 2

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 325
    .local v0, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isShiftLocked()Z

    move-result v1

    .line 327
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isShiftedOrShiftLocked()Z
    .locals 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 318
    .local v0, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isShiftedOrShiftLocked()Z

    move-result v1

    .line 320
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVibrateAndSoundFeedbackRequired()Z
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->isInSlidingKeyInput()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyReleased()V
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 312
    .local v0, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->keyReleased()V

    .line 314
    :cond_0
    return-void
.end method

.method public loadKeyboard(Landroid/view/inputmethod/EditorInfo;ZZ)V
    .locals 5
    .parameter "attribute"
    .parameter "voiceKeyEnabled"
    .parameter "voiceButtonOnPrimary"

    .prologue
    const/4 v3, 0x0

    .line 127
    iput v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    .line 129
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->loadKeyboardInternal(Landroid/view/inputmethod/EditorInfo;ZZZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardId(Landroid/view/inputmethod/EditorInfo;Z)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v1

    .line 133
    .local v1, id:Lcom/android/inputmethod/keyboard/KeyboardId;
    sget-object v2, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loading keyboard failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onAutoCorrectionStateChanged(Z)V
    .locals 2
    .parameter "isAutoCorrection"

    .prologue
    .line 750
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mIsAutoCorrectionActive:Z

    if-eq p1, v1, :cond_0

    .line 751
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 752
    .local v0, keyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    iput-boolean p1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mIsAutoCorrectionActive:Z

    .line 753
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->onAutoCorrectionStateChanged(Z)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 756
    .end local v0           #keyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    :cond_0
    return-void
.end method

.method public onCancelInput()V
    .locals 2

    .prologue
    .line 571
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    .line 573
    :cond_0
    return-void
.end method

.method public onCreateInputView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    .locals 2

    .prologue
    .line 681
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mLayoutId:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->createInputViewInternal(IZ)V

    .line 682
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    return-object v0
.end method

.method public onKey(I)V
    .locals 4
    .parameter "key"

    .prologue
    const/16 v3, 0x20

    const/16 v2, 0xa

    const/4 v1, 0x1

    .line 633
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    packed-switch v0, :pswitch_data_0

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 642
    :pswitch_0
    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    .line 644
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mIsSymbols:Z

    if-eqz v0, :cond_1

    .line 645
    iput v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    goto :goto_0

    .line 647
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    goto :goto_0

    .line 649
    :cond_2
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 654
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    goto :goto_0

    .line 658
    :cond_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    goto :goto_0

    .line 662
    :pswitch_1
    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_0

    if-ltz p1, :cond_0

    .line 663
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    goto :goto_0

    .line 669
    :pswitch_2
    if-eq p1, v2, :cond_4

    if-ne p1, v3, :cond_0

    .line 670
    :cond_4
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    goto :goto_0

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onOtherKeyPressed()V
    .locals 1

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    :goto_0
    return-void

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mShiftKeyState:Lcom/android/inputmethod/keyboard/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/ShiftKeyState;->onOtherKeyPressed()V

    .line 566
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/ModifierKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/ModifierKeyState;->onOtherKeyPressed()V

    goto :goto_0
.end method

.method public onPressShift(Z)V
    .locals 3
    .parameter "withSliding"

    .prologue
    const/4 v2, 0x1

    .line 455
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isKeyboardAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAccessibilityEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mShiftKeyState:Lcom/android/inputmethod/keyboard/ShiftKeyState;

    .line 465
    .local v0, shiftKeyState:Lcom/android/inputmethod/keyboard/ShiftKeyState;
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 466
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 469
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/ShiftKeyState;->onPress()V

    .line 470
    invoke-direct {p0, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setManualTemporaryUpperCase(Z)V

    goto :goto_0

    .line 471
    :cond_2
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAutomaticTemporaryUpperCase()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 474
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/ShiftKeyState;->onPress()V

    .line 475
    invoke-direct {p0, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setManualTemporaryUpperCase(Z)V

    goto :goto_0

    .line 476
    :cond_3
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 479
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/ShiftKeyState;->onPressOnShifted()V

    goto :goto_0

    .line 482
    :cond_4
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/ShiftKeyState;->onPress()V

    .line 483
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    goto :goto_0

    .line 487
    :cond_5
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/ShiftKeyState;->onPress()V

    .line 488
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    goto :goto_0
.end method

.method public onPressSymbol()V
    .locals 1

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    :goto_0
    return-void

    .line 536
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    .line 537
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/ModifierKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/ModifierKeyState;->onPress()V

    .line 538
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    goto :goto_0
.end method

.method public onReleaseShift(Z)V
    .locals 2
    .parameter "withSliding"

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isKeyboardAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAccessibilityEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mShiftKeyState:Lcom/android/inputmethod/keyboard/ShiftKeyState;

    .line 503
    .local v0, shiftKeyState:Lcom/android/inputmethod/keyboard/ShiftKeyState;
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 504
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/ShiftKeyState;->isMomentary()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 506
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    .line 525
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/ShiftKeyState;->onRelease()V

    goto :goto_0

    .line 507
    :cond_3
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/ShiftKeyState;->isIgnoring()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p1, :cond_4

    .line 509
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleCapsLock()V

    .line 513
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->startIgnoringDoubleTap()V

    goto :goto_1

    .line 514
    :cond_4
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/ShiftKeyState;->isPressingOnShifted()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p1, :cond_5

    .line 517
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    goto :goto_1

    .line 518
    :cond_5
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isManualTemporaryUpperCaseFromAuto()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/ShiftKeyState;->isPressing()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 522
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    goto :goto_1
.end method

.method public onReleaseSymbol()V
    .locals 2

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    :goto_0
    return-void

    .line 551
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 552
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/ModifierKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/ModifierKeyState;->onRelease()V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 731
    const-string v1, "pref_keyboard_layout_20100902"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 732
    sget-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->sConfigDefaultKeyboardThemeId:Ljava/lang/String;

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 734
    .local v0, layoutId:I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->createInputViewInternal(IZ)V

    .line 735
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->postSetInputView()V

    .line 742
    .end local v0           #layoutId:I
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    const-string v1, "settings_key"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 737
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {p1, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getSettingsKeyMode(Landroid/content/SharedPreferences;Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSettingsKeyEnabledInSettings:Z

    .line 739
    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mLayoutId:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->createInputViewInternal(IZ)V

    .line 740
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->postSetInputView()V

    goto :goto_0
.end method

.method public toggleCapsLock()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateShiftState()V

    .line 397
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setShiftLocked(Z)V

    .line 402
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mShiftKeyState:Lcom/android/inputmethod/keyboard/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/ShiftKeyState;->onRelease()V

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setShiftLocked(Z)V

    goto :goto_0
.end method

.method public toggleShift()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateShiftState()V

    .line 384
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setManualTemporaryUpperCase(Z)V

    .line 389
    :goto_1
    return-void

    .line 385
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 387
    :cond_1
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShiftInSymbol()V

    goto :goto_1
.end method

.method public updateShiftState()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mShiftKeyState:Lcom/android/inputmethod/keyboard/ShiftKeyState;

    .line 427
    .local v0, shiftKeyState:Lcom/android/inputmethod/keyboard/ShiftKeyState;
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 428
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/ShiftKeyState;->isIgnoring()Z

    move-result v1

    if-nez v1, :cond_0

    .line 429
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/ShiftKeyState;->isReleasing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentAutoCapsState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setAutomaticTemporaryUpperCase()V

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/ShiftKeyState;->isMomentary()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setManualTemporaryUpperCase(Z)V

    goto :goto_0

    .line 439
    :cond_2
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/ShiftKeyState;->onRelease()V

    goto :goto_0
.end method
