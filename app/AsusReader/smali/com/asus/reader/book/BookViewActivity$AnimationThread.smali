.class Lcom/asus/reader/book/BookViewActivity$AnimationThread;
.super Ljava/lang/Thread;
.source "BookViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/BookViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationThread"
.end annotation


# instance fields
.field public fps:I

.field public p:I

.field public period:J

.field final synthetic this$0:Lcom/asus/reader/book/BookViewActivity;

.field time:J


# direct methods
.method constructor <init>(Lcom/asus/reader/book/BookViewActivity;)V
    .locals 4
    .parameter

    .prologue
    .line 2290
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2291
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->period:J

    .line 2292
    const/16 v0, 0x23

    iput v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->fps:I

    .line 2293
    iget-wide v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->period:J

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->fps:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->p:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f80

    .line 2299
    :goto_0
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$2600(Lcom/asus/reader/book/BookViewActivity;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2301
    :try_start_0
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$2600(Lcom/asus/reader/book/BookViewActivity;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2303
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2304
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$6900(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2367
    return-void

    .line 2303
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2307
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$2300(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2308
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$1800(Lcom/asus/reader/book/BookViewActivity;)F

    move-result v0

    cmpl-float v0, v0, v12

    if-nez v0, :cond_1

    .line 2309
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$2400(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v0

    int-to-float v10, v0

    .line 2310
    .local v10, nStart:F
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$2200(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v0

    int-to-float v9, v0

    .line 2311
    .local v9, nEnd:F
    sub-float v0, v10, v9

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->p:I

    int-to-float v1, v1

    div-float v11, v0, v1

    .line 2330
    .local v11, nStep:F
    :goto_2
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$1800(Lcom/asus/reader/book/BookViewActivity;)F

    move-result v0

    cmpl-float v0, v0, v12

    if-nez v0, :cond_7

    .line 2331
    move v3, v10

    .local v3, i:F
    :goto_3
    cmpl-float v0, v3, v9

    if-lez v0, :cond_6

    .line 2333
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$2100(Lcom/asus/reader/book/BookViewActivity;)F

    move-result v0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_4

    .line 2331
    :goto_4
    sub-float/2addr v3, v11

    goto :goto_3

    .line 2313
    .end local v3           #i:F
    .end local v9           #nEnd:F
    .end local v10           #nStart:F
    .end local v11           #nStep:F
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$2200(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v0

    int-to-float v10, v0

    .line 2314
    .restart local v10       #nStart:F
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$2400(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v0

    int-to-float v9, v0

    .line 2315
    .restart local v9       #nEnd:F
    sub-float v0, v10, v9

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->p:I

    int-to-float v1, v1

    div-float v11, v0, v1

    .restart local v11       #nStep:F
    goto :goto_2

    .line 2319
    .end local v9           #nEnd:F
    .end local v10           #nStart:F
    .end local v11           #nStep:F
    :cond_2
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$1800(Lcom/asus/reader/book/BookViewActivity;)F

    move-result v0

    cmpl-float v0, v0, v12

    if-nez v0, :cond_3

    .line 2320
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$2400(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v0

    int-to-float v10, v0

    .line 2321
    .restart local v10       #nStart:F
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$2200(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$2400(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v9, v0

    .line 2322
    .restart local v9       #nEnd:F
    sub-float v0, v10, v9

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->p:I

    int-to-float v1, v1

    div-float v11, v0, v1

    .restart local v11       #nStep:F
    goto :goto_2

    .line 2324
    .end local v9           #nEnd:F
    .end local v10           #nStart:F
    .end local v11           #nStep:F
    :cond_3
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$2200(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$2400(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v10, v0

    .line 2325
    .restart local v10       #nStart:F
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$2400(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v0

    int-to-float v9, v0

    .line 2326
    .restart local v9       #nEnd:F
    sub-float v0, v10, v9

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->p:I

    int-to-float v1, v1

    div-float v11, v0, v1

    .restart local v11       #nStep:F
    goto :goto_2

    .line 2334
    .restart local v3       #i:F
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->time:J

    .line 2336
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$2800(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/PageRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$1800(Lcom/asus/reader/book/BookViewActivity;)F

    move-result v1

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$1900(Lcom/asus/reader/book/BookViewActivity;)F

    move-result v2

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$2500(Lcom/asus/reader/book/BookViewActivity;)F

    move-result v4

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$2200(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v6}, Lcom/asus/reader/book/BookViewActivity;->access$2400(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v7}, Lcom/asus/reader/book/BookViewActivity;->access$7000(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v8}, Lcom/asus/reader/book/BookViewActivity;->access$2000(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {v0 .. v8}, Lcom/asus/reader/book/PageRenderer;->flip(FFFFFFFF)V

    .line 2337
    monitor-enter p0

    .line 2339
    const/16 v0, 0x3e8

    :try_start_3
    iget v1, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->fps:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->time:J

    sub-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-lez v0, :cond_5

    .line 2340
    const/16 v0, 0x3e8

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->fps:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->time:J

    sub-long/2addr v4, v6

    sub-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2343
    :cond_5
    :goto_5
    :try_start_4
    monitor-exit p0

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 2345
    :cond_6
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$2800(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/PageRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/book/PageRenderer;->nextPage()V

    .line 2363
    :goto_6
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$2800(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/PageRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/book/PageRenderer;->requestRender()V

    .line 2364
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$1702(Lcom/asus/reader/book/BookViewActivity;Z)Z

    goto/16 :goto_0

    .line 2347
    .end local v3           #i:F
    :cond_7
    move v3, v10

    .restart local v3       #i:F
    :goto_7
    cmpg-float v0, v3, v9

    if-gez v0, :cond_a

    .line 2349
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$2100(Lcom/asus/reader/book/BookViewActivity;)F

    move-result v0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_8

    .line 2347
    :goto_8
    sub-float/2addr v3, v11

    goto :goto_7

    .line 2350
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->time:J

    .line 2352
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$2800(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/PageRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$1800(Lcom/asus/reader/book/BookViewActivity;)F

    move-result v1

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$1900(Lcom/asus/reader/book/BookViewActivity;)F

    move-result v2

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$2500(Lcom/asus/reader/book/BookViewActivity;)F

    move-result v4

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$2200(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v6}, Lcom/asus/reader/book/BookViewActivity;->access$2400(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v7}, Lcom/asus/reader/book/BookViewActivity;->access$7000(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v8}, Lcom/asus/reader/book/BookViewActivity;->access$2000(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {v0 .. v8}, Lcom/asus/reader/book/PageRenderer;->flip(FFFFFFFF)V

    .line 2353
    monitor-enter p0

    .line 2355
    const/16 v0, 0x3e8

    :try_start_5
    iget v1, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->fps:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->time:J

    sub-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-lez v0, :cond_9

    .line 2356
    const/16 v0, 0x3e8

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->fps:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->time:J

    sub-long/2addr v4, v6

    sub-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 2359
    :cond_9
    :goto_9
    :try_start_6
    monitor-exit p0

    goto :goto_8

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 2361
    :cond_a
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$AnimationThread;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$2800(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/PageRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/book/PageRenderer;->previousPage()V

    goto/16 :goto_6

    .line 2357
    :catch_0
    move-exception v0

    goto :goto_9

    .line 2341
    :catch_1
    move-exception v0

    goto/16 :goto_5

    .line 2302
    .end local v3           #i:F
    .end local v9           #nEnd:F
    .end local v10           #nStart:F
    .end local v11           #nStep:F
    :catch_2
    move-exception v1

    goto/16 :goto_1
.end method
