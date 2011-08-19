.class public Lcom/android/inputmethod/voice/VoiceInput;
.super Ljava/lang/Object;
.source "VoiceInput.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;,
        Lcom/android/inputmethod/voice/VoiceInput$UiListener;
    }
.end annotation


# static fields
.field private static DBG:Z

.field public static ENABLE_WORD_CORRECTIONS:Z


# instance fields
.field private mAfterVoiceInputCursorPos:I

.field private mAfterVoiceInputDeleteCount:I

.field private mAfterVoiceInputInsertCount:I

.field private mAfterVoiceInputInsertPunctuationCount:I

.field private mAfterVoiceInputSelectionSpan:I

.field private mBlacklist:Lcom/android/inputmethod/voice/Whitelist;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

.field private mRecognitionListener:Landroid/speech/RecognitionListener;

.field private mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

.field private mRecommendedList:Lcom/android/inputmethod/voice/Whitelist;

.field private mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

.field private mState:I

.field private mUiListener:Lcom/android/inputmethod/voice/VoiceInput$UiListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/voice/VoiceInput;->DBG:Z

    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/inputmethod/voice/VoiceInput;->ENABLE_WORD_CORRECTIONS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/voice/VoiceInput$UiListener;)V
    .locals 8
    .parameter "context"
    .parameter "uiHandler"

    .prologue
    const/4 v5, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 126
    iput v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 127
    iput v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 128
    iput v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputCursorPos:I

    .line 129
    iput v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    .line 131
    iput v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    .line 135
    new-instance v5, Lcom/android/inputmethod/voice/VoiceInput$1;

    invoke-direct {v5, p0}, Lcom/android/inputmethod/voice/VoiceInput$1;-><init>(Lcom/android/inputmethod/voice/VoiceInput;)V

    iput-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mHandler:Landroid/os/Handler;

    .line 176
    invoke-static {p1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->getLogger(Landroid/content/Context;)Lcom/android/inputmethod/voice/VoiceInputLogger;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    .line 177
    new-instance v5, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;-><init>(Lcom/android/inputmethod/voice/VoiceInput;Lcom/android/inputmethod/voice/VoiceInput$1;)V

    iput-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionListener:Landroid/speech/RecognitionListener;

    .line 178
    invoke-static {p1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 179
    iget-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object v6, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionListener:Landroid/speech/RecognitionListener;

    invoke-virtual {v5, v6}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 180
    iput-object p2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mUiListener:Lcom/android/inputmethod/voice/VoiceInput$UiListener;

    .line 181
    iput-object p1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mContext:Landroid/content/Context;

    .line 182
    invoke-virtual {p0}, Lcom/android/inputmethod/voice/VoiceInput;->newView()V

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "latin_ime_voice_input_recommended_packages"

    const-string v7, "com.android.mms com.google.android.gm com.google.android.talk com.google.android.apps.googlevoice com.android.email com.android.browser "

    invoke-static {v5, v6, v7}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, recommendedPackages:Ljava/lang/String;
    new-instance v5, Lcom/android/inputmethod/voice/Whitelist;

    invoke-direct {v5}, Lcom/android/inputmethod/voice/Whitelist;-><init>()V

    iput-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecommendedList:Lcom/android/inputmethod/voice/Whitelist;

    .line 190
    const-string v5, "\\s+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 191
    .local v3, recommendedPackage:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecommendedList:Lcom/android/inputmethod/voice/Whitelist;

    invoke-virtual {v5, v3}, Lcom/android/inputmethod/voice/Whitelist;->addApp(Ljava/lang/String;)V

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v3           #recommendedPackage:Ljava/lang/String;
    :cond_0
    new-instance v5, Lcom/android/inputmethod/voice/Whitelist;

    invoke-direct {v5}, Lcom/android/inputmethod/voice/Whitelist;-><init>()V

    iput-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mBlacklist:Lcom/android/inputmethod/voice/Whitelist;

    .line 195
    iget-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mBlacklist:Lcom/android/inputmethod/voice/Whitelist;

    const-string v6, "com.android.setupwizard"

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/voice/Whitelist;->addApp(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method static synthetic access$002(Lcom/android/inputmethod/voice/VoiceInput;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/RecognitionView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/VoiceInput$UiListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mUiListener:Lcom/android/inputmethod/voice/VoiceInput$UiListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/inputmethod/voice/VoiceInput;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/voice/VoiceInput;->onError(IZ)V

    return-void
.end method

.method private getErrorStringId(IZ)I
    .locals 1
    .parameter "errorType"
    .parameter "endpointed"

    .prologue
    const v0, 0x7f0c0079

    .line 544
    packed-switch p1, :pswitch_data_0

    .line 561
    const v0, 0x7f0c0078

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 547
    :pswitch_1
    const v0, 0x7f0c007f

    goto :goto_0

    .line 551
    :pswitch_2
    if-nez p2, :cond_0

    const v0, 0x7f0c007a

    goto :goto_0

    .line 554
    :pswitch_3
    const v0, 0x7f0c007b

    goto :goto_0

    .line 556
    :pswitch_4
    const v0, 0x7f0c007c

    goto :goto_0

    .line 558
    :pswitch_5
    const v0, 0x7f0c007d

    goto :goto_0

    .line 560
    :pswitch_6
    const v0, 0x7f0c007e

    goto :goto_0

    .line 544
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static makeIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 490
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "1.5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    const-string v1, "com.google.android.voiceservice"

    const-string v2, "com.google.android.voiceservice.IMERecognitionService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 505
    :goto_0
    return-object v0

    .line 500
    :cond_0
    const-string v1, "com.google.android.voicesearch"

    const-string v2, "com.google.android.voicesearch.RecognitionService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private onError(IZ)V
    .locals 3
    .parameter "errorType"
    .parameter "endpointed"

    .prologue
    .line 566
    const-string v0, "VoiceInput"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->error(I)V

    .line 568
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/voice/VoiceInput;->getErrorStringId(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->onError(Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method private onError(Ljava/lang/String;)V
    .locals 4
    .parameter "error"

    .prologue
    .line 572
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    .line 573
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/RecognitionView;->showError(Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 576
    return-void
.end method

.method private putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "cr"
    .parameter "i"
    .parameter "gservicesKey"
    .parameter "intentExtraKey"
    .parameter "defaultValue"

    .prologue
    .line 385
    const-wide/16 v1, -0x1

    .line 386
    .local v1, l:J
    invoke-static {p1, p3, p5}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, s:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 389
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 395
    :cond_0
    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-eqz v4, :cond_1

    invoke-virtual {p2, p4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 396
    :cond_1
    return-void

    .line 390
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 391
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "VoiceInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not parse value for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startListeningAfterInitialization(Lcom/android/inputmethod/voice/FieldContext;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 342
    invoke-static {}, Lcom/android/inputmethod/voice/VoiceInput;->makeIntent()Landroid/content/Intent;

    move-result-object v2

    .line 343
    .local v2, intent:Landroid/content/Intent;
    const-string v0, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v0, "android.speech.extras.RECOGNITION_CONTEXT"

    invoke-virtual {p1}, Lcom/android/inputmethod/voice/FieldContext;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 345
    const-string v0, "calling_package"

    const-string v3, "VoiceIME"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string v0, "android.speech.extra.ALTERNATES"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 347
    const-string v0, "android.speech.extra.MAX_RESULTS"

    iget-object v3, p0, Lcom/android/inputmethod/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "latin_ime_max_voice_results"

    invoke-static {v3, v4, v6}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 354
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 355
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v3, "latin_ime_speech_minimum_length_millis"

    const-string v4, "android.speech.extras.SPEECH_INPUT_MINIMUM_LENGTH_MILLIS"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/voice/VoiceInput;->putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v9, "latin_ime_speech_input_complete_silence_length_millis"

    const-string v10, "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

    const-string v11, "1000"

    move-object v6, p0

    move-object v7, v1

    move-object v8, v2

    invoke-direct/range {v6 .. v11}, Lcom/android/inputmethod/voice/VoiceInput;->putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v3, "latin_ime_speech_input_possibly_complete_silence_length_millis"

    const-string v4, "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/voice/VoiceInput;->putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, v2}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 377
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 539
    :goto_0
    invoke-virtual {p0}, Lcom/android/inputmethod/voice/VoiceInput;->reset()V

    .line 540
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mUiListener:Lcom/android/inputmethod/voice/VoiceInput$UiListener;

    invoke-interface {v0}, Lcom/android/inputmethod/voice/VoiceInput$UiListener;->onCancelVoice()V

    .line 541
    return-void

    .line 529
    :pswitch_0
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->cancelDuringListening()V

    goto :goto_0

    .line 532
    :pswitch_1
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->cancelDuringWorking()V

    goto :goto_0

    .line 535
    :pswitch_2
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->cancelDuringError()V

    goto :goto_0

    .line 527
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 400
    return-void
.end method

.method public flushAllTextModificationCounters()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 265
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    if-lez v0, :cond_0

    .line 266
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingInsertion(I)V

    .line 267
    iput v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 269
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    if-lez v0, :cond_1

    .line 270
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingDeletion(I)V

    .line 271
    iput v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 273
    :cond_1
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    if-lez v0, :cond_2

    .line 274
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingInsertionPunctuation(I)V

    .line 275
    iput v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 277
    :cond_2
    return-void
.end method

.method public flushLogs()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->flush()V

    .line 487
    return-void
.end method

.method public getCursorPos()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputCursorPos:I

    return v0
.end method

.method public getSelectionSpan()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/RecognitionView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public incrementTextModificationDeleteCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    const/4 v1, 0x0

    .line 215
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 217
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    if-lez v0, :cond_0

    .line 218
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingInsertion(I)V

    .line 219
    iput v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 221
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    if-lez v0, :cond_1

    .line 222
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingInsertionPunctuation(I)V

    .line 223
    iput v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 226
    :cond_1
    return-void
.end method

.method public incrementTextModificationInsertCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 229
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 230
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    if-lez v0, :cond_0

    .line 233
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    iget v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 236
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    if-lez v0, :cond_1

    .line 237
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingDeletion(I)V

    .line 238
    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 240
    :cond_1
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    if-lez v0, :cond_2

    .line 241
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingInsertionPunctuation(I)V

    .line 242
    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 244
    :cond_2
    return-void
.end method

.method public incrementTextModificationInsertPunctuationCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 247
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 248
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    if-lez v0, :cond_0

    .line 251
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    iget v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 254
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    if-lez v0, :cond_1

    .line 255
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingDeletion(I)V

    .line 256
    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 258
    :cond_1
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    if-lez v0, :cond_2

    .line 259
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingInsertion(I)V

    .line 260
    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 262
    :cond_2
    return-void
.end method

.method public isBlacklistedField(Lcom/android/inputmethod/voice/FieldContext;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mBlacklist:Lcom/android/inputmethod/voice/Whitelist;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/Whitelist;->matches(Lcom/android/inputmethod/voice/FieldContext;)Z

    move-result v0

    return v0
.end method

.method public logInputEnded()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->inputEnded()V

    .line 483
    return-void
.end method

.method public logKeyboardWarningDialogCancel()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->keyboardWarningDialogCancel()V

    .line 467
    return-void
.end method

.method public logKeyboardWarningDialogDismissed()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->keyboardWarningDialogDismissed()V

    .line 459
    return-void
.end method

.method public logKeyboardWarningDialogOk()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->keyboardWarningDialogOk()V

    .line 463
    return-void
.end method

.method public logKeyboardWarningDialogShown()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->keyboardWarningDialogShown()V

    .line 455
    return-void
.end method

.method public logPunctuationHintDisplayed()V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->punctuationHintDisplayed()V

    .line 475
    return-void
.end method

.method public logTextModifiedByChooseSuggestion(Ljava/lang/String;ILjava/lang/String;Landroid/view/inputmethod/InputConnection;)V
    .locals 6
    .parameter "suggestion"
    .parameter "index"
    .parameter "wordSeparators"
    .parameter "ic"

    .prologue
    .line 446
    invoke-static {p4, p3}, Lcom/android/inputmethod/latin/EditingUtils;->getWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 449
    .local v4, wordToBeReplaced:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    move v3, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/inputmethod/voice/VoiceInputLogger;->textModifiedByChooseSuggestion(IIILjava/lang/String;Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method public logTextModifiedByTypingDeletion(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->textModifiedByTypingDeletion(I)V

    .line 442
    return-void
.end method

.method public logTextModifiedByTypingInsertion(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->textModifiedByTypingInsertion(I)V

    .line 434
    return-void
.end method

.method public logTextModifiedByTypingInsertionPunctuation(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->textModifiedByTypingInsertionPunctuation(I)V

    .line 438
    return-void
.end method

.method public logVoiceInputDelivered(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->voiceInputDelivered(I)V

    .line 479
    return-void
.end method

.method public newView()V
    .locals 2

    .prologue
    .line 409
    new-instance v0, Lcom/android/inputmethod/voice/RecognitionView;

    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/inputmethod/voice/RecognitionView;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    .line 410
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 430
    :goto_0
    return-void

    .line 427
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/inputmethod/voice/VoiceInput;->cancel()V

    goto :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x7f07002c
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "configuration"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/RecognitionView;->restoreState()V

    .line 285
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/RecognitionView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 286
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 512
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    if-eqz v0, :cond_0

    .line 513
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    .line 516
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 518
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 519
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/RecognitionView;->finish()V

    .line 521
    :cond_0
    return-void
.end method

.method public setCursorPos(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 199
    iput p1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputCursorPos:I

    .line 200
    return-void
.end method

.method public setSelectionSpan(I)V
    .locals 0
    .parameter "span"

    .prologue
    .line 207
    iput p1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    .line 208
    return-void
.end method

.method public startListening(Lcom/android/inputmethod/voice/FieldContext;Z)V
    .locals 5
    .parameter "context"
    .parameter "swipe"

    .prologue
    .line 313
    sget-boolean v2, Lcom/android/inputmethod/voice/VoiceInput;->DBG:Z

    if-eqz v2, :cond_0

    .line 314
    const-string v2, "VoiceInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startListening: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    iget v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    if-eqz v2, :cond_1

    .line 318
    const-string v2, "VoiceInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startListening in the wrong status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/voice/VoiceInput;->reset()V

    .line 325
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 326
    .local v0, locale:Ljava/util/Locale;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, localeString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v2, v1, p2}, Lcom/android/inputmethod/voice/VoiceInputLogger;->start(Ljava/lang/String;Z)V

    .line 330
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    .line 332
    iget-object v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-virtual {v2}, Lcom/android/inputmethod/voice/RecognitionView;->showInitializing()V

    .line 333
    invoke-direct {p0, p1}, Lcom/android/inputmethod/voice/VoiceInput;->startListeningAfterInitialization(Lcom/android/inputmethod/voice/FieldContext;)V

    .line 334
    return-void
.end method
