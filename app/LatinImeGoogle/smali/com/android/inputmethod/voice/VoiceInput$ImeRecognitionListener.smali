.class Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;
.super Ljava/lang/Object;
.source "VoiceInput.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/voice/VoiceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImeRecognitionListener"
.end annotation


# instance fields
.field private mEndpointed:Z

.field mSpeechStart:I

.field final mWaveBuffer:Ljava/io/ByteArrayOutputStream;

.field final synthetic this$0:Lcom/android/inputmethod/voice/VoiceInput;


# direct methods
.method private constructor <init>(Lcom/android/inputmethod/voice/VoiceInput;)V
    .locals 1
    .parameter

    .prologue
    .line 578
    iput-object p1, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    .line 582
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mEndpointed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/voice/VoiceInput;Lcom/android/inputmethod/voice/VoiceInput$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 578
    invoke-direct {p0, p1}, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;-><init>(Lcom/android/inputmethod/voice/VoiceInput;)V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 1

    .prologue
    .line 591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mEndpointed:Z

    .line 592
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mSpeechStart:I

    .line 593
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 1
    .parameter "buf"

    .prologue
    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :goto_0
    return-void

    .line 604
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onEndOfSpeech()V
    .locals 4

    .prologue
    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mEndpointed:Z

    .line 612
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/inputmethod/voice/VoiceInput;->access$002(Lcom/android/inputmethod/voice/VoiceInput;I)I

    .line 613
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-static {v0}, Lcom/android/inputmethod/voice/VoiceInput;->access$100(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/RecognitionView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    iget v2, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mSpeechStart:I

    iget-object v3, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/voice/RecognitionView;->showWorking(Ljava/io/ByteArrayOutputStream;II)V

    .line 614
    return-void
.end method

.method public onError(I)V
    .locals 2
    .parameter "errorType"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/inputmethod/voice/VoiceInput;->access$002(Lcom/android/inputmethod/voice/VoiceInput;I)I

    .line 619
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    iget-boolean v1, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mEndpointed:Z

    invoke-static {v0, p1, v1}, Lcom/android/inputmethod/voice/VoiceInput;->access$400(Lcom/android/inputmethod/voice/VoiceInput;IZ)V

    .line 620
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "eventType"
    .parameter "params"

    .prologue
    .line 683
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 0
    .parameter "partialResults"

    .prologue
    .line 678
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 1
    .parameter "noiseParams"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-static {v0}, Lcom/android/inputmethod/voice/VoiceInput;->access$100(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/RecognitionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/RecognitionView;->showListening()V

    .line 587
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 20
    .parameter "resultsBundle"

    .prologue
    .line 624
    const-string v18, "results_recognition"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 628
    .local v13, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v18, "alternates_bundle"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 629
    .local v7, alternatesBundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/inputmethod/voice/VoiceInput;->access$002(Lcom/android/inputmethod/voice/VoiceInput;I)I

    .line 631
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 634
    .local v8, alternatives:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/CharSequence;>;>;"
    sget-boolean v18, Lcom/android/inputmethod/voice/VoiceInput;->ENABLE_WORD_CORRECTIONS:Z

    if-eqz v18, :cond_3

    if-eqz v7, :cond_3

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_3

    .line 636
    const/16 v18, 0x0

    move-object v0, v13

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    const-string v18, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 637
    .local v17, words:[Ljava/lang/String;
    const-string v18, "spans"

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    .line 638
    .local v15, spansBundle:Landroid/os/Bundle;
    invoke-virtual {v15}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 640
    .local v11, key:Ljava/lang/String;
    invoke-virtual {v15, v11}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 641
    .local v14, spanBundle:Landroid/os/Bundle;
    const-string v18, "start"

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 642
    .local v16, start:I
    const-string v18, "length"

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 644
    .local v12, length:I
    const/16 v18, 0x1

    move v0, v12

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 648
    aget-object v18, v17, v16

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 649
    .local v3, altList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-nez v3, :cond_1

    .line 650
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #altList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .restart local v3       #altList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    aget-object v18, v17, v16

    move-object v0, v8

    move-object/from16 v1, v18

    move-object v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    :cond_1
    const-string v18, "alternates"

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v6

    .line 655
    .local v6, alternatesArr:[Landroid/os/Parcelable;
    const/4 v10, 0x0

    .line 656
    .local v10, j:I
    :goto_0
    move-object v0, v6

    array-length v0, v0

    move/from16 v18, v0

    move v0, v10

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 657
    aget-object v5, v6, v10

    check-cast v5, Landroid/os/Bundle;

    .line 658
    .local v5, alternateBundle:Landroid/os/Bundle;
    const-string v18, "text"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 660
    .local v4, alternate:Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 661
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 668
    .end local v3           #altList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v4           #alternate:Ljava/lang/String;
    .end local v5           #alternateBundle:Landroid/os/Bundle;
    .end local v6           #alternatesArr:[Landroid/os/Parcelable;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #j:I
    .end local v11           #key:Ljava/lang/String;
    .end local v12           #length:I
    .end local v14           #spanBundle:Landroid/os/Bundle;
    .end local v15           #spansBundle:Landroid/os/Bundle;
    .end local v16           #start:I
    .end local v17           #words:[Ljava/lang/String;
    :cond_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 669
    const/16 v18, 0x0

    const/16 v19, 0x5

    move-object v0, v13

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v13

    .line 671
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/inputmethod/voice/VoiceInput;->access$200(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/VoiceInput$UiListener;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v13

    move-object v2, v8

    invoke-interface {v0, v1, v2}, Lcom/android/inputmethod/voice/VoiceInput$UiListener;->onVoiceResults(Ljava/util/List;Ljava/util/Map;)V

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/inputmethod/voice/VoiceInput;->access$100(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/RecognitionView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/inputmethod/voice/RecognitionView;->finish()V

    .line 673
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 1
    .parameter "rmsdB"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-static {v0}, Lcom/android/inputmethod/voice/VoiceInput;->access$100(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/RecognitionView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/RecognitionView;->updateVoiceMeter(F)V

    .line 598
    return-void
.end method
