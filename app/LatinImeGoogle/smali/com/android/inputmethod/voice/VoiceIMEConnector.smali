.class public Lcom/android/inputmethod/voice/VoiceIMEConnector;
.super Ljava/lang/Object;
.source "VoiceIMEConnector.java"

# interfaces
.implements Lcom/android/inputmethod/voice/VoiceInput$UiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/voice/VoiceIMEConnector$VoiceResults;,
        Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/android/inputmethod/voice/VoiceIMEConnector;


# instance fields
.field private mAfterVoiceInput:Z

.field private mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

.field private mHasUsedVoiceInput:Z

.field private mHasUsedVoiceInputUnsupportedLocale:Z

.field private mHints:Lcom/android/inputmethod/voice/Hints;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mImmediatelyAfterVoiceInput:Z

.field private mIsShowingHint:Z

.field private mLocaleSupportedForVoiceInput:Z

.field private mPasswordText:Z

.field private mRecognizing:Z

.field private mService:Lcom/android/inputmethod/latin/LatinIME;

.field private mShowingVoiceSuggestions:Z

.field private mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

.field private mVoiceButtonEnabled:Z

.field private mVoiceButtonOnPrimary:Z

.field private mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

.field private mVoiceInputHighlighted:Z

.field private final mVoiceResults:Lcom/android/inputmethod/voice/VoiceIMEConnector$VoiceResults;

.field private mVoiceWarningDialog:Landroid/app/AlertDialog;

.field private final mWordToSuggestions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-direct {v0}, Lcom/android/inputmethod/voice/VoiceIMEConnector;-><init>()V

    sput-object v0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->sInstance:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    .line 80
    const-class v0, Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->TAG:Ljava/lang/String;

    .line 81
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/android/inputmethod/voice/VoiceIMEConnector$VoiceResults;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/inputmethod/voice/VoiceIMEConnector$VoiceResults;-><init>(Lcom/android/inputmethod/voice/VoiceIMEConnector;Lcom/android/inputmethod/voice/VoiceIMEConnector$1;)V

    iput-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceResults:Lcom/android/inputmethod/voice/VoiceIMEConnector$VoiceResults;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mWordToSuggestions:Ljava/util/Map;

    .line 138
    return-void
.end method

