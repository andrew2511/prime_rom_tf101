.class public Landroid/tts/TtsService;
.super Landroid/app/Service;
.source "TtsService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/tts/TtsService$SoundResource;,
        Landroid/tts/TtsService$SpeechItem;
    }
.end annotation


# static fields
.field private static sNativeSynth:Landroid/tts/SynthProxy;


# instance fields
.field private currentSpeechEngineSOFile:Ljava/lang/String;

.field private final mBinder:Landroid/speech/tts/ITts$Stub;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/speech/tts/ITtsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacksMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/speech/tts/ITtsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

.field private mEarcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/tts/TtsService$SoundResource;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSpeaking:Ljava/lang/Boolean;

.field private mKillList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/tts/TtsService$SpeechItem;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSelf:Landroid/tts/TtsService;

.field private mSpeechQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/tts/TtsService$SpeechItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSynthBusy:Ljava/lang/Boolean;

.field private mUtterances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/tts/TtsService$SoundResource;",
            ">;"
        }
    .end annotation
.end field

.field private final speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final synthesizerLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    sput-object v0, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 132
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/tts/TtsService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 151
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 152
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/tts/TtsService;->synthesizerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 155
    const-string v0, ""

    iput-object v0, p0, Landroid/tts/TtsService;->currentSpeechEngineSOFile:Ljava/lang/String;

    .line 1231
    new-instance v0, Landroid/tts/TtsService$1;

    invoke-direct {v0, p0}, Landroid/tts/TtsService$1;-><init>(Landroid/tts/TtsService;)V

    iput-object v0, p0, Landroid/tts/TtsService;->mBinder:Landroid/speech/tts/ITts$Stub;

    return-void
.end method

