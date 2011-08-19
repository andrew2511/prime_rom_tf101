.class public Lcom/nuance/xt9/input/WriteAlpha;
.super Lcom/nuance/xt9/input/Input;
.source "WriteAlpha.java"

# interfaces
.implements Lcom/nuance/xt9/input/WriteThreadQueue$OnWriteThreadQueueConsumer;


# static fields
.field public static final ARCS_ADDING_SEQUENCE_ENDED:I = 0x0

.field public static final ARCS_ADDING_SEQUENCE_STARTED:I = 0x1


# instance fields
.field private mCandidate:[C

.field private mCandidateEndsWithInstGest:[I

.field private mCandidateLength:[I

.field private mDatabaseConfigFile:Ljava/lang/String;

.field private mIsInstantGesture:[I

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

.field private mResultCount:[I

.field private mSession:I

.field private mStartWord:[C

.field private mWriteThreadQueue:Lcom/nuance/xt9/input/WriteThreadQueue;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "databaseConfigFile"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 35
    invoke-direct {p0}, Lcom/nuance/xt9/input/Input;-><init>()V

    .line 22
    iput v2, p0, Lcom/nuance/xt9/input/WriteAlpha;->mSession:I

    .line 25
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mResultCount:[I

    .line 26
    sget v0, Lcom/nuance/xt9/input/WriteAlphaSettings;->MAX_RESULT_CHARACTERS:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mCandidate:[C

    .line 27
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mCandidateLength:[I

    .line 28
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mCandidateEndsWithInstGest:[I

    .line 29
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mIsInstantGesture:[I

    .line 30
    sget v0, Lcom/nuance/xt9/input/WriteAlphaSettings;->MAX_RESULT_CHARACTERS:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mStartWord:[C

    .line 36
    iput-object p1, p0, Lcom/nuance/xt9/input/WriteAlpha;->mDatabaseConfigFile:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mRegcognizerListeners:Ljava/util/List;

    .line 38
    iput v2, p0, Lcom/nuance/xt9/input/WriteAlpha;->mRecognitionState:I

    .line 40
    new-instance v0, Lcom/nuance/xt9/input/WriteThreadQueue;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/WriteThreadQueue;-><init>(Lcom/nuance/xt9/input/WriteThreadQueue$OnWriteThreadQueueConsumer;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mWriteThreadQueue:Lcom/nuance/xt9/input/WriteThreadQueue;

    .line 42
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mStartWord:[C

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 43
    return-void
.end method

.method private isGestureCharacer(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 300
    invoke-static {p1}, Lcom/nuance/xt9/input/WriteAlphaCategory;->isInstantGestureCharacter(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/nuance/xt9/input/WriteAlphaCategory;->isMultiTouchGesturesCharacter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private normalizeReturnChar(C)C
    .locals 1
    .parameter "c"

    .prologue
    .line 282
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    const/16 v0, 0xa

    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method private notifyWriteEventListeners(Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 276
    iget-object v2, p0, Lcom/nuance/xt9/input/WriteAlpha;->mRegcognizerListeners:Ljava/util/List;

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

    .line 277
    .local v1, listener:Lcom/nuance/xt9/input/WriteRecognizerListener$OnWriteRecognizerListener;
    invoke-interface {v1, p1}, Lcom/nuance/xt9/input/WriteRecognizerListener$OnWriteRecognizerListener;->onHandleWriteEvent(Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;)V

    goto :goto_0

    .line 279
    .end local v1           #listener:Lcom/nuance/xt9/input/WriteRecognizerListener$OnWriteRecognizerListener;
    :cond_0
    return-void
.end method

.method private trimInstantGestureCharacterRight(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    .line 287
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 288
    .local v0, end:I
    :goto_0
    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/WriteAlpha;->isGestureCharacer(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 293
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 296
    :goto_1
    return-object v1

    :cond_1
    move-object v1, p1

    goto :goto_1
.end method


# virtual methods
.method public addRecognizeListener(Lcom/nuance/xt9/input/WriteRecognizerListener$OnWriteRecognizerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mRegcognizerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mRegcognizerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    return-void
.end method

.method public addWordToUserDictionary(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "word"

    .prologue
    .line 101
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 102
    iget v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mSession:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/NativeWriteAlpha;->Write_Alpha_addWordToUserDictionary(I[CI)I

    .line 104
    :cond_0
    return-void
.end method

.method public changeSettings(Lcom/nuance/xt9/input/WriteAlphaSettings;)Z
    .locals 1
    .parameter "settings"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mWriteThreadQueue:Lcom/nuance/xt9/input/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/WriteThreadQueue;->addSettings(Lcom/nuance/xt9/input/WriteAlphaSettings;)V

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public consume(Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;)V
    .locals 18
    .parameter "item"

    .prologue
    .line 154
    move-object/from16 v0, p1

    iget v0, v0, Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;->mType:I

    move v3, v0

    packed-switch v3, :pswitch_data_0

    .line 259
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 159
    .restart local p1
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/WriteAlpha;->startArcsAddingSequence()V

    .line 161
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mSession:I

    move v4, v0

    move-object/from16 v0, p1

    check-cast v0, Lcom/nuance/xt9/input/WriteThreadQueue$ArcQueueItem;

    move-object v3, v0

    iget-object v5, v3, Lcom/nuance/xt9/input/WriteThreadQueue$ArcQueueItem;->mArc1:Ljava/util/List;

    move-object/from16 v0, p1

    check-cast v0, Lcom/nuance/xt9/input/WriteThreadQueue$ArcQueueItem;

    move-object v3, v0

    iget-object v3, v3, Lcom/nuance/xt9/input/WriteThreadQueue$ArcQueueItem;->mArc2:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mIsInstantGesture:[I

    move-object v6, v0

    invoke-static {v4, v5, v3, v6}, Lcom/nuance/xt9/input/NativeWriteAlpha;->Write_Alpha_addArc(ILjava/util/List;Ljava/util/List;[I)I

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mIsInstantGesture:[I

    move-object v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mStartWord:[C

    move-object v3, v0

    check-cast p1, Lcom/nuance/xt9/input/WriteThreadQueue$ArcQueueItem;

    .end local p1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteThreadQueue$ArcQueueItem;->mStartWord:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/xt9/input/WriteAlpha;->copyWordArray([CLjava/lang/CharSequence;)V

    .line 169
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mSession:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mStartWord:[C

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mResultCount:[I

    move-object v5, v0

    invoke-static {v3, v4, v5}, Lcom/nuance/xt9/input/NativeWriteAlpha;->Write_Alpha_recognize(I[C[I)I

    move-result v3

    if-nez v3, :cond_0

    .line 172
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mSession:I

    move v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mCandidate:[C

    move-object v5, v0

    sget v6, Lcom/nuance/xt9/input/WriteAlphaSettings;->MAX_RESULT_CHARACTERS:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mCandidateLength:[I

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mCandidateEndsWithInstGest:[I

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Lcom/nuance/xt9/input/NativeWriteAlpha;->Write_Alpha_getRecognitionCandidate(II[CI[I[I)I

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mCandidateEndsWithInstGest:[I

    move-object v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mCandidate:[C

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mCandidateLength:[I

    move-object v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-char v14, v3, v4

    .line 176
    .local v14, gestureChar:C
    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlpha;->normalizeReturnChar(C)C

    move-result v14

    .line 180
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 182
    .local v12, candidates:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/CharSequence;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mResultCount:[I

    move-object v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    if-ge v4, v3, :cond_1

    .line 183
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mSession:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mCandidate:[C

    move-object v5, v0

    sget v6, Lcom/nuance/xt9/input/WriteAlphaSettings;->MAX_RESULT_CHARACTERS:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mCandidateLength:[I

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mCandidateEndsWithInstGest:[I

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Lcom/nuance/xt9/input/NativeWriteAlpha;->Write_Alpha_getRecognitionCandidate(II[CI[I[I)I

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/WriteAlpha;->endArcsAddingSequence()V

    .line 195
    new-instance v3, Lcom/nuance/xt9/input/WriteRecognizerListener$InstantGestureWriteEvent;

    invoke-direct {v3, v14, v12}, Lcom/nuance/xt9/input/WriteRecognizerListener$InstantGestureWriteEvent;-><init>(CLjava/util/List;)V

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlpha;->notifyWriteEventListeners(Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;)V

    goto/16 :goto_0

    .line 187
    :cond_2
    new-instance v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mCandidate:[C

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mCandidateLength:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-direct {v3, v5, v6, v7}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlpha;->trimInstantGestureCharacterRight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 188
    .local v11, candidate:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    invoke-virtual {v12, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 203
    .end local v4           #i:I
    .end local v11           #candidate:Ljava/lang/String;
    .end local v12           #candidates:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/CharSequence;>;"
    .end local v14           #gestureChar:C
    .restart local p1
    :pswitch_1
    check-cast p1, Lcom/nuance/xt9/input/WriteThreadQueue$RecognizeQueueItem;

    .end local p1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteThreadQueue$RecognizeQueueItem;->mStartWord:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    .line 204
    .local v16, startWord:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mStartWord:[C

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/nuance/xt9/input/WriteAlpha;->copyWordArray([CLjava/lang/CharSequence;)V

    .line 206
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mSession:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mStartWord:[C

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mResultCount:[I

    move-object v5, v0

    invoke-static {v3, v4, v5}, Lcom/nuance/xt9/input/NativeWriteAlpha;->Write_Alpha_recognize(I[C[I)I

    move-result v3

    if-nez v3, :cond_0

    .line 208
    const/4 v14, 0x0

    .line 209
    .restart local v14       #gestureChar:C
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 211
    .restart local v12       #candidates:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mSession:I

    move v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mCandidate:[C

    move-object v7, v0

    sget v8, Lcom/nuance/xt9/input/WriteAlphaSettings;->MAX_RESULT_CHARACTERS:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mCandidateLength:[I

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mCandidateEndsWithInstGest:[I

    move-object v10, v0

    invoke-static/range {v5 .. v10}, Lcom/nuance/xt9/input/NativeWriteAlpha;->Write_Alpha_getRecognitionCandidate(II[CI[I[I)I

    move-result v3

    if-nez v3, :cond_3

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mCandidateLength:[I

    move-object v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    if-lez v3, :cond_3

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mCandidate:[C

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mCandidateLength:[I

    move-object v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-char v14, v3, v4

    .line 214
    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlpha;->normalizeReturnChar(C)C

    move-result v14

    .line 215
    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlpha;->isGestureCharacer(C)Z

    move-result v3

    if-nez v3, :cond_3

    .line 217
    const/4 v14, 0x0

    .line 221
    :cond_3
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mResultCount:[I

    move-object v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    if-ge v4, v3, :cond_5

    .line 222
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mSession:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mCandidate:[C

    move-object v5, v0

    sget v6, Lcom/nuance/xt9/input/WriteAlphaSettings;->MAX_RESULT_CHARACTERS:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mCandidateLength:[I

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mCandidateEndsWithInstGest:[I

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Lcom/nuance/xt9/input/NativeWriteAlpha;->Write_Alpha_getRecognitionCandidate(II[CI[I[I)I

    move-result v3

    if-nez v3, :cond_4

    .line 224
    new-instance v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mCandidate:[C

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mCandidateLength:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-direct {v3, v5, v6, v7}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlpha;->trimInstantGestureCharacterRight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 225
    .restart local v11       #candidate:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 226
    invoke-virtual {v12, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 221
    .end local v11           #candidate:Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 231
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/WriteAlpha;->endArcsAddingSequence()V

    .line 233
    if-eqz v14, :cond_6

    .line 234
    new-instance v3, Lcom/nuance/xt9/input/WriteRecognizerListener$InstantGestureWriteEvent;

    invoke-direct {v3, v14, v12}, Lcom/nuance/xt9/input/WriteRecognizerListener$InstantGestureWriteEvent;-><init>(CLjava/util/List;)V

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlpha;->notifyWriteEventListeners(Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;)V

    goto/16 :goto_0

    .line 236
    :cond_6
    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 237
    new-instance v3, Lcom/nuance/xt9/input/WriteRecognizerListener$CandidatesWriteEvent;

    invoke-direct {v3, v12}, Lcom/nuance/xt9/input/WriteRecognizerListener$CandidatesWriteEvent;-><init>(Ljava/util/List;)V

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlpha;->notifyWriteEventListeners(Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;)V

    goto/16 :goto_0

    .line 244
    .end local v4           #i:I
    .end local v12           #candidates:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/CharSequence;>;"
    .end local v14           #gestureChar:C
    .end local v16           #startWord:Ljava/lang/CharSequence;
    .restart local p1
    :pswitch_2
    check-cast p1, Lcom/nuance/xt9/input/WriteThreadQueue$CharQueueItem;

    .end local p1
    move-object/from16 v0, p1

    iget-char v0, v0, Lcom/nuance/xt9/input/WriteThreadQueue$CharQueueItem;->mChar:C

    move v13, v0

    .line 245
    .local v13, ch:C
    new-instance v3, Lcom/nuance/xt9/input/WriteRecognizerListener$CharWriteEvent;

    invoke-direct {v3, v13}, Lcom/nuance/xt9/input/WriteRecognizerListener$CharWriteEvent;-><init>(C)V

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlpha;->notifyWriteEventListeners(Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;)V

    goto/16 :goto_0

    .line 249
    .end local v13           #ch:C
    .restart local p1
    :pswitch_3
    check-cast p1, Lcom/nuance/xt9/input/WriteThreadQueue$TextQueueItem;

    .end local p1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteThreadQueue$TextQueueItem;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    .line 250
    .local v17, text:Ljava/lang/CharSequence;
    new-instance v3, Lcom/nuance/xt9/input/WriteRecognizerListener$TextWriteEvent;

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteRecognizerListener$TextWriteEvent;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlpha;->notifyWriteEventListeners(Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;)V

    goto/16 :goto_0

    .line 254
    .end local v17           #text:Ljava/lang/CharSequence;
    .restart local p1
    :pswitch_4
    check-cast p1, Lcom/nuance/xt9/input/WriteThreadQueue$ChangeAlphaSettings;

    .end local p1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/xt9/input/WriteThreadQueue$ChangeAlphaSettings;->mSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;

    move-object v15, v0

    .line 255
    .local v15, settings:Lcom/nuance/xt9/input/WriteAlphaSettings;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/WriteAlpha;->mSession:I

    move v3, v0

    invoke-static {v3, v15}, Lcom/nuance/xt9/input/NativeWriteAlpha;->Write_Alpha_changeSettings(ILcom/nuance/xt9/input/WriteAlphaSettings;)I

    goto/16 :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method copyWordArray([CLjava/lang/CharSequence;)V
    .locals 5
    .parameter "wordArray"
    .parameter "word"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 262
    if-eqz p2, :cond_1

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    array-length v1, p1

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_0

    .line 265
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {p1, v0, v1, v2}, Ljava/util/Arrays;->fill([CIIC)V

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-static {p1, v0, v1, v3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 273
    .end local v0           #i:I
    :goto_1
    return-void

    .line 270
    :cond_1
    invoke-static {p1, v3, v4, v3}, Ljava/util/Arrays;->fill([CIIC)V

    goto :goto_1
.end method

.method public create()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mWriteThreadQueue:Lcom/nuance/xt9/input/WriteThreadQueue;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WriteThreadQueue;->start()V

    .line 47
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mDatabaseConfigFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeWriteAlpha;->Write_Alpha_create(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mSession:I

    .line 48
    iget v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mSession:I

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
    .line 63
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mRegcognizerListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 64
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mWriteThreadQueue:Lcom/nuance/xt9/input/WriteThreadQueue;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WriteThreadQueue;->stop()V

    .line 65
    iget v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mSession:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeWriteAlpha;->Write_Alpha_destroy(I)I

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mSession:I

    .line 67
    return-void
.end method

.method public endArcsAddingSequence()V
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mRecognitionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mRecognitionState:I

    .line 116
    iget v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mSession:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeWriteAlpha;->Write_Alpha_endArc(I)I

    .line 118
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/nuance/xt9/input/WriteAlpha;->endArcsAddingSequence()V

    .line 58
    iget v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mSession:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeWriteAlpha;->Write_Alpha_finish(I)I

    .line 59
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mStartWord:[C

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 60
    return-void
.end method

.method public getCurrentArcsAddingSequence()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mRecognitionState:I

    return v0
.end method

.method public getDatabaseVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mSession:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeWriteAlpha;->Write_Alpha_getDatabaseVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mSession:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeWriteAlpha;->Write_Alpha_getVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public noteSelectedCandidate(I)V
    .locals 1
    .parameter "wordIndex"

    .prologue
    .line 97
    iget v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mSession:I

    invoke-static {v0, p1}, Lcom/nuance/xt9/input/NativeWriteAlpha;->Write_Alpha_noteSelectedCandidate(II)I

    .line 98
    return-void
.end method

.method public queueAddArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter
    .parameter
    .parameter "startWord"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, arc1:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    .local p2, arc2:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    const/4 v2, 0x0

    .line 125
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 126
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mWriteThreadQueue:Lcom/nuance/xt9/input/WriteThreadQueue;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2, p3}, Lcom/nuance/xt9/input/WriteThreadQueue;->addArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    if-eqz p1, :cond_2

    .line 129
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mWriteThreadQueue:Lcom/nuance/xt9/input/WriteThreadQueue;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2, p3}, Lcom/nuance/xt9/input/WriteThreadQueue;->addArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 131
    :cond_2
    if-eqz p2, :cond_0

    .line 132
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mWriteThreadQueue:Lcom/nuance/xt9/input/WriteThreadQueue;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v1, p3}, Lcom/nuance/xt9/input/WriteThreadQueue;->addArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public queueChar(C)V
    .locals 1
    .parameter "ch"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mWriteThreadQueue:Lcom/nuance/xt9/input/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/WriteThreadQueue;->addChar(C)V

    .line 147
    return-void
.end method

.method public queueRecognition(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "startWord"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mWriteThreadQueue:Lcom/nuance/xt9/input/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/WriteThreadQueue;->addRecognize(Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method

.method public queueText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mWriteThreadQueue:Lcom/nuance/xt9/input/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/WriteThreadQueue;->addText(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method

.method public removeRecognizeListener(Lcom/nuance/xt9/input/WriteRecognizerListener$OnWriteRecognizerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mRegcognizerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mRegcognizerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    return-void
.end method

.method public start(Lcom/nuance/xt9/input/WriteAlphaSettings;I)Z
    .locals 2
    .parameter "settings"
    .parameter "languageID"

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mStartWord:[C

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 53
    iget v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mSession:I

    invoke-static {v0, p1, p2}, Lcom/nuance/xt9/input/NativeWriteAlpha;->Write_Alpha_start(ILcom/nuance/xt9/input/WriteAlphaSettings;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public startArcsAddingSequence()V
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mRecognitionState:I

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mRecognitionState:I

    .line 109
    iget v0, p0, Lcom/nuance/xt9/input/WriteAlpha;->mSession:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeWriteAlpha;->Write_Alpha_beginArc(I)I

    .line 111
    :cond_0
    return-void
.end method
