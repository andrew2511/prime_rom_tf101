.class public Lcom/asus/reader/book/TextToSpeechAgent;
.super Ljava/lang/Object;
.source "TextToSpeechAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/book/TextToSpeechAgent$TtsHelper;,
        Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;,
        Lcom/asus/reader/book/TextToSpeechAgent$TtsOnInitListener;
    }
.end annotation


# instance fields
.field private mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

.field private mContext:Landroid/content/Context;

.field private mIsLandscape:Z

.field private mLanguage:Ljava/util/Locale;

.field private mPage:I

.field private mSentences:[Ljava/lang/String;

.field private mSentencesPos:[Ljava/lang/String;

.field private mState:I

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mTtsHelper:Lcom/asus/reader/book/TextToSpeechAgent$TtsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/asus/reader/book/TextToSpeechAgent$TtsHelper;Ljava/util/Locale;)V
    .locals 1
    .parameter "context"
    .parameter "ttsHelper"
    .parameter "language"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mContext:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mLanguage:Ljava/util/Locale;

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mState:I

    .line 49
    iput-object p2, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mTtsHelper:Lcom/asus/reader/book/TextToSpeechAgent$TtsHelper;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/asus/reader/book/TextToSpeechAgent;)Lcom/asus/reader/book/BoundingBoxView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/reader/book/TextToSpeechAgent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/asus/reader/book/TextToSpeechAgent;->setState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/asus/reader/book/TextToSpeechAgent;)Lcom/asus/reader/book/TextToSpeechAgent$TtsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mTtsHelper:Lcom/asus/reader/book/TextToSpeechAgent$TtsHelper;

    return-object v0
.end method

