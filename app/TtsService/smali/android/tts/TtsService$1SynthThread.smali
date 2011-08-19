.class Landroid/tts/TtsService$1SynthThread;
.super Ljava/lang/Object;
.source "TtsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/tts/TtsService;->speakInternalOnly(Landroid/tts/TtsService$SpeechItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SynthThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/tts/TtsService;

.field final synthetic val$speechItem:Landroid/tts/TtsService$SpeechItem;


# direct methods
.method constructor <init>(Landroid/tts/TtsService;Landroid/tts/TtsService$SpeechItem;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 772
    iput-object p1, p0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    iput-object p2, p0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 774
    const/16 v16, 0x0

    .line 775
    .local v16, synthAvailable:Z
    const-string v17, ""

    .line 777
    .local v17, utteranceId:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/tts/TtsService;->access$200(Landroid/tts/TtsService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v16

    .line 778
    if-nez v16, :cond_2

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/tts/TtsService;->access$302(Landroid/tts/TtsService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 780
    const-wide/16 v20, 0x64

    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V

    .line 781
    new-instance v15, Ljava/lang/Thread;

    new-instance v20, Landroid/tts/TtsService$1SynthThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Landroid/tts/TtsService$1SynthThread;-><init>(Landroid/tts/TtsService;Landroid/tts/TtsService$SpeechItem;)V

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 782
    .local v15, synth:Ljava/lang/Thread;
    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/tts/TtsService;->access$302(Landroid/tts/TtsService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 873
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_0

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/tts/TtsService;->access$000(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :cond_0
    if-eqz v16, :cond_1

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/tts/TtsService;->access$200(Landroid/tts/TtsService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/tts/TtsService;->access$100(Landroid/tts/TtsService;)V

    .line 881
    .end local v15           #synth:Ljava/lang/Thread;
    :cond_1
    :goto_0
    return-void

    .line 786
    :cond_2
    const/4 v14, 0x3

    .line 787
    .local v14, streamType:I
    :try_start_1
    const-string v9, ""

    .line 788
    .local v9, language:Ljava/lang/String;
    const-string v5, ""

    .line 789
    .local v5, country:Ljava/lang/String;
    const-string v18, ""

    .line 790
    .local v18, variant:Ljava/lang/String;
    const-string v13, ""

    .line 791
    .local v13, speechRate:Ljava/lang/String;
    const-string v7, ""

    .line 792
    .local v7, engine:Ljava/lang/String;
    const-string v12, ""

    .line 793
    .local v12, pitch:Ljava/lang/String;
    const/high16 v19, 0x3f80

    .line 794
    .local v19, volume:F
    const/4 v10, 0x0

    .line 795
    .local v10, pan:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    .line 796
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x1

    sub-int v20, v20, v21

    move v0, v8

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 798
    .local v11, param:Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 799
    const-string v20, "rate"

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    add-int/lit8 v21, v8, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #speechRate:Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 796
    .restart local v13       #speechRate:Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x2

    goto :goto_1

    .line 801
    :cond_4
    const-string v20, "language"

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    add-int/lit8 v21, v8, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #language:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9       #language:Ljava/lang/String;
    goto :goto_2

    .line 803
    :cond_5
    const-string v20, "country"

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    add-int/lit8 v21, v8, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #country:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5       #country:Ljava/lang/String;
    goto :goto_2

    .line 805
    :cond_6
    const-string v20, "variant"

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    add-int/lit8 v21, v8, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #variant:Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .restart local v18       #variant:Ljava/lang/String;
    goto :goto_2

    .line 807
    :cond_7
    const-string v20, "utteranceId"

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    add-int/lit8 v21, v8, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_2

    .line 809
    :cond_8
    const-string v20, "streamType"

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v20

    if-eqz v20, :cond_9

    .line 811
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    add-int/lit8 v21, v8, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v14

    goto/16 :goto_2

    .line 813
    :catch_0
    move-exception v20

    move-object/from16 v6, v20

    .line 814
    .local v6, e:Ljava/lang/NumberFormatException;
    const/4 v14, 0x3

    .line 815
    goto/16 :goto_2

    .line 816
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :cond_9
    :try_start_3
    const-string v20, "engine"

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    add-int/lit8 v21, v8, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #engine:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .restart local v7       #engine:Ljava/lang/String;
    goto/16 :goto_2

    .line 818
    :cond_a
    const-string v20, "pitch"

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    add-int/lit8 v21, v8, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #pitch:Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .restart local v12       #pitch:Ljava/lang/String;
    goto/16 :goto_2

    .line 820
    :cond_b
    const-string v20, "volume"

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v20

    if-eqz v20, :cond_c

    .line 822
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    add-int/lit8 v21, v8, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v19

    goto/16 :goto_2

    .line 823
    :catch_1
    move-exception v20

    move-object/from16 v6, v20

    .line 824
    .restart local v6       #e:Ljava/lang/NumberFormatException;
    const/high16 v19, 0x3f80

    .line 825
    goto/16 :goto_2

    .line 826
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :cond_c
    :try_start_5
    const-string v20, "pan"

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v20

    if-eqz v20, :cond_3

    .line 828
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    add-int/lit8 v21, v8, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3

    move-result v10

    goto/16 :goto_2

    .line 829
    :catch_2
    move-exception v20

    move-object/from16 v6, v20

    .line 830
    .restart local v6       #e:Ljava/lang/NumberFormatException;
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 837
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .end local v8           #i:I
    .end local v11           #param:Ljava/lang/String;
    :cond_d
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/tts/TtsService;->access$400(Landroid/tts/TtsService;)Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    if-nez v20, :cond_e

    .line 838
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_10

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/tts/TtsService;->access$500(Landroid/tts/TtsService;Ljava/lang/String;)I

    .line 843
    :goto_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_12

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v20, v0

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v9

    move-object v3, v5

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Landroid/tts/TtsService;->access$700(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :goto_4
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_15

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v20, v0

    const-string v21, ""

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v20 .. v22}, Landroid/tts/TtsService;->access$1100(Landroid/tts/TtsService;Ljava/lang/String;I)I

    .line 854
    :goto_5
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_16

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v20, v0

    const-string v21, ""

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v20 .. v22}, Landroid/tts/TtsService;->access$1300(Landroid/tts/TtsService;Ljava/lang/String;I)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3

    .line 860
    :goto_6
    :try_start_8
    invoke-static {}, Landroid/tts/TtsService;->access$1500()Landroid/tts/SynthProxy;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/tts/TtsService$SpeechItem;->mText:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move v2, v14

    move/from16 v3, v19

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/tts/SynthProxy;->speak(Ljava/lang/String;IFF)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3

    .line 873
    :cond_e
    :goto_7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_f

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/tts/TtsService;->access$000(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :cond_f
    if-eqz v16, :cond_1

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/tts/TtsService;->access$200(Landroid/tts/TtsService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/tts/TtsService;->access$100(Landroid/tts/TtsService;)V

    goto/16 :goto_0

    .line 841
    :cond_10
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/tts/TtsService;->access$600(Landroid/tts/TtsService;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/tts/TtsService;->access$500(Landroid/tts/TtsService;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_3

    .line 866
    .end local v5           #country:Ljava/lang/String;
    .end local v7           #engine:Ljava/lang/String;
    .end local v9           #language:Ljava/lang/String;
    .end local v10           #pan:F
    .end local v12           #pitch:Ljava/lang/String;
    .end local v13           #speechRate:Ljava/lang/String;
    .end local v14           #streamType:I
    .end local v18           #variant:Ljava/lang/String;
    .end local v19           #volume:F
    :catch_3
    move-exception v20

    move-object/from16 v6, v20

    .line 867
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_a
    const-string v20, "TtsService"

    const-string v21, "TTS speakInternalOnly(): tryLock interrupted"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 873
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_11

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/tts/TtsService;->access$000(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :cond_11
    if-eqz v16, :cond_1

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/tts/TtsService;->access$200(Landroid/tts/TtsService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/tts/TtsService;->access$100(Landroid/tts/TtsService;)V

    goto/16 :goto_0

    .line 846
    .end local v6           #e:Ljava/lang/InterruptedException;
    .restart local v5       #country:Ljava/lang/String;
    .restart local v7       #engine:Ljava/lang/String;
    .restart local v9       #language:Ljava/lang/String;
    .restart local v10       #pan:F
    .restart local v12       #pitch:Ljava/lang/String;
    .restart local v13       #speechRate:Ljava/lang/String;
    .restart local v14       #streamType:I
    .restart local v18       #variant:Ljava/lang/String;
    .restart local v19       #volume:F
    :cond_12
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v20, v0

    const-string v21, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/tts/TtsService;->access$800(Landroid/tts/TtsService;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/tts/TtsService;->access$900(Landroid/tts/TtsService;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/tts/TtsService;->access$1000(Landroid/tts/TtsService;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v20 .. v24}, Landroid/tts/TtsService;->access$700(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_4

    .line 873
    .end local v5           #country:Ljava/lang/String;
    .end local v7           #engine:Ljava/lang/String;
    .end local v9           #language:Ljava/lang/String;
    .end local v10           #pan:F
    .end local v12           #pitch:Ljava/lang/String;
    .end local v13           #speechRate:Ljava/lang/String;
    .end local v14           #streamType:I
    .end local v18           #variant:Ljava/lang/String;
    .end local v19           #volume:F
    :catchall_0
    move-exception v20

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_13

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/tts/TtsService;->access$000(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :cond_13
    if-eqz v16, :cond_14

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/tts/TtsService;->access$200(Landroid/tts/TtsService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/tts/TtsService;->access$100(Landroid/tts/TtsService;)V

    :cond_14
    throw v20

    .line 852
    .restart local v5       #country:Ljava/lang/String;
    .restart local v7       #engine:Ljava/lang/String;
    .restart local v9       #language:Ljava/lang/String;
    .restart local v10       #pan:F
    .restart local v12       #pitch:Ljava/lang/String;
    .restart local v13       #speechRate:Ljava/lang/String;
    .restart local v14       #streamType:I
    .restart local v18       #variant:Ljava/lang/String;
    .restart local v19       #volume:F
    :cond_15
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v20, v0

    const-string v21, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/tts/TtsService;->access$1200(Landroid/tts/TtsService;)I

    move-result v22

    invoke-static/range {v20 .. v22}, Landroid/tts/TtsService;->access$1100(Landroid/tts/TtsService;Ljava/lang/String;I)I

    goto/16 :goto_5

    .line 857
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v20, v0

    const-string v21, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/tts/TtsService;->access$1400(Landroid/tts/TtsService;)I

    move-result v22

    invoke-static/range {v20 .. v22}, Landroid/tts/TtsService;->access$1300(Landroid/tts/TtsService;Ljava/lang/String;I)I

    goto/16 :goto_6

    .line 861
    :catch_4
    move-exception v20

    move-object/from16 v6, v20

    .line 863
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v20, "TtsService"

    const-string v21, " null synth, can\'t speak"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_7
.end method
