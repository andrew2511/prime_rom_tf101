.class Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;
.super Ljava/lang/Object;
.source "TextToSpeechAgent.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/TextToSpeechAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TtsDisplayListener"
.end annotation


# instance fields
.field private isLandscape:Z

.field private page:I

.field private posDataArray:[Ljava/lang/String;

.field final synthetic this$0:Lcom/asus/reader/book/TextToSpeechAgent;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/asus/reader/book/TextToSpeechAgent;[Ljava/lang/String;IZI)V
    .locals 1
    .parameter
    .parameter "posData"
    .parameter "page"
    .parameter "isLandscape"
    .parameter "type"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;->this$0:Lcom/asus/reader/book/TextToSpeechAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p2, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;->posDataArray:[Ljava/lang/String;

    .line 307
    iput-boolean p4, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;->isLandscape:Z

    .line 308
    iput p3, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;->page:I

    .line 309
    iput p5, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;->type:I

    .line 310
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;->showBoundingBox(I)V

    .line 311
    return-void
.end method

.method private finish()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;->this$0:Lcom/asus/reader/book/TextToSpeechAgent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/asus/reader/book/TextToSpeechAgent;->access$100(Lcom/asus/reader/book/TextToSpeechAgent;I)V

    .line 341
    iget-object v0, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;->this$0:Lcom/asus/reader/book/TextToSpeechAgent;

    invoke-static {v0}, Lcom/asus/reader/book/TextToSpeechAgent;->access$000(Lcom/asus/reader/book/TextToSpeechAgent;)Lcom/asus/reader/book/BoundingBoxView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;->this$0:Lcom/asus/reader/book/TextToSpeechAgent;

    invoke-static {v0}, Lcom/asus/reader/book/TextToSpeechAgent;->access$000(Lcom/asus/reader/book/TextToSpeechAgent;)Lcom/asus/reader/book/BoundingBoxView;

    move-result-object v0

    const-string v1, "tts"

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/BoundingBoxView;->remove(Ljava/lang/String;)Ljava/util/List;

    .line 343
    iget-object v0, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;->this$0:Lcom/asus/reader/book/TextToSpeechAgent;

    invoke-static {v0}, Lcom/asus/reader/book/TextToSpeechAgent;->access$000(Lcom/asus/reader/book/TextToSpeechAgent;)Lcom/asus/reader/book/BoundingBoxView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/book/BoundingBoxView;->postInvalidate()V

    .line 346
    :cond_0
    iget v0, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;->type:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;->this$0:Lcom/asus/reader/book/TextToSpeechAgent;

    invoke-static {v0}, Lcom/asus/reader/book/TextToSpeechAgent;->access$200(Lcom/asus/reader/book/TextToSpeechAgent;)Lcom/asus/reader/book/TextToSpeechAgent$TtsHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;->this$0:Lcom/asus/reader/book/TextToSpeechAgent;

    invoke-static {v0}, Lcom/asus/reader/book/TextToSpeechAgent;->access$200(Lcom/asus/reader/book/TextToSpeechAgent;)Lcom/asus/reader/book/TextToSpeechAgent$TtsHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/asus/reader/book/TextToSpeechAgent$TtsHelper;->flip()Z

    .line 349
    :cond_1
    return-void
.end method

.method private showBoundingBox(I)V
    .locals 8
    .parameter "index"

    .prologue
    .line 321
    iget-object v2, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;->posDataArray:[Ljava/lang/String;

    array-length v2, v2

    if-ne p1, v2, :cond_1

    .line 322
    invoke-direct {p0}, Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;->finish()V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v2, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;->this$0:Lcom/asus/reader/book/TextToSpeechAgent;

    invoke-static {v2}, Lcom/asus/reader/book/TextToSpeechAgent;->access$000(Lcom/asus/reader/book/TextToSpeechAgent;)Lcom/asus/reader/book/BoundingBoxView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 328
    iget-object v2, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;->posDataArray:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v2}, Lcom/asus/reader/book/BookmarkUtility;->processParameters(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 330
    .local v1, pos:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v4, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;->isLandscape:Z

    iget v5, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;->page:I

    const-string v2, "start"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "end"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v5, v2, v3}, Lcom/asus/reader/book/BookmarkUtility;->getBoundingBox(ZILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 332
    .local v0, boxes:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;->this$0:Lcom/asus/reader/book/TextToSpeechAgent;

    invoke-static {v2}, Lcom/asus/reader/book/TextToSpeechAgent;->access$000(Lcom/asus/reader/book/TextToSpeechAgent;)Lcom/asus/reader/book/BoundingBoxView;

    move-result-object v2

    const-string v3, "tts"

    const/16 v4, 0x50

    const/16 v5, 0x8b

    const/16 v6, 0x45

    const/16 v7, 0x13

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    iget v5, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;->page:I

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/asus/reader/book/BoundingBoxView;->put(Ljava/lang/String;Ljava/util/List;II)Ljava/util/List;

    .line 333
    iget-object v2, p0, Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;->this$0:Lcom/asus/reader/book/TextToSpeechAgent;

    invoke-static {v2}, Lcom/asus/reader/book/TextToSpeechAgent;->access$000(Lcom/asus/reader/book/TextToSpeechAgent;)Lcom/asus/reader/book/BoundingBoxView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/book/BoundingBoxView;->postInvalidate()V

    goto :goto_0
.end method


# virtual methods
.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 1
    .parameter "utteranceId"

    .prologue
    .line 315
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;->showBoundingBox(I)V

    .line 316
    return-void
.end method
