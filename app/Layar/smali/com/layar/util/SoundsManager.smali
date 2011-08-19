.class public Lcom/layar/util/SoundsManager;
.super Ljava/lang/Object;
.source "SoundsManager.java"


# static fields
.field private static final MAX_STREAMS:I = 0x10

.field public static final SOUND_CLAP:I

.field private static final SOUND_COUNT:I

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/layar/util/SoundsManager;


# instance fields
.field private mPlaybackIds:[I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/layar/util/SoundsManager;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/util/SoundsManager;->TAG:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/layar/util/SoundsManager;->sInstance:Lcom/layar/util/SoundsManager;

    .line 7
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0x10

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/layar/util/SoundsManager;->mSoundPool:Landroid/media/SoundPool;

    .line 25
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/layar/util/SoundsManager;->mPlaybackIds:[I

    .line 27
    return-void
.end method

.method public static getSoundsManager(Landroid/content/Context;)Lcom/layar/util/SoundsManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    sget-object v0, Lcom/layar/util/SoundsManager;->sInstance:Lcom/layar/util/SoundsManager;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/layar/util/SoundsManager;

    invoke-direct {v0, p0}, Lcom/layar/util/SoundsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/layar/util/SoundsManager;->sInstance:Lcom/layar/util/SoundsManager;

    .line 32
    :cond_0
    sget-object v0, Lcom/layar/util/SoundsManager;->sInstance:Lcom/layar/util/SoundsManager;

    return-object v0
.end method


# virtual methods
.method public play(I)V
    .locals 7
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 36
    iget-object v0, p0, Lcom/layar/util/SoundsManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/layar/util/SoundsManager;->mPlaybackIds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 37
    return-void
.end method
