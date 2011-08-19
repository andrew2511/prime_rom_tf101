.class public Landroid/speech/tts/TextToSpeech;
.super Ljava/lang/Object;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TextToSpeech$Engine;,
        Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;,
        Landroid/speech/tts/TextToSpeech$OnInitListener;
    }
.end annotation


# static fields
.field public static final ACTION_TTS_QUEUE_PROCESSING_COMPLETED:Ljava/lang/String; = "android.speech.tts.TTS_QUEUE_PROCESSING_COMPLETED"

.field public static final ERROR:I = -0x1

.field public static final LANG_AVAILABLE:I = 0x0

.field public static final LANG_COUNTRY_AVAILABLE:I = 0x1

.field public static final LANG_COUNTRY_VAR_AVAILABLE:I = 0x2

.field public static final LANG_MISSING_DATA:I = -0x1

.field public static final LANG_NOT_SUPPORTED:I = -0x2

.field public static final QUEUE_ADD:I = 0x1

.field public static final QUEUE_FLUSH:I

.field public static final SUCCESS:I


# instance fields
.field private mCachedParams:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mITts:Landroid/speech/tts/ITts;

.field private mITtscallback:Landroid/speech/tts/ITtsCallback;

.field private mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mPackageName:Ljava/lang/String;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mStartLock:Ljava/lang/Object;

.field private mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    .registers 7
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    .line 429
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mITtscallback:Landroid/speech/tts/ITtsCallback;

    .line 430
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    .line 431
    const-string v0, ""

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    .line 432
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 433
    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 434
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    .line 452
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    .line 453
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    .line 454
    iput-object p2, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 456
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    .line 457
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const-string/jumbo v1, "rate"

    aput-object v1, v0, v2

    .line 458
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "language"

    aput-object v2, v0, v1

    .line 459
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "country"

    aput-object v2, v0, v1

    .line 460
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string/jumbo v2, "variant"

    aput-object v2, v0, v1

    .line 461
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string/jumbo v2, "streamType"

    aput-object v2, v0, v1

    .line 462
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string/jumbo v2, "utteranceId"

    aput-object v2, v0, v1

    .line 463
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "engine"

    aput-object v2, v0, v1

    .line 464
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string/jumbo v2, "pitch"

    aput-object v2, v0, v1

    .line 465
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0x10

    const-string/jumbo v2, "volume"

    aput-object v2, v0, v1

    .line 466
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0x12

    const-string v2, "pan"

    aput-object v2, v0, v1

    .line 471
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    .line 472
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    .line 473
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    .line 474
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    .line 475
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0x9

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 477
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, ""

    aput-object v2, v0, v1

    .line 478
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, ""

    aput-object v2, v0, v1

    .line 479
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xf

    const-string v2, "100"

    aput-object v2, v0, v1

    .line 480
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0x11

    const-string v2, "1.0"

    aput-object v2, v0, v1

    .line 481
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0x13

    const-string v2, "0.0"

    aput-object v2, v0, v1

    .line 483
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 484
    return-void
.end method

.method static synthetic access$000(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/ITts;)Landroid/speech/tts/ITts;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    return-object p1
.end method

.method static synthetic access$202(Landroid/speech/tts/TextToSpeech;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    return p1
.end method

.method static synthetic access$300(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$OnInitListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-object v0
.end method

.method static synthetic access$302(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$OnInitListener;)Landroid/speech/tts/TextToSpeech$OnInitListener;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-object p1
.end method

.method private initTts()V
    .registers 6

    .prologue
    .line 488
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 491
    new-instance v2, Landroid/speech/tts/TextToSpeech$1;

    invoke-direct {v2, p0}, Landroid/speech/tts/TextToSpeech$1;-><init>(Landroid/speech/tts/TextToSpeech;)V

    iput-object v2, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 515
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.START_TTS_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.TTS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 518
    .local v0, bound:Z
    if-nez v0, :cond_33

    .line 519
    const-string v2, "TextToSpeech.java"

    const-string v3, "initTts() failed to bind to service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    if-eqz v2, :cond_32

    .line 521
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/speech/tts/TextToSpeech$OnInitListener;->onInit(I)V

    .line 528
    :cond_32
    :goto_32
    return-void

    .line 525
    :cond_33
    const-string v2, "TextToSpeech.java"

    const-string v3, "initTts() successfully bound to service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method private resetCachedParams()V
    .registers 4

    .prologue
    .line 1326
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0x9

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1328
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, ""

    aput-object v2, v0, v1

    .line 1329
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0x11

    const-string v2, "1.0"

    aput-object v2, v0, v1

    .line 1330
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0x13

    const-string v2, "0.0"

    aput-object v2, v0, v1

    .line 1331
    return-void
.end method

.method private setCachedParam(Ljava/util/HashMap;Ljava/lang/String;I)V
    .registers 7
    .parameter
    .parameter "key"
    .parameter "keyIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1338
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1339
    .local v0, extra:Ljava/lang/String;
    if-eqz v0, :cond_e

    .line 1340
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    add-int/lit8 v2, p3, 0x1

    aput-object v0, v1, v2

    .line 1342
    :cond_e
    return-void
.end method


# virtual methods
.method public addEarcon(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter "earcon"
    .parameter "filename"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 725
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 726
    :try_start_5
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_c

    .line 727
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_3e

    move v1, v5

    .line 751
    :goto_b
    return v1

    .line 730
    :cond_c
    :try_start_c
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2}, Landroid/speech/tts/ITts;->addEarconFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_3e
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_13} :catch_2b
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_13} :catch_41

    .line 731
    :try_start_13
    monitor-exit v1

    move v1, v4

    goto :goto_b

    .line 732
    :catch_16
    move-exception v2

    move-object v0, v2

    .line 734
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 736
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 737
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 751
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_28
    monitor-exit v1

    move v1, v5

    goto :goto_b

    .line 738
    :catch_2b
    move-exception v2

    move-object v0, v2

    .line 740
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 742
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 743
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_28

    .line 752
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_3e
    move-exception v2

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_13 .. :try_end_40} :catchall_3e

    throw v2

    .line 744
    :catch_41
    move-exception v2

    move-object v0, v2

    .line 746
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_43
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 748
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 749
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_3e

    goto :goto_28
