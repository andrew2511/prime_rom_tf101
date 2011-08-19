.class Lcom/asus/reader/book/TextToSpeechAgent$TtsOnInitListener;
.super Ljava/lang/Object;
.source "TextToSpeechAgent.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/TextToSpeechAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TtsOnInitListener"
.end annotation


# instance fields
.field private index:I

.field private isLandscape:Z

.field final synthetic this$0:Lcom/asus/reader/book/TextToSpeechAgent;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/asus/reader/book/TextToSpeechAgent;IIZ)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "index"
    .parameter "isLandscape"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsOnInitListener;->this$0:Lcom/asus/reader/book/TextToSpeechAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput p2, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsOnInitListener;->type:I

    .line 283
    iput p3, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsOnInitListener;->index:I

    .line 284
    iput-boolean p4, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsOnInitListener;->isLandscape:Z

    .line 285
    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 288
    const-string v0, "TextToSpeechAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TextToSpeech.OnInitListener status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    if-nez p1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsOnInitListener;->this$0:Lcom/asus/reader/book/TextToSpeechAgent;

    iget v1, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsOnInitListener;->type:I

    iget v2, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsOnInitListener;->index:I

    iget-boolean v3, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsOnInitListener;->isLandscape:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/asus/reader/book/TextToSpeechAgent;->start(IIZ)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    const-string v0, "TextToSpeechAgent"

    const-string v1, "Fail to init the TextToSpeech data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
