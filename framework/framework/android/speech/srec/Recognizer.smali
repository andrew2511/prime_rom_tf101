.class public final Landroid/speech/srec/Recognizer;
.super Ljava/lang/Object;
.source "Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/srec/Recognizer$Grammar;
    }
.end annotation


# static fields
.field public static final EVENT_END_OF_VOICING:I = 0x6

.field public static final EVENT_INCOMPLETE:I = 0x2

.field public static final EVENT_INVALID:I = 0x0

.field public static final EVENT_MAX_SPEECH:I = 0xc

.field public static final EVENT_NEED_MORE_AUDIO:I = 0xb

.field public static final EVENT_NO_MATCH:I = 0x1

.field public static final EVENT_RECOGNITION_RESULT:I = 0x8

.field public static final EVENT_RECOGNITION_TIMEOUT:I = 0xa

.field public static final EVENT_SPOKE_TOO_SOON:I = 0x7

.field public static final EVENT_STARTED:I = 0x3

.field public static final EVENT_START_OF_UTTERANCE_TIMEOUT:I = 0x9

.field public static final EVENT_START_OF_VOICING:I = 0x5

.field public static final EVENT_STOPPED:I = 0x4

.field public static final KEY_CONFIDENCE:Ljava/lang/String; = "conf"

.field public static final KEY_LITERAL:Ljava/lang/String; = "literal"

.field public static final KEY_MEANING:Ljava/lang/String; = "meaning"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mActiveGrammar:Landroid/speech/srec/Recognizer$Grammar;