.end method

.method public addEarcon(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .parameter "earcon"
    .parameter "packagename"
    .parameter "resourceId"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 678
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 679
    :try_start_5
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_c

    .line 680
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_3e

    move v1, v5

    .line 704
    :goto_b
    return v1

    .line 683
    :cond_c
    :try_start_c
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2, p3}, Landroid/speech/tts/ITts;->addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_3e
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_13} :catch_2b
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_13} :catch_41

    .line 684
    :try_start_13
    monitor-exit v1

    move v1, v4

    goto :goto_b

    .line 685
    :catch_16
    move-exception v2

    move-object v0, v2

    .line 687
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 689
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 690
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 704
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_28
    monitor-exit v1

    move v1, v5

    goto :goto_b

    .line 691
    :catch_2b
    move-exception v2

    move-object v0, v2

    .line 693
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 695
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 696
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_28

    .line 705
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_3e
    move-exception v2

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_13 .. :try_end_40} :catchall_3e

    throw v2

    .line 697
    :catch_41
    move-exception v2

    move-object v0, v2

    .line 699
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_43
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 701
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 702
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_3e

    goto :goto_28
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter "text"
    .parameter "filename"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 621
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 622
    :try_start_5
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_c

    .line 623
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_3e

    move v1, v5

    .line 647
    :goto_b
    return v1

    .line 626
    :cond_c
    :try_start_c
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2}, Landroid/speech/tts/ITts;->addSpeechFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_3e
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_13} :catch_2b
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_13} :catch_41

    .line 627
    :try_start_13
    monitor-exit v1

    move v1, v4

    goto :goto_b

    .line 628
    :catch_16
    move-exception v2

    move-object v0, v2

    .line 630
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 632
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 633
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 647
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_28
    monitor-exit v1

    move v1, v5

    goto :goto_b

    .line 634
    :catch_2b
    move-exception v2

    move-object v0, v2

    .line 636
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 638
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 639
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_28

    .line 648
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_3e
    move-exception v2

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_13 .. :try_end_40} :catchall_3e

    throw v2

    .line 640
    :catch_41
    move-exception v2

    move-object v0, v2

    .line 642
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_43
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 644
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 645
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_3e

    goto :goto_28
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .parameter "text"
    .parameter "packagename"
    .parameter "resourceId"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 574
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 575
    :try_start_5
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_c

    .line 576
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_3e

    move v1, v5

    .line 600
    :goto_b
    return v1

    .line 579
    :cond_c
    :try_start_c
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2, p3}, Landroid/speech/tts/ITts;->addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_3e
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_13} :catch_2b
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_13} :catch_41

    .line 580
    :try_start_13
    monitor-exit v1

    move v1, v4

    goto :goto_b

    .line 581
    :catch_16
    move-exception v2

    move-object v0, v2

    .line 583
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 585
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 586
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 600
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_28
    monitor-exit v1

    move v1, v5

    goto :goto_b

    .line 587
    :catch_2b
    move-exception v2

    move-object v0, v2

    .line 589
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 591
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 592
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_28

    .line 601
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_3e
    move-exception v2

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_13 .. :try_end_40} :catchall_3e

    throw v2

    .line 593
    :catch_41
    move-exception v2

    move-object v0, v2

    .line 595
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_43
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 597
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 598
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_3e

    goto :goto_28
.end method

.method public areDefaultsEnforced()Z
    .registers 7

    .prologue
    .line 1481
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1482
    const/4 v0, 0x0

    .line 1483
    .local v0, defaultsEnforced:Z
    :try_start_4
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_b

    .line 1484
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_3d

    move v1, v0

    .line 1507
    .end local v0           #defaultsEnforced:Z
    .local v1, defaultsEnforced:I
    :goto_a
    return v1

    .line 1487
    .end local v1           #defaultsEnforced:I
    .restart local v0       #defaultsEnforced:Z
    :cond_b
    :try_start_b
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v4}, Landroid/speech/tts/ITts;->areDefaultsEnforced()Z
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_54
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_10} :catch_29
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_10} :catch_40

    move-result v0

    .line 1507
    :try_start_11
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_3d

    move v1, v0

    .restart local v1       #defaultsEnforced:I
    goto :goto_a

    .line 1488
    .end local v1           #defaultsEnforced:I
    :catch_14
    move-exception v4

    move-object v2, v4

    .line 1490
    .local v2, e:Landroid/os/RemoteException;
    :try_start_16
    const-string v4, "TextToSpeech.java - areDefaultsEnforced"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1492
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1493
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_54

    .line 1507
    :try_start_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_3d

    .end local v2           #e:Landroid/os/RemoteException;
    :goto_27
    move v1, v0

    .restart local v1       #defaultsEnforced:I
    goto :goto_a

    .line 1494
    .end local v1           #defaultsEnforced:I
    :catch_29
    move-exception v4

    move-object v2, v4

    .line 1496
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_2b
    const-string v4, "TextToSpeech.java - areDefaultsEnforced"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1498
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1499
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_54

    .line 1507
    :try_start_3b
    monitor-exit v3

    goto :goto_27

    .line 1509
    .end local v2           #e:Ljava/lang/NullPointerException;
    :catchall_3d
    move-exception v4

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_3d

    throw v4

    .line 1500
    :catch_40
    move-exception v4

    move-object v2, v4

    .line 1502
    .local v2, e:Ljava/lang/IllegalStateException;
    :try_start_42
    const-string v4, "TextToSpeech.java - areDefaultsEnforced"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1504
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1505
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_52
    .catchall {:try_start_42 .. :try_end_52} :catchall_54

    .line 1507
    :try_start_52
    monitor-exit v3

    goto :goto_27

    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catchall_54
    move-exception v4

    monitor-exit v3
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_3d

    goto :goto_27
.end method

