.class Landroid/tts/TtsService$2SynthThread;
.super Ljava/lang/Object;
.source "TtsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/tts/TtsService;->synthToFileInternalOnly(Landroid/tts/TtsService$SpeechItem;)V
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
    .line 889
    iput-object p1, p0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    iput-object p2, p0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 891
    const/4 v10, 0x0

    .line 892
    .local v10, synthAvailable:Z
    const-string v11, ""

    .line 893
    .local v11, utteranceId:Ljava/lang/String;
    const-string v13, "TtsService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Synthesizing to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object v15, v0

    iget-object v15, v15, Landroid/tts/TtsService$SpeechItem;->mFilename:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v13, v0

    invoke-static {v13}, Landroid/tts/TtsService;->access$200(Landroid/tts/TtsService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v10

    .line 896
    if-nez v10, :cond_5

    .line 897
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v13, v0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/tts/TtsService;->access$302(Landroid/tts/TtsService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 899
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 900
    const-wide/16 v13, 0x64

    :try_start_2
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    .line 901
    new-instance v9, Ljava/lang/Thread;

    new-instance v13, Landroid/tts/TtsService$2SynthThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object v15, v0

    invoke-direct {v13, v14, v15}, Landroid/tts/TtsService$2SynthThread;-><init>(Landroid/tts/TtsService;Landroid/tts/TtsService$SpeechItem;)V

    invoke-direct {v9, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 902
    .local v9, synth:Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 903
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 904
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/tts/TtsService;->access$302(Landroid/tts/TtsService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 905
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 973
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_0

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object v14, v0

    iget-object v14, v14, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    invoke-static {v13, v11, v14}, Landroid/tts/TtsService;->access$000(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    :cond_0
    if-eqz v10, :cond_1

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v13, v0

    invoke-static {v13}, Landroid/tts/TtsService;->access$200(Landroid/tts/TtsService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v13, v0

    invoke-static {v13}, Landroid/tts/TtsService;->access$100(Landroid/tts/TtsService;)V

    .line 981
    .end local v9           #synth:Ljava/lang/Thread;
    :cond_1
    :goto_0
    return-void

    .line 899
    :catchall_0
    move-exception v13

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 966
    :catch_0
    move-exception v13

    move-object v2, v13

    .line 967
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_6
    const-string v13, "TtsService"

    const-string v14, "TTS synthToFileInternalOnly(): tryLock interrupted"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 973
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_2

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object v14, v0

    iget-object v14, v14, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    invoke-static {v13, v11, v14}, Landroid/tts/TtsService;->access$000(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    :cond_2
    if-eqz v10, :cond_1

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v13, v0

    invoke-static {v13}, Landroid/tts/TtsService;->access$200(Landroid/tts/TtsService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v13, v0

    invoke-static {v13}, Landroid/tts/TtsService;->access$100(Landroid/tts/TtsService;)V

    goto :goto_0

    .line 905
    .end local v2           #e:Ljava/lang/InterruptedException;
    .restart local v9       #synth:Ljava/lang/Thread;
    :catchall_1
    move-exception v13

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    .line 973
    .end local v9           #synth:Ljava/lang/Thread;
    :catchall_2
    move-exception v13

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_3

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object v15, v0

    iget-object v15, v15, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    invoke-static {v14, v11, v15}, Landroid/tts/TtsService;->access$000(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    :cond_3
    if-eqz v10, :cond_4

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v14, v0

    invoke-static {v14}, Landroid/tts/TtsService;->access$200(Landroid/tts/TtsService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v14, v0

    invoke-static {v14}, Landroid/tts/TtsService;->access$100(Landroid/tts/TtsService;)V

    :cond_4
    throw v13

    .line 908
    :cond_5
    :try_start_9
    const-string v5, ""

    .line 909
    .local v5, language:Ljava/lang/String;
    const-string v1, ""

    .line 910
    .local v1, country:Ljava/lang/String;
    const-string v12, ""

    .line 911
    .local v12, variant:Ljava/lang/String;
    const-string v8, ""

    .line 912
    .local v8, speechRate:Ljava/lang/String;
    const-string v3, ""

    .line 913
    .local v3, engine:Ljava/lang/String;
    const-string v7, ""

    .line 914
    .local v7, pitch:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object v13, v0

    iget-object v13, v13, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    if-eqz v13, :cond_d

    .line 915
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object v13, v0

    iget-object v13, v13, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    if-ge v4, v13, :cond_d

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object v13, v0

    iget-object v13, v13, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 917
    .local v6, param:Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 918
    const-string v13, "rate"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object v13, v0

    iget-object v13, v13, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #speechRate:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 915
    .restart local v8       #speechRate:Ljava/lang/String;
    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 920
    :cond_7
    const-string v13, "language"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object v13, v0

    iget-object v13, v13, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #language:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5       #language:Ljava/lang/String;
    goto :goto_2

    .line 922
    :cond_8
    const-string v13, "country"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object v13, v0

    iget-object v13, v13, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #country:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #country:Ljava/lang/String;
    goto :goto_2

    .line 924
    :cond_9
    const-string v13, "variant"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object v13, v0

    iget-object v13, v13, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #variant:Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .restart local v12       #variant:Ljava/lang/String;
    goto :goto_2

    .line 926
    :cond_a
    const-string v13, "utteranceId"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object v13, v0

    iget-object v13, v13, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    goto :goto_2

    .line 928
    :cond_b
    const-string v13, "engine"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object v13, v0

    iget-object v13, v13, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #engine:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3       #engine:Ljava/lang/String;
    goto :goto_2

    .line 930
    :cond_c
    const-string v13, "pitch"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object v13, v0

    iget-object v13, v13, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #pitch:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .restart local v7       #pitch:Ljava/lang/String;
    goto/16 :goto_2

    .line 937
    .end local v4           #i:I
    .end local v6           #param:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v13, v0

    invoke-static {v13}, Landroid/tts/TtsService;->access$400(Landroid/tts/TtsService;)Ljava/util/HashMap;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object v14, v0

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_e

    .line 938
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_10

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v13, v0

    invoke-static {v13, v3}, Landroid/tts/TtsService;->access$500(Landroid/tts/TtsService;Ljava/lang/String;)I

    .line 943
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_11

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v13, v0

    const-string v14, ""

    invoke-static {v13, v14, v5, v1, v12}, Landroid/tts/TtsService;->access$700(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :goto_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_12

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v13, v0

    const-string v14, ""

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v13, v14, v15}, Landroid/tts/TtsService;->access$1100(Landroid/tts/TtsService;Ljava/lang/String;I)I

    .line 954
    :goto_5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_13

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v13, v0

    const-string v14, ""

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v13, v14, v15}, Landroid/tts/TtsService;->access$1300(Landroid/tts/TtsService;Ljava/lang/String;I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    .line 960
    :goto_6
    :try_start_a
    invoke-static {}, Landroid/tts/TtsService;->access$1500()Landroid/tts/SynthProxy;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object v14, v0

    iget-object v14, v14, Landroid/tts/TtsService$SpeechItem;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object v15, v0

    iget-object v15, v15, Landroid/tts/TtsService$SpeechItem;->mFilename:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/tts/SynthProxy;->synthesizeToFile(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0

    .line 973
    :cond_e
    :goto_7
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_f

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    move-object v14, v0

    iget-object v14, v14, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    invoke-static {v13, v11, v14}, Landroid/tts/TtsService;->access$000(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    :cond_f
    if-eqz v10, :cond_1

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v13, v0

    invoke-static {v13}, Landroid/tts/TtsService;->access$200(Landroid/tts/TtsService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v13, v0

    invoke-static {v13}, Landroid/tts/TtsService;->access$100(Landroid/tts/TtsService;)V

    goto/16 :goto_0

    .line 941
    :cond_10
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v14, v0

    invoke-static {v14}, Landroid/tts/TtsService;->access$600(Landroid/tts/TtsService;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/tts/TtsService;->access$500(Landroid/tts/TtsService;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 946
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v13, v0

    const-string v14, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v15, v0

    invoke-static {v15}, Landroid/tts/TtsService;->access$800(Landroid/tts/TtsService;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/tts/TtsService;->access$900(Landroid/tts/TtsService;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/tts/TtsService;->access$1000(Landroid/tts/TtsService;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v13 .. v17}, Landroid/tts/TtsService;->access$700(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 952
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v13, v0

    const-string v14, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v15, v0

    invoke-static {v15}, Landroid/tts/TtsService;->access$1200(Landroid/tts/TtsService;)I

    move-result v15

    invoke-static {v13, v14, v15}, Landroid/tts/TtsService;->access$1100(Landroid/tts/TtsService;Ljava/lang/String;I)I

    goto/16 :goto_5

    .line 957
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v13, v0

    const-string v14, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    move-object v15, v0

    invoke-static {v15}, Landroid/tts/TtsService;->access$1400(Landroid/tts/TtsService;)I

    move-result v15

    invoke-static {v13, v14, v15}, Landroid/tts/TtsService;->access$1300(Landroid/tts/TtsService;Ljava/lang/String;I)I

    goto/16 :goto_6

    .line 961
    :catch_1
    move-exception v13

    move-object v2, v13

    .line 963
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v13, "TtsService"

    const-string v14, " null synth, can\'t synthesize to file"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_7
.end method
