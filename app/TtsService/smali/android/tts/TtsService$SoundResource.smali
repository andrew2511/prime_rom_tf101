.class Landroid/tts/TtsService$SoundResource;
.super Ljava/lang/Object;
.source "TtsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/tts/TtsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundResource"
.end annotation


# instance fields
.field public mFilename:Ljava/lang/String;

.field public mResId:I

.field public mSourcePackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "file"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object v0, p0, Landroid/tts/TtsService$SoundResource;->mSourcePackageName:Ljava/lang/String;

    .line 104
    iput v1, p0, Landroid/tts/TtsService$SoundResource;->mResId:I

    .line 105
    iput-object v0, p0, Landroid/tts/TtsService$SoundResource;->mFilename:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Landroid/tts/TtsService$SoundResource;->mSourcePackageName:Ljava/lang/String;

    .line 115
    iput v1, p0, Landroid/tts/TtsService$SoundResource;->mResId:I

    .line 116
    iput-object p1, p0, Landroid/tts/TtsService$SoundResource;->mFilename:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object v1, p0, Landroid/tts/TtsService$SoundResource;->mSourcePackageName:Ljava/lang/String;

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Landroid/tts/TtsService$SoundResource;->mResId:I

    .line 105
    iput-object v1, p0, Landroid/tts/TtsService$SoundResource;->mFilename:Ljava/lang/String;

    .line 108
    iput-object p1, p0, Landroid/tts/TtsService$SoundResource;->mSourcePackageName:Ljava/lang/String;

    .line 109
    iput p2, p0, Landroid/tts/TtsService$SoundResource;->mResId:I

    .line 110
    iput-object v1, p0, Landroid/tts/TtsService$SoundResource;->mFilename:Ljava/lang/String;

    .line 111
    return-void
.end method
