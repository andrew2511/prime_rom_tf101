.class Landroid/tts/TtsService$SpeechItem;
.super Ljava/lang/Object;
.source "TtsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/tts/TtsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpeechItem"
.end annotation


# instance fields
.field public mCallingApp:Ljava/lang/String;

.field public mDuration:J

.field public mFilename:Ljava/lang/String;

.field public mParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mText:Ljava/lang/String;

.field public mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/ArrayList;)V
    .locals 3
    .parameter "source"
    .parameter "silenceTime"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Landroid/tts/TtsService$SpeechItem;->mText:Ljava/lang/String;

    .line 66
    iput-object v2, p0, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Landroid/tts/TtsService$SpeechItem;->mType:I

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/tts/TtsService$SpeechItem;->mDuration:J

    .line 69
    iput-object v2, p0, Landroid/tts/TtsService$SpeechItem;->mFilename:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    .line 80
    iput-wide p2, p0, Landroid/tts/TtsService$SpeechItem;->mDuration:J

    .line 81
    iput-object p4, p0, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    .line 82
    const/4 v0, 0x2

    iput v0, p0, Landroid/tts/TtsService$SpeechItem;->mType:I

    .line 83
    iput-object p1, p0, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 3
    .parameter "source"
    .parameter "text"
    .parameter
    .parameter "itemType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Landroid/tts/TtsService$SpeechItem;->mText:Ljava/lang/String;

    .line 66
    iput-object v2, p0, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Landroid/tts/TtsService$SpeechItem;->mType:I

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/tts/TtsService$SpeechItem;->mDuration:J

    .line 69
    iput-object v2, p0, Landroid/tts/TtsService$SpeechItem;->mFilename:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Landroid/tts/TtsService$SpeechItem;->mText:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    .line 75
    iput p4, p0, Landroid/tts/TtsService$SpeechItem;->mType:I

    .line 76
    iput-object p1, p0, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 3
    .parameter "source"
    .parameter "text"
    .parameter
    .parameter "itemType"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Landroid/tts/TtsService$SpeechItem;->mText:Ljava/lang/String;

    .line 66
    iput-object v2, p0, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Landroid/tts/TtsService$SpeechItem;->mType:I

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/tts/TtsService$SpeechItem;->mDuration:J

    .line 69
    iput-object v2, p0, Landroid/tts/TtsService$SpeechItem;->mFilename:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Landroid/tts/TtsService$SpeechItem;->mText:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    .line 90
    iput p4, p0, Landroid/tts/TtsService$SpeechItem;->mType:I

    .line 91
    iput-object p5, p0, Landroid/tts/TtsService$SpeechItem;->mFilename:Ljava/lang/String;

    .line 92
    iput-object p1, p0, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    .line 93
    return-void
.end method