.method public getDefaultEngine()Ljava/lang/String;
    .registers 7

    .prologue
    .line 1442
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1443
    :try_start_3
    const-string v1, ""

    .line 1444
    .local v1, engineName:Ljava/lang/String;
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_c

    .line 1445
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_29

    move-object v2, v1

    .line 1468
    .end local v1           #engineName:Ljava/lang/String;
    .local v2, engineName:Ljava/lang/String;
    :goto_b
    return-object v2

    .line 1448
    .end local v2           #engineName:Ljava/lang/String;
    .restart local v1       #engineName:Ljava/lang/String;
    :cond_c
    :try_start_c
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v4}, Landroid/speech/tts/ITts;->getDefaultEngine()Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_54
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_11} :catch_2c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_11} :catch_40

    move-result-object v1

    .line 1468
    :try_start_12
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_29

    :goto_13
    move-object v2, v1

    .end local v1           #engineName:Ljava/lang/String;
    .restart local v2       #engineName:Ljava/lang/String;
    goto :goto_b

    .line 1449
    .end local v2           #engineName:Ljava/lang/String;
    .restart local v1       #engineName:Ljava/lang/String;
    :catch_15
    move-exception v4

    move-object v0, v4

    .line 1451
    .local v0, e:Landroid/os/RemoteException;
    :try_start_17
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1453
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1454
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_54

    .line 1468
    :try_start_27
    monitor-exit v3

    goto :goto_13

    .line 1470
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #engineName:Ljava/lang/String;
    :catchall_29
    move-exception v4

    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_29

    throw v4

    .line 1455
    .restart local v1       #engineName:Ljava/lang/String;
    :catch_2c
    move-exception v4

    move-object v0, v4

    .line 1457
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_2e
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1459
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1460
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_54

    .line 1468
    :try_start_3e
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_29

    goto :goto_13

    .line 1461
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_40
    move-exception v4

    move-object v0, v4

    .line 1463
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_42
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1465
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1466
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_52
    .catchall {:try_start_42 .. :try_end_52} :catchall_54

    .line 1468
    :try_start_52
    monitor-exit v3

    goto :goto_13

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_54
    move-exception v4

    monitor-exit v3
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_29

    goto :goto_13
.end method

.method public getLanguage()Ljava/util/Locale;
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x3

    .line 1175
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1176
    :try_start_6
    iget-boolean v3, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v3, :cond_d

    .line 1177
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_76

    move-object v2, v8

    .line 1212
    :goto_c
    return-object v2

    .line 1181
    :cond_d
    :try_start_d
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_37

    .line 1182
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v3}, Landroid/speech/tts/ITts;->getLanguage()[Ljava/lang/String;

    move-result-object v1

    .line 1183
    .local v1, locStrings:[Ljava/lang/String;
    if-eqz v1, :cond_34

    array-length v3, v1

    if-ne v3, v5, :cond_34

    .line 1184
    new-instance v3, Ljava/util/Locale;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_d .. :try_end_31} :catchall_76
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_31} :catch_4e
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_31} :catch_63
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_31} :catch_79

    :try_start_31
    monitor-exit v2

    move-object v2, v3

    goto :goto_c

    .line 1186
    :cond_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_76

    move-object v2, v8

    goto :goto_c

    .line 1189
    .end local v1           #locStrings:[Ljava/lang/String;
    :cond_37
    :try_start_37
    new-instance v3, Ljava/util/Locale;

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_37 .. :try_end_4b} :catchall_76
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_4b} :catch_4e
    .catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_4b} :catch_63
    .catch Ljava/lang/IllegalStateException; {:try_start_37 .. :try_end_4b} :catch_79

    :try_start_4b
    monitor-exit v2

    move-object v2, v3

    goto :goto_c

    .line 1193
    :catch_4e
    move-exception v3

    move-object v0, v3

    .line 1195
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "TextToSpeech.java - getLanguage"

    const-string v4, "RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1197
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1198
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 1212
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_60
    monitor-exit v2

    move-object v2, v8

    goto :goto_c

    .line 1199
    :catch_63
    move-exception v3

    move-object v0, v3

    .line 1201
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "TextToSpeech.java - getLanguage"

    const-string v4, "NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1203
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1204
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_60

    .line 1213
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_76
    move-exception v3

    monitor-exit v2
    :try_end_78
    .catchall {:try_start_4b .. :try_end_78} :catchall_76

    throw v3

    .line 1205
    :catch_79
    move-exception v3

    move-object v0, v3

    .line 1207
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_7b
    const-string v3, "TextToSpeech.java - getLanguage"

    const-string v4, "IllegalStateException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1209
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1210
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_8b
    .catchall {:try_start_7b .. :try_end_8b} :catchall_76

    goto :goto_60
.end method

.method public isLanguageAvailable(Ljava/util/Locale;)I
    .registers 11
    .parameter "loc"

    .prologue
    .line 1227
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1228
    const/4 v1, -0x2

    .line 1229
    .local v1, result:I
    :try_start_4
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_b

    .line 1230
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_36

    move v2, v1

    .line 1254
    .end local v1           #result:I
    .local v2, result:I
    :goto_a
    return v2

    .line 1233
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_b
    :try_start_b
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/speech/tts/ITts;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_61
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1e} :catch_22
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_1e} :catch_39
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_1e} :catch_4d

    move-result v1

    .line 1254
    :try_start_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_36

    :goto_20
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_a

    .line 1235
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_22
    move-exception v4

    move-object v0, v4

    .line 1237
    .local v0, e:Landroid/os/RemoteException;
    :try_start_24
    const-string v4, "TextToSpeech.java - isLanguageAvailable"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1239
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1240
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_61

    .line 1254
    :try_start_34
    monitor-exit v3

    goto :goto_20

    .line 1256
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_36
    move-exception v4

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_36

    throw v4

    .line 1241
    :catch_39
    move-exception v4

    move-object v0, v4

    .line 1243
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_3b
    const-string v4, "TextToSpeech.java - isLanguageAvailable"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1245
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1246
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_4b
    .catchall {:try_start_3b .. :try_end_4b} :catchall_61

    .line 1254
    :try_start_4b
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_36

    goto :goto_20

    .line 1247
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_4d
    move-exception v4

    move-object v0, v4

    .line 1249
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_4f
    const-string v4, "TextToSpeech.java - isLanguageAvailable"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1251
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1252
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5f
    .catchall {:try_start_4f .. :try_end_5f} :catchall_61

    .line 1254
    :try_start_5f
    monitor-exit v3

    goto :goto_20

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_61
    move-exception v4

    monitor-exit v3
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_36

    goto :goto_20