.method static synthetic access$100(Lcom/android/inputmethod/voice/VoiceIMEConnector;)Lcom/android/inputmethod/latin/LatinIME;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/inputmethod/voice/VoiceIMEConnector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mIsShowingHint:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/inputmethod/voice/VoiceIMEConnector;)Lcom/android/inputmethod/voice/VoiceInput;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/inputmethod/voice/VoiceIMEConnector;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->reallyStartListening(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/inputmethod/voice/VoiceIMEConnector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->switchToLastInputMethod()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/inputmethod/voice/VoiceIMEConnector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mRecognizing:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/inputmethod/voice/VoiceIMEConnector;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->DEBUG:Z

    return v0
.end method

.method private fieldCanDoVoice(Lcom/android/inputmethod/voice/FieldContext;)Z
    .locals 1
    .parameter "fieldContext"

    .prologue
    .line 621
    iget-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mPasswordText:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/VoiceInput;->isBlacklistedField(Lcom/android/inputmethod/voice/FieldContext;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/inputmethod/voice/VoiceIMEConnector;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->sInstance:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    return-object v0
.end method

.method public static init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;Lcom/android/inputmethod/latin/LatinIME$UIHandler;)Lcom/android/inputmethod/voice/VoiceIMEConnector;
    .locals 1
    .parameter "context"
    .parameter "prefs"
    .parameter "h"

    .prologue
    .line 109
    sget-object v0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->sInstance:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->initInternal(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;Lcom/android/inputmethod/latin/LatinIME$UIHandler;)V

    .line 110
    sget-object v0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->sInstance:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    return-object v0
.end method

.method private initInternal(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;Lcom/android/inputmethod/latin/LatinIME$UIHandler;)V
    .locals 2
    .parameter "service"
    .parameter "prefs"
    .parameter "h"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    .line 119
    iput-object p3, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    .line 120
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Lcom/android/inputmethod/latin/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 121
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    .line 123
    new-instance v0, Lcom/android/inputmethod/voice/VoiceInput;

    invoke-direct {v0, p1, p0}, Lcom/android/inputmethod/voice/VoiceInput;-><init>(Landroid/content/Context;Lcom/android/inputmethod/voice/VoiceInput$UiListener;)V

    iput-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    .line 124
    new-instance v0, Lcom/android/inputmethod/voice/Hints;

    new-instance v1, Lcom/android/inputmethod/voice/VoiceIMEConnector$1;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/voice/VoiceIMEConnector$1;-><init>(Lcom/android/inputmethod/voice/VoiceIMEConnector;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/android/inputmethod/voice/Hints;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/android/inputmethod/voice/Hints$Display;)V

    iput-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mHints:Lcom/android/inputmethod/voice/Hints;

    .line 134
    return-void
.end method

.method private makeFieldContext()Lcom/android/inputmethod/voice/FieldContext;
    .locals 6

    .prologue
    .line 718
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v0

    .line 719
    .local v0, switcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;
    new-instance v1, Lcom/android/inputmethod/voice/FieldContext;

    iget-object v2, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocaleStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getEnabledLanguages()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/inputmethod/voice/FieldContext;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1
.end method

.method private reallyStartListening(Z)V
    .locals 4
    .parameter "swipe"

    .prologue
    const/4 v3, 0x1

    .line 580
    iget-boolean v2, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mHasUsedVoiceInput:Z

    if-nez v2, :cond_0

    .line 583
    iget-object v2, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 585
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "has_used_voice_input"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 586
    invoke-static {v1}, Lcom/android/inputmethod/latin/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 587
    iput-boolean v3, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mHasUsedVoiceInput:Z

    .line 590
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-boolean v2, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mLocaleSupportedForVoiceInput:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mHasUsedVoiceInputUnsupportedLocale:Z

    if-nez v2, :cond_1

    .line 593
    iget-object v2, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 595
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "has_used_voice_input_unsupported_locale"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 596
    invoke-static {v1}, Lcom/android/inputmethod/latin/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 597
    iput-boolean v3, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mHasUsedVoiceInputUnsupportedLocale:Z

    .line 601
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME;->clearSuggestions()V

    .line 603
    invoke-direct {p0}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->makeFieldContext()Lcom/android/inputmethod/voice/FieldContext;

    move-result-object v0

    .line 604
    .local v0, context:Lcom/android/inputmethod/voice/FieldContext;
    iget-object v2, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v2, v0, p1}, Lcom/android/inputmethod/voice/VoiceInput;->startListening(Lcom/android/inputmethod/voice/FieldContext;Z)V

    .line 605
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->switchToRecognitionStatusView(Landroid/content/res/Configuration;)V

    .line 606
    return-void
.end method

.method private revertVoiceInput()V
    .locals 3

    .prologue
    .line 357
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 358
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    .line 360
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInputHighlighted:Z

    .line 361
    return-void
.end method

.method private shouldShowVoiceButton(Lcom/android/inputmethod/voice/FieldContext;Landroid/view/inputmethod/EditorInfo;)Z
    .locals 5
    .parameter "fieldContext"
    .parameter "attribute"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 627
    const/4 v1, 0x0

    const-string v2, "nm"

    invoke-static {v1, v2, p2}, Lcom/android/inputmethod/latin/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "noMicrophoneKey"

    invoke-static {v1, v2, p2}, Lcom/android/inputmethod/latin/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v4

    .line 631
    .local v0, noMic:Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->fieldCanDoVoice(Lcom/android/inputmethod/voice/FieldContext;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v1}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    :goto_1
    return v1

    .end local v0           #noMic:Z
    :cond_1
    move v0, v3

    .line 627
    goto :goto_0

    .restart local v0       #noMic:Z
    :cond_2
    move v1, v3

    .line 631
    goto :goto_1
.end method

