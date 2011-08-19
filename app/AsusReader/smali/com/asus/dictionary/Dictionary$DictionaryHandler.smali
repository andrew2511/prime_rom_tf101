.class Lcom/asus/dictionary/Dictionary$DictionaryHandler;
.super Landroid/os/Handler;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dictionary/Dictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DictionaryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dictionary/Dictionary;


# direct methods
.method constructor <init>(Lcom/asus/dictionary/Dictionary;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    .line 233
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 234
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 41
    .parameter "msg"

    .prologue
    .line 239
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/Bundle;

    .line 241
    .local v27, lookupParameter:Landroid/os/Bundle;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v37, v0

    packed-switch v37, :pswitch_data_0

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 244
    :pswitch_0
    const-string v37, "word"

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 245
    .local v36, wordLookup:Ljava/lang/String;
    const-string v37, "language"

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 248
    .local v35, wordLanguage:Ljava/lang/String;
    const-string v37, ""

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_0

    .line 250
    const-string v37, "Dictionary"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "LOOKUP_WORD start word="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " wordLanguage="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/asus/dictionary/Dictionary;->access$100(Lcom/asus/dictionary/Dictionary;)Landroid/net/ConnectivityManager;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v29

    .line 253
    .local v29, networkInfo:Landroid/net/NetworkInfo;
    const/16 v20, 0x0

    .line 254
    .local v20, fetchSucess:Z
    if-eqz v29, :cond_7

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v37

    if-eqz v37, :cond_7

    .line 256
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v24, futureList:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/Future<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    if-eqz v35, :cond_1

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->hasMessages(I)Z

    move-result v37

    if-nez v37, :cond_1

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/asus/dictionary/Dictionary;->dicUrlGenerator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 261
    .local v11, dicUrl:Ljava/lang/String;
    new-instance v21, Lcom/asus/dictionary/Dictionary$FetchDataOnGoogle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/asus/dictionary/Dictionary$FetchDataOnGoogle;-><init>(Lcom/asus/dictionary/Dictionary;Ljava/lang/String;)V

    .line 262
    .local v21, fetchTask:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/asus/dictionary/Dictionary;->access$200(Lcom/asus/dictionary/Dictionary;)Ljava/util/concurrent/ExecutorService;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v30

    .line 263
    .local v30, originFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/asus/dictionary/Dictionary;->access$300(Lcom/asus/dictionary/Dictionary;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/asus/dictionary/Dictionary;->dicUrlGenerator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 266
    .local v12, dicUrl2:Ljava/lang/String;
    new-instance v22, Lcom/asus/dictionary/Dictionary$FetchDataOnGoogle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/asus/dictionary/Dictionary$FetchDataOnGoogle;-><init>(Lcom/asus/dictionary/Dictionary;Ljava/lang/String;)V

    .line 267
    .local v22, fetchTask2:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/asus/dictionary/Dictionary;->access$200(Lcom/asus/dictionary/Dictionary;)Ljava/util/concurrent/ExecutorService;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v31

    .line 268
    .local v31, originFuture2:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    .end local v11           #dicUrl:Ljava/lang/String;
    .end local v12           #dicUrl2:Ljava/lang/String;
    .end local v21           #fetchTask:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v22           #fetchTask2:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v30           #originFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v31           #originFuture2:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    const-string v37, "android.intent.extra.TEXT"

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 273
    .local v15, extraData:Ljava/lang/String;
    if-eqz v15, :cond_2

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->hasMessages(I)Z

    move-result v37

    if-nez v37, :cond_2

    .line 274
    new-instance v16, Lcom/asus/dictionary/Dictionary$FetchWithDetectOnGoogle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dictionary/Dictionary$FetchWithDetectOnGoogle;-><init>(Lcom/asus/dictionary/Dictionary;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .local v16, extraDetectFetchTask:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/asus/dictionary/Dictionary;->access$200(Lcom/asus/dictionary/Dictionary;)Ljava/util/concurrent/ExecutorService;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v18

    .line 276
    .local v18, extraFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v17, Lcom/asus/dictionary/Dictionary$FetchWithDetectOnGoogle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/asus/dictionary/Dictionary;->access$300(Lcom/asus/dictionary/Dictionary;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dictionary/Dictionary$FetchWithDetectOnGoogle;-><init>(Lcom/asus/dictionary/Dictionary;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .local v17, extraDetectFetchTask2:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/asus/dictionary/Dictionary;->access$200(Lcom/asus/dictionary/Dictionary;)Ljava/util/concurrent/ExecutorService;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v19

    .line 280
    .local v19, extraFuture2:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    .end local v16           #extraDetectFetchTask:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v17           #extraDetectFetchTask2:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v18           #extraFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v19           #extraFuture2:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->hasMessages(I)Z

    move-result v37

    if-nez v37, :cond_3

    .line 285
    new-instance v7, Lcom/asus/dictionary/Dictionary$FetchWithDetectOnGoogle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    move-object v0, v7

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dictionary/Dictionary$FetchWithDetectOnGoogle;-><init>(Lcom/asus/dictionary/Dictionary;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .local v7, detectFetchTask:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/asus/dictionary/Dictionary;->access$200(Lcom/asus/dictionary/Dictionary;)Ljava/util/concurrent/ExecutorService;

    move-result-object v37

    move-object/from16 v0, v37

    move-object v1, v7

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v9

    .line 287
    .local v9, detectFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, v24

    move-object v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v8, Lcom/asus/dictionary/Dictionary$FetchWithDetectOnGoogle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/asus/dictionary/Dictionary;->access$300(Lcom/asus/dictionary/Dictionary;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object v0, v8

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dictionary/Dictionary$FetchWithDetectOnGoogle;-><init>(Lcom/asus/dictionary/Dictionary;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .local v8, detectFetchTask2:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/asus/dictionary/Dictionary;->access$200(Lcom/asus/dictionary/Dictionary;)Ljava/util/concurrent/ExecutorService;

    move-result-object v37

    move-object/from16 v0, v37

    move-object v1, v8

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v10

    .line 291
    .local v10, detectFuture2:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, v24

    move-object v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    .end local v7           #detectFetchTask:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v8           #detectFetchTask2:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v9           #detectFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v10           #detectFuture2:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/asus/dictionary/Dictionary;->access$400(Lcom/asus/dictionary/Dictionary;)J

    move-result-wide v39

    add-long v5, v37, v39

    .line 296
    .local v5, deadline:J
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_5

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/concurrent/Future;

    .line 297
    .local v23, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v37

    sub-long v33, v5, v37

    .line 298
    .local v33, timeout:J
    const-wide/16 v37, 0x1

    cmp-long v37, v33, v37

    if-lez v37, :cond_6

    .line 299
    :goto_1
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->hasMessages(I)Z

    move-result v37

    if-nez v37, :cond_4

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v37

    if-eqz v37, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    move-wide/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/asus/dictionary/Dictionary;->lookupStringOnGoogle(Landroid/os/Bundle;Ljava/util/concurrent/Future;J)Z

    move-result v37

    if-eqz v37, :cond_4

    .line 302
    const/16 v20, 0x1

    .line 307
    .end local v23           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v33           #timeout:J
    :cond_5
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_7

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/concurrent/Future;

    .line 308
    .restart local v23       #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/16 v37, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_2

    .line 298
    .restart local v33       #timeout:J
    :cond_6
    const-wide/16 v37, 0x1

    move-wide/from16 v33, v37

    goto :goto_1

    .line 314
    .end local v5           #deadline:J
    .end local v15           #extraData:Ljava/lang/String;
    .end local v23           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v24           #futureList:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/Future<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v25           #i$:Ljava/util/Iterator;
    .end local v33           #timeout:J
    :cond_7
    if-nez v20, :cond_9

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/asus/dictionary/Dictionary;->access$500(Lcom/asus/dictionary/Dictionary;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v37

    if-eqz v37, :cond_8

    .line 317
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/asus/dictionary/Dictionary;->access$600(Lcom/asus/dictionary/Dictionary;)Ljava/util/HashMap;

    move-result-object v37

    monitor-enter v37
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/asus/dictionary/Dictionary;->access$600(Lcom/asus/dictionary/Dictionary;)Ljava/util/HashMap;

    move-result-object v38

    const-wide/16 v39, 0x3e8

    invoke-virtual/range {v38 .. v40}, Ljava/lang/Object;->wait(J)V

    .line 319
    monitor-exit v37
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    :cond_8
    :goto_3
    if-eqz v35, :cond_a

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->hasMessages(I)Z

    move-result v37

    if-nez v37, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/asus/dictionary/Dictionary;->lookupStringInXcome(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v37

    if-eqz v37, :cond_a

    .line 353
    :cond_9
    :goto_4
    const-string v37, "outcome"

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    if-nez v37, :cond_d

    .line 354
    const-string v37, "Dictionary"

    const-string v38, "LOOKUP_WORD end no outcome"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/asus/dictionary/Dictionary;->access$800(Lcom/asus/dictionary/Dictionary;)Landroid/os/Handler;

    move-result-object v37

    if-eqz v37, :cond_0

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/asus/dictionary/Dictionary;->access$800(Lcom/asus/dictionary/Dictionary;)Landroid/os/Handler;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/asus/dictionary/Dictionary;->access$900(Lcom/asus/dictionary/Dictionary;)I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 319
    :catchall_0
    move-exception v38

    :try_start_2
    monitor-exit v37
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v38
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 321
    :catch_0
    move-exception v37

    move-object/from16 v14, v37

    .line 322
    .local v14, ex:Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 329
    .end local v14           #ex:Ljava/lang/Exception;
    :cond_a
    if-eqz v35, :cond_b

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->hasMessages(I)Z

    move-result v37

    if-nez v37, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/asus/dictionary/Dictionary;->access$300(Lcom/asus/dictionary/Dictionary;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v35

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/asus/dictionary/Dictionary;->lookupStringInXcome(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v37

    if-nez v37, :cond_9

    .line 334
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/asus/dictionary/Dictionary;->access$600(Lcom/asus/dictionary/Dictionary;)Ljava/util/HashMap;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .line 336
    .local v28, mapIterator:Ljava/util/Iterator;
    :cond_c
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_9

    .line 338
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 339
    .local v13, entry:Ljava/util/Map$Entry;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 340
    .local v26, key:Ljava/lang/String;
    const-string v37, "Dictionary"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "key="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "mUserLanguage="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/asus/dictionary/Dictionary;->access$700(Lcom/asus/dictionary/Dictionary;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/16 v37, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/asus/dictionary/Dictionary;->access$700(Lcom/asus/dictionary/Dictionary;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v37

    if-eqz v37, :cond_c

    .line 344
    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/asus/dictionary/Dictionary;->access$700(Lcom/asus/dictionary/Dictionary;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, v26

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    .line 345
    .local v32, testLang:Ljava/lang/String;
    const-string v37, "Dictionary"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "key="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "testLang="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    move-object/from16 v2, v32

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/asus/dictionary/Dictionary;->lookupStringInXcome(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v37

    if-nez v37, :cond_9

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/asus/dictionary/Dictionary;->access$300(Lcom/asus/dictionary/Dictionary;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v32

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/asus/dictionary/Dictionary;->lookupStringInXcome(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v37

    if-eqz v37, :cond_c

    goto/16 :goto_4

    .line 361
    .end local v13           #entry:Ljava/util/Map$Entry;
    .end local v26           #key:Ljava/lang/String;
    .end local v28           #mapIterator:Ljava/util/Iterator;
    .end local v32           #testLang:Ljava/lang/String;
    :cond_d
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->hasMessages(I)Z

    move-result v37

    if-nez v37, :cond_0

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/asus/dictionary/Dictionary;->access$1000(Lcom/asus/dictionary/Dictionary;)Landroid/os/Handler;

    move-result-object v37

    const/16 v38, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/os/Message;->sendToTarget()V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/asus/dictionary/Dictionary;->access$800(Lcom/asus/dictionary/Dictionary;)Landroid/os/Handler;

    move-result-object v37

    if-eqz v37, :cond_0

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/asus/dictionary/Dictionary;->access$800(Lcom/asus/dictionary/Dictionary;)Landroid/os/Handler;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$DictionaryHandler;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/asus/dictionary/Dictionary;->access$1100(Lcom/asus/dictionary/Dictionary;)I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
