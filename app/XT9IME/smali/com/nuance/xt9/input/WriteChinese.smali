.class public Lcom/nuance/xt9/input/WriteChinese;
.super Lcom/nuance/xt9/input/Input;
.source "WriteChinese.java"

# interfaces
.implements Lcom/nuance/xt9/input/WriteThreadQueue$OnWriteThreadQueueConsumer;


# static fields
.field public static final ARCS_ADDING_SEQUENCE_ENDED:I = 0x0

.field public static final ARCS_ADDING_SEQUENCE_STARTED:I = 0x1

.field public static final MAXWORDLEN:I = 0x20


# instance fields
.field private mDatabaseConfigFile:Ljava/lang/String;

.field private mDistances:[I

.field private mRecognitionState:I

.field private mRegcognizerListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/WriteRecognizerListener$OnWriteRecognizerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mResults:[C

.field private mScratchBuffer:[C

.field private mScratchInt:[I

.field private mSession:I

.field private mTextContext:Ljava/lang/String;

.field private mWriteThreadQueue:Lcom/nuance/xt9/input/WriteThreadQueue;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "databaseConfigFile"

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/nuance/xt9/input/Input;-><init>()V

    .line 23
    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mScratchBuffer:[C

    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mScratchInt:[I

    .line 29
    iput v1, p0, Lcom/nuance/xt9/input/WriteChinese;->mSession:I

    .line 36
    sget v0, Lcom/nuance/xt9/input/WriteChineseSettings;->MAX_RESULT_CHARACTERS:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mResults:[C

    .line 37
    sget v0, Lcom/nuance/xt9/input/WriteChineseSettings;->MAX_RESULT_CHARACTERS:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mDistances:[I

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mTextContext:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/nuance/xt9/input/WriteChinese;->mDatabaseConfigFile:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mRegcognizerListeners:Ljava/util/List;

    .line 43
    iput v1, p0, Lcom/nuance/xt9/input/WriteChinese;->mRecognitionState:I

    .line 44
    new-instance v0, Lcom/nuance/xt9/input/WriteThreadQueue;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/WriteThreadQueue;-><init>(Lcom/nuance/xt9/input/WriteThreadQueue$OnWriteThreadQueueConsumer;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mWriteThreadQueue:Lcom/nuance/xt9/input/WriteThreadQueue;

    .line 45
    return-void
.end method

.method private computeLength([C)I
    .locals 2
    .parameter "results"

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, len:I
    :goto_0
    aget-char v1, p1, v0

    if-eqz v1, :cond_0

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    return v0
.end method

.method private getRecognizeCandidates()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 188
    .local v0, candidates:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/CharSequence;>;"
    iget v3, p0, Lcom/nuance/xt9/input/WriteChinese;->mSession:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nuance/xt9/input/WriteChinese;->mResults:[C

    iget-object v6, p0, Lcom/nuance/xt9/input/WriteChinese;->mDistances:[I

    invoke-static {v3, v4, v5, v6}, Lcom/nuance/xt9/input/NativeWriteChinese;->Write_Chinese_recognize(IC[C[I)I

    move-result v3

    if-nez v3, :cond_0

    .line 189
    iget-object v3, p0, Lcom/nuance/xt9/input/WriteChinese;->mResults:[C

    invoke-direct {p0, v3}, Lcom/nuance/xt9/input/WriteChinese;->computeLength([C)I

    move-result v2

    .line 191
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 192
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/xt9/input/WriteChinese;->mResults:[C

    const/4 v5, 0x1

    invoke-direct {v3, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_0
    return-object v0
.end method

.method private notifyWriteEventListeners(Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 200
    iget-object v2, p0, Lcom/nuance/xt9/input/WriteChinese;->mRegcognizerListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/WriteRecognizerListener$OnWriteRecognizerListener;

    .line 201
    .local v1, listener:Lcom/nuance/xt9/input/WriteRecognizerListener$OnWriteRecognizerListener;
    invoke-interface {v1, p1}, Lcom/nuance/xt9/input/WriteRecognizerListener$OnWriteRecognizerListener;->onHandleWriteEvent(Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;)V

    goto :goto_0

    .line 203
    .end local v1           #listener:Lcom/nuance/xt9/input/WriteRecognizerListener$OnWriteRecognizerListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addRecognizeListener(Lcom/nuance/xt9/input/WriteRecognizerListener$OnWriteRecognizerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mRegcognizerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mRegcognizerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    return-void
.end method

.method public changeSetting(Lcom/nuance/xt9/input/WriteChineseSettings;)Z
    .locals 1
    .parameter "settings"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mWriteThreadQueue:Lcom/nuance/xt9/input/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/WriteThreadQueue;->addSettings(Lcom/nuance/xt9/input/WriteChineseSettings;)V

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public changeSettings(Lcom/nuance/xt9/input/WriteChineseSettings;)Z
    .locals 1
    .parameter "settings"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mWriteThreadQueue:Lcom/nuance/xt9/input/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/WriteThreadQueue;->addSettings(Lcom/nuance/xt9/input/WriteChineseSettings;)V

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public consume(Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;)V
    .locals 6
    .parameter "item"

    .prologue
    .line 146
    iget v4, p1, Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;->mType:I

    packed-switch v4, :pswitch_data_0

    .line 175
    .end local p1
    :goto_0
    return-void

    .line 149
    .restart local p1
    :pswitch_0
    iget v4, p0, Lcom/nuance/xt9/input/WriteChinese;->mSession:I

    check-cast p1, Lcom/nuance/xt9/input/WriteThreadQueue$ArcQueueItem;

    .end local p1
    iget-object v5, p1, Lcom/nuance/xt9/input/WriteThreadQueue$ArcQueueItem;->mArc1:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/nuance/xt9/input/NativeWriteChinese;->Write_Chinese_addArc(ILjava/util/List;)I

    goto :goto_0

    .line 153
    .restart local p1
    :pswitch_1
    invoke-direct {p0}, Lcom/nuance/xt9/input/WriteChinese;->getRecognizeCandidates()Ljava/util/List;

    move-result-object v0

    .line 154
    .local v0, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v4, Lcom/nuance/xt9/input/WriteRecognizerListener$CandidatesWriteEvent;

    invoke-direct {v4, v0}, Lcom/nuance/xt9/input/WriteRecognizerListener$CandidatesWriteEvent;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v4}, Lcom/nuance/xt9/input/WriteChinese;->notifyWriteEventListeners(Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;)V

    .line 156
    invoke-virtual {p0}, Lcom/nuance/xt9/input/WriteChinese;->endArcsAddingSequence()V

    goto :goto_0

    .line 160
    .end local v0           #candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :pswitch_2
    check-cast p1, Lcom/nuance/xt9/input/WriteThreadQueue$CharQueueItem;

    .end local p1
    iget-char v1, p1, Lcom/nuance/xt9/input/WriteThreadQueue$CharQueueItem;->mChar:C

    .line 161
    .local v1, ch:C
    new-instance v4, Lcom/nuance/xt9/input/WriteRecognizerListener$CharWriteEvent;

    invoke-direct {v4, v1}, Lcom/nuance/xt9/input/WriteRecognizerListener$CharWriteEvent;-><init>(C)V

    invoke-direct {p0, v4}, Lcom/nuance/xt9/input/WriteChinese;->notifyWriteEventListeners(Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;)V

    goto :goto_0

    .line 165
    .end local v1           #ch:C
    .restart local p1
    :pswitch_3
    check-cast p1, Lcom/nuance/xt9/input/WriteThreadQueue$TextQueueItem;

    .end local p1
    iget-object v3, p1, Lcom/nuance/xt9/input/WriteThreadQueue$TextQueueItem;->mText:Ljava/lang/CharSequence;

    .line 166
    .local v3, text:Ljava/lang/CharSequence;
    new-instance v4, Lcom/nuance/xt9/input/WriteRecognizerListener$TextWriteEvent;

    invoke-direct {v4, v3}, Lcom/nuance/xt9/input/WriteRecognizerListener$TextWriteEvent;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v4}, Lcom/nuance/xt9/input/WriteChinese;->notifyWriteEventListeners(Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;)V

    goto :goto_0

    .line 170
    .end local v3           #text:Ljava/lang/CharSequence;
    .restart local p1
    :pswitch_4
    check-cast p1, Lcom/nuance/xt9/input/WriteThreadQueue$ChangeChineseSettings;

    .end local p1
    iget-object v2, p1, Lcom/nuance/xt9/input/WriteThreadQueue$ChangeChineseSettings;->mSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    .line 171
    .local v2, settings:Lcom/nuance/xt9/input/WriteChineseSettings;
    iget v4, p0, Lcom/nuance/xt9/input/WriteChinese;->mSession:I

    invoke-static {v4, v2}, Lcom/nuance/xt9/input/NativeWriteChinese;->Write_Chinese_changeSettings(ILcom/nuance/xt9/input/WriteChineseSettings;)I

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public create()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mWriteThreadQueue:Lcom/nuance/xt9/input/WriteThreadQueue;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WriteThreadQueue;->start()V

    .line 50
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mDatabaseConfigFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeWriteChinese;->Write_Chinese_create(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mSession:I

    .line 51
    iget v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mSession:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mWriteThreadQueue:Lcom/nuance/xt9/input/WriteThreadQueue;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WriteThreadQueue;->stop()V

    .line 72
    iget v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mSession:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeWriteChinese;->Write_Chinese_destroy(I)I

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mSession:I

    .line 74
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mRegcognizerListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    return-void
.end method

.method public endArcsAddingSequence()V
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mRecognitionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mRecognitionState:I

    .line 114
    iget v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mSession:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeWriteChinese;->Write_Chinese_endArc(I)I

    .line 116
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mSession:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeWriteChinese;->Write_Chinese_finish(I)I

    .line 67
    return-void
.end method

.method public getDatabaseVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mSession:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeWriteChinese;->Write_Chinese_getDatabaseVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mSession:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeWriteChinese;->Write_Chinese_getVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWord(ILjava/lang/StringBuilder;)Z
    .locals 6
    .parameter "index"
    .parameter "word"

    .prologue
    const/4 v5, 0x0

    .line 235
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 237
    iget v1, p0, Lcom/nuance/xt9/input/WriteChinese;->mSession:I

    iget-object v2, p0, Lcom/nuance/xt9/input/WriteChinese;->mScratchBuffer:[C

    iget-object v3, p0, Lcom/nuance/xt9/input/WriteChinese;->mScratchInt:[I

    iget-object v4, p0, Lcom/nuance/xt9/input/WriteChinese;->mScratchBuffer:[C

    array-length v4, v4

    invoke-static {v1, p1, v2, v3, v4}, Lcom/nuance/xt9/input/NativeWriteChinese;->Write_Chinese_getWord(II[C[II)Z

    move-result v0

    .line 238
    .local v0, success:Z
    if-eqz v0, :cond_0

    .line 239
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteChinese;->mScratchBuffer:[C

    iget-object v2, p0, Lcom/nuance/xt9/input/WriteChinese;->mScratchInt:[I

    aget v2, v2, v5

    invoke-virtual {p2, v1, v5, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 242
    :cond_0
    return v0
.end method

.method public queueAddArc(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, nextArc:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mWriteThreadQueue:Lcom/nuance/xt9/input/WriteThreadQueue;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2, v2}, Lcom/nuance/xt9/input/WriteThreadQueue;->addArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method

.method public queueChar(C)V
    .locals 1
    .parameter "ch"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mWriteThreadQueue:Lcom/nuance/xt9/input/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/WriteThreadQueue;->addChar(C)V

    .line 134
    return-void
.end method

.method public queueRecognition(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "startWord"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mWriteThreadQueue:Lcom/nuance/xt9/input/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/WriteThreadQueue;->addRecognize(Ljava/lang/CharSequence;)V

    .line 126
    return-void
.end method

.method public queueText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mWriteThreadQueue:Lcom/nuance/xt9/input/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/WriteThreadQueue;->addText(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method

.method public removeRecognizeListener(Lcom/nuance/xt9/input/WriteRecognizerListener$OnWriteRecognizerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mRegcognizerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mRegcognizerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 87
    :cond_0
    return-void
.end method

.method public setAttribute(II)Z
    .locals 1
    .parameter "id"
    .parameter "value"

    .prologue
    .line 247
    iget v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mSession:I

    invoke-static {v0, p1, p2}, Lcom/nuance/xt9/input/NativeWriteChinese;->Write_Chinese_setAttribute(III)Z

    move-result v0

    return v0
.end method

.method public setContext(Ljava/lang/CharSequence;)Z
    .locals 5
    .parameter "newContext"

    .prologue
    .line 208
    if-nez p1, :cond_0

    .line 209
    const-string v1, ""

    .line 214
    .local v1, context:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/nuance/xt9/input/WriteChinese;->mTextContext:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 215
    const/4 v2, 0x0

    .line 222
    :goto_1
    return v2

    .line 212
    .end local v1           #context:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #context:Ljava/lang/String;
    goto :goto_0

    .line 218
    :cond_1
    iget v2, p0, Lcom/nuance/xt9/input/WriteChinese;->mSession:I

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/nuance/xt9/input/NativeWriteChinese;->Write_Chinese_setContext(I[CI)Z

    move-result v0

    .line 219
    .local v0, b:Z
    if-eqz v0, :cond_2

    .line 220
    iput-object v1, p0, Lcom/nuance/xt9/input/WriteChinese;->mTextContext:Ljava/lang/String;

    :cond_2
    move v2, v0

    .line 222
    goto :goto_1
.end method

.method public start(Lcom/nuance/xt9/input/WriteChineseSettings;I)Z
    .locals 1
    .parameter "settings"
    .parameter "languageID"

    .prologue
    .line 55
    iget v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mSession:I

    invoke-static {v0, p1, p2}, Lcom/nuance/xt9/input/NativeWriteChinese;->Write_Chinese_start(ILcom/nuance/xt9/input/WriteChineseSettings;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startArcsAddingSequence()V
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mRecognitionState:I

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mRecognitionState:I

    .line 107
    iget v0, p0, Lcom/nuance/xt9/input/WriteChinese;->mSession:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeWriteChinese;->Write_Chinese_beginArc(I)I

    .line 109
    :cond_0
    return-void
.end method