.method private showVoiceWarningDialog(ZLandroid/os/IBinder;)V
    .locals 12
    .parameter "swipe"
    .parameter "token"

    .prologue
    const v11, 0x7f0c0072

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 170
    iget-object v4, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 221
    :goto_0
    return-void

    .line 173
    :cond_0
    new-instance v0, Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;

    iget-object v4, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-direct {v0, v4}, Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 174
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 175
    const v4, 0x7f020033

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 176
    const v4, 0x104000a

    new-instance v5, Lcom/android/inputmethod/voice/VoiceIMEConnector$2;

    invoke-direct {v5, p0, p1}, Lcom/android/inputmethod/voice/VoiceIMEConnector$2;-><init>(Lcom/android/inputmethod/voice/VoiceIMEConnector;Z)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    const/high16 v4, 0x104

    new-instance v5, Lcom/android/inputmethod/voice/VoiceIMEConnector$3;

    invoke-direct {v5, p0}, Lcom/android/inputmethod/voice/VoiceIMEConnector$3;-><init>(Lcom/android/inputmethod/voice/VoiceIMEConnector;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 191
    new-instance v4, Lcom/android/inputmethod/voice/VoiceIMEConnector$4;

    invoke-direct {v4, p0}, Lcom/android/inputmethod/voice/VoiceIMEConnector$4;-><init>(Lcom/android/inputmethod/voice/VoiceIMEConnector;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 200
    iget-boolean v4, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mLocaleSupportedForVoiceInput:Z

    if-eqz v4, :cond_1

    .line 201
    new-array v4, v10, [Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v5, v11}, Lcom/android/inputmethod/latin/LatinIME;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "\n\n"

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    const v6, 0x7f0c0073

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/LatinIME;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 210
    .local v2, message:Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 211
    const v4, 0x7f0c0070

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 212
    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    .line 213
    iget-object v4, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 214
    .local v3, window:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 215
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object p2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 216
    const/16 v4, 0x3eb

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 217
    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 218
    const/high16 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 219
    iget-object v4, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v4}, Lcom/android/inputmethod/voice/VoiceInput;->logKeyboardWarningDialogShown()V

    .line 220
    iget-object v4, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 205
    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #message:Ljava/lang/CharSequence;
    .end local v3           #window:Landroid/view/Window;
    :cond_1
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    const v6, 0x7f0c0071

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/LatinIME;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "\n\n"

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v5, v11}, Lcom/android/inputmethod/latin/LatinIME;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "\n\n"

    aput-object v5, v4, v10

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    const v7, 0x7f0c0073

    invoke-virtual {v6, v7}, Lcom/android/inputmethod/latin/LatinIME;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2       #message:Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method private switchToLastInputMethod()V
    .locals 3

    .prologue
    .line 554
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getWindow()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 555
    .local v0, token:Landroid/os/IBinder;
    new-instance v1, Lcom/android/inputmethod/voice/VoiceIMEConnector$6;

    invoke-direct {v1, p0, v0}, Lcom/android/inputmethod/voice/VoiceIMEConnector$6;-><init>(Lcom/android/inputmethod/voice/VoiceIMEConnector;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/voice/VoiceIMEConnector$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 574
    return-void
.end method


# virtual methods
.method public applyVoiceAlternatives(Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;)Z
    .locals 10
    .parameter "touching"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 411
    iget-object v6, p1, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, selectedWord:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 413
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 415
    :cond_0
    iget-object v6, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 416
    iput-boolean v8, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mShowingVoiceSuggestions:Z

    .line 417
    iget-object v6, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 418
    .local v4, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;-><init>()V

    .line 421
    .local v0, builder:Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    iget-object v6, p1, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-interface {v6, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 422
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 423
    .local v5, word:Ljava/lang/CharSequence;
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 424
    .local v3, str:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 425
    invoke-virtual {v0, v5}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    goto :goto_0

    .line 428
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #str:Ljava/lang/String;
    .end local v5           #word:Ljava/lang/CharSequence;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWords(Ljava/util/List;Ljava/util/List;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    .line 430
    :cond_2
    invoke-virtual {v0, v8}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->setTypedWordValid(Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->setHasMinimalSuggestion(Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    .line 431
    iget-object v6, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->build()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V

    .line 432
    iget-object v6, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v6, v8}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesViewShown(Z)V

    move v6, v8

    .line 435
    .end local v0           #builder:Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .end local v4           #suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :goto_1
    return v6

    :cond_3
    move v6, v9

    goto :goto_1
.end method

.method public commitVoiceInput()V
    .locals 2

    .prologue
    .line 364
    iget-boolean v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInputHighlighted:Z

    if-eqz v1, :cond_1

    .line 365
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 366
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    .line 368
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInputHighlighted:Z

    .line 370
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->destroy()V

    .line 656
    :cond_0
    return-void
.end method

.method public flushAndLogAllTextModificationCounters(ILjava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3
    .parameter "index"
    .parameter "suggestion"
    .parameter "wordSeparators"

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mAfterVoiceInput:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mShowingVoiceSuggestions:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->flushAllTextModificationCounters()V

    .line 164
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p3, v2}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByChooseSuggestion(Ljava/lang/String;ILjava/lang/String;Landroid/view/inputmethod/InputConnection;)V

    .line 167
    :cond_0
    return-void
.end method

.method public flushVoiceInputLogs(Z)V
    .locals 1
    .parameter "configurationChanged"

    .prologue
    .line 149
    if-nez p1, :cond_1

    .line 150
    iget-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mAfterVoiceInput:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->flushAllTextModificationCounters()V

    .line 152
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->logInputEnded()V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->flushLogs()V

    .line 155
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->cancel()V

    .line 157
    :cond_1
    return-void
.end method

.method public getAndResetIsShowingHint()Z
    .locals 2

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mIsShowingHint:Z

    .line 352
    .local v0, ret:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mIsShowingHint:Z

    .line 353
    return v0
.end method

.method public handleBackspace()V
    .locals 2

    .prologue
    .line 439
    iget-boolean v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mAfterVoiceInput:Z

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/VoiceInput;->getCursorPos()I

    move-result v1

    if-lez v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/VoiceInput;->getSelectionSpan()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/VoiceInput;->getSelectionSpan()I

    move-result v1

    move v0, v1

    .line 447
    .local v0, deleteLen:I
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/voice/VoiceInput;->incrementTextModificationDeleteCount(I)V

    .line 450
    .end local v0           #deleteLen:I
    :cond_0
    return-void

    .line 445
    :cond_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method public handleCharacter()V
    .locals 2

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->commitVoiceInput()V

    .line 454
    iget-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mAfterVoiceInput:Z

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/voice/VoiceInput;->incrementTextModificationInsertCount(I)V

    .line 458
    :cond_0
    return-void
.end method

.method public handleClose()V
    .locals 1

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mRecognizing:Z

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->cancel()V

    .line 472
    :cond_0
    return-void
.end method

.method public handleSeparator()V
    .locals 2

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->commitVoiceInput()V

    .line 462
    iget-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mAfterVoiceInput:Z

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/voice/VoiceInput;->incrementTextModificationInsertPunctuationCount(I)V

    .line 466
    :cond_0
    return-void
.end method

.method public handleVoiceResults(Z)V
    .locals 10
    .parameter "capitalizeFirstWord"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 476
    iput-boolean v8, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mAfterVoiceInput:Z

    .line 477
    iput-boolean v8, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mImmediatelyAfterVoiceInput:Z

    .line 479
    iget-object v6, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 480
    .local v3, ic:Landroid/view/inputmethod/InputConnection;
    iget-object v6, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/LatinIME;->isFullscreenMode()Z

    move-result v6

    if-nez v6, :cond_0

    .line 482
    if-eqz v3, :cond_0

    .line 483
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 484
    .local v5, req:Landroid/view/inputmethod/ExtractedTextRequest;
    invoke-interface {v3, v5, v8}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    .line 487
    .end local v5           #req:Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_0
    iget-object v6, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/LatinIME;->vibrate()V

    .line 489
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v4, nBest:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v6, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceResults:Lcom/android/inputmethod/voice/VoiceIMEConnector$VoiceResults;

    iget-object v6, v6, Lcom/android/inputmethod/voice/VoiceIMEConnector$VoiceResults;->candidates:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 491
    .local v1, c:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 492
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 494
    :cond_1
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 496
    .end local v1           #c:Ljava/lang/String;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 511
    :goto_1
    return-void

    .line 499
    :cond_3
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, bestResult:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/inputmethod/voice/VoiceInput;->logVoiceInputDelivered(I)V

    .line 501
    iget-object v6, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mHints:Lcom/android/inputmethod/voice/Hints;

    invoke-virtual {v6, v0}, Lcom/android/inputmethod/voice/Hints;->registerVoiceResult(Ljava/lang/String;)V

    .line 503
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 504
    :cond_4
    iget-object v6, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v6, v3}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 505
    invoke-static {v3, v0}, Lcom/android/inputmethod/latin/EditingUtils;->appendText(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 506
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 508
    :cond_5
    iput-boolean v8, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInputHighlighted:Z

    .line 509
    iget-object v6, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mWordToSuggestions:Ljava/util/Map;

    iget-object v7, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceResults:Lcom/android/inputmethod/voice/VoiceIMEConnector$VoiceResults;

    iget-object v7, v7, Lcom/android/inputmethod/voice/VoiceIMEConnector$VoiceResults;->alternatives:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 510
    invoke-virtual {p0}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->onCancelVoice()V

    goto :goto_1
.end method

.method public hideVoiceWindow(Z)V
    .locals 1
    .parameter "configurationChanging"

    .prologue
    .line 299
    if-nez p1, :cond_2

    .line 300
    iget-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mAfterVoiceInput:Z

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->logInputEnded()V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->logKeyboardWarningDialogDismissed()V

    .line 304
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    .line 307
    :cond_1
    iget-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mRecognizing:Z

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->cancel()V

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 312
    return-void
.end method

.method public isVoiceButtonEnabled()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceButtonEnabled:Z

    return v0
.end method

.method public isVoiceButtonOnPrimary()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceButtonOnPrimary:Z

    return v0
.end method

.method public isVoiceInputHighlighted()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInputHighlighted:Z

    return v0
.end method

.method public loadSettings(Landroid/view/inputmethod/EditorInfo;Landroid/content/SharedPreferences;)V
    .locals 5
    .parameter "attribute"
    .parameter "sp"

    .prologue
    const v4, 0x7f0c0035

    const/4 v3, 0x0

    .line 636
    const-string v1, "has_used_voice_input"

    invoke-interface {p2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mHasUsedVoiceInput:Z

    .line 637
    const-string v1, "has_used_voice_input_unsupported_locale"

    invoke-interface {p2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mHasUsedVoiceInputUnsupportedLocale:Z

    .line 640
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v1

    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocaleStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isVoiceSupported(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mLocaleSupportedForVoiceInput:Z

    .line 644
    const-string v1, "voice_mode"

    iget-object v2, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2, v4}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, voiceMode:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    const v2, 0x7f0c0037

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->makeFieldContext()Lcom/android/inputmethod/voice/FieldContext;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->shouldShowVoiceButton(Lcom/android/inputmethod/voice/FieldContext;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceButtonEnabled:Z

    .line 648
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1, v4}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceButtonOnPrimary:Z

    .line 650
    return-void

    :cond_0
    move v1, v3

    .line 646
    goto :goto_0
.end method

.method public logAndRevertVoiceInput()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 373
    iget-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInputHighlighted:Z

    if-eqz v0, :cond_0

    .line 374
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceResults:Lcom/android/inputmethod/voice/VoiceIMEConnector$VoiceResults;

    iget-object v0, v0, Lcom/android/inputmethod/voice/VoiceIMEConnector$VoiceResults;->candidates:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/voice/VoiceInput;->incrementTextModificationDeleteCount(I)V

    .line 376
    invoke-direct {p0}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->revertVoiceInput()V

    .line 377
    const/4 v0, 0x1

    .line 379
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public needsToShowWarningDialog()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mHasUsedVoiceInput:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mLocaleSupportedForVoiceInput:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mHasUsedVoiceInputUnsupportedLocale:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->setVoiceInput(Lcom/android/inputmethod/voice/VoiceInput;)Z

    .line 678
    return-void
.end method

.method public onCancelVoice()V
    .locals 1

    .prologue
    .line 688
    iget-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mRecognizing:Z

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isVoiceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 694
    invoke-direct {p0}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->switchToLastInputMethod()V

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isKeyboardMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mRecognizing:Z

    .line 701
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->switchToKeyboardView()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "configuration"

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mRecognizing:Z

    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->switchToRecognitionStatusView(Landroid/content/res/Configuration;)V

    .line 684
    :cond_0
    return-void
.end method

.method public onStartInputView(Landroid/os/IBinder;)V
    .locals 2
    .parameter "keyboardViewToken"

    .prologue
    .line 660
    if-eqz p1, :cond_2

    move-object v0, p1

    .line 664
    .local v0, windowToken:Landroid/os/IBinder;
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isVoiceMode()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 666
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->purgeKeyboardAndClosing()V

    .line 668
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->startListening(ZLandroid/os/IBinder;)V

    .line 672
    :cond_1
    return-void

    .line 660
    .end local v0           #windowToken:Landroid/os/IBinder;
    :cond_2
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/VoiceInput;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public onVoiceResults(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 709
    .local p1, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, alternatives:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/CharSequence;>;>;"
    iget-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mRecognizing:Z

    if-nez v0, :cond_0

    .line 715
    :goto_0
    return-void

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceResults:Lcom/android/inputmethod/voice/VoiceIMEConnector$VoiceResults;

    iput-object p1, v0, Lcom/android/inputmethod/voice/VoiceIMEConnector$VoiceResults;->candidates:Ljava/util/List;

    .line 713
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceResults:Lcom/android/inputmethod/voice/VoiceIMEConnector$VoiceResults;

    iput-object p2, v0, Lcom/android/inputmethod/voice/VoiceIMEConnector$VoiceResults;->alternatives:Ljava/util/Map;

    .line 714
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->updateVoiceResults()V

    goto :goto_0
.end method

.method public rememberReplacedWord(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 4
    .parameter "suggestion"
    .parameter "wordSeparators"

    .prologue
    .line 384
    iget-boolean v2, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mShowingVoiceSuggestions:Z

    if-eqz v2, :cond_2

    .line 386
    iget-object v2, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/inputmethod/latin/EditingUtils;->getWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, wordToBeReplaced:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 389
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 391
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 392
    iget-object v2, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 393
    .local v0, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 396
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v2, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object v2, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mWordToSuggestions:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .end local v0           #suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v1           #wordToBeReplaced:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public resetVoiceStates(Z)V
    .locals 1
    .parameter "isPasswordText"

    .prologue
    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mAfterVoiceInput:Z

    .line 142
    iput-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mImmediatelyAfterVoiceInput:Z

    .line 143
    iput-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mShowingVoiceSuggestions:Z

    .line 144
    iput-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInputHighlighted:Z

    .line 145
    iput-boolean p1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mPasswordText:Z

    .line 146
    return-void
.end method

.method public setCursorAndSelection(II)V
    .locals 2
    .parameter "newSelEnd"
    .parameter "newSelStart"

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mAfterVoiceInput:Z

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/VoiceInput;->setCursorPos(I)V

    .line 317
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    sub-int v1, p1, p2

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/voice/VoiceInput;->setSelectionSpan(I)V

    .line 319
    :cond_0
    return-void
.end method

.method public setShowingVoiceSuggestions(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mShowingVoiceSuggestions:Z

    .line 327
    return-void
.end method

.method public setVoiceInputHighlighted(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 322
    iput-boolean p1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInputHighlighted:Z

    .line 323
    return-void
.end method

.method public showPunctuationHintIfNecessary()V
    .locals 2

    .prologue
    .line 289
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 290
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    iget-boolean v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mImmediatelyAfterVoiceInput:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mAfterVoiceInput:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mHints:Lcom/android/inputmethod/voice/Hints;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/voice/Hints;->showPunctuationHintIfNecessary(Landroid/view/inputmethod/InputConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/VoiceInput;->logPunctuationHintDisplayed()V

    .line 295
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mImmediatelyAfterVoiceInput:Z

    .line 296
    return-void
.end method

.method public startListening(ZLandroid/os/IBinder;)V
    .locals 1
    .parameter "swipe"
    .parameter "token"

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->needsToShowWarningDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->showVoiceWarningDialog(ZLandroid/os/IBinder;)V

    .line 618
    :goto_0
    return-void

    .line 615
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->reallyStartListening(Z)V

    goto :goto_0
.end method

.method public switchToRecognitionStatusView(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "configuration"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    new-instance v1, Lcom/android/inputmethod/voice/VoiceIMEConnector$5;

    invoke-direct {v1, p0, p1}, Lcom/android/inputmethod/voice/VoiceIMEConnector$5;-><init>(Lcom/android/inputmethod/voice/VoiceIMEConnector;Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->post(Ljava/lang/Runnable;)Z

    .line 551
    return-void
.end method