.end method

.method public isSpeaking()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 935
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 936
    :try_start_4
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_b

    .line 937
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_3c

    move v1, v4

    .line 960
    :goto_a
    return v1

    .line 940
    :cond_b
    :try_start_b
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v2}, Landroid/speech/tts/ITts;->isSpeaking()Z
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_3c
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_10} :catch_29
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_10} :catch_3f

    move-result v2

    :try_start_11
    monitor-exit v1

    move v1, v2

    goto :goto_a

    .line 941
    :catch_14
    move-exception v2

    move-object v0, v2

    .line 943
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - isSpeaking"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 945
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 946
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 960
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_26
    monitor-exit v1

    move v1, v4

    goto :goto_a

    .line 947
    :catch_29
    move-exception v2

    move-object v0, v2

    .line 949
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - isSpeaking"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 951
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 952
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_26

    .line 961
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_3c
    move-exception v2

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_11 .. :try_end_3e} :catchall_3c

    throw v2

    .line 953
    :catch_3f
    move-exception v2

    move-object v0, v2

    .line 955
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_41
    const-string v2, "TextToSpeech.java - isSpeaking"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 957
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 958
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_51
    .catchall {:try_start_41 .. :try_end_51} :catchall_3c

    goto :goto_26
.end method

.method public playEarcon(Ljava/lang/String;ILjava/util/HashMap;)I
    .registers 12
    .parameter "earcon"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 835
    .local p3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 836
    const/4 v2, -0x1

    .line 837
    .local v2, result:I
    :try_start_4
    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_b

    .line 838
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_5a

    move v3, v2

    .line 871
    .end local v2           #result:I
    .local v3, result:I
    :goto_a
    return v3

    .line 841
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_b
    if-eqz p3, :cond_34

    :try_start_d
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_34

    .line 842
    const-string/jumbo v5, "streamType"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 843
    .local v1, extra:Ljava/lang/String;
    if-eqz v1, :cond_24

    .line 844
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0x9

    aput-object v1, v5, v6

    .line 846
    :cond_24
    const-string/jumbo v5, "streamType"

    const/16 v6, 0x8

    invoke-direct {p0, p3, v5, v6}, Landroid/speech/tts/TextToSpeech;->setCachedParam(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 847
    const-string/jumbo v5, "utteranceId"

    const/16 v6, 0xa

    invoke-direct {p0, p3, v5, v6}, Landroid/speech/tts/TextToSpeech;->setCachedParam(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 850
    .end local v1           #extra:Ljava/lang/String;
    :cond_34
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v5, v6, p1, p2, v7}, Landroid/speech/tts/ITts;->playEarcon(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_8b
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_3c} :catch_43
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_3c} :catch_5d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_3c} :catch_74

    move-result v2

    .line 870
    :try_start_3d
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 871
    monitor-exit v4
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_5a

    :goto_41
    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_a

    .line 851
    .end local v3           #result:I
    .restart local v2       #result:I
    :catch_43
    move-exception v5

    move-object v0, v5

    .line 853
    .local v0, e:Landroid/os/RemoteException;
    :try_start_45
    const-string v5, "TextToSpeech.java - playEarcon"

    const-string v6, "RemoteException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 855
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 856
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_8b

    .line 870
    :try_start_55
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 871
    monitor-exit v4

    goto :goto_41

    .line 873
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_5a
    move-exception v5

    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_5a

    throw v5

    .line 857
    :catch_5d
    move-exception v5

    move-object v0, v5

    .line 859
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_5f
    const-string v5, "TextToSpeech.java - playEarcon"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 861
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 862
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_6f
    .catchall {:try_start_5f .. :try_end_6f} :catchall_8b

    .line 870
    :try_start_6f
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 871
    monitor-exit v4
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_5a

    goto :goto_41

    .line 863
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_74
    move-exception v5

    move-object v0, v5

    .line 865
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_76
    const-string v5, "TextToSpeech.java - playEarcon"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 867
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 868
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_86
    .catchall {:try_start_76 .. :try_end_86} :catchall_8b

    .line 870
    :try_start_86
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 871
    monitor-exit v4

    goto :goto_41

    .line 870
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_8b
    move-exception v5

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 871
    monitor-exit v4
    :try_end_90
    .catchall {:try_start_86 .. :try_end_90} :catchall_5a

    goto :goto_41
.end method

