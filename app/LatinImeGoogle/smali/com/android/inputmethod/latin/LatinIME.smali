.class public Lcom/android/inputmethod/latin/LatinIME;
.super Landroid/inputmethodservice/InputMethodService;
.source "LatinIME.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/KeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/LatinIME$UIHandler;,
        Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;,
        Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static final SUGGESTION_VISIBILITY_VALUE_ARRAY:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessibilityUtils:Lcom/android/inputmethod/latin/AccessibilityUtils;

.field private mApplicationSpecifiedCompletionOn:Z

.field private mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoCap:Z

.field private mAutoCorrectEnabled:Z

.field private mAutoCorrectOn:Z

.field private mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

.field private mAutoSpace:Z

.field private mBestWord:Ljava/lang/CharSequence;

.field private mBigramSuggestionEnabled:Z

.field private mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

.field private mCandidateViewContainer:Landroid/view/View;

.field private mCommittedLength:I

.field private final mComposing:Ljava/lang/StringBuilder;

.field private mConfigDelayBeforeFadeoutLanguageOnSpacebar:I

.field private mConfigDoubleSpacesTurnIntoPeriodTimeout:J

.field private mConfigDurationOfFadeoutLanguageOnSpacebar:I

.field private mConfigEnableShowSubtypeSettings:Z

.field private mConfigFinalFadeoutFactorOfLanguageOnSpacebar:F

.field private mConfigSwipeDownDismissKeyboardEnabled:Z

.field private mConfigurationChanging:Z

.field private mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

.field private mCorrectionMode:I

.field private mCpsIntervals:[J

.field private mDeleteCount:I

.field private mEnteredText:Ljava/lang/CharSequence;

.field public final mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

.field private mHasDictionary:Z

.field private mHasValidSuggestions:Z

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodId:Ljava/lang/String;

.field private mInputTypeNoAutoCorrect:Z

.field private mIsSettingsSuggestionStripOn:Z

.field private mJustAccepted:Z

.field private mJustAddedAutoSpace:Z

.field private mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

.field private mLastKeyTime:J

.field private mLastSelectionEnd:I

.field private mLastSelectionStart:I

.field private mOptionsDialog:Landroid/app/AlertDialog;

.field private mOrientation:I

.field private mPopupOn:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mQuickFixes:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecorrectionEnabled:Z

.field private mResources:Landroid/content/res/Resources;

.field private mSentenceSeparators:Ljava/lang/String;

.field private mSilentMode:Z

.field private mSoundOn:Z

.field private mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

.field private mSuggest:Lcom/android/inputmethod/latin/Suggest;

.field private mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

.field private mSuggestPuncs:Ljava/lang/String;

.field private mSuggestionVisibility:I

.field private mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

.field private mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

.field private mVibrateOn:Z

.field private mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

.field private mWord:Lcom/android/inputmethod/latin/WordComposer;

.field private final mWordHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;",
            ">;"
        }
    .end annotation
.end field