.method static synthetic access$000(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/tts/TtsService;->dispatchUtteranceCompletedCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/tts/TtsService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/tts/TtsService;->processSpeechQueue()V

    return-void
.end method

.method static synthetic access$1000(Landroid/tts/TtsService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/tts/TtsService;->getDefaultLocVariant()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/tts/TtsService;Ljava/lang/String;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/tts/TtsService;->setSpeechRate(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/tts/TtsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/tts/TtsService;->getDefaultRate()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/tts/TtsService;Ljava/lang/String;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/tts/TtsService;->setPitch(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/tts/TtsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/tts/TtsService;->getDefaultPitch()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500()Landroid/tts/SynthProxy;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/tts/TtsService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/tts/TtsService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/tts/TtsService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/tts/TtsService;->mCallbacksMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/tts/TtsService;)Landroid/tts/TtsService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/tts/TtsService;->mSelf:Landroid/tts/TtsService;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/tts/TtsService;->speak(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/tts/TtsService;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/tts/TtsService;->synthesizerLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/tts/TtsService;->playEarcon(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Landroid/tts/TtsService;Ljava/lang/String;JILjava/util/ArrayList;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p5}, Landroid/tts/TtsService;->playSilence(Ljava/lang/String;JILjava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Landroid/tts/TtsService;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/tts/TtsService;->stop(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Landroid/tts/TtsService;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/tts/TtsService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/tts/TtsService;->addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2600(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/tts/TtsService;->addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/tts/TtsService;->addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2800(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/tts/TtsService;->addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/tts/TtsService;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Landroid/tts/TtsService;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/tts/TtsService;->getLanguage()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Landroid/tts/TtsService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Landroid/tts/TtsService;->mSynthBusy:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$3100(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/tts/TtsService;->synthesizeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Landroid/tts/TtsService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/tts/TtsService;->isDefaultEnforced()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/tts/TtsService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/tts/TtsService;->mKillList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Landroid/tts/TtsService;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/tts/TtsService;->setEngine(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/tts/TtsService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/tts/TtsService;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/tts/TtsService;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/tts/TtsService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/tts/TtsService;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/tts/TtsService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/tts/TtsService;->getDefaultCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "callingApp"
    .parameter "earcon"
    .parameter "filename"

    .prologue
    .line 482
    iget-object v0, p0, Landroid/tts/TtsService;->mEarcons:Ljava/util/HashMap;

    new-instance v1, Landroid/tts/TtsService$SoundResource;

    invoke-direct {v1, p3}, Landroid/tts/TtsService$SoundResource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    return-void
.end method

.method private addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "callingApp"
    .parameter "earcon"
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 469
    iget-object v0, p0, Landroid/tts/TtsService;->mEarcons:Ljava/util/HashMap;

    new-instance v1, Landroid/tts/TtsService$SoundResource;

    invoke-direct {v1, p3, p4}, Landroid/tts/TtsService$SoundResource;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    return-void
.end method

.method private addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "callingApp"
    .parameter "text"
    .parameter "filename"

    .prologue
    .line 455
    iget-object v0, p0, Landroid/tts/TtsService;->mUtterances:Ljava/util/HashMap;

    new-instance v1, Landroid/tts/TtsService$SoundResource;

    invoke-direct {v1, p3}, Landroid/tts/TtsService$SoundResource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    return-void
.end method

.method private addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "callingApp"
    .parameter "text"
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 442
    iget-object v0, p0, Landroid/tts/TtsService;->mUtterances:Ljava/util/HashMap;

    new-instance v1, Landroid/tts/TtsService$SoundResource;

    invoke-direct {v1, p3, p4}, Landroid/tts/TtsService$SoundResource;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    return-void
.end method

.method private broadcastTtsQueueProcessingCompleted()V
    .locals 2

    .prologue
    .line 1002
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.tts.TTS_QUEUE_PROCESSING_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1003
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/tts/TtsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1004
    return-void
.end method

.method private cleanUpPlayer()V
    .locals 1

    .prologue
    .line 1166
    iget-object v0, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1168
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    .line 1170
    :cond_0
    return-void
.end method

.method private dispatchUtteranceCompletedCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "utteranceId"
    .parameter "packageName"

    .prologue
    .line 1008
    iget-object v2, p0, Landroid/tts/TtsService;->mCallbacksMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/ITtsCallback;

    .line 1009
    .local v1, cb:Landroid/speech/tts/ITtsCallback;
    if-nez v1, :cond_0

    .line 1023
    :goto_0
    return-void

    .line 1012
    :cond_0
    const-string v2, "TtsService"

    const-string v3, "TTS callback: dispatch started"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object v2, p0, Landroid/tts/TtsService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1016
    .local v0, N:I
    :try_start_0
    invoke-interface {v1, p1}, Landroid/speech/tts/ITtsCallback;->utteranceCompleted(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1021
    :goto_1
    iget-object v2, p0, Landroid/tts/TtsService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1022
    const-string v2, "TtsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TTS callback: dispatch completed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1017
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private getDefaultCountry()Ljava/lang/String;
    .locals 3

    .prologue
    .line 341
    iget-object v1, p0, Landroid/tts/TtsService;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "tts_default_country"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, defaultCountry:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 345
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    .line 347
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method private getDefaultEngine()Ljava/lang/String;
    .locals 3

    .prologue
    .line 308
    iget-object v1, p0, Landroid/tts/TtsService;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "tts_default_synth"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, defaultEngine:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 311
    const-string v1, "com.svox.pico"

    .line 313
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method private getDefaultLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 329
    iget-object v1, p0, Landroid/tts/TtsService;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "tts_default_lang"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, defaultLang:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 333
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    .line 335
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method private getDefaultLocVariant()Ljava/lang/String;
    .locals 3

    .prologue
    .line 353
    iget-object v1, p0, Landroid/tts/TtsService;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "tts_default_variant"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, defaultVar:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 357
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    .line 359
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method private getDefaultPitch()I
    .locals 1

    .prologue
    .line 325
    const/16 v0, 0x64

    return v0
.end method

.method private getDefaultRate()I
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Landroid/tts/TtsService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "tts_default_rate"

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getLanguage()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 406
    :try_start_0
    sget-object v1, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    invoke-virtual {v1}, Landroid/tts/SynthProxy;->getLanguage()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 408
    :goto_0
    return-object v1

    .line 407
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 408
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSoundResource(Landroid/tts/TtsService$SpeechItem;)Landroid/tts/TtsService$SoundResource;
    .locals 4
    .parameter "speechItem"

    .prologue
    .line 989
    const/4 v0, 0x0

    .line 990
    .local v0, sr:Landroid/tts/TtsService$SoundResource;
    iget-object v1, p1, Landroid/tts/TtsService$SpeechItem;->mText:Ljava/lang/String;

    .line 991
    .local v1, text:Ljava/lang/String;
    iget v2, p1, Landroid/tts/TtsService$SpeechItem;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 998
    :goto_0
    return-object v0

    .line 993
    :cond_0
    iget v2, p1, Landroid/tts/TtsService$SpeechItem;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 994
    iget-object v2, p0, Landroid/tts/TtsService;->mEarcons:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #sr:Landroid/tts/TtsService$SoundResource;
    check-cast v0, Landroid/tts/TtsService$SoundResource;

    .restart local v0       #sr:Landroid/tts/TtsService$SoundResource;
    goto :goto_0

    .line 996
    :cond_1
    iget-object v2, p0, Landroid/tts/TtsService;->mUtterances:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #sr:Landroid/tts/TtsService$SoundResource;
    check-cast v0, Landroid/tts/TtsService$SoundResource;

    .restart local v0       #sr:Landroid/tts/TtsService$SoundResource;
    goto :goto_0
.end method

.method private getStreamTypeFromParams(Ljava/util/ArrayList;)I
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1148
    .local p1, paramList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x3

    .line 1149
    .local v3, streamType:I
    if-nez p1, :cond_0

    move v4, v3

    .line 1162
    .end local v3           #streamType:I
    .end local p0
    .local v4, streamType:I
    :goto_0
    return v4

    .line 1152
    .end local v4           #streamType:I
    .restart local v3       #streamType:I
    .restart local p0
    :cond_0
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v1, v5, :cond_2

    .line 1153
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1154
    .local v2, param:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v5, "streamType"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1156
    add-int/lit8 v5, v1, 0x1

    :try_start_0
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1152
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 1157
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 1158
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x3

    goto :goto_2

    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v2           #param:Ljava/lang/String;
    :cond_2
    move v4, v3

    .line 1162
    .end local v3           #streamType:I
    .restart local v4       #streamType:I
    goto :goto_0
.end method

.method private isDefaultEnforced()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 301
    iget-object v0, p0, Landroid/tts/TtsService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "tts_use_defaults"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "lang"
    .parameter "country"
    .parameter "variant"

    .prologue
    .line 393
    const/4 v1, -0x2

    .line 395
    .local v1, res:I
    :try_start_0
    sget-object v2, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    invoke-virtual {v2, p1, p2, p3}, Landroid/tts/SynthProxy;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 400
    :goto_0
    return v1

    .line 396
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 398
    .local v0, e:Ljava/lang/NullPointerException;
    const/4 v1, -0x2

    goto :goto_0
.end method

.method private killAllUtterances()I
    .locals 9

    .prologue
    .line 599
    const/4 v1, -0x1

    .line 600
    .local v1, result:I
    const/4 v3, 0x0

    .line 603
    .local v3, speechQueueAvailable:Z
    :try_start_0
    iget-object v5, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v6, 0x1388

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    .line 605
    if-eqz v3, :cond_3

    .line 607
    iget-object v5, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 610
    iget-object v5, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    if-eqz v5, :cond_1

    .line 611
    sget-object v5, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    invoke-virtual {v5}, Landroid/tts/SynthProxy;->stopSync()I

    move-result v1

    .line 612
    iget-object v5, p0, Landroid/tts/TtsService;->mKillList:Ljava/util/HashMap;

    iget-object v6, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;

    .line 616
    iget-object v5, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    iget v5, v5, Landroid/tts/TtsService$SpeechItem;->mType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 618
    iget-object v5, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v5, v5, Landroid/tts/TtsService$SpeechItem;->mFilename:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 619
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v5, v5, Landroid/tts/TtsService$SpeechItem;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 620
    .local v4, tempFile:Ljava/io/File;
    const-string v5, "TtsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Leaving behind "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v7, v7, Landroid/tts/TtsService$SpeechItem;->mFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 622
    const-string v5, "TtsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "About to delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v7, v7, Landroid/tts/TtsService$SpeechItem;->mFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 625
    const-string v5, "TtsService"

    const-string v6, "file successfully deleted"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    .end local v4           #tempFile:Ljava/io/File;
    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 644
    iget-object v5, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    move v2, v1

    .line 646
    .end local v1           #result:I
    .local v2, result:I
    :goto_1
    return v2

    .line 634
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_3
    :try_start_1
    const-string v5, "TtsService"

    const-string v6, "TTS killAllUtterances(): queue locked longer than expected"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 635
    const/4 v1, -0x1

    goto :goto_0

    .line 637
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 638
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v5, "TtsService"

    const-string v6, "TTS killAllUtterances(): tryLock interrupted"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 639
    const/4 v1, -0x1

    .line 643
    if-eqz v3, :cond_4

    .line 644
    iget-object v5, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_4
    move v2, v1

    .line 646
    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_1

    .line 643
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v2           #result:I
    .restart local v1       #result:I
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_5

    .line 644
    iget-object v5, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_5
    move v2, v1

    .line 646
    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_1
.end method

.method private playEarcon(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I
    .locals 3
    .parameter "callingApp"
    .parameter "earcon"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 525
    .local p4, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p3, :cond_2

    .line 526
    invoke-direct {p0, p1}, Landroid/tts/TtsService;->stop(Ljava/lang/String;)I

    .line 530
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    new-instance v1, Landroid/tts/TtsService$SpeechItem;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, p4, v2}, Landroid/tts/TtsService$SpeechItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    iget-object v0, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 532
    invoke-direct {p0}, Landroid/tts/TtsService;->processSpeechQueue()V

    .line 534
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 527
    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 528
    invoke-direct {p0, p1}, Landroid/tts/TtsService;->stopAll(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private playSilence(Ljava/lang/String;JILjava/util/ArrayList;)I
    .locals 2
    .parameter "callingApp"
    .parameter "duration"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 732
    .local p5, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p4, :cond_0

    .line 733
    invoke-direct {p0, p1}, Landroid/tts/TtsService;->stop(Ljava/lang/String;)I

    .line 735
    :cond_0
    iget-object v0, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    new-instance v1, Landroid/tts/TtsService$SpeechItem;

    invoke-direct {v1, p1, p2, p3, p5}, Landroid/tts/TtsService$SpeechItem;-><init>(Ljava/lang/String;JLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    iget-object v0, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 737
    invoke-direct {p0}, Landroid/tts/TtsService;->processSpeechQueue()V

    .line 739
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private processSpeechQueue()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1054
    const/4 v2, 0x0

    .line 1055
    .local v2, speechQueueAvailable:Z
    monitor-enter p0

    .line 1056
    :try_start_0
    iget-object v4, p0, Landroid/tts/TtsService;->mSynthBusy:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1058
    monitor-exit p0

    .line 1145
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    :try_start_1
    iget-object v4, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v5, 0x1388

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    .line 1064
    if-nez v2, :cond_2

    .line 1065
    const-string v4, "TtsService"

    const-string v5, "processSpeechQueue - Speech queue is unavailable."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1141
    if-eqz v2, :cond_0

    .line 1142
    iget-object v4, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1060
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1068
    :cond_2
    :try_start_3
    iget-object v4, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v8, :cond_3

    .line 1069
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;

    .line 1070
    iget-object v4, p0, Landroid/tts/TtsService;->mKillList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1071
    invoke-direct {p0}, Landroid/tts/TtsService;->broadcastTtsQueueProcessingCompleted()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1141
    if-eqz v2, :cond_0

    .line 1142
    iget-object v4, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1075
    :cond_3
    :try_start_4
    iget-object v4, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/tts/TtsService$SpeechItem;

    iput-object v4, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    .line 1076
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;

    .line 1077
    iget-object v4, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    invoke-direct {p0, v4}, Landroid/tts/TtsService;->getSoundResource(Landroid/tts/TtsService$SpeechItem;)Landroid/tts/TtsService$SoundResource;

    move-result-object v3

    .line 1081
    .local v3, sr:Landroid/tts/TtsService$SoundResource;
    if-nez v3, :cond_8

    .line 1082
    iget-object v4, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    iget v4, v4, Landroid/tts/TtsService$SpeechItem;->mType:I

    if-nez v4, :cond_5

    .line 1083
    iget-object v4, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    invoke-direct {p0, v4}, Landroid/tts/TtsService;->splitCurrentTextIfNeeded(Landroid/tts/TtsService$SpeechItem;)Landroid/tts/TtsService$SpeechItem;

    move-result-object v4

    iput-object v4, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    .line 1084
    iget-object v4, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    invoke-direct {p0, v4}, Landroid/tts/TtsService;->speakInternalOnly(Landroid/tts/TtsService$SpeechItem;)V

    .line 1132
    :goto_1
    iget-object v4, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 1133
    iget-object v4, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1141
    :cond_4
    if-eqz v2, :cond_0

    .line 1142
    iget-object v4, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1085
    :cond_5
    :try_start_5
    iget-object v4, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    iget v4, v4, Landroid/tts/TtsService$SpeechItem;->mType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 1086
    iget-object v4, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    invoke-direct {p0, v4}, Landroid/tts/TtsService;->synthToFileInternalOnly(Landroid/tts/TtsService$SpeechItem;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 1135
    .end local v3           #sr:Landroid/tts/TtsService$SoundResource;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1136
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_6
    const-string v4, "TtsService"

    const-string v5, "TTS processSpeechQueue: tryLock interrupted"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1141
    if-eqz v2, :cond_0

    .line 1142
    iget-object v4, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1089
    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v3       #sr:Landroid/tts/TtsService$SoundResource;
    :cond_6
    :try_start_7
    iget-object v4, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    invoke-direct {p0, v4}, Landroid/tts/TtsService;->silence(Landroid/tts/TtsService$SpeechItem;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 1141
    .end local v3           #sr:Landroid/tts/TtsService$SoundResource;
    :catchall_1
    move-exception v4

    if-eqz v2, :cond_7

    .line 1142
    iget-object v5, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_7
    throw v4

    .line 1092
    .restart local v3       #sr:Landroid/tts/TtsService$SoundResource;
    :cond_8
    :try_start_8
    invoke-direct {p0}, Landroid/tts/TtsService;->cleanUpPlayer()V

    .line 1093
    iget-object v4, v3, Landroid/tts/TtsService$SoundResource;->mSourcePackageName:Ljava/lang/String;

    const-string v5, "android.tts"

    if-ne v4, v5, :cond_9

    .line 1095
    iget v4, v3, Landroid/tts/TtsService$SoundResource;->mResId:I

    invoke-static {p0, v4}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v4

    iput-object v4, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    .line 1116
    :goto_2
    iget-object v4, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v4, :cond_b

    .line 1117
    iget-object v4, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1118
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1141
    if-eqz v2, :cond_0

    .line 1142
    iget-object v4, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1096
    :cond_9
    :try_start_9
    iget-object v4, v3, Landroid/tts/TtsService$SoundResource;->mSourcePackageName:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    if-eqz v4, :cond_a

    .line 1100
    :try_start_a
    iget-object v4, v3, Landroid/tts/TtsService$SoundResource;->mSourcePackageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/tts/TtsService;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0

    move-result-object v0

    .line 1108
    .local v0, ctx:Landroid/content/Context;
    :try_start_b
    iget v4, v3, Landroid/tts/TtsService$SoundResource;->mResId:I

    invoke-static {v0, v4}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v4

    iput-object v4, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_2

    .line 1101
    .end local v0           #ctx:Landroid/content/Context;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 1102
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1103
    iget-object v4, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1105
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0

    .line 1141
    if-eqz v2, :cond_0

    .line 1142
    iget-object v4, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1111
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_a
    :try_start_c
    iget-object v4, v3, Landroid/tts/TtsService$SoundResource;->mFilename:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v4

    iput-object v4, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_2

    .line 1121
    :cond_b
    iget-object v4, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0

    .line 1123
    :try_start_d
    iget-object v4, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v5, v5, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Landroid/tts/TtsService;->getStreamTypeFromParams(Ljava/util/ArrayList;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1124
    iget-object v4, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_1

    .line 1125
    :catch_2
    move-exception v4

    move-object v1, v4

    .line 1126
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_e
    iget-object v4, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1127
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;

    .line 1128
    invoke-direct {p0}, Landroid/tts/TtsService;->cleanUpPlayer()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0

    .line 1141
    if-eqz v2, :cond_0

    .line 1142
    iget-object v4, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0
.end method

.method private setDefaultSettings()V
    .locals 4

    .prologue
    .line 293
    const-string v0, ""

    invoke-direct {p0}, Landroid/tts/TtsService;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Landroid/tts/TtsService;->getDefaultCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/tts/TtsService;->getDefaultLocVariant()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/tts/TtsService;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string v0, ""

    invoke-direct {p0}, Landroid/tts/TtsService;->getDefaultRate()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/tts/TtsService;->setSpeechRate(Ljava/lang/String;I)I

    .line 297
    return-void
.end method

.method private setEngine(Ljava/lang/String;)I
    .locals 21
    .parameter "enginePackageName"

    .prologue
    .line 205
    const-string v20, ""

    .line 206
    .local v20, soFilename:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Landroid/tts/TtsService;->isDefaultEnforced()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    invoke-direct/range {p0 .. p0}, Landroid/tts/TtsService;->getDefaultEngine()Ljava/lang/String;

    move-result-object p1

    .line 211
    :cond_0
    const-string v3, "com.svox.pico"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    const-string v4, "tts_enabled_plugins"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 214
    .local v11, enabledEngines:[Ljava/lang/String;
    const/16 v17, 0x0

    .line 215
    .local v17, isEnabled:Z
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    array-length v3, v11

    if-ge v15, v3, :cond_1

    .line 216
    aget-object v3, v11, v15

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 217
    const/16 v17, 0x1

    .line 221
    :cond_1
    if-nez v17, :cond_2

    .line 224
    const-string p1, "com.svox.pico"

    .line 231
    .end local v11           #enabledEngines:[Ljava/lang/String;
    .end local v15           #i:I
    .end local v17           #isEnabled:Z
    :cond_2
    const-string v3, "com.svox.pico"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 232
    const-string v20, "/system/lib/libttspico.so"

    .line 252
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService;->currentSpeechEngineSOFile:Ljava/lang/String;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 253
    const/4 v3, 0x0

    .line 287
    :goto_2
    return v3

    .line 215
    .restart local v11       #enabledEngines:[Ljava/lang/String;
    .restart local v15       #i:I
    .restart local v17       #isEnabled:Z
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 235
    .end local v11           #enabledEngines:[Ljava/lang/String;
    .end local v15           #i:I
    .end local v17           #isEnabled:Z
    :cond_4
    new-instance v16, Landroid/content/Intent;

    const-string v3, "android.intent.action.START_TTS_ENGINE"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v16, intent:Landroid/content/Intent;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const/4 v3, 0x0

    new-array v13, v3, [Landroid/content/pm/ResolveInfo;

    .line 238
    .local v13, enginesArray:[Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/tts/TtsService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 239
    .local v18, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v19

    .line 240
    .local v19, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v19, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 241
    :cond_5
    const-string v3, "TtsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid TTS Engine Package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v3, -0x1

    goto :goto_2

    .line 244
    :cond_6
    move-object/from16 v0, v19

    move-object v1, v13

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    .end local v13           #enginesArray:[Landroid/content/pm/ResolveInfo;
    check-cast v13, [Landroid/content/pm/ResolveInfo;

    .line 246
    .restart local v13       #enginesArray:[Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    aget-object v3, v13, v3

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 247
    .local v9, aInfo:Landroid/content/pm/ActivityInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 248
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/lib/libtts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_1

    .line 256
    .end local v9           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v13           #enginesArray:[Landroid/content/pm/ResolveInfo;
    .end local v16           #intent:Landroid/content/Intent;
    .end local v18           #pm:Landroid/content/pm/PackageManager;
    .end local v19           #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_7
    new-instance v14, Ljava/io/File;

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v14, f:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8

    .line 258
    const-string v3, "TtsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid TTS Binary: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v3, -0x1

    goto/16 :goto_2

    .line 262
    :cond_8
    sget-object v3, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    if-eqz v3, :cond_9

    .line 263
    sget-object v3, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    invoke-virtual {v3}, Landroid/tts/SynthProxy;->stopSync()I

    .line 264
    sget-object v3, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    invoke-virtual {v3}, Landroid/tts/SynthProxy;->shutdown()V

    .line 265
    const/4 v3, 0x0

    sput-object v3, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    .line 277
    :cond_9
    const-string v12, ""

    .line 278
    .local v12, engineConfig:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/tts/TtsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".providers.SettingsProvider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 280
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_a

    .line 281
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 282
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 283
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_a
    new-instance v3, Landroid/tts/SynthProxy;

    move-object v0, v3

    move-object/from16 v1, v20

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Landroid/tts/SynthProxy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    .line 286
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/tts/TtsService;->currentSpeechEngineSOFile:Ljava/lang/String;

    .line 287
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method private setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "callingApp"
    .parameter "lang"
    .parameter "country"
    .parameter "variant"

    .prologue
    .line 414
    const-string v2, "TtsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TtsService.setLanguage("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v1, -0x1

    .line 417
    .local v1, res:I
    :try_start_0
    invoke-direct {p0}, Landroid/tts/TtsService;->isDefaultEnforced()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    sget-object v2, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    invoke-direct {p0}, Landroid/tts/TtsService;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Landroid/tts/TtsService;->getDefaultCountry()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Landroid/tts/TtsService;->getDefaultLocVariant()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/tts/SynthProxy;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 427
    :goto_0
    return v1

    .line 421
    :cond_0
    sget-object v2, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    invoke-virtual {v2, p2, p3, p4}, Landroid/tts/SynthProxy;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 423
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 425
    .local v0, e:Ljava/lang/NullPointerException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private setPitch(Ljava/lang/String;I)I
    .locals 3
    .parameter "callingApp"
    .parameter "pitch"

    .prologue
    .line 381
    const/4 v1, -0x1

    .line 383
    .local v1, res:I
    :try_start_0
    sget-object v2, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    invoke-virtual {v2, p2}, Landroid/tts/SynthProxy;->setPitch(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 388
    :goto_0
    return v1

    .line 384
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 386
    .local v0, e:Ljava/lang/NullPointerException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private setSpeechRate(Ljava/lang/String;I)I
    .locals 4
    .parameter "callingApp"
    .parameter "rate"

    .prologue
    .line 365
    const/4 v1, -0x1

    .line 367
    .local v1, res:I
    :try_start_0
    invoke-direct {p0}, Landroid/tts/TtsService;->isDefaultEnforced()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    sget-object v2, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    invoke-direct {p0}, Landroid/tts/TtsService;->getDefaultRate()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/tts/SynthProxy;->setSpeechRate(I)I

    move-result v1

    .line 376
    :goto_0
    return v1

    .line 370
    :cond_0
    sget-object v2, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    invoke-virtual {v2, p2}, Landroid/tts/SynthProxy;->setSpeechRate(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 372
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 374
    .local v0, e:Ljava/lang/NullPointerException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private silence(Landroid/tts/TtsService$SpeechItem;)V
    .locals 2
    .parameter "speechItem"

    .prologue
    .line 766
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/tts/TtsService$1SilenceThread;

    invoke-direct {v1, p0, p1}, Landroid/tts/TtsService$1SilenceThread;-><init>(Landroid/tts/TtsService;Landroid/tts/TtsService$SpeechItem;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 767
    .local v0, slnc:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 768
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 769
    return-void
.end method

.method private speak(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I
    .locals 3
    .parameter "callingApp"
    .parameter "text"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p4, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 499
    if-nez p3, :cond_2

    .line 500
    invoke-direct {p0, p1}, Landroid/tts/TtsService;->stop(Ljava/lang/String;)I

    .line 504
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    new-instance v1, Landroid/tts/TtsService$SpeechItem;

    invoke-direct {v1, p1, p2, p4, v2}, Landroid/tts/TtsService$SpeechItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    iget-object v0, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 506
    invoke-direct {p0}, Landroid/tts/TtsService;->processSpeechQueue()V

    .line 508
    :cond_1
    return v2

    .line 501
    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 502
    invoke-direct {p0, p1}, Landroid/tts/TtsService;->stopAll(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private speakInternalOnly(Landroid/tts/TtsService$SpeechItem;)V
    .locals 2
    .parameter "speechItem"

    .prologue
    .line 883
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/tts/TtsService$1SynthThread;

    invoke-direct {v1, p0, p1}, Landroid/tts/TtsService$1SynthThread;-><init>(Landroid/tts/TtsService;Landroid/tts/TtsService$SpeechItem;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 884
    .local v0, synth:Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 885
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 886
    return-void
.end method

.method private splitCurrentTextIfNeeded(Landroid/tts/TtsService$SpeechItem;)Landroid/tts/TtsService$SpeechItem;
    .locals 12
    .parameter "currentSpeechItem"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1026
    iget-object v7, p1, Landroid/tts/TtsService$SpeechItem;->mText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xfa0

    if-ge v7, v8, :cond_0

    move-object v7, p1

    .line 1049
    .end local p0
    :goto_0
    return-object v7

    .line 1029
    .restart local p0
    :cond_0
    iget-object v0, p1, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    .line 1030
    .local v0, callingApp:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1031
    .local v4, splitItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/tts/TtsService$SpeechItem;>;"
    const/4 v6, 0x0

    .line 1032
    .local v6, start:I
    add-int/lit16 v7, v6, 0xfa0

    sub-int v1, v7, v10

    .line 1035
    .local v1, end:I
    :goto_1
    iget-object v7, p1, Landroid/tts/TtsService$SpeechItem;->mText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 1036
    iget-object v7, p1, Landroid/tts/TtsService$SpeechItem;->mText:Ljava/lang/String;

    invoke-virtual {v7, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1037
    .local v5, splitText:Ljava/lang/String;
    new-instance v3, Landroid/tts/TtsService$SpeechItem;

    invoke-direct {v3, v0, v5, v11, v9}, Landroid/tts/TtsService$SpeechItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 1038
    .local v3, splitItem:Landroid/tts/TtsService$SpeechItem;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1039
    move v6, v1

    .line 1040
    add-int/lit16 v7, v6, 0xfa0

    sub-int v1, v7, v10

    goto :goto_1

    .line 1042
    .end local v3           #splitItem:Landroid/tts/TtsService$SpeechItem;
    .end local v5           #splitText:Ljava/lang/String;
    :cond_1
    iget-object v7, p1, Landroid/tts/TtsService$SpeechItem;->mText:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1043
    .restart local v5       #splitText:Ljava/lang/String;
    new-instance v3, Landroid/tts/TtsService$SpeechItem;

    invoke-direct {v3, v0, v5, v11, v9}, Landroid/tts/TtsService$SpeechItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 1044
    .restart local v3       #splitItem:Landroid/tts/TtsService$SpeechItem;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    iget-object v7, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1046
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v2, v7, v10

    .local v2, i:I
    :goto_2
    if-ltz v2, :cond_2

    .line 1047
    iget-object v7, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1046
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1049
    :cond_2
    iget-object v7, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/tts/TtsService$SpeechItem;

    move-object v7, p0

    goto :goto_0
.end method

.method private stop(Ljava/lang/String;)I
    .locals 11
    .parameter "callingApp"

    .prologue
    const/4 v10, 0x1

    .line 541
    const/4 v3, -0x1

    .line 542
    .local v3, result:I
    const/4 v5, 0x0

    .line 544
    .local v5, speechQueueAvailable:Z
    :try_start_0
    iget-object v6, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v7, 0x1388

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    .line 546
    if-eqz v5, :cond_5

    .line 547
    const-string v6, "TtsService"

    const-string v7, "Stopping"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v6, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v2, v6, v10

    .local v2, i:I
    :goto_0
    const/4 v6, -0x1

    if-le v2, v6, :cond_1

    .line 549
    iget-object v6, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/tts/TtsService$SpeechItem;

    iget-object v6, v6, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 550
    iget-object v6, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 548
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 553
    :cond_1
    iget-object v6, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v6, v6, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-eqz v6, :cond_4

    .line 556
    :try_start_1
    sget-object v6, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    invoke-virtual {v6}, Landroid/tts/SynthProxy;->stop()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 561
    :goto_1
    :try_start_2
    iget-object v6, p0, Landroid/tts/TtsService;->mKillList:Ljava/util/HashMap;

    iget-object v7, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    iget-object v6, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v6, :cond_2

    .line 564
    :try_start_3
    iget-object v6, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->stop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 569
    :cond_2
    :goto_2
    const/4 v6, 0x0

    :try_start_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;

    .line 570
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    .line 574
    :goto_3
    const-string v6, "TtsService"

    const-string v7, "Stopped"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 585
    .end local v2           #i:I
    :goto_4
    if-eqz v5, :cond_3

    .line 586
    iget-object v6, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3
    move v4, v3

    .line 588
    .end local v3           #result:I
    .local v4, result:I
    :goto_5
    return v4

    .line 557
    .end local v4           #result:I
    .restart local v2       #i:I
    .restart local v3       #result:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 559
    .local v1, e1:Ljava/lang/NullPointerException;
    const/4 v3, -0x1

    goto :goto_1

    .line 572
    .end local v1           #e1:Ljava/lang/NullPointerException;
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 576
    .end local v2           #i:I
    :cond_5
    :try_start_5
    const-string v6, "TtsService"

    const-string v7, "TTS stop(): queue locked longer than expected"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 577
    const/4 v3, -0x1

    goto :goto_4

    .line 579
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 580
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_6
    const-string v6, "TtsService"

    const-string v7, "TTS stop: tryLock interrupted"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 585
    if-eqz v5, :cond_6

    .line 586
    iget-object v6, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_6
    move v4, v3

    .line 588
    .end local v3           #result:I
    .restart local v4       #result:I
    goto :goto_5

    .line 585
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v4           #result:I
    .restart local v3       #result:I
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_7

    .line 586
    iget-object v6, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_7
    move v4, v3

    .line 588
    .end local v3           #result:I
    .restart local v4       #result:I
    goto :goto_5

    .line 565
    .end local v4           #result:I
    .restart local v2       #i:I
    .restart local v3       #result:I
    :catch_2
    move-exception v6

    goto :goto_2
.end method

.method private stopAll(Ljava/lang/String;)I
    .locals 12
    .parameter "callingApp"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    .line 656
    const/4 v3, -0x1

    .line 657
    .local v3, result:I
    const/4 v5, 0x0

    .line 659
    .local v5, speechQueueAvailable:Z
    :try_start_0
    iget-object v6, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v7, 0x1388

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    .line 661
    if-eqz v5, :cond_6

    .line 662
    iget-object v6, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v2, v6, v10

    .local v2, i:I
    :goto_0
    const/4 v6, -0x1

    if-le v2, v6, :cond_1

    .line 663
    iget-object v6, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/tts/TtsService$SpeechItem;

    iget v6, v6, Landroid/tts/TtsService$SpeechItem;->mType:I

    if-eq v6, v11, :cond_0

    .line 664
    iget-object v6, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 662
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 667
    :cond_1
    iget-object v6, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    iget v6, v6, Landroid/tts/TtsService$SpeechItem;->mType:I

    if-ne v6, v11, :cond_2

    iget-object v6, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v6, v6, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-eqz v6, :cond_5

    .line 671
    :cond_2
    :try_start_1
    sget-object v6, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    invoke-virtual {v6}, Landroid/tts/SynthProxy;->stop()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 676
    :goto_1
    :try_start_2
    iget-object v6, p0, Landroid/tts/TtsService;->mKillList:Ljava/util/HashMap;

    iget-object v7, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    iget-object v6, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v6, :cond_3

    .line 679
    :try_start_3
    iget-object v6, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->stop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 684
    :cond_3
    :goto_2
    const/4 v6, 0x0

    :try_start_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;

    .line 685
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    .line 689
    :goto_3
    const-string v6, "TtsService"

    const-string v7, "Stopped all"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 700
    .end local v2           #i:I
    :goto_4
    if-eqz v5, :cond_4

    .line 701
    iget-object v6, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_4
    move v4, v3

    .line 703
    .end local v3           #result:I
    .local v4, result:I
    :goto_5
    return v4

    .line 672
    .end local v4           #result:I
    .restart local v2       #i:I
    .restart local v3       #result:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 674
    .local v1, e1:Ljava/lang/NullPointerException;
    const/4 v3, -0x1

    goto :goto_1

    .line 687
    .end local v1           #e1:Ljava/lang/NullPointerException;
    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 691
    .end local v2           #i:I
    :cond_6
    :try_start_5
    const-string v6, "TtsService"

    const-string v7, "TTS stopAll(): queue locked longer than expected"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 692
    const/4 v3, -0x1

    goto :goto_4

    .line 694
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 695
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_6
    const-string v6, "TtsService"

    const-string v7, "TTS stopAll: tryLock interrupted"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 700
    if-eqz v5, :cond_7

    .line 701
    iget-object v6, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_7
    move v4, v3

    .line 703
    .end local v3           #result:I
    .restart local v4       #result:I
    goto :goto_5

    .line 700
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v4           #result:I
    .restart local v3       #result:I
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_8

    .line 701
    iget-object v6, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_8
    move v4, v3

    .line 703
    .end local v3           #result:I
    .restart local v4       #result:I
    goto :goto_5

    .line 680
    .end local v4           #result:I
    .restart local v2       #i:I
    .restart local v3       #result:I
    :catch_2
    move-exception v6

    goto :goto_2
.end method

.method private synthToFileInternalOnly(Landroid/tts/TtsService$SpeechItem;)V
    .locals 2
    .parameter "speechItem"

    .prologue
    .line 983
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/tts/TtsService$2SynthThread;

    invoke-direct {v1, p0, p1}, Landroid/tts/TtsService$2SynthThread;-><init>(Landroid/tts/TtsService;Landroid/tts/TtsService$SpeechItem;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 984
    .local v0, synth:Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 985
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 986
    return-void
.end method

.method private synthesizeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 9
    .parameter "callingApp"
    .parameter "text"
    .parameter
    .parameter "filename"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p3, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1188
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa

    if-le v0, v1, :cond_0

    move v0, v3

    .line 1216
    :goto_0
    return v0

    .line 1193
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa0

    if-lt v0, v1, :cond_1

    move v0, v3

    .line 1194
    goto :goto_0

    .line 1198
    :cond_1
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1199
    .local v7, tempFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1200
    const-string v0, "TtsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exists, deleting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1203
    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1204
    const-string v0, "TtsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to synthesize to file: can\'t create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 1205
    goto :goto_0

    .line 1207
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1212
    iget-object v8, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    new-instance v0, Landroid/tts/TtsService$SpeechItem;

    const/4 v4, 0x3

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/tts/TtsService$SpeechItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    iget-object v0, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1214
    invoke-direct {p0}, Landroid/tts/TtsService;->processSpeechQueue()V

    .line 1216
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 1208
    .end local v7           #tempFile:Ljava/io/File;
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 1209
    .local v6, e:Ljava/io/IOException;
    const-string v0, "TtsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 1210
    goto/16 :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .parameter "intent"

    .prologue
    .line 1221
    const-string v2, "android.intent.action.START_TTS_SERVICE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1222
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1223
    .local v0, category:Ljava/lang/String;
    const-string v2, "android.intent.category.TTS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1224
    iget-object v2, p0, Landroid/tts/TtsService;->mBinder:Landroid/speech/tts/ITts$Stub;

    .line 1228
    .end local v0           #category:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 8
    .parameter "arg0"

    .prologue
    .line 710
    iget-object v1, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    .line 711
    .local v1, currentSpeechItemCopy:Landroid/tts/TtsService$SpeechItem;
    if-eqz v1, :cond_2

    .line 712
    iget-object v0, v1, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    .line 713
    .local v0, callingApp:Ljava/lang/String;
    iget-object v4, v1, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    .line 714
    .local v4, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, ""

    .line 715
    .local v5, utteranceId:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 716
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v2, v6, :cond_1

    .line 717
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 718
    .local v3, param:Ljava/lang/String;
    const-string v6, "utteranceId"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 719
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #utteranceId:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 716
    .restart local v5       #utteranceId:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 723
    .end local v2           #i:I
    .end local v3           #param:Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 724
    invoke-direct {p0, v5, v0}, Landroid/tts/TtsService;->dispatchUtteranceCompletedCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    .end local v0           #callingApp:Ljava/lang/String;
    .end local v4           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #utteranceId:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Landroid/tts/TtsService;->processSpeechQueue()V

    .line 728
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 159
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 160
    const-string v0, "TtsService"

    const-string v1, "TtsService.onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0}, Landroid/tts/TtsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/tts/TtsService;->mResolver:Landroid/content/ContentResolver;

    .line 164
    const-string v0, ""

    iput-object v0, p0, Landroid/tts/TtsService;->currentSpeechEngineSOFile:Ljava/lang/String;

    .line 165
    invoke-direct {p0}, Landroid/tts/TtsService;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/tts/TtsService;->setEngine(Ljava/lang/String;)I

    .line 167
    iput-object p0, p0, Landroid/tts/TtsService;->mSelf:Landroid/tts/TtsService;

    .line 168
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;

    .line 169
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/tts/TtsService;->mSynthBusy:Ljava/lang/Boolean;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/tts/TtsService;->mEarcons:Ljava/util/HashMap;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/tts/TtsService;->mUtterances:Ljava/util/HashMap;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/tts/TtsService;->mCallbacksMap:Ljava/util/HashMap;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    .line 176
    iput-object v3, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    .line 177
    iput-object v3, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/tts/TtsService;->mKillList:Ljava/util/HashMap;

    .line 180
    invoke-direct {p0}, Landroid/tts/TtsService;->setDefaultSettings()V

    .line 181
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 187
    invoke-direct {p0}, Landroid/tts/TtsService;->killAllUtterances()I

    .line 190
    invoke-direct {p0}, Landroid/tts/TtsService;->cleanUpPlayer()V

    .line 192
    sget-object v0, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    invoke-virtual {v0}, Landroid/tts/SynthProxy;->shutdown()V

    .line 195
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    .line 198
    iget-object v0, p0, Landroid/tts/TtsService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 200
    const-string v0, "TtsService"

    const-string v1, "onDestroy() completed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method