.method public playSilence(JILjava/util/HashMap;)I
    .registers 15
    .parameter "durationInMs"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 892
    .local p4, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v9

    .line 893
    const/4 v7, -0x1

    .line 894
    .local v7, result:I
    :try_start_4
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v0, :cond_b

    .line 895
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_44

    move v8, v7

    .line 923
    .end local v7           #result:I
    .local v8, result:I
    :goto_a
    return v8

    .line 898
    .end local v8           #result:I
    .restart local v7       #result:I
    :cond_b
    if-eqz p4, :cond_1b

    :try_start_d
    invoke-virtual {p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 899
    const-string/jumbo v0, "utteranceId"

    const/16 v1, 0xa

    invoke-direct {p0, p4, v0, v1}, Landroid/speech/tts/TextToSpeech;->setCachedParam(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 902
    :cond_1b
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    move-wide v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/speech/tts/ITts;->playSilence(Ljava/lang/String;JI[Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_75
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_26} :catch_2d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_26} :catch_47
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_26} :catch_5e

    move-result v7

    .line 922
    :try_start_27
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 923
    monitor-exit v9
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_44

    :goto_2b
    move v8, v7

    .end local v7           #result:I
    .restart local v8       #result:I
    goto :goto_a

    .line 903
    .end local v8           #result:I
    .restart local v7       #result:I
    :catch_2d
    move-exception v0

    move-object v6, v0

    .line 905
    .local v6, e:Landroid/os/RemoteException;
    :try_start_2f
    const-string v0, "TextToSpeech.java - playSilence"

    const-string v1, "RemoteException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 907
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 908
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3f
    .catchall {:try_start_2f .. :try_end_3f} :catchall_75

    .line 922
    :try_start_3f
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 923
    monitor-exit v9

    goto :goto_2b

    .line 925
    .end local v6           #e:Landroid/os/RemoteException;
    :catchall_44
    move-exception v0

    monitor-exit v9
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_44

    throw v0

    .line 909
    :catch_47
    move-exception v0

    move-object v6, v0

    .line 911
    .local v6, e:Ljava/lang/NullPointerException;
    :try_start_49
    const-string v0, "TextToSpeech.java - playSilence"

    const-string v1, "NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 913
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 914
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_59
    .catchall {:try_start_49 .. :try_end_59} :catchall_75

    .line 922
    :try_start_59
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 923
    monitor-exit v9
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_44

    goto :goto_2b

    .line 915
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_5e
    move-exception v0

    move-object v6, v0

    .line 917
    .local v6, e:Ljava/lang/IllegalStateException;
    :try_start_60
    const-string v0, "TextToSpeech.java - playSilence"

    const-string v1, "IllegalStateException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 919
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 920
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_70
    .catchall {:try_start_60 .. :try_end_70} :catchall_75

    .line 922
    :try_start_70
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 923
    monitor-exit v9

    goto :goto_2b

    .line 922
    .end local v6           #e:Ljava/lang/IllegalStateException;
    :catchall_75
    move-exception v0

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 923
    monitor-exit v9
    :try_end_7a
    .catchall {:try_start_70 .. :try_end_7a} :catchall_44

    goto :goto_2b
.end method

.method public setEngineByPackageName(Ljava/lang/String;)I
    .registers 8
    .parameter "enginePackageName"

    .prologue
    .line 1401
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1402
    const/4 v1, -0x1

    .line 1403
    .local v1, result:I
    :try_start_4
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_b

    .line 1404
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_30

    move v2, v1

    .line 1430
    .end local v1           #result:I
    .local v2, result:I
    :goto_a
    return v2

    .line 1407
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_b
    :try_start_b
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v4, p1}, Landroid/speech/tts/ITts;->setEngineByPackageName(Ljava/lang/String;)I

    move-result v1

    .line 1408
    if-nez v1, :cond_19

    .line 1409
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v5, 0xd

    aput-object p1, v4, v5
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_5b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_19} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_19} :catch_33
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_19} :catch_47

    .line 1430
    :cond_19
    :try_start_19
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_30

    :goto_1a
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_a

    .line 1411
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_1c
    move-exception v4

    move-object v0, v4

    .line 1413
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1e
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1415
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1416
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_5b

    .line 1430
    :try_start_2e
    monitor-exit v3

    goto :goto_1a

    .line 1432
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_30
    move-exception v4

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_30

    throw v4

    .line 1417
    :catch_33
    move-exception v4

    move-object v0, v4

    .line 1419
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_35
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1421
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1422
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_5b

    .line 1430
    :try_start_45
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_30

    goto :goto_1a

    .line 1423
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_47
    move-exception v4

    move-object v0, v4

    .line 1425
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_49
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1427
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1428
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_59
    .catchall {:try_start_49 .. :try_end_59} :catchall_5b

    .line 1430
    :try_start_59
    monitor-exit v3

    goto :goto_1a

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_5b
    move-exception v4

    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_30

    goto :goto_1a
.end method