.field private mPutAudioBuffer:[B

.field private mRecognizer:I

.field private mVocabulary:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 108
    const-string/jumbo v0, "srec_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 111
    const-string v0, "Recognizer"

    sput-object v0, Landroid/speech/srec/Recognizer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "configFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput v0, p0, Landroid/speech/srec/Recognizer;->mVocabulary:I

    .line 132
    iput v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    .line 135
    iput-object v1, p0, Landroid/speech/srec/Recognizer;->mActiveGrammar:Landroid/speech/srec/Recognizer$Grammar;

    .line 321
    iput-object v1, p0, Landroid/speech/srec/Recognizer;->mPutAudioBuffer:[B

    .line 167
    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemInit()V

    .line 168
    invoke-static {p1}, Landroid/speech/srec/Recognizer;->SR_SessionCreate(Ljava/lang/String;)V

    .line 169
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_RecognizerCreate()I

    move-result v0

    iput v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    .line 170
    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0}, Landroid/speech/srec/Recognizer;->SR_RecognizerSetup(I)V

    .line 171
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_VocabularyLoad()I

    move-result v0

    iput v0, p0, Landroid/speech/srec/Recognizer;->mVocabulary:I

    .line 172
    return-void
.end method

.method private static native PMemInit()V
.end method

.method private static native PMemShutdown()V
.end method

.method private static native SR_AcousticStateGet(I)Ljava/lang/String;
.end method

.method private static native SR_AcousticStateReset(I)V
.end method

.method private static native SR_AcousticStateSet(ILjava/lang/String;)V
.end method

.method private static native SR_GrammarAddWordToSlot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method private static native SR_GrammarAllowAll(I)V
.end method

.method private static native SR_GrammarAllowOnly(ILjava/lang/String;)V
.end method

.method private static native SR_GrammarCompile(I)V
.end method

.method private static native SR_GrammarCreate()I
.end method

.method private static native SR_GrammarDestroy(I)V
.end method

.method private static native SR_GrammarLoad(Ljava/lang/String;)I
.end method

.method private static native SR_GrammarResetAllSlots(I)V
.end method

.method private static native SR_GrammarSave(ILjava/lang/String;)V
.end method

.method private static native SR_GrammarSetupRecognizer(II)V
.end method

.method private static native SR_GrammarSetupVocabulary(II)V
.end method

.method private static native SR_GrammarUnsetupRecognizer(I)V
.end method

.method private static native SR_RecognizerActivateRule(IILjava/lang/String;I)V
.end method

.method private static native SR_RecognizerAdvance(I)I
.end method

.method private static native SR_RecognizerCheckGrammarConsistency(II)Z
.end method

.method private static native SR_RecognizerCreate()I
.end method

.method private static native SR_RecognizerDeactivateAllRules(I)V
.end method

.method private static native SR_RecognizerDeactivateRule(IILjava/lang/String;)V
.end method

.method private static native SR_RecognizerDestroy(I)V
.end method

.method private static native SR_RecognizerGetBoolParameter(ILjava/lang/String;)Z
.end method

.method private static native SR_RecognizerGetParameter(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private static native SR_RecognizerGetSize_tParameter(ILjava/lang/String;)I
.end method

.method private static native SR_RecognizerHasSetupRules(I)Z
.end method

.method private static native SR_RecognizerIsActiveRule(IILjava/lang/String;)Z
.end method

.method private static native SR_RecognizerIsSetup(I)Z
.end method

.method private static native SR_RecognizerIsSignalClipping(I)Z
.end method

.method private static native SR_RecognizerIsSignalDCOffset(I)Z
.end method

.method private static native SR_RecognizerIsSignalNoisy(I)Z
.end method

.method private static native SR_RecognizerIsSignalTooFewSamples(I)Z
.end method

.method private static native SR_RecognizerIsSignalTooManySamples(I)Z
.end method

.method private static native SR_RecognizerIsSignalTooQuiet(I)Z
.end method

.method private static native SR_RecognizerPutAudio(I[BIIZ)I
.end method

.method private static native SR_RecognizerResultGetKeyCount(II)I
.end method

.method private static native SR_RecognizerResultGetKeyList(II)[Ljava/lang/String;
.end method

.method private static native SR_RecognizerResultGetSize(I)I
.end method

.method private static native SR_RecognizerResultGetValue(IILjava/lang/String;)Ljava/lang/String;
.end method

.method private static native SR_RecognizerResultGetWaveform(I)[B
.end method

.method private static native SR_RecognizerSetBoolParameter(ILjava/lang/String;Z)V
.end method

.method private static native SR_RecognizerSetParameter(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native SR_RecognizerSetSize_tParameter(ILjava/lang/String;I)V
.end method

.method private static native SR_RecognizerSetup(I)V
.end method

.method private static native SR_RecognizerSetupRule(IILjava/lang/String;)V
.end method

.method private static native SR_RecognizerStart(I)V
.end method

.method private static native SR_RecognizerStop(I)V
.end method

.method private static native SR_RecognizerUnsetup(I)V
.end method

.method private static native SR_SessionCreate(Ljava/lang/String;)V
.end method

.method private static native SR_SessionDestroy()V
.end method

.method private static native SR_VocabularyDestroy(I)V
.end method

.method private static native SR_VocabularyGetPronunciation(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private static native SR_VocabularyLoad()I
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    invoke-static {p0}, Landroid/speech/srec/Recognizer;->SR_GrammarLoad(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/speech/srec/Recognizer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Landroid/speech/srec/Recognizer;->mVocabulary:I

    return v0
.end method

.method static synthetic access$1000(I)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-static {p0}, Landroid/speech/srec/Recognizer;->SR_GrammarDestroy(I)V

    return-void
.end method

.method static synthetic access$200(II)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-static {p0, p1}, Landroid/speech/srec/Recognizer;->SR_GrammarSetupVocabulary(II)V

    return-void
.end method

.method static synthetic access$300(I)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-static {p0}, Landroid/speech/srec/Recognizer;->SR_GrammarResetAllSlots(I)V

    return-void
.end method

.method static synthetic access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 106
    invoke-static/range {p0 .. p5}, Landroid/speech/srec/Recognizer;->SR_GrammarAddWordToSlot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(I)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-static {p0}, Landroid/speech/srec/Recognizer;->SR_GrammarCompile(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/speech/srec/Recognizer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    return v0
.end method

.method static synthetic access$700(II)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-static {p0, p1}, Landroid/speech/srec/Recognizer;->SR_GrammarSetupRecognizer(II)V

    return-void
.end method

.method static synthetic access$802(Landroid/speech/srec/Recognizer;Landroid/speech/srec/Recognizer$Grammar;)Landroid/speech/srec/Recognizer$Grammar;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Landroid/speech/srec/Recognizer;->mActiveGrammar:Landroid/speech/srec/Recognizer$Grammar;

    return-object p1
.end method

.method static synthetic access$900(ILjava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-static {p0, p1}, Landroid/speech/srec/Recognizer;->SR_GrammarSave(ILjava/lang/String;)V

    return-void
.end method

.method public static eventToString(I)Ljava/lang/String;
    .registers 3
    .parameter "event"

    .prologue
    .line 573
    packed-switch p0, :pswitch_data_3e

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    .line 575
    :pswitch_17
    const-string v0, "EVENT_INVALID"

    goto :goto_16

    .line 577
    :pswitch_1a
    const-string v0, "EVENT_NO_MATCH"

    goto :goto_16

    .line 579
    :pswitch_1d
    const-string v0, "EVENT_INCOMPLETE"

    goto :goto_16

    .line 581
    :pswitch_20
    const-string v0, "EVENT_STARTED"

    goto :goto_16

    .line 583
    :pswitch_23
    const-string v0, "EVENT_STOPPED"

    goto :goto_16

    .line 585
    :pswitch_26
    const-string v0, "EVENT_START_OF_VOICING"

    goto :goto_16

    .line 587
    :pswitch_29
    const-string v0, "EVENT_END_OF_VOICING"

    goto :goto_16

    .line 589
    :pswitch_2c
    const-string v0, "EVENT_SPOKE_TOO_SOON"

    goto :goto_16

    .line 591
    :pswitch_2f
    const-string v0, "EVENT_RECOGNITION_RESULT"

    goto :goto_16

    .line 593
    :pswitch_32
    const-string v0, "EVENT_START_OF_UTTERANCE_TIMEOUT"

    goto :goto_16

    .line 595
    :pswitch_35
    const-string v0, "EVENT_RECOGNITION_TIMEOUT"

    goto :goto_16

    .line 597
    :pswitch_38
    const-string v0, "EVENT_NEED_MORE_AUDIO"

    goto :goto_16

    .line 599
    :pswitch_3b
    const-string v0, "EVENT_MAX_SPEECH"

    goto :goto_16

    .line 573
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_35
        :pswitch_38
        :pswitch_3b
    .end packed-switch
.end method

.method public static getConfigDir(Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .parameter "locale"

    .prologue
    .line 147
    if-nez p0, :cond_4

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 148
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/usr/srec/config/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, dir:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_34

    move-object v1, v0

    .line 151
    :goto_33
    return-object v1

    :cond_34
    const/4 v1, 0x0

    goto :goto_33
.end method


# virtual methods
.method public advance()I
    .registers 2

    .prologue
    .line 285
    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0}, Landroid/speech/srec/Recognizer;->SR_RecognizerAdvance(I)I

    move-result v0

    return v0
.end method

.method public destroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 405
    :try_start_1
    iget v0, p0, Landroid/speech/srec/Recognizer;->mVocabulary:I

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/speech/srec/Recognizer;->mVocabulary:I

    invoke-static {v0}, Landroid/speech/srec/Recognizer;->SR_VocabularyDestroy(I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_62

    .line 407
    :cond_a
    iput v2, p0, Landroid/speech/srec/Recognizer;->mVocabulary:I

    .line 409
    :try_start_c
    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    if-eqz v0, :cond_15

    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0}, Landroid/speech/srec/Recognizer;->SR_RecognizerUnsetup(I)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_3b

    .line 412
    :cond_15
    :try_start_15
    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    if-eqz v0, :cond_1e

    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0}, Landroid/speech/srec/Recognizer;->SR_RecognizerDestroy(I)V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_2c

    .line 414
    :cond_1e
    iput v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    .line 416
    :try_start_20
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_27

    .line 418
    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    .line 423
    return-void

    .line 418
    :catchall_27
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    .line 414
    :catchall_2c
    move-exception v0

    iput v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    .line 416
    :try_start_2f
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_36

    .line 418
    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_36
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    .line 411
    :catchall_3b
    move-exception v0

    .line 412
    :try_start_3c
    iget v1, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    if-eqz v1, :cond_45

    iget v1, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v1}, Landroid/speech/srec/Recognizer;->SR_RecognizerDestroy(I)V
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_53

    .line 414
    :cond_45
    iput v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    .line 416
    :try_start_47
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4e

    .line 418
    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_4e
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    .line 414
    :catchall_53
    move-exception v0

    iput v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    .line 416
    :try_start_56
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5d

    .line 418
    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_5d
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    .line 407
    :catchall_62
    move-exception v0

    iput v2, p0, Landroid/speech/srec/Recognizer;->mVocabulary:I

    .line 409
    :try_start_65
    iget v1, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    if-eqz v1, :cond_6e

    iget v1, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v1}, Landroid/speech/srec/Recognizer;->SR_RecognizerUnsetup(I)V
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_94

    .line 412
    :cond_6e
    :try_start_6e
    iget v1, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    if-eqz v1, :cond_77

    iget v1, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v1}, Landroid/speech/srec/Recognizer;->SR_RecognizerDestroy(I)V
    :try_end_77
    .catchall {:try_start_6e .. :try_end_77} :catchall_85

    .line 414
    :cond_77
    iput v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    .line 416
    :try_start_79
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_80

    .line 418
    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_80
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    .line 414
    :catchall_85
    move-exception v0

    iput v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    .line 416
    :try_start_88
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8f

    .line 418
    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_8f
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    .line 411
    :catchall_94
    move-exception v0

    .line 412
    :try_start_95
    iget v1, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    if-eqz v1, :cond_9e

    iget v1, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v1}, Landroid/speech/srec/Recognizer;->SR_RecognizerDestroy(I)V
    :try_end_9e
    .catchall {:try_start_95 .. :try_end_9e} :catchall_ac

    .line 414
    :cond_9e
    iput v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    .line 416
    :try_start_a0
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_a7

    .line 418
    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_a7
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    .line 414
    :catchall_ac
    move-exception v0

    iput v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    .line 416
    :try_start_af
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_b6

    .line 418
    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_b6
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 429
    iget v0, p0, Landroid/speech/srec/Recognizer;->mVocabulary:I

    if-nez v0, :cond_8

    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    if-eqz v0, :cond_14

    .line 430
    :cond_8
    invoke-virtual {p0}, Landroid/speech/srec/Recognizer;->destroy()V

    .line 431
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "someone forgot to destroy Recognizer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_14
    return-void
.end method

.method public getAcousticState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 397
    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0}, Landroid/speech/srec/Recognizer;->SR_AcousticStateGet(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResult(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "index"
    .parameter "key"

    .prologue
    .line 360
    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0, p1, p2}, Landroid/speech/srec/Recognizer;->SR_RecognizerResultGetValue(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultCount()I
    .registers 2

    .prologue
    .line 331
    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0}, Landroid/speech/srec/Recognizer;->SR_RecognizerResultGetSize(I)I

    move-result v0

    return v0
.end method

.method public getResultKeys(I)[Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 343
    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0, p1}, Landroid/speech/srec/Recognizer;->SR_RecognizerResultGetKeyList(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putAudio([BIIZ)I
    .registers 6
    .parameter "buf"
    .parameter "offset"
    .parameter "length"
    .parameter "isLast"

    .prologue
    .line 297
    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/speech/srec/Recognizer;->SR_RecognizerPutAudio(I[BIIZ)I

    move-result v0

    return v0
.end method

.method public putAudio(Ljava/io/InputStream;)V
    .registers 7
    .parameter "audio"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 307
    iget-object v1, p0, Landroid/speech/srec/Recognizer;->mPutAudioBuffer:[B

    if-nez v1, :cond_b

    const/16 v1, 0x200

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/speech/srec/Recognizer;->mPutAudioBuffer:[B

    .line 309
    :cond_b
    iget-object v1, p0, Landroid/speech/srec/Recognizer;->mPutAudioBuffer:[B

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 311
    .local v0, nbytes:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    .line 312
    iget v1, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    iget-object v2, p0, Landroid/speech/srec/Recognizer;->mPutAudioBuffer:[B

    const/4 v3, 0x1

    invoke-static {v1, v2, v4, v4, v3}, Landroid/speech/srec/Recognizer;->SR_RecognizerPutAudio(I[BIIZ)I

    .line 318
    :cond_1c
    return-void

    .line 315
    :cond_1d
    iget v1, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    iget-object v2, p0, Landroid/speech/srec/Recognizer;->mPutAudioBuffer:[B

    invoke-static {v1, v2, v4, v0, v4}, Landroid/speech/srec/Recognizer;->SR_RecognizerPutAudio(I[BIIZ)I

    move-result v1

    if-eq v0, v1, :cond_1c

    .line 316
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SR_RecognizerPutAudio failed nbytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resetAcousticState()V
    .registers 2

    .prologue
    .line 377
    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0}, Landroid/speech/srec/Recognizer;->SR_AcousticStateReset(I)V

    .line 378
    return-void
.end method

.method public setAcousticState(Ljava/lang/String;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 387
    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0, p1}, Landroid/speech/srec/Recognizer;->SR_AcousticStateSet(ILjava/lang/String;)V

    .line 388
    return-void
.end method

.method public start()V
    .registers 5

    .prologue
    .line 261
    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    iget-object v1, p0, Landroid/speech/srec/Recognizer;->mActiveGrammar:Landroid/speech/srec/Recognizer$Grammar;

    #getter for: Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I
    invoke-static {v1}, Landroid/speech/srec/Recognizer$Grammar;->access$1100(Landroid/speech/srec/Recognizer$Grammar;)I

    move-result v1

    const-string/jumbo v2, "trash"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/speech/srec/Recognizer;->SR_RecognizerActivateRule(IILjava/lang/String;I)V

    .line 262
    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0}, Landroid/speech/srec/Recognizer;->SR_RecognizerStart(I)V

    .line 263
    return-void
.end method

.method public stop()V
    .registers 4

    .prologue
    .line 367
    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0}, Landroid/speech/srec/Recognizer;->SR_RecognizerStop(I)V

    .line 368
    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    iget-object v1, p0, Landroid/speech/srec/Recognizer;->mActiveGrammar:Landroid/speech/srec/Recognizer$Grammar;

    #getter for: Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I
    invoke-static {v1}, Landroid/speech/srec/Recognizer$Grammar;->access$1100(Landroid/speech/srec/Recognizer$Grammar;)I

    move-result v1

    const-string/jumbo v2, "trash"

    invoke-static {v0, v1, v2}, Landroid/speech/srec/Recognizer;->SR_RecognizerDeactivateRule(IILjava/lang/String;)V

    .line 369
    return-void
.end method