.method private getPageTtsData(ZILjava/util/List;Ljava/util/List;)V
    .locals 8
    .parameter "isLandscape"
    .parameter "page"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, retSentences:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, retSentencesPos:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 233
    if-eqz p1, :cond_0

    .line 234
    and-int/lit8 v5, p2, 0x1

    if-nez v5, :cond_3

    .line 237
    :cond_0
    :goto_0
    invoke-static {p2}, Lcom/asus/reader/book/BookmarkUtility;->getPageText(I)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, pageContent:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 240
    add-int/lit8 v0, p2, 0x1

    .line 241
    .local v0, otherPage:I
    invoke-static {v0}, Lcom/asus/reader/book/BookmarkUtility;->getPageText(I)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, otherPageContent:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    .end local v0           #otherPage:I
    .end local v1           #otherPageContent:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 248
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 251
    :cond_2
    invoke-direct {p0, v2}, Lcom/asus/reader/book/TextToSpeechAgent;->parseToSentence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, pageSentences:[Ljava/lang/String;
    invoke-static {v4, v7, p2}, Lcom/asus/reader/book/BookmarkUtility;->getSentenceLoc([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, pageSentencePos:[Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 255
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {p4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 256
    return-void

    .line 234
    .end local v2           #pageContent:Ljava/lang/String;
    .end local v3           #pageSentencePos:[Ljava/lang/String;
    .end local v4           #pageSentences:[Ljava/lang/String;
    :cond_3
    sub-int v5, p2, v6

    move p2, v5

    goto :goto_0
.end method

.method private getTtsData(IIZ)V
    .locals 5
    .parameter "type"
    .parameter "index"
    .parameter "isLandscape"

    .prologue
    const/4 v4, 0x0

    .line 114
    packed-switch p1, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 117
    :pswitch_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v1, sentencesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, sentencePosList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p3, p2, v1, v0}, Lcom/asus/reader/book/TextToSpeechAgent;->getPageTtsData(ZILjava/util/List;Ljava/util/List;)V

    .line 121
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mSentences:[Ljava/lang/String;

    .line 122
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mSentencesPos:[Ljava/lang/String;

    .line 124
    iget-object v2, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mContext:Landroid/content/Context;

    const v3, 0x7f07007d

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 128
    .end local v0           #sentencePosList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #sentencesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    invoke-static {}, Lcom/asus/reader/book/BookmarkUtility;->getSelectedText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/asus/reader/book/TextToSpeechAgent;->parseToSentence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mSentences:[Ljava/lang/String;

    .line 129
    iget-object v2, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mSentences:[Ljava/lang/String;

    invoke-static {v2, p1, v4}, Lcom/asus/reader/book/BookmarkUtility;->getSentenceLoc([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mSentencesPos:[Ljava/lang/String;

    goto :goto_0

    .line 133
    :pswitch_2
    invoke-static {p2}, Lcom/asus/reader/book/BookmarkUtility;->getHighlightText(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/asus/reader/book/TextToSpeechAgent;->parseToSentence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mSentences:[Ljava/lang/String;

    .line 134
    iget-object v2, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mSentences:[Ljava/lang/String;

    invoke-static {v2, p1, p2}, Lcom/asus/reader/book/BookmarkUtility;->getSentenceLoc([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mSentencesPos:[Ljava/lang/String;

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isEndOfSentence(C)Z
    .locals 4
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 220
    const/16 v1, 0x27

    if-ne p1, v1, :cond_0

    move v1, v2

    .line 225
    :goto_0
    return v1

    .line 221
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    .line 223
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 225
    .local v0, category:I
    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-ne v0, v1, :cond_3

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private parseToSentence(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "content"

    .prologue
    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v1, parsedContent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "[\n\r ]{2,}"

    const-string v4, "."

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 187
    const-string v3, "[\n\r ]"

    const-string v4, " "

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 189
    const/4 v2, 0x0

    .line 190
    .local v2, previousStop:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/asus/reader/book/TextToSpeechAgent;->isEndOfSentence(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 195
    :goto_1
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/asus/reader/book/TextToSpeechAgent;->isEndOfSentence(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 199
    :cond_1
    if-ge v2, v0, :cond_2

    .line 200
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    move v2, v0

    .line 190
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_3
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/asus/reader/book/TextToSpeechAgent;->isEndOfSentence(C)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 209
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 211
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_6

    .line 212
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private setLanguage()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 88
    iget-object v2, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mLanguage:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v1

    .line 90
    .local v1, support:I
    packed-switch v1, :pswitch_data_0

    :goto_0
    move v2, v5

    .line 109
    :goto_1
    return v2

    .line 94
    :pswitch_0
    iget-object v2, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mLanguage:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 95
    const/4 v2, 0x1

    goto :goto_1

    .line 98
    :pswitch_1
    const-string v2, "TextToSpeechAgent"

    const-string v3, "Language is Support but needed download language data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, installIntent:Landroid/content/Intent;
    const-string v2, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v2, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 105
    .end local v0           #installIntent:Landroid/content/Intent;
    :pswitch_2
    const-string v2, "TextToSpeechAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The TextToSpeech doesn\'t support language:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mLanguage:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v2, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mContext:Landroid/content/Context;

    const v3, 0x7f07007e

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 260
    iput p1, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mState:I

    .line 261
    iget-object v0, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mTtsHelper:Lcom/asus/reader/book/TextToSpeechAgent$TtsHelper;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mTtsHelper:Lcom/asus/reader/book/TextToSpeechAgent$TtsHelper;

    invoke-interface {v0, p1}, Lcom/asus/reader/book/TextToSpeechAgent$TtsHelper;->setTtsIcon(I)V

    .line 264
    :cond_0
    return-void
.end method

.method private startReading(I)V
    .locals 9
    .parameter "type"

    .prologue
    const/4 v8, 0x0

    .line 141
    iget-object v1, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mSentencesPos:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 157
    :cond_0
    return-void

    .line 143
    :cond_1
    invoke-direct {p0, v8}, Lcom/asus/reader/book/TextToSpeechAgent;->setState(I)V

    .line 145
    iget-object v1, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    if-eqz v1, :cond_2

    .line 146
    new-instance v0, Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;

    iget-object v2, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mSentencesPos:[Ljava/lang/String;

    iget v3, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mPage:I

    iget-boolean v4, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mIsLandscape:Z

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;-><init>(Lcom/asus/reader/book/TextToSpeechAgent;[Ljava/lang/String;IZI)V

    .line 147
    .local v0, ttsListen:Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;
    iget-object v1, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 148
    iget-object v1, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    invoke-virtual {v1, v8}, Lcom/asus/reader/book/BoundingBoxView;->setVisibility(I)V

    .line 151
    .end local v0           #ttsListen:Lcom/asus/reader/book/TextToSpeechAgent$TtsDisplayListener;
    :cond_2
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v1, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mSentences:[Ljava/lang/String;

    array-length v1, v1

    if-ge v6, v1, :cond_0

    .line 153
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 154
    .local v7, param:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "utteranceId"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v1, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mSentences:[Ljava/lang/String;

    aget-object v2, v2, v6

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 151
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 179
    :cond_0
    return-void
.end method

.method public displaySetting(Lcom/asus/reader/book/BoundingBoxView;IZ)V
    .locals 0
    .parameter "boundingBoxView"
    .parameter "page"
    .parameter "isLandscape"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    .line 54
    iput-boolean p3, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mIsLandscape:Z

    .line 55
    iput p2, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mPage:I

    .line 56
    return-void
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mState:I

    return v0
.end method

.method public start(I)V
    .locals 1
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, p1, v0, v0}, Lcom/asus/reader/book/TextToSpeechAgent;->start(IIZ)V

    .line 84
    return-void
.end method

.method public start(II)V
    .locals 1
    .parameter "type"
    .parameter "index"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/asus/reader/book/TextToSpeechAgent;->start(IIZ)V

    .line 79
    return-void
.end method

.method public start(IIZ)V
    .locals 3
    .parameter "type"
    .parameter "index"
    .parameter "isLandscape"

    .prologue
    .line 64
    iget v0, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mState:I

    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_2

    .line 67
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/asus/reader/book/TextToSpeechAgent$TtsOnInitListener;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/asus/reader/book/TextToSpeechAgent$TtsOnInitListener;-><init>(Lcom/asus/reader/book/TextToSpeechAgent;IIZ)V

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mTts:Landroid/speech/tts/TextToSpeech;

    goto :goto_0

    .line 70
    :cond_2
    invoke-direct {p0}, Lcom/asus/reader/book/TextToSpeechAgent;->setLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/asus/reader/book/TextToSpeechAgent;->getTtsData(IIZ)V

    .line 72
    invoke-direct {p0, p1}, Lcom/asus/reader/book/TextToSpeechAgent;->startReading(I)V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 161
    iget v0, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mState:I

    if-ne v0, v2, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iput-object v1, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mSentences:[Ljava/lang/String;

    .line 164
    iput-object v1, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mSentencesPos:[Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    const-string v1, "tts"

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/BoundingBoxView;->remove(Ljava/lang/String;)Ljava/util/List;

    .line 168
    iget-object v0, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    invoke-virtual {v0}, Lcom/asus/reader/book/BoundingBoxView;->postInvalidate()V

    .line 169
    iget-object v0, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/BoundingBoxView;->setVisibility(I)V

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/asus/reader/book/TextToSpeechAgent;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 173
    invoke-direct {p0, v2}, Lcom/asus/reader/book/TextToSpeechAgent;->setState(I)V

    goto :goto_0
.end method