.method public setLanguage(Ljava/util/Locale;)I
    .registers 12
    .parameter "loc"

    .prologue
    .line 1113
    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1114
    const/4 v3, -0x2

    .line 1115
    .local v3, result:I
    :try_start_4
    iget-boolean v7, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v7, :cond_b

    .line 1116
    monitor-exit v6

    move v4, v3

    .line 1162
    .end local v3           #result:I
    .local v4, result:I
    :goto_a
    return v4

    .line 1118
    .end local v4           #result:I
    .restart local v3       #result:I
    :cond_b
    if-nez p1, :cond_10

    .line 1119
    monitor-exit v6
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_5a

    move v4, v3

    .end local v3           #result:I
    .restart local v4       #result:I
    goto :goto_a

    .line 1122
    .end local v4           #result:I
    .restart local v3       #result:I
    :cond_10
    :try_start_10
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    .line 1123
    .local v2, language:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    .line 1124
    .local v0, country:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    .line 1129
    .local v5, variant:Ljava/lang/String;
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v8, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    invoke-interface {v7, v2, v0, v5, v8}, Landroid/speech/tts/ITts;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1130
    if-ltz v3, :cond_3b

    .line 1131
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x3

    aput-object v2, v7, v8

    .line 1132
    const/4 v7, 0x1

    if-lt v3, v7, :cond_3e

    .line 1133
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x5

    aput-object v0, v7, v8

    .line 1137
    :goto_33
    const/4 v7, 0x2

    if-lt v3, v7, :cond_5d

    .line 1138
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x7

    aput-object v5, v7, v8
    :try_end_3b
    .catchall {:try_start_10 .. :try_end_3b} :catchall_8d
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_3b} :catch_46
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_3b} :catch_65
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_3b} :catch_79

    .line 1162
    :cond_3b
    :goto_3b
    :try_start_3b
    monitor-exit v6
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_5a

    .end local v0           #country:Ljava/lang/String;
    .end local v2           #language:Ljava/lang/String;
    .end local v5           #variant:Ljava/lang/String;
    :goto_3c
    move v4, v3

    .end local v3           #result:I
    .restart local v4       #result:I
    goto :goto_a

    .line 1135
    .end local v4           #result:I
    .restart local v0       #country:Ljava/lang/String;
    .restart local v2       #language:Ljava/lang/String;
    .restart local v3       #result:I
    .restart local v5       #variant:Ljava/lang/String;
    :cond_3e
    :try_start_3e
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x5

    const-string v9, ""

    aput-object v9, v7, v8
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_8d
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_45} :catch_46
    .catch Ljava/lang/NullPointerException; {:try_start_3e .. :try_end_45} :catch_65
    .catch Ljava/lang/IllegalStateException; {:try_start_3e .. :try_end_45} :catch_79

    goto :goto_33

    .line 1143
    .end local v0           #country:Ljava/lang/String;
    .end local v2           #language:Ljava/lang/String;
    .end local v5           #variant:Ljava/lang/String;
    :catch_46
    move-exception v7

    move-object v1, v7

    .line 1145
    .local v1, e:Landroid/os/RemoteException;
    :try_start_48
    const-string v7, "TextToSpeech.java - setLanguage"

    const-string v8, "RemoteException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1147
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1148
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_8d

    .line 1162
    :try_start_58
    monitor-exit v6

    goto :goto_3c

    .line 1164
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_5a
    move-exception v7

    monitor-exit v6
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_5a

    throw v7

    .line 1140
    .restart local v0       #country:Ljava/lang/String;
    .restart local v2       #language:Ljava/lang/String;
    .restart local v5       #variant:Ljava/lang/String;
    :cond_5d
    :try_start_5d
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x7

    const-string v9, ""

    aput-object v9, v7, v8
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_8d
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_64} :catch_46
    .catch Ljava/lang/NullPointerException; {:try_start_5d .. :try_end_64} :catch_65
    .catch Ljava/lang/IllegalStateException; {:try_start_5d .. :try_end_64} :catch_79

    goto :goto_3b

    .line 1149
    .end local v0           #country:Ljava/lang/String;
    .end local v2           #language:Ljava/lang/String;
    .end local v5           #variant:Ljava/lang/String;
    :catch_65
    move-exception v7

    move-object v1, v7

    .line 1151
    .local v1, e:Ljava/lang/NullPointerException;
    :try_start_67
    const-string v7, "TextToSpeech.java - setLanguage"

    const-string v8, "NullPointerException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1153
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1154
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_77
    .catchall {:try_start_67 .. :try_end_77} :catchall_8d

    .line 1162
    :try_start_77
    monitor-exit v6
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_5a

    goto :goto_3c

    .line 1155
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_79
    move-exception v7

    move-object v1, v7

    .line 1157
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_7b
    const-string v7, "TextToSpeech.java - setLanguage"

    const-string v8, "IllegalStateException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1159
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1160
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_8b
    .catchall {:try_start_7b .. :try_end_8b} :catchall_8d

    .line 1162
    :try_start_8b
    monitor-exit v6

    goto :goto_3c

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catchall_8d
    move-exception v7

    monitor-exit v6
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_5a

    goto :goto_3c
.end method

.method public setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I
    .registers 9
    .parameter "listener"

    .prologue
    .line 1354
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1355
    const/4 v1, -0x1

    .line 1356
    .local v1, result:I
    :try_start_4
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_b

    .line 1357
    monitor-exit v3

    move v2, v1

    .line 1387
    .end local v1           #result:I
    .local v2, result:I
    :goto_a
    return v2

    .line 1359
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_b
    new-instance v4, Landroid/speech/tts/TextToSpeech$2;

    invoke-direct {v4, p0, p1}, Landroid/speech/tts/TextToSpeech$2;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)V

    iput-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITtscallback:Landroid/speech/tts/ITtsCallback;
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_33

    .line 1367
    :try_start_12
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mITtscallback:Landroid/speech/tts/ITtsCallback;

    invoke-interface {v4, v5, v6}, Landroid/speech/tts/ITts;->registerCallback(Ljava/lang/String;Landroid/speech/tts/ITtsCallback;)I
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_5e
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1b} :catch_1f
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_1b} :catch_36
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_1b} :catch_4a

    move-result v1

    .line 1387
    :try_start_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_33

    :goto_1d
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_a

    .line 1368
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_1f
    move-exception v4

    move-object v0, v4

    .line 1370
    .local v0, e:Landroid/os/RemoteException;
    :try_start_21
    const-string v4, "TextToSpeech.java - registerCallback"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1372
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1373
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_5e

    .line 1387
    :try_start_31
    monitor-exit v3

    goto :goto_1d

    .line 1389
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_33
    move-exception v4

    monitor-exit v3
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_33

    throw v4

    .line 1374
    :catch_36
    move-exception v4

    move-object v0, v4

    .line 1376
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_38
    const-string v4, "TextToSpeech.java - registerCallback"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1378
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1379
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_5e

    .line 1387
    :try_start_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_33

    goto :goto_1d

    .line 1380
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_4a
    move-exception v4

    move-object v0, v4

    .line 1382
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_4c
    const-string v4, "TextToSpeech.java - registerCallback"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1384
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1385
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5c
    .catchall {:try_start_4c .. :try_end_5c} :catchall_5e

    .line 1387
    :try_start_5c
    monitor-exit v3

    goto :goto_1d

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_5e
    move-exception v4

    monitor-exit v3
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_33

    goto :goto_1d
.end method

.method public setPitch(F)I
    .registers 10
    .parameter "pitch"

    .prologue
    .line 1066
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1067
    const/4 v2, -0x1

    .line 1068
    .local v2, result:I
    :try_start_4
    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_b

    .line 1069
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_36

    move v3, v2

    .line 1092
    .end local v2           #result:I
    .local v3, result:I
    :goto_a
    return v3

    .line 1074
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_b
    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-lez v5, :cond_1f

    .line 1075
    const/high16 v5, 0x42c8

    mul-float/2addr v5, p1

    float-to-int v1, v5

    .line 1076
    .local v1, p:I
    :try_start_14
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xf

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_4d
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_1e} :catch_22
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_1e} :catch_39

    .line 1077
    const/4 v2, 0x0

    .line 1092
    .end local v1           #p:I
    :cond_1f
    :try_start_1f
    monitor-exit v4
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_36

    :goto_20
    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_a

    .line 1079
    .end local v3           #result:I
    .restart local v1       #p:I
    .restart local v2       #result:I
    :catch_22
    move-exception v5

    move-object v0, v5

    .line 1081
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_24
    const-string v5, "TextToSpeech.java - setPitch"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1083
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1084
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_4d

    .line 1092
    :try_start_34
    monitor-exit v4

    goto :goto_20

    .line 1094
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v1           #p:I
    :catchall_36
    move-exception v5

    monitor-exit v4
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_36

    throw v5

    .line 1085
    .restart local v1       #p:I
    :catch_39
    move-exception v5

    move-object v0, v5

    .line 1087
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_3b
    const-string v5, "TextToSpeech.java - setPitch"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1089
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1090
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_4b
    .catchall {:try_start_3b .. :try_end_4b} :catchall_4d

    .line 1092
    :try_start_4b
    monitor-exit v4

    goto :goto_20

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_4d
    move-exception v5

    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_36

    goto :goto_20
