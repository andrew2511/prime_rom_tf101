.class final Lcom/zinio/mobile/android/modules/imageloader/eager/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private volatile a:Z

.field private b:Lcom/zinio/mobile/android/view/issue/h;

.field private c:Lcom/zinio/mobile/android/view/issue/h;

.field private d:Lcom/zinio/mobile/android/view/issue/h;

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Lcom/zinio/mobile/android/view/issue/d;

.field private synthetic j:Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;


# direct methods
.method public constructor <init>(Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->j:Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->e:I

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->setDaemon(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->start()V

    .line 72
    return-void
.end method

.method private a(IZ)Lcom/zinio/mobile/android/view/issue/h;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 124
    iget-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->i:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->g()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->i:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/issue/d;->f()I

    move-result v1

    .line 126
    iget-object v2, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->i:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/issue/d;->e()I

    move-result v2

    .line 128
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    move-object v0, v9

    .line 190
    :goto_0
    return-object v0

    .line 132
    :cond_1
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->r()I

    move-result v3

    .line 133
    if-eqz p2, :cond_5

    if-nez p1, :cond_4

    move v4, v8

    .line 134
    :goto_1
    if-eqz p2, :cond_8

    div-int/lit8 v5, v3, 0x2

    mul-int/lit8 v5, v5, 0x2

    if-ne p1, v5, :cond_7

    move v5, v8

    .line 135
    :goto_2
    invoke-static {p1}, Lcom/zinio/mobile/android/a/a/h;->a(I)Lcom/zinio/mobile/android/a/a/h;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/zinio/mobile/android/resources/a/a;->b(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Z

    move-result v6

    .line 138
    if-eqz p2, :cond_2

    .line 139
    add-int/lit8 v7, p1, 0x1

    invoke-static {v7}, Lcom/zinio/mobile/android/a/a/h;->a(I)Lcom/zinio/mobile/android/a/a/h;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/zinio/mobile/android/resources/a/a;->b(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Z

    move-result v7

    .line 146
    :cond_2
    if-eqz p2, :cond_3

    if-nez v4, :cond_a

    :cond_3
    if-nez v6, :cond_a

    move-object v0, v9

    .line 147
    goto :goto_0

    :cond_4
    move v4, v7

    .line 133
    goto :goto_1

    :cond_5
    if-ne p1, v8, :cond_6

    move v4, v8

    goto :goto_1

    :cond_6
    move v4, v7

    goto :goto_1

    :cond_7
    move v5, v7

    .line 134
    goto :goto_2

    :cond_8
    if-ne p1, v3, :cond_9

    move v5, v8

    goto :goto_2

    :cond_9
    move v5, v7

    goto :goto_2

    .line 150
    :cond_a
    if-nez v4, :cond_b

    if-nez v5, :cond_b

    .line 151
    if-eqz p2, :cond_d

    if-nez v7, :cond_d

    move-object v0, v9

    .line 152
    goto :goto_0

    .line 154
    :cond_b
    if-eqz v4, :cond_c

    .line 155
    if-eqz p2, :cond_d

    if-nez v7, :cond_d

    move-object v0, v9

    .line 156
    goto :goto_0

    .line 159
    :cond_c
    if-eqz p2, :cond_d

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v8, :cond_d

    if-nez v7, :cond_d

    move-object v0, v9

    .line 160
    goto :goto_0

    .line 166
    :cond_d
    iget-object v3, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->i:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/issue/d;->i()Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 167
    if-eqz p2, :cond_10

    .line 170
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->W()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 171
    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Lcom/zinio/mobile/android/a/a/h;->a(I)Lcom/zinio/mobile/android/a/a/h;

    move-result-object v4

    .line 172
    invoke-static {p1}, Lcom/zinio/mobile/android/a/a/h;->a(I)Lcom/zinio/mobile/android/a/a/h;

    move-result-object v5

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    .line 177
    :goto_3
    invoke-static {v0, v5, v4, v3}, Lcom/zinio/mobile/android/resources/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/h;Lcom/zinio/mobile/android/a/a/h;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 183
    :goto_4
    if-nez v3, :cond_e

    .line 184
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v4

    .line 185
    invoke-static {p1}, Lcom/zinio/mobile/android/a/a/h;->a(I)Lcom/zinio/mobile/android/a/a/h;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)V

    .line 186
    if-eqz p2, :cond_e

    .line 187
    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Lcom/zinio/mobile/android/a/a/h;->a(I)Lcom/zinio/mobile/android/a/a/h;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)V

    .line 190
    :cond_e
    if-nez v3, :cond_11

    move-object v0, v9

    goto/16 :goto_0

    .line 174
    :cond_f
    invoke-static {p1}, Lcom/zinio/mobile/android/a/a/h;->a(I)Lcom/zinio/mobile/android/a/a/h;

    move-result-object v4

    .line 175
    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Lcom/zinio/mobile/android/a/a/h;->a(I)Lcom/zinio/mobile/android/a/a/h;

    move-result-object v5

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    goto :goto_3

    .line 180
    :cond_10
    invoke-static {p1}, Lcom/zinio/mobile/android/a/a/h;->a(I)Lcom/zinio/mobile/android/a/a/h;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/zinio/mobile/android/resources/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/h;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_4

    .line 190
    :cond_11
    new-instance v4, Lcom/zinio/mobile/android/view/issue/h;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/a/a/j;->d(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v3, v1, v2, v0}, Lcom/zinio/mobile/android/view/issue/h;-><init>(Landroid/graphics/Bitmap;IILjava/util/List;)V

    move-object v0, v4

    goto/16 :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/zinio/mobile/android/view/issue/d;)V
    .locals 1
    .parameter

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->i:Lcom/zinio/mobile/android/view/issue/d;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a:Z

    .line 106
    iget-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->i:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->g()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v0

    iput v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->e:I

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    .line 78
    :goto_0
    monitor-enter p0

    .line 79
    :goto_1
    :try_start_0
    iget v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_0

    .line 81
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 82
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 86
    :cond_0
    :try_start_3
    iget v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->e:I

    .line 87
    const/4 v1, -0x1

    iput v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->e:I

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a:Z

    .line 89
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    iget-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->i:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/issue/d;->g()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->n()Z

    move-result v2

    iget-object v3, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->i:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/issue/d;->h()I

    move-result v3

    iget-object v5, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->i:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v5}, Lcom/zinio/mobile/android/view/issue/d;->d()Z

    move-result v5

    if-eqz v2, :cond_5

    const/4 v6, 0x2

    :goto_2
    if-eqz v2, :cond_6

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x2

    :goto_3
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->W()Z

    move-result v1

    if-eqz v1, :cond_19

    neg-int v1, v6

    neg-int v3, v3

    :goto_4
    sub-int v6, v0, v1

    add-int/2addr v1, v0

    if-ne v2, v5, :cond_7

    move v7, v11

    :goto_5
    iget-object v8, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->i:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v8}, Lcom/zinio/mobile/android/view/issue/d;->a()Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v8

    iget-object v9, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->i:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v9}, Lcom/zinio/mobile/android/view/issue/d;->b()Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v9

    iget-object v10, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->i:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v10}, Lcom/zinio/mobile/android/view/issue/d;->c()Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v10

    iput-boolean v4, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->h:Z

    packed-switch v3, :pswitch_data_0

    invoke-direct {p0, v6, v2}, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v6

    iput-object v6, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->b:Lcom/zinio/mobile/android/view/issue/h;

    iget-boolean v6, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a:Z

    if-nez v6, :cond_3

    invoke-direct {p0, v0, v2}, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v6

    iput-object v6, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->c:Lcom/zinio/mobile/android/view/issue/h;

    iget-boolean v6, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a:Z

    if-nez v6, :cond_3

    invoke-direct {p0, v1, v2}, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->d:Lcom/zinio/mobile/android/view/issue/h;

    iget-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a:Z

    if-nez v1, :cond_3

    :cond_1
    iput v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->f:I

    iput-boolean v2, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->g:Z

    if-nez v3, :cond_2

    if-eq v5, v2, :cond_3

    :cond_2
    iput-boolean v11, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->h:Z

    .line 93
    :cond_3
    :goto_6
    iget-boolean v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a:Z

    if-nez v0, :cond_4

    .line 94
    iget-boolean v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->h:Z

    if-eqz v0, :cond_15

    new-instance v0, Lcom/zinio/mobile/android/view/issue/d;

    iget-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->b:Lcom/zinio/mobile/android/view/issue/h;

    iget-object v2, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->c:Lcom/zinio/mobile/android/view/issue/h;

    iget-object v3, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->d:Lcom/zinio/mobile/android/view/issue/h;

    iget-boolean v5, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->g:Z

    iget-object v6, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->i:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v6}, Lcom/zinio/mobile/android/view/issue/d;->e()I

    move-result v6

    iget-object v7, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->i:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v7}, Lcom/zinio/mobile/android/view/issue/d;->f()I

    move-result v7

    iget-object v8, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->i:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v8}, Lcom/zinio/mobile/android/view/issue/d;->g()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v8

    iget v9, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->f:I

    invoke-direct/range {v0 .. v9}, Lcom/zinio/mobile/android/view/issue/d;-><init>(Lcom/zinio/mobile/android/view/issue/h;Lcom/zinio/mobile/android/view/issue/h;Lcom/zinio/mobile/android/view/issue/h;ZZIILcom/zinio/mobile/android/a/a/j;I)V

    .line 95
    :goto_7
    iget-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->j:Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;->c(Lcom/zinio/mobile/android/view/issue/d;)V

    .line 96
    iget-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->j:Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;

    iget-object v1, v1, Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;->b:Lcom/zinio/mobile/android/modules/imageloader/eager/b;

    sget-wide v2, Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;->a:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/zinio/mobile/android/modules/imageloader/eager/b;->a(Lcom/zinio/mobile/android/view/issue/d;J)V

    .line 99
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->d:Lcom/zinio/mobile/android/view/issue/h;

    iput-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->c:Lcom/zinio/mobile/android/view/issue/h;

    iput-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->b:Lcom/zinio/mobile/android/view/issue/h;

    goto/16 :goto_0

    :cond_5
    move v6, v11

    .line 92
    goto/16 :goto_2

    :cond_6
    sub-int v3, v0, v3

    goto/16 :goto_3

    :cond_7
    move v7, v4

    goto/16 :goto_5

    :pswitch_0
    if-nez v7, :cond_8

    invoke-direct {p0, v6, v2}, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v6

    iput-object v6, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->b:Lcom/zinio/mobile/android/view/issue/h;

    iget-boolean v6, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a:Z

    if-nez v6, :cond_3

    invoke-direct {p0, v0, v2}, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v6

    iput-object v6, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->c:Lcom/zinio/mobile/android/view/issue/h;

    iget-boolean v6, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a:Z

    if-nez v6, :cond_3

    invoke-direct {p0, v1, v2}, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->d:Lcom/zinio/mobile/android/view/issue/h;

    iget-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a:Z

    if-eqz v1, :cond_1

    goto :goto_6

    :cond_8
    if-nez v8, :cond_c

    invoke-direct {p0, v6, v2}, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v6

    iput-object v6, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->b:Lcom/zinio/mobile/android/view/issue/h;

    iget-object v6, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->b:Lcom/zinio/mobile/android/view/issue/h;

    if-eqz v6, :cond_9

    iput-boolean v11, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->h:Z

    :cond_9
    :goto_8
    iget-boolean v6, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a:Z

    if-nez v6, :cond_3

    if-nez v9, :cond_d

    invoke-direct {p0, v0, v2}, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v6

    iput-object v6, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->c:Lcom/zinio/mobile/android/view/issue/h;

    iget-object v6, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->c:Lcom/zinio/mobile/android/view/issue/h;

    if-eqz v6, :cond_a

    iput-boolean v11, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->h:Z

    :cond_a
    :goto_9
    iget-boolean v6, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a:Z

    if-nez v6, :cond_3

    if-nez v10, :cond_e

    invoke-direct {p0, v1, v2}, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->d:Lcom/zinio/mobile/android/view/issue/h;

    iget-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->d:Lcom/zinio/mobile/android/view/issue/h;

    if-eqz v1, :cond_b

    iput-boolean v11, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->h:Z

    :cond_b
    :goto_a
    iget-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a:Z

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_c
    iput-object v8, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->b:Lcom/zinio/mobile/android/view/issue/h;

    goto :goto_8

    :cond_d
    iput-object v9, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->c:Lcom/zinio/mobile/android/view/issue/h;

    goto :goto_9

    :cond_e
    iput-object v10, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->d:Lcom/zinio/mobile/android/view/issue/h;

    goto :goto_a

    :pswitch_1
    if-eqz v10, :cond_f

    if-eqz v7, :cond_f

    iput-object v10, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->b:Lcom/zinio/mobile/android/view/issue/h;

    :goto_b
    iget-boolean v6, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a:Z

    if-nez v6, :cond_3

    invoke-direct {p0, v0, v2}, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v6

    iput-object v6, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->c:Lcom/zinio/mobile/android/view/issue/h;

    iget-boolean v6, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a:Z

    if-nez v6, :cond_3

    invoke-direct {p0, v1, v2}, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->d:Lcom/zinio/mobile/android/view/issue/h;

    iget-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a:Z

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_f
    invoke-direct {p0, v6, v2}, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v6

    iput-object v6, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->b:Lcom/zinio/mobile/android/view/issue/h;

    goto :goto_b

    :pswitch_2
    if-eqz v9, :cond_10

    if-eqz v7, :cond_10

    iput-object v9, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->b:Lcom/zinio/mobile/android/view/issue/h;

    :goto_c
    iget-boolean v6, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a:Z

    if-nez v6, :cond_3

    if-eqz v10, :cond_11

    if-eqz v7, :cond_11

    iput-object v10, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->c:Lcom/zinio/mobile/android/view/issue/h;

    :goto_d
    iget-boolean v6, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a:Z

    if-nez v6, :cond_3

    invoke-direct {p0, v1, v2}, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->d:Lcom/zinio/mobile/android/view/issue/h;

    iget-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a:Z

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_10
    invoke-direct {p0, v6, v2}, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v6

    iput-object v6, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->b:Lcom/zinio/mobile/android/view/issue/h;

    goto :goto_c

    :cond_11
    invoke-direct {p0, v0, v2}, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v6

    iput-object v6, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->c:Lcom/zinio/mobile/android/view/issue/h;

    goto :goto_d

    :pswitch_3
    if-eqz v9, :cond_12

    if-eqz v7, :cond_12

    iput-object v9, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->d:Lcom/zinio/mobile/android/view/issue/h;

    :goto_e
    iget-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a:Z

    if-nez v1, :cond_3

    if-eqz v8, :cond_13

    if-eqz v7, :cond_13

    iput-object v8, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->c:Lcom/zinio/mobile/android/view/issue/h;

    :goto_f
    iget-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a:Z

    if-nez v1, :cond_3

    invoke-direct {p0, v6, v2}, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->b:Lcom/zinio/mobile/android/view/issue/h;

    iget-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a:Z

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_12
    invoke-direct {p0, v1, v2}, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->d:Lcom/zinio/mobile/android/view/issue/h;

    goto :goto_e

    :cond_13
    invoke-direct {p0, v0, v2}, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->c:Lcom/zinio/mobile/android/view/issue/h;

    goto :goto_f

    :pswitch_4
    if-eqz v8, :cond_14

    if-eqz v7, :cond_14

    iput-object v8, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->d:Lcom/zinio/mobile/android/view/issue/h;

    :goto_10
    iget-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a:Z

    if-nez v1, :cond_3

    invoke-direct {p0, v0, v2}, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->c:Lcom/zinio/mobile/android/view/issue/h;

    iget-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a:Z

    if-nez v1, :cond_3

    invoke-direct {p0, v6, v2}, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->b:Lcom/zinio/mobile/android/view/issue/h;

    iget-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a:Z

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_14
    invoke-direct {p0, v1, v2}, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->d:Lcom/zinio/mobile/android/view/issue/h;

    goto :goto_10

    .line 94
    :cond_15
    iget-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->i:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->a()Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->i:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/issue/d;->b()Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iget-object v2, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->i:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/issue/d;->c()Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v2

    iget-object v3, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->i:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/issue/d;->f()I

    move-result v3

    iget-object v5, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->i:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v5}, Lcom/zinio/mobile/android/view/issue/d;->e()I

    move-result v5

    if-eqz v0, :cond_16

    invoke-virtual {v0, v3, v5}, Lcom/zinio/mobile/android/view/issue/h;->c(II)V

    :cond_16
    if-eqz v1, :cond_17

    invoke-virtual {v1, v3, v5}, Lcom/zinio/mobile/android/view/issue/h;->c(II)V

    :cond_17
    if-eqz v2, :cond_18

    invoke-virtual {v2, v3, v5}, Lcom/zinio/mobile/android/view/issue/h;->c(II)V

    :cond_18
    iget-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/a;->i:Lcom/zinio/mobile/android/view/issue/d;

    goto/16 :goto_7

    :cond_19
    move v1, v6

    goto/16 :goto_4

    .line 92
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