.field mWordSeparators:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    .line 130
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/inputmethod/latin/LatinIME;->SUGGESTION_VISIBILITY_VALUE_ARRAY:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x2et 0x0t 0xct 0x7ft
        0x2ft 0x0t 0xct 0x7ft
        0x30t 0x0t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    .line 165
    new-instance v0, Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/WordComposer;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordHistory:Ljava/util/ArrayList;

    .line 263
    new-instance v0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    .line 1986
    new-instance v0, Lcom/android/inputmethod/latin/LatinIME$1;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/LatinIME$1;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2324
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCpsIntervals:[J

    return-void
.end method

.method private abortRecorrection(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 1284
    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isRecorrecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1285
    :cond_0
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->onAbortRecorrection()V

    .line 1286
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isCandidateStripVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesViewShown(Z)V

    .line 1287
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1288
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->clearSuggestions()V

    .line 1290
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/latin/LatinIME;Lcom/android/inputmethod/latin/WordComposer;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->getTypedSuggestions(Lcom/android/inputmethod/latin/WordComposer;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/SubtypeSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/inputmethod/latin/LatinIME;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputMethodId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/inputmethod/latin/LatinIME;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->setOldSuggestions()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/voice/VoiceIMEConnector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/inputmethod/latin/LatinIME;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigFinalFadeoutFactorOfLanguageOnSpacebar:F

    return v0
.end method

.method static synthetic access$500(Lcom/android/inputmethod/latin/LatinIME;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigDurationOfFadeoutLanguageOnSpacebar:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/inputmethod/latin/LatinIME;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigDelayBeforeFadeoutLanguageOnSpacebar:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/inputmethod/latin/LatinIME;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigDoubleSpacesTurnIntoPeriodTimeout:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateRingerMode()V

    return-void
.end method

.method private addToAutoAndUserBigramDictionaries(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "suggestion"
    .parameter "frequencyDelta"

    .prologue
    .line 1806
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/LatinIME;->checkAddToDictionary(Ljava/lang/CharSequence;IZ)V

    .line 1807
    return-void
.end method

.method private addToOnlyBigramDictionary(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "suggestion"
    .parameter "frequencyDelta"

    .prologue
    .line 1810
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/LatinIME;->checkAddToDictionary(Ljava/lang/CharSequence;IZ)V

    .line 1811
    return-void
.end method

.method private applyTypedAlternatives(Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;)Z
    .locals 12
    .parameter "touching"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1727
    const/4 v3, 0x0

    .line 1728
    .local v3, foundWord:Lcom/android/inputmethod/latin/WordComposer;
    const/4 v1, 0x0

    .line 1730
    .local v1, alternatives:Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;

    .line 1731
    .local v2, entry:Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;->getChosenWord()Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p1, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1732
    instance-of v6, v2, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;

    if-eqz v6, :cond_1

    .line 1733
    move-object v0, v2

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;->access$800(Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;)Lcom/android/inputmethod/latin/WordComposer;

    move-result-object v3

    .line 1735
    :cond_1
    move-object v1, v2

    .line 1740
    .end local v2           #entry:Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;
    :cond_2
    if-nez v3, :cond_4

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/Suggest;->getUnigramDictionaries()Ljava/util/Map;

    move-result-object v6

    iget-object v7, p1, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-static {v6, v7, v10}, Lcom/android/inputmethod/latin/AutoCorrection;->isValidWord(Ljava/util/Map;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1743
    new-instance v3, Lcom/android/inputmethod/latin/WordComposer;

    .end local v3           #foundWord:Lcom/android/inputmethod/latin/WordComposer;
    invoke-direct {v3}, Lcom/android/inputmethod/latin/WordComposer;-><init>()V

    .line 1744
    .restart local v3       #foundWord:Lcom/android/inputmethod/latin/WordComposer;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v6, p1, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 1745
    iget-object v6, p1, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-interface {v6, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    new-array v7, v10, [I

    iget-object v8, p1, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-interface {v8, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    aput v8, v7, v9

    invoke-virtual {v3, v6, v7, v11, v11}, Lcom/android/inputmethod/latin/WordComposer;->add(I[III)V

    .line 1744
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1749
    :cond_3
    iget-object v6, p1, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-interface {v6, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/inputmethod/latin/WordComposer;->setFirstCharCapitalized(Z)V

    .line 1752
    .end local v4           #i:I
    :cond_4
    if-nez v3, :cond_5

    if-eqz v1, :cond_8

    .line 1753
    :cond_5
    if-nez v1, :cond_6

    .line 1754
    new-instance v1, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;

    .end local v1           #alternatives:Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;
    iget-object v6, p1, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-direct {v1, p0, v6, v3}, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;-><init>(Lcom/android/inputmethod/latin/LatinIME;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/WordComposer;)V

    .line 1756
    .restart local v1       #alternatives:Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->showCorrections(Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;)V

    .line 1757
    if-eqz v3, :cond_7

    .line 1758
    new-instance v6, Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {v6, v3}, Lcom/android/inputmethod/latin/WordComposer;-><init>(Lcom/android/inputmethod/latin/WordComposer;)V

    iput-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    :goto_1
    move v6, v10

    .line 1764
    :goto_2
    return v6

    .line 1760
    :cond_7
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    goto :goto_1

    :cond_8
    move v6, v9

    .line 1764
    goto :goto_2
.end method

.method private checkAddToDictionary(Ljava/lang/CharSequence;IZ)V
    .locals 8
    .parameter "suggestion"
    .parameter "frequencyDelta"
    .parameter "selectedANotTypedWord"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1819
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v4, v6, :cond_1

    .line 1846
    :cond_0
    :goto_0
    return-void

    .line 1824
    :cond_1
    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 1829
    :cond_2
    if-nez p3, :cond_5

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

    invoke-virtual {v4, p1}, Lcom/android/inputmethod/latin/AutoDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v3, v6

    .line 1831
    .local v3, selectedATypedWordAndItsInAutoDic:Z
    :goto_1
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/Suggest;->getUnigramDictionaries()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4, p1, v6}, Lcom/android/inputmethod/latin/AutoCorrection;->isValidWord(Ljava/util/Map;Ljava/lang/CharSequence;Z)Z

    move-result v0

    .line 1833
    .local v0, isValidWord:Z
    if-nez v3, :cond_3

    if-nez v0, :cond_6

    :cond_3
    move v1, v6

    .line 1835
    .local v1, needsToAddToAutoDictionary:Z
    :goto_2
    if-eqz v1, :cond_4

    .line 1836
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/android/inputmethod/latin/AutoDictionary;->addWord(Ljava/lang/String;I)V

    .line 1839
    :cond_4
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    if-eqz v4, :cond_0

    .line 1840
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSentenceSeparators:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/inputmethod/latin/EditingUtils;->getPreviousWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1842
    .local v2, prevWord:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1843
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/inputmethod/latin/UserBigramDictionary;->addBigrams(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #isValidWord:Z
    .end local v1           #needsToAddToAutoDictionary:Z
    .end local v2           #prevWord:Ljava/lang/CharSequence;
    .end local v3           #selectedATypedWordAndItsInAutoDic:Z
    :cond_5
    move v3, v7

    .line 1829
    goto :goto_1

    .restart local v0       #isValidWord:Z
    .restart local v3       #selectedATypedWordAndItsInAutoDic:Z
    :cond_6
    move v1, v7

    .line 1833
    goto :goto_2
.end method

.method private checkRecorrectionOnStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 650
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mRecorrectionEnabled:Z

    if-nez v3, :cond_1

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 653
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    .line 655
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 657
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingSuggestionsStrip()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 662
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 663
    .local v1, etr:Landroid/view/inputmethod/ExtractedTextRequest;
    iput v4, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 664
    invoke-interface {v2, v1, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 665
    .local v0, et:Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    .line 667
    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    .line 668
    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    .line 671
    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isCursorTouchingWord()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 672
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateOldSuggestions()V

    goto :goto_0
.end method

.method private doubleSpace()V
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1021
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    if-nez v0, :cond_1

    .line 1040
    :cond_0
    :goto_0
    return-void

    .line 1022
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1023
    if-eqz v0, :cond_0

    .line 1024
    invoke-interface {v0, v6, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1025
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v6, :cond_2

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_2

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_2

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->isAcceptingDoubleSpaces()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1030
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelDoubleSpacesTimer()V

    .line 1031
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1032
    invoke-interface {v0, v5, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1033
    const-string v1, ". "

    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1034
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1035
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 1036
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedAutoSpace:Z

    goto :goto_0

    .line 1038
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->startDoubleSpacesTimer()V

    goto :goto_0
.end method

.method private getTypedSuggestions(Lcom/android/inputmethod/latin/WordComposer;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .locals 3
    .parameter "word"

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/inputmethod/latin/Suggest;->getSuggestedWordBuilder(Landroid/view/View;Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v0

    return-object v0
.end method

.method private handleBackspace()V
    .locals 8

    .prologue
    const/16 v7, 0x43

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1203
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-virtual {v3}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->logAndRevertVoiceInput()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1257
    :cond_0
    :goto_0
    return-void

    .line 1205
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1206
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    .line 1207
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1209
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-virtual {v3}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->handleBackspace()V

    .line 1211
    const/4 v0, 0x0

    .line 1212
    .local v0, deleteChar:Z
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasValidSuggestions:Z

    if-eqz v3, :cond_4

    .line 1213
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 1214
    .local v2, length:I
    if-lez v2, :cond_3

    .line 1215
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    sub-int v4, v2, v6

    invoke-virtual {v3, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1216
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/WordComposer;->deleteLast()V

    .line 1217
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v1, v3, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1218
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 1219
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasValidSuggestions:Z

    .line 1221
    :cond_2
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestions()V

    .line 1228
    .end local v2           #length:I
    :goto_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateShiftKeyState()V

    .line 1230
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->backspace()V

    .line 1231
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isUndoCommit()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1232
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->revertLastWord(Z)V

    .line 1233
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 1223
    .restart local v2       #length:I
    :cond_3
    invoke-interface {v1, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_1

    .line 1226
    .end local v2           #length:I
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 1237
    :cond_5
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v3}, Lcom/android/inputmethod/latin/LatinIME;->sameAsTextBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1238
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v1, v3, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1256
    :cond_6
    :goto_2
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 1239
    :cond_7
    if-eqz v0, :cond_6

    .line 1240
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/CandidateView;->dismissAddToDictionaryHint()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1248
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->revertLastWord(Z)V

    goto :goto_2

    .line 1250
    :cond_8
    invoke-virtual {p0, v7}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEvents(I)V

    .line 1251
    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    const/16 v4, 0x14

    if-le v3, v4, :cond_6

    .line 1252
    invoke-virtual {p0, v7}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEvents(I)V

    goto :goto_2
.end method

.method private handleCharacter(I[III)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1293
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->handleCharacter()V

    .line 1295
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isRecorrecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1296
    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->abortRecorrection(Z)V

    .line 1300
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->isAlphabet(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isCursorTouchingWord()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1301
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasValidSuggestions:Z

    if-nez v0, :cond_1

    .line 1302
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasValidSuggestions:Z

    .line 1303
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1304
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->saveWordInHistory(Ljava/lang/CharSequence;)V

    .line 1305
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    .line 1306
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->clearSuggestions()V

    .line 1309
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 1310
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1311
    if-eqz p2, :cond_2

    aget v1, p2, v3

    if-ltz v1, :cond_2

    aget v1, p2, v3

    const v2, 0x10ffff

    if-le v1, v2, :cond_3

    .line 1350
    :cond_2
    :goto_0
    return-void

    .line 1315
    :cond_3
    aget v1, p2, v3

    .line 1316
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1317
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v2

    .line 1318
    if-eq v2, v1, :cond_8

    move v1, v2

    .line 1328
    :cond_4
    :goto_1
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasValidSuggestions:Z

    if-eqz v2, :cond_9

    .line 1329
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1331
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2, v5}, Lcom/android/inputmethod/latin/WordComposer;->setFirstCharCapitalized(Z)V

    .line 1333
    :cond_5
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    int-to-char v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1334
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2, v1, p2, p3, p4}, Lcom/android/inputmethod/latin/WordComposer;->add(I[III)V

    .line 1335
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 1336
    if-eqz v2, :cond_7

    .line 1338
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v3

    if-ne v3, v5, :cond_6

    .line 1339
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentAutoCapsState()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/latin/WordComposer;->setAutoCapitalized(Z)V

    .line 1341
    :cond_6
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v2, v3, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1343
    :cond_7
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestions()V

    .line 1347
    :goto_2
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 1349
    int-to-char v0, v1

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/TextEntryState;->typedCharacter(CZ)V

    goto :goto_0

    .line 1322
    :cond_8
    new-instance v0, Ljava/lang/String;

    new-array v2, v5, [I

    aput v1, v2, v3

    invoke-direct {v0, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1323
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->onTextInput(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1345
    :cond_9
    int-to-char v2, v1

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->sendKeyChar(C)V

    goto :goto_2

    :cond_a
    move v1, p1

    goto :goto_1
.end method

.method private handleClose()V
    .locals 2

    .prologue
    .line 1422
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 1423
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->handleClose()V

    .line 1424
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->requestHideSelf(I)V

    .line 1425
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 1426
    .local v0, inputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    if-eqz v0, :cond_0

    .line 1427
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->closing()V

    .line 1428
    :cond_0
    return-void
.end method

.method private handleSeparator(I)V
    .locals 9
    .parameter "primaryCode"

    .prologue
    const/16 v8, 0x20

    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1353
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-virtual {v4}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->handleSeparator()V

    .line 1356
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/CandidateView;->dismissAddToDictionaryHint()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1357
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestions()V

    .line 1360
    :cond_0
    const/4 v2, 0x0

    .line 1362
    .local v2, pickedDefault:Z
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1363
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1

    .line 1364
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1365
    invoke-direct {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->abortRecorrection(Z)V

    .line 1367
    :cond_1
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasValidSuggestions:Z

    if-eqz v4, :cond_2

    .line 1372
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectOn:Z

    if-eqz v4, :cond_a

    const/16 v4, 0x27

    if-eq p1, v4, :cond_a

    .line 1373
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->pickDefaultSuggestion()Z

    move-result v2

    .line 1376
    if-ne p1, v8, :cond_2

    .line 1377
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedAutoSpace:Z

    .line 1383
    :cond_2
    :goto_0
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedAutoSpace:Z

    if-eqz v4, :cond_3

    if-ne p1, v7, :cond_3

    .line 1384
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->removeTrailingSpace()V

    .line 1385
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedAutoSpace:Z

    .line 1387
    :cond_3
    int-to-char v4, p1

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/LatinIME;->sendKeyChar(C)V

    .line 1391
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isPunctuationAfterAccepted()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x2e

    if-ne p1, v4, :cond_4

    .line 1392
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->reswapPeriodAndSpace()V

    .line 1395
    :cond_4
    int-to-char v4, p1

    invoke-static {v4, v6}, Lcom/android/inputmethod/latin/TextEntryState;->typedCharacter(CZ)V

    .line 1396
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isPunctuationAfterAccepted()Z

    move-result v4

    if-eqz v4, :cond_b

    if-eq p1, v7, :cond_b

    .line 1397
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->swapPunctuationAndSpace()V

    .line 1401
    :cond_5
    :goto_1
    if-eqz v2, :cond_8

    .line 1402
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1403
    .local v3, typedWord:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/inputmethod/latin/TextEntryState;->backToAcceptedDefault(Ljava/lang/CharSequence;)V

    .line 1404
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1405
    if-eqz v1, :cond_6

    .line 1406
    new-instance v0, Landroid/view/inputmethod/CorrectionInfo;

    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-direct {v0, v4, v3, v5}, Landroid/view/inputmethod/CorrectionInfo;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1408
    .local v0, correctionInfo:Landroid/view/inputmethod/CorrectionInfo;
    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    .line 1410
    .end local v0           #correctionInfo:Landroid/view/inputmethod/CorrectionInfo;
    :cond_6
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    if-eqz v4, :cond_7

    .line 1411
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lcom/android/inputmethod/latin/CandidateView;->onAutoCorrectionInverted(Ljava/lang/CharSequence;)V

    .line 1413
    :cond_7
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->setPunctuationSuggestions()V

    .line 1415
    .end local v3           #typedWord:Ljava/lang/CharSequence;
    :cond_8
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 1416
    if-eqz v1, :cond_9

    .line 1417
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1419
    :cond_9
    return-void

    .line 1380
    :cond_a
    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_0

    .line 1398
    :cond_b
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsRequested()Z

    move-result v4

    if-eqz v4, :cond_5

    if-ne p1, v8, :cond_5

    .line 1399
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->doubleSpace()V

    goto :goto_1
.end method

.method private handleTab()V
    .locals 4

    .prologue
    .line 1260
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1263
    const/high16 v1, 0xc00

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    .line 1264
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEvents(I)V

    .line 1281
    :cond_0
    :goto_0
    return-void

    .line 1268
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1269
    if-eqz v1, :cond_0

    .line 1273
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isManualTemporaryUpperCase()Z

    move-result v2

    .line 1274
    const/high16 v3, 0x800

    and-int/2addr v3, v0

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 1276
    const/4 v0, 0x5

    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto :goto_0

    .line 1277
    :cond_2
    const/high16 v3, 0x400

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 1279
    const/4 v0, 0x7

    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto :goto_0
.end method

.method private initSuggest()V
    .locals 7

    .prologue
    .line 443
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocaleStr()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, locale:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->changeSystemLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v4

    .line 446
    .local v4, savedLocale:Ljava/util/Locale;
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v5, :cond_0

    .line 447
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/Suggest;->close()V

    .line 449
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    .line 450
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->isQuickFixesEnabled(Landroid/content/SharedPreferences;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mQuickFixes:Z

    .line 452
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    .line 453
    .local v3, res:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/android/inputmethod/latin/Utils;->getMainDictionaryResourceId(Landroid/content/res/Resources;)I

    move-result v1

    .line 454
    .local v1, mainDicResId:I
    new-instance v5, Lcom/android/inputmethod/latin/Suggest;

    invoke-direct {v5, p0, v1}, Lcom/android/inputmethod/latin/Suggest;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    .line 455
    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->loadAndSetAutoCorrectionThreshold(Landroid/content/SharedPreferences;)V

    .line 456
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateAutoTextEnabled()V

    .line 458
    new-instance v5, Lcom/android/inputmethod/latin/UserDictionary;

    invoke-direct {v5, p0, v0}, Lcom/android/inputmethod/latin/UserDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    .line 459
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/Suggest;->setUserDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 461
    new-instance v5, Lcom/android/inputmethod/latin/ContactsDictionary;

    const/4 v6, 0x4

    invoke-direct {v5, p0, v6}, Lcom/android/inputmethod/latin/ContactsDictionary;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

    .line 462
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/Suggest;->setContactsDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 464
    new-instance v5, Lcom/android/inputmethod/latin/AutoDictionary;

    const/4 v6, 0x3

    invoke-direct {v5, p0, p0, v0, v6}, Lcom/android/inputmethod/latin/AutoDictionary;-><init>(Landroid/content/Context;Lcom/android/inputmethod/latin/LatinIME;Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

    .line 465
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/Suggest;->setAutoDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 467
    new-instance v5, Lcom/android/inputmethod/latin/UserBigramDictionary;

    const/4 v6, 0x2

    invoke-direct {v5, p0, p0, v0, v6}, Lcom/android/inputmethod/latin/UserBigramDictionary;-><init>(Landroid/content/Context;Lcom/android/inputmethod/latin/LatinIME;Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    .line 468
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/Suggest;->setUserBigramDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 470
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateCorrectionMode()V

    .line 471
    const v5, 0x7f0c0024

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordSeparators:Ljava/lang/String;

    .line 472
    const v5, 0x7f0c0025

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSentenceSeparators:Ljava/lang/String;

    .line 474
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v5, v4}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->changeSystemLocale(Ljava/util/Locale;)Ljava/util/Locale;

    .line 475
    return-void
.end method

.method private initSuggestPuncList()V
    .locals 4

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestPuncs:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

    if-eqz v0, :cond_1

    .line 2219
    :cond_0
    :goto_0
    return-void

    .line 2210
    :cond_1
    new-instance v0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;-><init>()V

    .line 2211
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2212
    if-eqz v1, :cond_2

    .line 2213
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2214
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    .line 2213
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2217
    :cond_2
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->build()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

    .line 2218
    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestPuncs:Ljava/lang/String;

    goto :goto_0
.end method

.method private initializeInputAttributes(Landroid/view/inputmethod/EditorInfo;)V
    .locals 6
    .parameter "attribute"

    .prologue
    const v5, 0x8000

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 595
    if-nez p1, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 598
    .local v0, inputType:I
    and-int/lit16 v1, v0, 0xff0

    .line 599
    .local v1, variation:I
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoSpace:Z

    .line 600
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    .line 601
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    .line 602
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletionOn:Z

    .line 603
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 605
    and-int/lit8 v2, v0, 0xf

    if-ne v2, v4, :cond_0

    .line 606
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    .line 608
    invoke-static {v0}, Lcom/android/inputmethod/latin/Utils;->isPasswordInputType(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/android/inputmethod/latin/Utils;->isVisiblePasswordInputType(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 610
    :cond_2
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    .line 612
    :cond_3
    invoke-static {v1}, Lcom/android/inputmethod/latin/Utils;->isEmailVariation(I)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0x60

    if-ne v1, v2, :cond_8

    .line 614
    :cond_4
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoSpace:Z

    .line 618
    :goto_1
    invoke-static {v1}, Lcom/android/inputmethod/latin/Utils;->isEmailVariation(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 619
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    .line 633
    :cond_5
    :goto_2
    const/high16 v2, 0x8

    and-int/2addr v2, v0

    if-eqz v2, :cond_6

    .line 634
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    .line 635
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    .line 638
    :cond_6
    and-int v2, v0, v5

    if-nez v2, :cond_7

    const/high16 v2, 0x2

    and-int/2addr v2, v0

    if-nez v2, :cond_7

    .line 640
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    .line 642
    :cond_7
    const/high16 v2, 0x1

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    .line 643
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    .line 644
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isFullscreenMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletionOn:Z

    goto :goto_0

    .line 616
    :cond_8
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoSpace:Z

    goto :goto_1

    .line 620
    :cond_9
    const/16 v2, 0x10

    if-ne v1, v2, :cond_a

    .line 621
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    goto :goto_2

    .line 622
    :cond_a
    const/16 v2, 0xb0

    if-ne v1, v2, :cond_b

    .line 623
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    goto :goto_2

    .line 624
    :cond_b
    const/16 v2, 0xa0

    if-ne v1, v2, :cond_5

    .line 627
    and-int v2, v0, v5

    if-nez v2, :cond_5

    .line 628
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    goto :goto_2
.end method

.method private isAlphabet(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 1076
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    const/4 v0, 0x1

    .line 1079
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAutoCorrectEnabled(Landroid/content/SharedPreferences;)Z
    .locals 3
    .parameter

    .prologue
    .line 2189
    const-string v0, "auto_correction_threshold"

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2192
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2194
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBigramSuggestionEnabled(Landroid/content/SharedPreferences;)Z
    .locals 3
    .parameter

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2200
    if-nez v0, :cond_0

    .line 2201
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->isAutoCorrectEnabled(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 2203
    :goto_0
    return v0

    :cond_0
    const-string v0, "bigram_suggestion"

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private isCandidateStripVisible()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1462
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    if-nez v0, :cond_0

    move v0, v1

    .line 1470
    :goto_0
    return v0

    .line 1464
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/CandidateView;->isShowingAddToDictionaryHint()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isRecorrecting()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    .line 1465
    goto :goto_0

    .line 1466
    :cond_2
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingSuggestionsStrip()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 1467
    goto :goto_0

    .line 1468
    :cond_3
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletionOn:Z

    if-eqz v0, :cond_4

    move v0, v2

    .line 1469
    goto :goto_0

    .line 1470
    :cond_4
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsRequested()Z

    move-result v0

    goto :goto_0
.end method

.method private isCursorTouchingWord()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1849
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1850
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    move v3, v4

    .line 1863
    :goto_0
    return v3

    .line 1851
    :cond_0
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1852
    .local v1, toLeft:Ljava/lang/CharSequence;
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1853
    .local v2, toRight:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestedPunctuation(I)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    .line 1856
    goto :goto_0

    .line 1858
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestedPunctuation(I)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v5

    .line 1861
    goto :goto_0

    :cond_2
    move v3, v4

    .line 1863
    goto :goto_0
.end method

.method private isPopupEnabled(Landroid/content/SharedPreferences;)Z
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f08000e

    .line 2171
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2173
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2174
    :goto_0
    return v0

    :cond_0
    const-string v0, "popup_on"

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private isQuickFixesEnabled(Landroid/content/SharedPreferences;)Z
    .locals 3
    .parameter

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2181
    if-nez v0, :cond_0

    .line 2182
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->isAutoCorrectEnabled(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 2184
    :goto_0
    return v0

    :cond_0
    const-string v0, "quick_fixes"

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private isSentenceSeparator(I)Z
    .locals 2
    .parameter "code"

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSentenceSeparators:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isShowingOptionDialog()Z
    .locals 1

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowingPunctuationList()Z
    .locals 2

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/CandidateView;->getSuggestions()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowingSuggestionsStrip()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1456
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionVisibility:I

    const v1, 0x7f0c002e

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionVisibility:I

    const v1, 0x7f0c002f

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOrientation:I

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSuggestedPunctuation(I)Z
    .locals 2
    .parameter "code"

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestPuncs:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isSuggestionsRequested()Z
    .locals 1

    .prologue
    .line 1447
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingSuggestionsStrip()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAndSetAutoCorrectionThreshold(Landroid/content/SharedPreferences;)V
    .locals 7
    .parameter

    .prologue
    const-wide v5, 0x7fefffffffffffffL

    .line 2140
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-nez v0, :cond_1

    .line 2168
    :cond_0
    :goto_0
    return-void

    .line 2142
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->isAutoCorrectEnabled(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2144
    const-string v0, "auto_correction_threshold"

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2147
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    const/high16 v2, 0x7f0d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2152
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2153
    if-ltz v2, :cond_2

    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 2154
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 2167
    :goto_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v2, v0, v1}, Lcom/android/inputmethod/latin/Suggest;->setAutoCorrectionThreshold(D)V

    goto :goto_0

    .line 2157
    :catch_0
    move-exception v2

    .line 2160
    sget-object v2, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot load auto correction threshold setting. currentAutoCorrectionSetting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", autoCorrectionThresholdValues: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-wide v0, v5

    goto :goto_1
.end method

.method private loadSettings(Landroid/view/inputmethod/EditorInfo;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2112
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    .line 2113
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 2114
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vibrate_on"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    :goto_0
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVibrateOn:Z

    .line 2116
    const-string v0, "sound_on"

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f080012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSoundOn:Z

    .line 2119
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->isPopupEnabled(Landroid/content/SharedPreferences;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPopupOn:Z

    .line 2120
    const-string v0, "auto_cap"

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCap:Z

    .line 2121
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->isQuickFixesEnabled(Landroid/content/SharedPreferences;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mQuickFixes:Z

    .line 2123
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->isAutoCorrectEnabled(Landroid/content/SharedPreferences;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectEnabled:Z

    .line 2124
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->isBigramSuggestionEnabled(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    :goto_1
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mBigramSuggestionEnabled:Z

    .line 2125
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->loadAndSetAutoCorrectionThreshold(Landroid/content/SharedPreferences;)V

    .line 2127
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-virtual {v0, p1, v1}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->loadSettings(Landroid/view/inputmethod/EditorInfo;Landroid/content/SharedPreferences;)V

    .line 2129
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateCorrectionMode()V

    .line 2130
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateAutoTextEnabled()V

    .line 2131
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestionVisibility(Landroid/content/SharedPreferences;)V

    .line 2132
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->loadSettings()V

    .line 2133
    return-void

    :cond_0
    move v0, v4

    .line 2114
    goto :goto_0

    :cond_1
    move v0, v4

    .line 2124
    goto :goto_1
.end method

.method private maybeRemovePreviousPeriod(Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "text"

    .prologue
    const/16 v5, 0x2e

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1043
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1044
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1054
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1049
    .local v1, lastOne:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1052
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0
.end method

.method private onSettingsKeyLongPressed()V
    .locals 1

    .prologue
    .line 1096
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingOptionDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Lcom/android/inputmethod/latin/Utils;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1098
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 1103
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->launchSettings()V

    goto :goto_0
.end method

.method private onSettingsKeyPressed()V
    .locals 1

    .prologue
    .line 1084
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingOptionDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1085
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigEnableShowSubtypeSettings:Z

    if-nez v0, :cond_1

    .line 1086
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->showSubtypeSelectorAndSettings()V

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1087
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Lcom/android/inputmethod/latin/Utils;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1088
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->showOptionsMenu()V

    goto :goto_0

    .line 1090
    :cond_2
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->launchSettings()V

    goto :goto_0
.end method

.method private pickDefaultSuggestion()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1589
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->hasPendingUpdateSuggestions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1590
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateSuggestions()V

    .line 1591
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    .line 1593
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1594
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedDefault(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1595
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAccepted:Z

    .line 1596
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->pickSuggestion(Ljava/lang/CharSequence;)V

    .line 1598
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v2}, Lcom/android/inputmethod/latin/LatinIME;->addToAutoAndUserBigramDictionaries(Ljava/lang/CharSequence;I)V

    move v0, v2

    .line 1602
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pickSuggestion(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "suggestion"

    .prologue
    .line 1706
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 1707
    .local v1, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isKeyboardAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1717
    :goto_0
    return-void

    .line 1709
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1710
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 1711
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordSeparators:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->rememberReplacedWord(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 1712
    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1714
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->saveWordInHistory(Ljava/lang/CharSequence;)V

    .line 1715
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasValidSuggestions:Z

    .line 1716
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCommittedLength:I

    goto :goto_0
.end method

.method private playKeyClick(I)V
    .locals 3
    .parameter

    .prologue
    .line 2011
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 2012
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2013
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateRingerMode()V

    .line 2016
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSoundOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSilentMode:Z

    if-nez v0, :cond_1

    .line 2019
    const/4 v0, 0x5

    .line 2020
    sparse-switch p1, :sswitch_data_0

    .line 2031
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    const/high16 v2, -0x4080

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 2033
    :cond_1
    return-void

    .line 2022
    :sswitch_0
    const/4 v0, 0x7

    .line 2023
    goto :goto_0

    .line 2025
    :sswitch_1
    const/16 v0, 0x8

    .line 2026
    goto :goto_0

    .line 2028
    :sswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 2020
    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_0
        0xa -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method private removeTrailingSpace()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1057
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1058
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1061
    .local v1, lastOne:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 1063
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0
.end method

.method private reswapPeriodAndSpace()V
    .locals 8

    .prologue
    const/16 v7, 0x2e

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1005
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1006
    if-nez v0, :cond_1

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 1007
    :cond_1
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1008
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_0

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_0

    .line 1012
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1013
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1014
    const-string v1, " .."

    invoke-interface {v0, v1, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1015
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1016
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    goto :goto_0
.end method

.method private sameAsTextBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "ic"
    .parameter "text"

    .prologue
    .line 1867
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1868
    .local v0, beforeText:Ljava/lang/CharSequence;
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private saveWordInHistory(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 1431
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 1444
    :cond_0
    :goto_0
    return-void

    .line 1435
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1440
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1441
    .local v1, resultCopy:Ljava/lang/String;
    new-instance v0, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;

    new-instance v2, Lcom/android/inputmethod/latin/WordComposer;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {v2, v3}, Lcom/android/inputmethod/latin/WordComposer;-><init>(Lcom/android/inputmethod/latin/WordComposer;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;-><init>(Lcom/android/inputmethod/latin/LatinIME;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/WordComposer;)V

    .line 1443
    .local v0, entry:Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private sendSpace()V
    .locals 1

    .prologue
    .line 1919
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->sendKeyChar(C)V

    .line 1920
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 1921
    return-void
.end method

.method private setCandidatesViewShownInternal(ZZ)V
    .locals 1
    .parameter "shown"
    .parameter "needsInputViewShown"

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->onEvaluateInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 866
    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-super {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 869
    :cond_1
    return-void

    .line 866
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setOldSuggestions()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1768
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->setShowingVoiceSuggestions(Z)V

    .line 1769
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/CandidateView;->isShowingAddToDictionaryHint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1798
    :cond_0
    :goto_0
    return-void

    .line 1772
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1773
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1774
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasValidSuggestions:Z

    if-nez v2, :cond_4

    .line 1776
    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordSeparators:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4}, Lcom/android/inputmethod/latin/EditingUtils;->getWordAtCursorOrSelection(Landroid/view/inputmethod/InputConnection;IILjava/lang/String;)Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;

    move-result-object v1

    .line 1779
    .local v1, touching:Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;
    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v5, :cond_3

    .line 1780
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1782
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-virtual {v2, v1}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->applyVoiceAlternatives(Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->applyTypedAlternatives(Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1784
    invoke-direct {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->abortRecorrection(Z)V

    .line 1790
    :goto_1
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 1786
    :cond_2
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->selectedForRecorrection()V

    .line 1787
    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/EditingUtils;->underlineWord(Landroid/view/inputmethod/InputConnection;Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;)V

    goto :goto_1

    .line 1792
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->abortRecorrection(Z)V

    .line 1793
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->setPunctuationSuggestions()V

    goto :goto_0

    .line 1796
    .end local v1           #touching:Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->abortRecorrection(Z)V

    goto :goto_0
.end method

.method private setPunctuationSuggestions()V
    .locals 1

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V

    .line 1802
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isCandidateStripVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesViewShown(Z)V

    .line 1803
    return-void
.end method

.method private showCorrections(Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;)V
    .locals 3
    .parameter "alternatives"

    .prologue
    const/4 v2, 0x0

    .line 1528
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;->getAlternatives()Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v0

    .line 1529
    .local v0, builder:Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->setTypedWordValid(Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->setHasMinimalSuggestion(Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    .line 1530
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->build()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;->getOriginalWord()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/inputmethod/latin/LatinIME;->showSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;Ljava/lang/CharSequence;)V

    .line 1531
    return-void
.end method

.method private showOptionsMenu()V
    .locals 4

    .prologue
    .line 2257
    const v0, 0x7f0c0042

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2258
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x7f0c008b

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0c0041

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2262
    new-instance v2, Lcom/android/inputmethod/latin/LatinIME$3;

    invoke-direct {v2, p0}, Lcom/android/inputmethod/latin/LatinIME$3;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    .line 2276
    invoke-direct {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/LatinIME;->showOptionsMenuInternal(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2277
    return-void
.end method

.method private showOptionsMenuInternal(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 2281
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 2282
    if-nez v0, :cond_0

    .line 2298
    :goto_0
    return-void

    .line 2283
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2284
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2285
    const v2, 0x7f020032

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2286
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2287
    invoke-virtual {v1, p2, p3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2288
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2289
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 2290
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2291
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2292
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2293
    iput-object v0, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2294
    const/16 v0, 0x3eb

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2295
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2296
    const/high16 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 2297
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showSubtypeSelectorAndSettings()V
    .locals 4

    .prologue
    .line 2226
    const v0, 0x7f0c0042

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2227
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x7f0c008c

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0c0041

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2232
    new-instance v2, Lcom/android/inputmethod/latin/LatinIME$2;

    invoke-direct {v2, p0}, Lcom/android/inputmethod/latin/LatinIME$2;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    .line 2253
    invoke-direct {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/LatinIME;->showOptionsMenuInternal(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2254
    return-void
.end method

.method private showSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "suggestedWords"
    .parameter "typedWord"

    .prologue
    .line 1572
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V

    .line 1573
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1574
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-static {p1, v0}, Lcom/android/inputmethod/latin/Utils;->shouldBlockedBySafetyNetForAutoCorrection(Lcom/android/inputmethod/latin/SuggestedWords;Lcom/android/inputmethod/latin/Suggest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1575
    iput-object p2, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    .line 1584
    :goto_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isCandidateStripVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesViewShown(Z)V

    .line 1585
    return-void

    .line 1576
    :cond_0
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->hasAutoCorrectionWord()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1577
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1579
    :cond_1
    iput-object p2, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1582
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private showSuggestions(Lcom/android/inputmethod/latin/WordComposer;)V
    .locals 10
    .parameter "word"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1535
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordSeparators:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/inputmethod/latin/EditingUtils;->getPreviousWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1537
    .local v2, prevWord:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v7

    invoke-virtual {v6, v7, p1, v2}, Lcom/android/inputmethod/latin/Suggest;->getSuggestedWordBuilder(Landroid/view/View;Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v0

    .line 1540
    .local v0, builder:Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/Suggest;->hasAutoCorrection()Z

    move-result v6

    if-eqz v6, :cond_4

    move v1, v8

    .line 1541
    .local v1, correctionAvailable:Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1543
    .local v4, typedWord:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/Suggest;->getUnigramDictionaries()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->preferCapitalization()Z

    move-result v7

    invoke-static {v6, v4, v7}, Lcom/android/inputmethod/latin/AutoCorrection;->isValidWordForAutoCorrection(Ljava/util/Map;Ljava/lang/CharSequence;Z)Z

    move-result v5

    .line 1545
    .local v5, typedWordValid:Z
    iget v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 1547
    :cond_0
    or-int/2addr v1, v5

    .line 1550
    :cond_1
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/WordComposer;->isMostlyCaps()Z

    move-result v6

    if-nez v6, :cond_5

    move v6, v8

    :goto_1
    and-int/2addr v1, v6

    .line 1551
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isRecorrecting()Z

    move-result v6

    if-nez v6, :cond_6

    move v6, v8

    :goto_2
    and-int/2addr v1, v6

    .line 1559
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->size()I

    move-result v6

    if-gt v6, v8, :cond_2

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v6, v8, :cond_2

    if-nez v5, :cond_2

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/CandidateView;->isShowingAddToDictionaryHint()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1561
    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->setTypedWordValid(Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->setHasMinimalSuggestion(Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    .line 1568
    :goto_3
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->build()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/android/inputmethod/latin/LatinIME;->showSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;Ljava/lang/CharSequence;)V

    .line 1569
    :cond_3
    return-void

    .end local v1           #correctionAvailable:Z
    .end local v4           #typedWord:Ljava/lang/CharSequence;
    .end local v5           #typedWordValid:Z
    :cond_4
    move v1, v9

    .line 1540
    goto :goto_0

    .restart local v1       #correctionAvailable:Z
    .restart local v4       #typedWord:Ljava/lang/CharSequence;
    .restart local v5       #typedWordValid:Z
    :cond_5
    move v6, v9

    .line 1550
    goto :goto_1

    :cond_6
    move v6, v9

    .line 1551
    goto :goto_2

    .line 1563
    :cond_7
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/CandidateView;->getSuggestions()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v3

    .line 1564
    .local v3, previousSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

    if-eq v3, v6, :cond_3

    .line 1566
    invoke-virtual {v0, v4, v3}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addTypedWordAndPreviousSuggestions(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    goto :goto_3
.end method

.method private swapPunctuationAndSpace()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 989
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 990
    if-nez v0, :cond_1

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 992
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v6, :cond_0

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->isSentenceSeparator(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 995
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 996
    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 997
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 998
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 999
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 1000
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedAutoSpace:Z

    goto :goto_0
.end method

.method private toggleLanguage(ZZ)V
    .locals 4
    .parameter "reset"
    .parameter "next"

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->useSpacebarLanguageSwitcher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1936
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->toggleLanguage(ZZ)V

    .line 1939
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isShortcutImeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-virtual {v2}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->isVoiceButtonEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-virtual {v3}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->isVoiceButtonOnPrimary()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->loadKeyboard(Landroid/view/inputmethod/EditorInfo;ZZ)V

    .line 1942
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->initSuggest()V

    .line 1943
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 1944
    return-void

    .line 1939
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateAutoTextEnabled()V
    .locals 2

    .prologue
    .line 2076
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-nez v0, :cond_0

    .line 2079
    :goto_0
    return-void

    .line 2077
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mQuickFixes:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isSystemLanguageSameAsInputLanguage()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Suggest;->setQuickFixesEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateCorrectionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2062
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Suggest;->hasMainDictionary()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasDictionary:Z

    .line 2063
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mQuickFixes:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasDictionary:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectOn:Z

    .line 2065
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectOn:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectEnabled:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    :goto_2
    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    .line 2068
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mBigramSuggestionEnabled:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectOn:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectEnabled:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    :goto_3
    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    .line 2070
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v0, :cond_1

    .line 2071
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Suggest;->setCorrectionMode(I)V

    .line 2073
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 2062
    goto :goto_0

    :cond_3
    move v0, v1

    .line 2063
    goto :goto_1

    .line 2065
    :cond_4
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectOn:Z

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_2

    .line 2068
    :cond_6
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    goto :goto_3
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 2001
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    .line 2003
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 2004
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSilentMode:Z

    .line 2006
    :cond_1
    return-void

    .line 2004
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSuggestionVisibility(Landroid/content/SharedPreferences;)V
    .locals 7
    .parameter

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    .line 2083
    const-string v1, "show_suggestions_setting"

    const v2, 0x7f0c0031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2086
    sget-object v2, Lcom/android/inputmethod/latin/LatinIME;->SUGGESTION_VISIBILITY_VALUE_ARRAY:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 2087
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2088
    iput v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionVisibility:I

    .line 2092
    :cond_0
    return-void

    .line 2086
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addWordToDictionary(Ljava/lang/String;)Z
    .locals 2
    .parameter "word"

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Lcom/android/inputmethod/latin/UserDictionary;->addWord(Ljava/lang/String;I)V

    .line 1071
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestions()V

    .line 1072
    const/4 v0, 0x1

    return v0
.end method

.method public clearSuggestions()V
    .locals 1

    .prologue
    .line 1492
    sget-object v0, Lcom/android/inputmethod/latin/SuggestedWords;->EMPTY:Lcom/android/inputmethod/latin/SuggestedWords;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V

    .line 1493
    return-void
.end method

.method public commitTyped(Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .parameter "inputConnection"

    .prologue
    const/4 v1, 0x1

    .line 965
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasValidSuggestions:Z

    if-eqz v0, :cond_2

    .line 966
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasValidSuggestions:Z

    .line 967
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 968
    if-eqz p1, :cond_0

    .line 969
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCommittedLength:I

    .line 972
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedTyped(Ljava/lang/CharSequence;)V

    .line 973
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->addToAutoAndUserBigramDictionaries(Ljava/lang/CharSequence;I)V

    .line 975
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    .line 977
    :cond_2
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2302
    invoke-super {p0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2304
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 2305
    const-string v1, "LatinIME state :"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Keyboard mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mComposing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsSuggestionsRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCorrectionMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHasValidSuggestions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasValidSuggestions:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAutoCorrectOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAutoSpace="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoSpace:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mApplicationSpecifiedCompletionOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletionOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  TextEntryState.state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSoundOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSoundOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mVibrateOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mVibrateOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPopupOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mPopupOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2318
    return-void
.end method

.method public getCurrentAutoCapsState()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 980
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 981
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 982
    .local v0, ei:Landroid/view/inputmethod/EditorInfo;
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCap:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v2, :cond_1

    .line 983
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 985
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 983
    goto :goto_0

    :cond_1
    move v2, v3

    .line 985
    goto :goto_0
.end method

.method public getCurrentWord()Lcom/android/inputmethod/latin/WordComposer;
    .locals 1

    .prologue
    .line 2053
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    return-object v0
.end method

.method public getPopupOn()Z
    .locals 1

    .prologue
    .line 2057
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPopupOn:Z

    return v0
.end method

.method protected getWordSeparators()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordSeparators:Ljava/lang/String;

    return-object v0
.end method

.method public hideWindow()V
    .locals 2

    .prologue
    .line 822
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->commit()V

    .line 823
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onAutoCorrectionStateChanged(Z)V

    .line 826
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 828
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigurationChanging:Z

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->hideVoiceWindow(Z)V

    .line 831
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 832
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 833
    return-void
.end method

.method public isWordSeparator(I)Z
    .locals 2
    .parameter "code"

    .prologue
    .line 1910
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getWordSeparators()Ljava/lang/String;

    move-result-object v0

    .line 1911
    .local v0, separators:Ljava/lang/String;
    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public launchDebugSettings()V
    .locals 1

    .prologue
    .line 2099
    const-class v0, Lcom/android/inputmethod/latin/DebugSettings;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->launchSettings(Ljava/lang/Class;)V

    .line 2100
    return-void
.end method

.method protected launchSettings()V
    .locals 1

    .prologue
    .line 2095
    const-class v0, Lcom/android/inputmethod/latin/Settings;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->launchSettings(Ljava/lang/Class;)V

    .line 2096
    return-void
.end method

.method protected launchSettings(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/preference/PreferenceActivity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2103
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleClose()V

    .line 2104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2105
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2106
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2107
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->startActivity(Landroid/content/Intent;)V

    .line 2108
    return-void
.end method

.method public onCancelInput()V
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onCancelInput()V

    .line 1200
    return-void
.end method

.method public onCodeInput(I[III)V
    .locals 10
    .parameter "primaryCode"
    .parameter "keyCodes"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x0

    .line 1112
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1113
    .local v3, when:J
    const/4 v5, -0x5

    if-ne p1, v5, :cond_0

    iget-wide v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastKeyTime:J

    const-wide/16 v7, 0xc8

    add-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 1114
    :cond_0
    iput v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    .line 1116
    :cond_1
    iput-wide v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastKeyTime:J

    .line 1117
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 1118
    .local v2, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAccessibilityEnabled()Z

    move-result v0

    .line 1119
    .local v0, accessibilityEnabled:Z
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v1

    .line 1120
    .local v1, distinctMultiTouch:Z
    sparse-switch p1, :sswitch_data_0

    .line 1163
    const/16 v5, 0xa

    if-eq p1, v5, :cond_2

    .line 1164
    iput-boolean v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedAutoSpace:Z

    .line 1166
    :cond_2
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->getInstance()Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    move-result-object v5

    int-to-char v6, p1

    invoke-virtual {v5, v6, p3, p4}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->push(CII)V

    .line 1167
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnInputChar()V

    .line 1168
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1169
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->handleSeparator(I)V

    .line 1174
    :cond_3
    :goto_0
    invoke-virtual {v2, p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onKey(I)V

    .line 1176
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    .line 1177
    return-void

    .line 1122
    :sswitch_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleBackspace()V

    .line 1123
    iget v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    .line 1124
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnDelete()V

    goto :goto_0

    .line 1128
    :sswitch_1
    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 1129
    :cond_4
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    goto :goto_0

    .line 1133
    :sswitch_2
    if-eqz v1, :cond_5

    if-eqz v0, :cond_3

    .line 1134
    :cond_5
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    goto :goto_0

    .line 1137
    :sswitch_3
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingOptionDialog()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1138
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleClose()V

    goto :goto_0

    .line 1142
    :sswitch_4
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->onSettingsKeyPressed()V

    goto :goto_0

    .line 1145
    :sswitch_5
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->onSettingsKeyLongPressed()V

    goto :goto_0

    .line 1148
    :sswitch_6
    const/4 v5, 0x1

    invoke-direct {p0, v9, v5}, Lcom/android/inputmethod/latin/LatinIME;->toggleLanguage(ZZ)V

    goto :goto_0

    .line 1151
    :sswitch_7
    invoke-direct {p0, v9, v9}, Lcom/android/inputmethod/latin/LatinIME;->toggleLanguage(ZZ)V

    goto :goto_0

    .line 1154
    :sswitch_8
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleCapsLock()V

    goto :goto_0

    .line 1157
    :sswitch_9
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->switchToShortcutIME()V

    goto :goto_0

    .line 1160
    :sswitch_a
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleTab()V

    goto :goto_0

    .line 1171
    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/latin/LatinIME;->handleCharacter(I[III)V

    goto :goto_0

    .line 1120
    nop

    :sswitch_data_0
    .sparse-switch
        -0x69 -> :sswitch_7
        -0x68 -> :sswitch_6
        -0x67 -> :sswitch_8
        -0x66 -> :sswitch_9
        -0x65 -> :sswitch_5
        -0x64 -> :sswitch_4
        -0x5 -> :sswitch_0
        -0x3 -> :sswitch_3
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x9 -> :sswitch_a
    .end sparse-switch
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 878
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 879
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 880
    iget v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 884
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 887
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v1

    .line 888
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    .line 889
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateViewContainer:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 890
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateViewContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 891
    instance-of v2, p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    .line 892
    check-cast p0, Landroid/widget/FrameLayout;

    .line 893
    if-eqz p0, :cond_4

    .line 895
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 896
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    .line 897
    add-int/2addr v0, v2

    .line 904
    :goto_0
    sget-boolean v3, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 905
    sget-object v3, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Touchable region 0, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_1
    const/4 v3, 0x3

    iput v3, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 908
    iget-object v3, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v6, v2, v1, v0}, Landroid/graphics/Region;->set(IIII)Z

    .line 910
    :cond_2
    return-void

    .line 898
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 899
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    move v2, v6

    goto :goto_0

    :cond_4
    move v2, v6

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "conf"

    .prologue
    .line 492
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 494
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mOrientation:I

    if-eq v1, v2, :cond_1

    .line 495
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 496
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 497
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 498
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mOrientation:I

    .line 499
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingOptionDialog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 503
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigurationChanging:Z

    .line 504
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 505
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 506
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigurationChanging:Z

    .line 507
    return-void
.end method

.method public onCreate()V
    .locals 9

    .prologue
    const v8, 0x7f080011

    .line 379
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 380
    .local v3, prefs:Landroid/content/SharedPreferences;
    iput-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    .line 381
    invoke-static {p0, v3}, Lcom/android/inputmethod/latin/LatinImeLogger;->init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V

    .line 382
    invoke-static {p0, v3}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V

    .line 383
    invoke-static {p0, v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V

    .line 384
    invoke-static {p0, v3}, Lcom/android/inputmethod/latin/AccessibilityUtils;->init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V

    .line 386
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 388
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    iput-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 389
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/inputmethod/latin/Utils;->getInputMethodId(Landroid/view/inputmethod/InputMethodManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputMethodId:Ljava/lang/String;

    .line 390
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v6

    iput-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    .line 391
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v6

    iput-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 392
    invoke-static {}, Lcom/android/inputmethod/latin/AccessibilityUtils;->getInstance()Lcom/android/inputmethod/latin/AccessibilityUtils;

    move-result-object v6

    iput-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mAccessibilityUtils:Lcom/android/inputmethod/latin/AccessibilityUtils;

    .line 393
    sget-boolean v6, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v6, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    .line 395
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 396
    .local v4, res:Landroid/content/res/Resources;
    iput-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    .line 400
    const v6, 0x7f080006

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 401
    const-string v6, "recorrection_enabled"

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mRecorrectionEnabled:Z

    .line 407
    :goto_0
    const v6, 0x7f080003

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigEnableShowSubtypeSettings:Z

    .line 409
    const v6, 0x7f08000b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigSwipeDownDismissKeyboardEnabled:Z

    .line 411
    const/high16 v6, 0x7f0a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigDelayBeforeFadeoutLanguageOnSpacebar:I

    .line 413
    const v6, 0x7f0a0001

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigDurationOfFadeoutLanguageOnSpacebar:I

    .line 415
    const v6, 0x7f0a0002

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    iput v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigFinalFadeoutFactorOfLanguageOnSpacebar:F

    .line 417
    const v6, 0x7f0a000e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigDoubleSpacesTurnIntoPeriodTimeout:J

    .line 420
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$GCUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$GCUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/Utils$GCUtils;->reset()V

    .line 421
    const/4 v5, 0x1

    .line 422
    .local v5, tryGC:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/4 v6, 0x5

    if-ge v2, v6, :cond_1

    if-eqz v5, :cond_1

    .line 424
    :try_start_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->initSuggest()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    const/4 v5, 0x0

    .line 422
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 404
    .end local v2           #i:I
    .end local v5           #tryGC:Z
    :cond_0
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mRecorrectionEnabled:Z

    goto :goto_0

    .line 426
    .restart local v2       #i:I
    .restart local v5       #tryGC:Z
    :catch_0
    move-exception v0

    .line 427
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$GCUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$GCUtils;

    move-result-object v6

    const-string v7, "InitSuggest"

    invoke-virtual {v6, v7, v0}, Lcom/android/inputmethod/latin/Utils$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v5

    goto :goto_2

    .line 431
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_1
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mOrientation:I

    .line 432
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->initSuggestPuncList()V

    .line 435
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 436
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v6, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 437
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 438
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v1}, Lcom/android/inputmethod/latin/LatinIME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 439
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-static {p0, v3, v6}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;Lcom/android/inputmethod/latin/LatinIME$UIHandler;)Lcom/android/inputmethod/voice/VoiceIMEConnector;

    move-result-object v6

    iput-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    .line 440
    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 516
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 517
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030002

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 518
    .local v0, container:Landroid/widget/LinearLayout;
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateViewContainer:Landroid/view/View;

    .line 519
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    if-eqz v3, :cond_0

    .line 520
    const v3, 0x7f070023

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/HorizontalScrollView;

    .line 522
    .local v2, scrollView:Landroid/widget/HorizontalScrollView;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 523
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 525
    .end local v2           #scrollView:Landroid/widget/HorizontalScrollView;
    :cond_0
    const v3, 0x7f070024

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/latin/CandidateView;

    iput-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    .line 526
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v3, p0}, Lcom/android/inputmethod/latin/CandidateView;->setService(Lcom/android/inputmethod/latin/LatinIME;)V

    .line 527
    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesViewShown(Z)V

    .line 528
    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onCreateInputView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    return-object v0
.end method

.method public onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 1
    .parameter "subtype"

    .prologue
    .line 2340
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 2341
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Suggest;->close()V

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 484
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->destroy()V

    .line 485
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->commit()V

    .line 486
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->onDestroy()V

    .line 487
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 488
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 837
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 838
    sget-object v0, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v1, "Received completions:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    if-eqz p1, :cond_0

    .line 840
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 841
    sget-object v1, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 845
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletionOn:Z

    if-eqz v0, :cond_1

    .line 846
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 847
    if-nez p1, :cond_2

    .line 848
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->clearSuggestions()V

    .line 861
    :cond_1
    :goto_1
    return-void

    .line 852
    :cond_2
    new-instance v0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->setApplicationSpecifiedCompletions([Landroid/view/inputmethod/CompletionInfo;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->setTypedWordValid(Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->setHasMinimalSuggestion(Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v0

    .line 857
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->build()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V

    .line 858
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    .line 859
    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesViewShown(Z)V

    goto :goto_1
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 3

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    .line 915
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 916
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    .line 918
    const v2, 0x7f0b0018

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 919
    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    .line 920
    const/4 v0, 0x0

    .line 922
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v0

    goto :goto_0
.end method

.method public onExtractedCursorMovement(II)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 815
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mRecorrectionEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    :goto_0
    return-void

    .line 817
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedCursorMovement(II)V

    goto :goto_0
.end method

.method public onExtractedTextClicked()V
    .locals 1

    .prologue
    .line 799
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mRecorrectionEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    :goto_0
    return-void

    .line 801
    :cond_0
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onExtractedTextClicked()V

    goto :goto_0
.end method

.method public onFinishInput()V
    .locals 3

    .prologue
    .line 679
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 681
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->commit()V

    .line 682
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onAutoCorrectionStateChanged(Z)V

    .line 684
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigurationChanging:Z

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->flushVoiceInputLogs(Z)V

    .line 686
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 687
    .local v0, inputView:Lcom/android/inputmethod/keyboard/KeyboardView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->closing()V

    .line 688
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/AutoDictionary;->flushPendingWrites()V

    .line 689
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/UserBigramDictionary;->flushPendingWrites()V

    .line 690
    :cond_2
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 2
    .parameter "finishingInput"

    .prologue
    .line 694
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 695
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 696
    .local v0, inputView:Lcom/android/inputmethod/keyboard/KeyboardView;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setForeground(Z)V

    .line 698
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateSuggestions()V

    .line 699
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateOldSuggestions()V

    .line 700
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 928
    packed-switch p1, :pswitch_data_0

    .line 937
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 930
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->handleBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    const/4 v0, 0x1

    goto :goto_0

    .line 928
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 942
    packed-switch p1, :pswitch_data_0

    .line 961
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 948
    :pswitch_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 950
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v9

    const/16 v10, 0x41

    invoke-direct/range {v0 .. v10}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    .line 954
    .local v0, newEvent:Landroid/view/KeyEvent;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v11

    .line 955
    .local v11, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v11, :cond_1

    .line 956
    invoke-interface {v11, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 957
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 942
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPress(IZ)V
    .locals 3
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 1954
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isVibrateAndSoundFeedbackRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1955
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->vibrate()V

    .line 1956
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->playKeyClick(I)V

    .line 1958
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 1959
    .local v1, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v0

    .line 1960
    .local v0, distinctMultiTouch:Z
    if-eqz v0, :cond_1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 1961
    invoke-virtual {v1, p2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onPressShift(Z)V

    .line 1967
    :goto_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mAccessibilityUtils:Lcom/android/inputmethod/latin/AccessibilityUtils;

    invoke-virtual {v2, p1, v1}, Lcom/android/inputmethod/latin/AccessibilityUtils;->onPress(ILcom/android/inputmethod/keyboard/KeyboardSwitcher;)V

    .line 1968
    return-void

    .line 1962
    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, -0x2

    if-ne p1, v2, :cond_2

    .line 1963
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onPressSymbol()V

    goto :goto_0

    .line 1965
    :cond_2
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onOtherKeyPressed()V

    goto :goto_0
.end method

.method public onRefreshKeyboard()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1930
    invoke-direct {p0, v0, v0}, Lcom/android/inputmethod/latin/LatinIME;->toggleLanguage(ZZ)V

    .line 1931
    return-void
.end method

.method public onRelease(IZ)V
    .locals 3
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 1972
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 1974
    .local v1, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->keyReleased()V

    .line 1975
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v0

    .line 1976
    .local v0, distinctMultiTouch:Z
    if-eqz v0, :cond_1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 1977
    invoke-virtual {v1, p2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onReleaseShift(Z)V

    .line 1981
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mAccessibilityUtils:Lcom/android/inputmethod/latin/AccessibilityUtils;

    invoke-virtual {v2, p1, v1}, Lcom/android/inputmethod/latin/AccessibilityUtils;->onRelease(ILcom/android/inputmethod/keyboard/KeyboardSwitcher;)V

    .line 1982
    return-void

    .line 1978
    :cond_1
    if-eqz v0, :cond_0

    const/4 v2, -0x2

    if-ne p1, v2, :cond_0

    .line 1979
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onReleaseSymbol()V

    goto :goto_0
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 11
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 533
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 534
    .local v2, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v1

    .line 536
    .local v1, inputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    sget-boolean v4, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 537
    sget-object v4, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartInputView: inputType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p1, :cond_1

    const-string v6, "none"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_0
    if-nez v1, :cond_2

    .line 592
    :goto_1
    return-void

    .line 537
    :cond_1
    const-string v6, "0x%08x"

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 545
    :cond_2
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateParametersOnStartInputView()V

    .line 547
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->reset()V

    .line 552
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    .line 553
    .local v3, voiceIme:Lcom/android/inputmethod/voice/VoiceIMEConnector;
    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v4}, Lcom/android/inputmethod/latin/Utils;->isPasswordInputType(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v4}, Lcom/android/inputmethod/latin/Utils;->isVisiblePasswordInputType(I)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    move v4, v10

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->resetVoiceStates(Z)V

    .line 556
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->initializeInputAttributes(Landroid/view/inputmethod/EditorInfo;)V

    .line 558
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->closing()V

    .line 559
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    .line 560
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 561
    iput-boolean v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasValidSuggestions:Z

    .line 562
    iput v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    .line 563
    iput-boolean v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedAutoSpace:Z

    .line 565
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->loadSettings(Landroid/view/inputmethod/EditorInfo;)V

    .line 566
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isKeyboardMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 567
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isShortcutImeEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->isVoiceButtonEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v10

    :goto_3
    invoke-virtual {v3}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->isVoiceButtonOnPrimary()Z

    move-result v5

    invoke-virtual {v2, p1, v4, v5}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->loadKeyboard(Landroid/view/inputmethod/EditorInfo;ZZ)V

    .line 570
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 573
    :cond_4
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isCandidateStripVisible()Z

    move-result v4

    invoke-direct {p0, v4, v9}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesViewShownInternal(ZZ)V

    .line 576
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestions()V

    .line 578
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateCorrectionMode()V

    .line 580
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mAccessibilityUtils:Lcom/android/inputmethod/latin/AccessibilityUtils;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/AccessibilityUtils;->isAccessibilityEnabled()Z

    move-result v0

    .line 582
    .local v0, accessibilityEnabled:Z
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mPopupOn:Z

    invoke-virtual {v1, v4}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setPreviewEnabled(Z)V

    .line 583
    invoke-virtual {v1, v10}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setProximityCorrectionEnabled(Z)V

    .line 584
    invoke-virtual {v1, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setAccessibilityEnabled(Z)V

    .line 586
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->checkRecorrectionOnStart()V

    .line 587
    invoke-virtual {v1, v10}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setForeground(Z)V

    .line 589
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->onStartInputView(Landroid/os/IBinder;)V

    goto/16 :goto_1

    .end local v0           #accessibilityEnabled:Z
    :cond_5
    move v4, v9

    .line 553
    goto :goto_2

    :cond_6
    move v4, v9

    .line 567
    goto :goto_3
.end method

.method public onSwipeDown()V
    .locals 1

    .prologue
    .line 1948
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigSwipeDownDismissKeyboardEnabled:Z

    if-eqz v0, :cond_0

    .line 1949
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleClose()V

    .line 1950
    :cond_0
    return-void
.end method

.method public onTextInput(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 1181
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->commitVoiceInput()V

    .line 1182
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1183
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    .line 1194
    :goto_0
    return-void

    .line 1184
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->abortRecorrection(Z)V

    .line 1185
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1186
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 1187
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->maybeRemovePreviousPeriod(Ljava/lang/CharSequence;)V

    .line 1188
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1189
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1190
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 1191
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onKey(I)V

    .line 1192
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedAutoSpace:Z

    .line 1193
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 1
    .parameter "token"
    .parameter "text"

    .prologue
    .line 704
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 705
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->showPunctuationHintIfNecessary()V

    .line 706
    return-void
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 9
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 712
    invoke-super/range {p0 .. p6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 715
    sget-boolean v3, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 716
    sget-object v3, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUpdateSelection: oss="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ose="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lss="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lse="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", nss="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", nse="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ce="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-virtual {v3, p4, p3}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->setCursorAndSelection(II)V

    .line 730
    if-ne p3, p6, :cond_1

    if-eq p4, p6, :cond_c

    :cond_1
    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    if-eq v3, p3, :cond_c

    move v2, v7

    .line 732
    .local v2, selectionChanged:Z
    :goto_0
    if-ne p5, v8, :cond_d

    if-ne p6, v8, :cond_d

    move v0, v7

    .line 733
    .local v0, candidatesCleared:Z
    :goto_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasValidSuggestions:Z

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-virtual {v3}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->isVoiceInputHighlighted()Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_3
    if-nez v2, :cond_4

    if-eqz v0, :cond_e

    .line 736
    :cond_4
    if-eqz v0, :cond_5

    .line 740
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->saveWordInHistory(Ljava/lang/CharSequence;)V

    .line 742
    :cond_5
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 743
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasValidSuggestions:Z

    .line 744
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestions()V

    .line 745
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->reset()V

    .line 746
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 747
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_6

    .line 748
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 750
    :cond_6
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-virtual {v3, v6}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->setVoiceInputHighlighted(Z)V

    .line 758
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_7
    :goto_2
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAccepted:Z

    .line 759
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateShiftKeyState()V

    .line 762
    iput p3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    .line 763
    iput p4, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    .line 765
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mRecorrectionEnabled:Z

    if-eqz v3, :cond_b

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingSuggestionsStrip()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 767
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isInputViewShown()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 769
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsRequested()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eq p5, p6, :cond_8

    if-ne p3, p1, :cond_8

    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isRecorrecting()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_8
    sub-int v3, p4, v7

    if-lt p3, v3, :cond_9

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasValidSuggestions:Z

    if-nez v3, :cond_b

    .line 773
    :cond_9
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isCursorTouchingWord()Z

    move-result v3

    if-nez v3, :cond_a

    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    if-ge v3, v4, :cond_11

    .line 774
    :cond_a
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateOldSuggestions()V

    .line 787
    :cond_b
    :goto_3
    return-void

    .end local v0           #candidatesCleared:Z
    .end local v2           #selectionChanged:Z
    :cond_c
    move v2, v6

    .line 730
    goto/16 :goto_0

    .restart local v2       #selectionChanged:Z
    :cond_d
    move v0, v6

    .line 732
    goto/16 :goto_1

    .line 751
    .restart local v0       #candidatesCleared:Z
    :cond_e
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasValidSuggestions:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAccepted:Z

    if-nez v3, :cond_7

    .line 752
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isAcceptedDefault()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isSpaceAfterPicked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 753
    :cond_f
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isAcceptedDefault()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 754
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->reset()V

    .line 755
    :cond_10
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedAutoSpace:Z

    goto :goto_2

    .line 776
    :cond_11
    invoke-direct {p0, v6}, Lcom/android/inputmethod/latin/LatinIME;->abortRecorrection(Z)V

    .line 779
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    if-eqz v3, :cond_b

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingPunctuationList()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/CandidateView;->isShowingAddToDictionaryHint()Z

    move-result v3

    if-nez v3, :cond_b

    .line 781
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->setPunctuationSuggestions()V

    goto :goto_3
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1606
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/CandidateView;->getSuggestions()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v0

    .line 1607
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordSeparators:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->flushAndLogAllTextModificationCounters(ILjava/lang/CharSequence;Ljava/lang/String;)V

    .line 1609
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isRecorrecting()Z

    move-result v1

    .line 1610
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 1611
    if-eqz v2, :cond_0

    .line 1612
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1614
    :cond_0
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletionOn:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v3, :cond_4

    if-ltz p1, :cond_4

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v3, v3

    if-ge p1, v3, :cond_4

    .line 1616
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v0, v0, p1

    .line 1617
    if-eqz v2, :cond_1

    .line 1618
    invoke-interface {v2, v0}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 1620
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCommittedLength:I

    .line 1621
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    if-eqz v0, :cond_2

    .line 1622
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/CandidateView;->clear()V

    .line 1624
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 1625
    if-eqz v2, :cond_3

    .line 1626
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1697
    :cond_3
    :goto_0
    return-void

    .line 1632
    :cond_4
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v3, v5, :cond_6

    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestedPunctuation(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1636
    :cond_5
    const-string v1, ""

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/android/inputmethod/latin/SuggestedWords;->mWords:Ljava/util/List;

    invoke-static {v1, v3, p1, v0}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnManualSuggestion(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 1638
    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1639
    new-array v1, v5, [I

    aput v0, v1, v6

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/android/inputmethod/latin/LatinIME;->onCodeInput(I[III)V

    .line 1642
    if-eqz v2, :cond_3

    .line 1643
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 1647
    :cond_6
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAccepted:Z

    .line 1648
    invoke-direct {p0, p2}, Lcom/android/inputmethod/latin/LatinIME;->pickSuggestion(Ljava/lang/CharSequence;)V

    .line 1650
    if-nez p1, :cond_b

    .line 1651
    const/4 v3, 0x3

    invoke-direct {p0, p2, v3}, Lcom/android/inputmethod/latin/LatinIME;->addToAutoAndUserBigramDictionaries(Ljava/lang/CharSequence;I)V

    .line 1655
    :goto_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/android/inputmethod/latin/SuggestedWords;->mWords:Ljava/util/List;

    invoke-static {v3, v4, p1, v0}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnManualSuggestion(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 1657
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1659
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoSpace:Z

    if-eqz v0, :cond_7

    if-nez v1, :cond_7

    .line 1660
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->sendSpace()V

    .line 1661
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedAutoSpace:Z

    .line 1672
    :cond_7
    if-nez p1, :cond_c

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasDictionary:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Suggest;->getUnigramDictionaries()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p2, v5}, Lcom/android/inputmethod/latin/AutoCorrection;->isValidWord(Ljava/util/Map;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_8
    move v0, v5

    .line 1679
    :goto_2
    if-nez v1, :cond_d

    .line 1683
    const/16 v1, 0x20

    invoke-static {v1, v5}, Lcom/android/inputmethod/latin/TextEntryState;->typedCharacter(CZ)V

    .line 1684
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->setPunctuationSuggestions()V

    .line 1691
    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    .line 1692
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v0, p2}, Lcom/android/inputmethod/latin/CandidateView;->showAddToDictionaryHint(Ljava/lang/CharSequence;)V

    .line 1694
    :cond_a
    if-eqz v2, :cond_3

    .line 1695
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 1653
    :cond_b
    invoke-direct {p0, p2, v5}, Lcom/android/inputmethod/latin/LatinIME;->addToOnlyBigramDictionary(Ljava/lang/CharSequence;I)V

    goto :goto_1

    :cond_c
    move v0, v6

    .line 1672
    goto :goto_2

    .line 1685
    :cond_d
    if-nez v0, :cond_9

    .line 1688
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->clearSuggestions()V

    .line 1689
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateOldSuggestions()V

    goto :goto_3
.end method

.method public preferCapitalization()Z
    .locals 1

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->isFirstCharCapitalized()Z

    move-result v0

    return v0
.end method

.method public promoteToUserDictionary(Ljava/lang/String;I)V
    .locals 1
    .parameter "word"
    .parameter "frequency"

    .prologue
    .line 2048
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/UserDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2050
    :goto_0
    return-void

    .line 2049
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/latin/UserDictionary;->addWord(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public revertLastWord(Z)V
    .locals 8
    .parameter "deleteChar"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1872
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 1873
    .local v1, length:I
    iget-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasValidSuggestions:Z

    if-nez v5, :cond_3

    if-lez v1, :cond_3

    .line 1874
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1875
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    invoke-interface {v0, v7, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1876
    .local v2, punctuation:Ljava/lang/CharSequence;
    if-eqz p1, :cond_0

    invoke-interface {v0, v7, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1877
    :cond_0
    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCommittedLength:I

    .line 1878
    .local v3, toDelete:I
    iget v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mCommittedLength:I

    invoke-interface {v0, v5, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1879
    .local v4, toTheLeft:Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1880
    add-int/lit8 v3, v3, -0x1

    .line 1882
    :cond_1
    invoke-interface {v0, v3, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1885
    if-eqz p1, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1888
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v0, v5, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1889
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedTyped(Ljava/lang/CharSequence;)V

    .line 1890
    invoke-interface {v0, v2, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1891
    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5, v7}, Lcom/android/inputmethod/latin/TextEntryState;->typedCharacter(CZ)V

    .line 1893
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1899
    :goto_0
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestions()V

    .line 1903
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v2           #punctuation:Ljava/lang/CharSequence;
    .end local v3           #toDelete:I
    .end local v4           #toTheLeft:Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1895
    .restart local v0       #ic:Landroid/view/inputmethod/InputConnection;
    .restart local v2       #punctuation:Ljava/lang/CharSequence;
    .restart local v3       #toDelete:I
    .restart local v4       #toTheLeft:Ljava/lang/CharSequence;
    :cond_2
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasValidSuggestions:Z

    .line 1896
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v0, v5, v7}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1897
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->backspace()V

    goto :goto_0

    .line 1901
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v2           #punctuation:Ljava/lang/CharSequence;
    .end local v3           #toDelete:I
    .end local v4           #toTheLeft:Ljava/lang/CharSequence;
    :cond_3
    const/16 v5, 0x43

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEvents(I)V

    goto :goto_1
.end method

.method public setCandidatesViewShown(Z)V
    .locals 1
    .parameter "shown"

    .prologue
    .line 873
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesViewShownInternal(ZZ)V

    .line 874
    return-void
.end method

.method public setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V
    .locals 2
    .parameter "words"

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->getAndResetIsShowingHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateViewContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesView(Landroid/view/View;)V

    .line 1500
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    if-eqz v0, :cond_1

    .line 1501
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/CandidateView;->setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V

    .line 1502
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/CandidateView;->isConfigCandidateHighlightFontColorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1503
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->hasWordAboveAutoCorrectionScoreThreshold()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onAutoCorrectionStateChanged(Z)V

    .line 1507
    :cond_1
    return-void
.end method

.method public switchToKeyboardView()V
    .locals 3

    .prologue
    .line 1474
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1475
    sget-object v0, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v1, "Switch to keyboard view."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v1

    .line 1478
    if-eqz v1, :cond_2

    .line 1480
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1481
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 1482
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1484
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->setInputView(Landroid/view/View;)V

    .line 1486
    :cond_2
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isCandidateStripVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesViewShown(Z)V

    .line 1487
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateInputViewShown()V

    .line 1488
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestions()V

    .line 1489
    return-void
.end method

.method public updateSuggestions()V
    .locals 1

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsRequested()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceConnector:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->isVoiceInputHighlighted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1521
    :goto_0
    return-void

    .line 1516
    :cond_1
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasValidSuggestions:Z

    if-nez v0, :cond_2

    .line 1517
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->setPunctuationSuggestions()V

    goto :goto_0

    .line 1520
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->showSuggestions(Lcom/android/inputmethod/latin/WordComposer;)V

    goto :goto_0
.end method

.method public vibrate()V
    .locals 3

    .prologue
    .line 2036
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVibrateOn:Z

    if-nez v1, :cond_1

    .line 2045
    :cond_0
    :goto_0
    return-void

    .line 2039
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 2040
    .local v0, inputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    if-eqz v0, :cond_0

    .line 2041
    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->performHapticFeedback(II)Z

    goto :goto_0
.end method