.end method

.method public setSpeechRate(F)I
    .registers 11
    .parameter "speechRate"

    .prologue
    const/4 v8, 0x0

    .line 1017
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1018
    const/4 v2, -0x1

    .line 1019
    .local v2, result:I
    :try_start_5
    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_c

    .line 1020
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_3b

    move v3, v2

    .line 1047
    .end local v2           #result:I
    .local v3, result:I
    :goto_b
    return v3

    .line 1023
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_c
    cmpl-float v5, p1, v8

    if-lez v5, :cond_22

    .line 1024
    const/high16 v5, 0x42c8

    mul-float/2addr v5, p1

    float-to-int v1, v5

    .line 1025
    .local v1, rate:I
    :try_start_14
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_52
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_1d} :catch_27
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_1d} :catch_3e

    .line 1028
    cmpl-float v5, p1, v8

    if-lez v5, :cond_25

    .line 1029
    const/4 v2, 0x0

    .line 1047
    .end local v1           #rate:I
    :cond_22
    :goto_22
    :try_start_22
    monitor-exit v4
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_3b

    :goto_23
    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_b

    .line 1031
    .end local v3           #result:I
    .restart local v1       #rate:I
    .restart local v2       #result:I
    :cond_25
    const/4 v2, -0x1

    goto :goto_22

    .line 1034
    :catch_27
    move-exception v5

    move-object v0, v5

    .line 1036
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_29
    const-string v5, "TextToSpeech.java - setSpeechRate"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1038
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1039
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_52

    .line 1047
    :try_start_39
    monitor-exit v4

    goto :goto_23

    .line 1049
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v1           #rate:I
    :catchall_3b
    move-exception v5

    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_3b

    throw v5

    .line 1040
    .restart local v1       #rate:I
    :catch_3e
    move-exception v5

    move-object v0, v5

    .line 1042
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_40
    const-string v5, "TextToSpeech.java - setSpeechRate"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1044
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1045
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_50
    .catchall {:try_start_40 .. :try_end_50} :catchall_52

    .line 1047
    :try_start_50
    monitor-exit v4

    goto :goto_23

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_52
    move-exception v5

    monitor-exit v4
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_3b

    goto :goto_23
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 538
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    .line 543
    :goto_7
    return-void

    .line 539
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public speak(Ljava/lang/String;ILjava/util/HashMap;)I
    .registers 11
    .parameter "text"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 775
    .local p3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 776
    const/4 v1, -0x1

    .line 777
    .local v1, result:I
    :try_start_4
    const-string v4, "TextToSpeech.java - speak"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "speak text of length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_30

    .line 779
    const-string v4, "TextToSpeech.java - speak"

    const-string/jumbo v5, "service isn\'t started"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_85

    move v2, v1

    .line 812
    .end local v1           #result:I
    .local v2, result:I
    :goto_2f
    return v2

    .line 783
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_30
    if-eqz p3, :cond_5e

    :try_start_32
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5e

    .line 784
    const-string/jumbo v4, "streamType"

    const/16 v5, 0x8

    invoke-direct {p0, p3, v4, v5}, Landroid/speech/tts/TextToSpeech;->setCachedParam(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 785
    const-string/jumbo v4, "utteranceId"

    const/16 v5, 0xa

    invoke-direct {p0, p3, v4, v5}, Landroid/speech/tts/TextToSpeech;->setCachedParam(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 787
    const-string v4, "engine"

    const/16 v5, 0xc

    invoke-direct {p0, p3, v4, v5}, Landroid/speech/tts/TextToSpeech;->setCachedParam(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 788
    const-string/jumbo v4, "volume"

    const/16 v5, 0x10

    invoke-direct {p0, p3, v4, v5}, Landroid/speech/tts/TextToSpeech;->setCachedParam(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 789
    const-string v4, "pan"

    const/16 v5, 0x12

    invoke-direct {p0, p3, v4, v5}, Landroid/speech/tts/TextToSpeech;->setCachedParam(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 791
    :cond_5e
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    invoke-interface {v4, v5, p1, p2, v6}, Landroid/speech/tts/ITts;->speak(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_32 .. :try_end_67} :catchall_b6
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_67} :catch_6e
    .catch Ljava/lang/NullPointerException; {:try_start_32 .. :try_end_67} :catch_88
    .catch Ljava/lang/IllegalStateException; {:try_start_32 .. :try_end_67} :catch_9f

    move-result v1

    .line 811
    :try_start_68
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 812
    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_85

    :goto_6c
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_2f

    .line 792
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_6e
    move-exception v4

    move-object v0, v4

    .line 794
    .local v0, e:Landroid/os/RemoteException;
    :try_start_70
    const-string v4, "TextToSpeech.java - speak"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 796
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 797
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_80
    .catchall {:try_start_70 .. :try_end_80} :catchall_b6

    .line 811
    :try_start_80
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 812
    monitor-exit v3

    goto :goto_6c

    .line 814
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_85
    move-exception v4

    monitor-exit v3
    :try_end_87
    .catchall {:try_start_80 .. :try_end_87} :catchall_85

    throw v4

    .line 798
    :catch_88
    move-exception v4

    move-object v0, v4

    .line 800
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_8a
    const-string v4, "TextToSpeech.java - speak"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 802
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 803
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_9a
    .catchall {:try_start_8a .. :try_end_9a} :catchall_b6

    .line 811
    :try_start_9a
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 812
    monitor-exit v3
    :try_end_9e
    .catchall {:try_start_9a .. :try_end_9e} :catchall_85

    goto :goto_6c

    .line 804
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_9f
    move-exception v4

    move-object v0, v4

    .line 806
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_a1
    const-string v4, "TextToSpeech.java - speak"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 808
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 809
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_b1
    .catchall {:try_start_a1 .. :try_end_b1} :catchall_b6

    .line 811
    :try_start_b1
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 812
    monitor-exit v3

    goto :goto_6c

    .line 811
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_b6
    move-exception v4

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 812
    monitor-exit v3
    :try_end_bb
    .catchall {:try_start_b1 .. :try_end_bb} :catchall_85

    goto :goto_6c
.end method

.method public stop()I
    .registers 7

    .prologue
    .line 972
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 973
    const/4 v1, -0x1

    .line 974
    .local v1, result:I
    :try_start_4
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_b

    .line 975
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_2a

    move v2, v1

    .line 998
    .end local v1           #result:I
    .local v2, result:I
    :goto_a
    return v2

    .line 978
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_b
    :try_start_b
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/speech/tts/ITts;->stop(Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_55
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_12} :catch_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_12} :catch_41

    move-result v1

    .line 998
    :try_start_13
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_2a

    :goto_14
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_a

    .line 979
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_16
    move-exception v4

    move-object v0, v4

    .line 981
    .local v0, e:Landroid/os/RemoteException;
    :try_start_18
    const-string v4, "TextToSpeech.java - stop"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 983
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 984
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_55

    .line 998
    :try_start_28
    monitor-exit v3

    goto :goto_14

    .line 1000
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_2a
    move-exception v4

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2a

    throw v4

    .line 985
    :catch_2d
    move-exception v4

    move-object v0, v4

    .line 987
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_2f
    const-string v4, "TextToSpeech.java - stop"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 989
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 990
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3f
    .catchall {:try_start_2f .. :try_end_3f} :catchall_55

    .line 998
    :try_start_3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_2a

    goto :goto_14

    .line 991
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_41
    move-exception v4

    move-object v0, v4

    .line 993
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_43
    const-string v4, "TextToSpeech.java - stop"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 995
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 996
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_55

    .line 998
    :try_start_53
    monitor-exit v3

    goto :goto_14

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_55
    move-exception v4

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_2a

    goto :goto_14
.end method

.method public synthesizeToFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)I
    .registers 12
    .parameter "text"
    .parameter
    .parameter "filename"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 1277
    const-string v3, "TextToSpeech.java"

    const-string/jumbo v4, "synthesizeToFile()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1279
    const/4 v1, -0x1

    .line 1280
    .local v1, result:I
    :try_start_d
    const-string v4, "TextToSpeech.java - synthesizeToFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "synthesizeToFile text of length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_39

    .line 1283
    const-string v4, "TextToSpeech.java - synthesizeToFile"

    const-string/jumbo v5, "service isn\'t started"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_7d

    move v2, v1

    .line 1315
    .end local v1           #result:I
    .local v2, result:I
    :goto_38
    return v2

    .line 1287
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_39
    if-eqz p2, :cond_50

    :try_start_3b
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_50

    .line 1289
    const-string/jumbo v4, "utteranceId"

    const/16 v5, 0xa

    invoke-direct {p0, p2, v4, v5}, Landroid/speech/tts/TextToSpeech;->setCachedParam(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1291
    const-string v4, "engine"

    const/16 v5, 0xc

    invoke-direct {p0, p2, v4, v5}, Landroid/speech/tts/TextToSpeech;->setCachedParam(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1293
    :cond_50
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    invoke-interface {v4, v5, p1, v6, p3}, Landroid/speech/tts/ITts;->synthesizeToFile(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_59
    .catchall {:try_start_3b .. :try_end_59} :catchall_ae
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_59} :catch_66
    .catch Ljava/lang/NullPointerException; {:try_start_3b .. :try_end_59} :catch_80
    .catch Ljava/lang/IllegalStateException; {:try_start_3b .. :try_end_59} :catch_97

    move-result v4

    if-eqz v4, :cond_63

    move v1, v7

    .line 1314
    :goto_5d
    :try_start_5d
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 1315
    monitor-exit v3
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_7d

    :goto_61
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_38

    .line 1293
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_63
    const/4 v4, -0x1

    move v1, v4

    goto :goto_5d

    .line 1295
    :catch_66
    move-exception v4

    move-object v0, v4

    .line 1297
    .local v0, e:Landroid/os/RemoteException;
    :try_start_68
    const-string v4, "TextToSpeech.java - synthesizeToFile"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1299
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1300
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_78
    .catchall {:try_start_68 .. :try_end_78} :catchall_ae

    .line 1314
    :try_start_78
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 1315
    monitor-exit v3

    goto :goto_61

    .line 1317
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_7d
    move-exception v4

    monitor-exit v3
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_7d

    throw v4

    .line 1301
    :catch_80
    move-exception v4

    move-object v0, v4

    .line 1303
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_82
    const-string v4, "TextToSpeech.java - synthesizeToFile"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1305
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1306
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_92
    .catchall {:try_start_82 .. :try_end_92} :catchall_ae

    .line 1314
    :try_start_92
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 1315
    monitor-exit v3
    :try_end_96
    .catchall {:try_start_92 .. :try_end_96} :catchall_7d

    goto :goto_61

    .line 1307
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_97
    move-exception v4

    move-object v0, v4

    .line 1309
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_99
    const-string v4, "TextToSpeech.java - synthesizeToFile"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1311
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1312
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_a9
    .catchall {:try_start_99 .. :try_end_a9} :catchall_ae

    .line 1314
    :try_start_a9
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 1315
    monitor-exit v3

    goto :goto_61

    .line 1314
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_ae
    move-exception v4

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 1315
    monitor-exit v3
    :try_end_b3
    .catchall {:try_start_a9 .. :try_end_b3} :catchall_7d

    goto :goto_61
.end method
