.class public Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/modules/imageloader/a;


# instance fields
.field private a:Lcom/zinio/mobile/android/modules/imageloader/b;

.field private b:Lcom/zinio/mobile/android/view/issue/h;

.field private c:Lcom/zinio/mobile/android/view/issue/h;

.field private d:Lcom/zinio/mobile/android/view/issue/h;

.field private e:Lcom/zinio/mobile/android/view/issue/h;

.field private f:I

.field private g:I

.field private h:Z

.field private volatile i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/zinio/mobile/android/view/issue/d;


# direct methods
.method public constructor <init>(Lcom/zinio/mobile/android/modules/imageloader/b;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->f:I

    .line 48
    iput-object p1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->a:Lcom/zinio/mobile/android/modules/imageloader/b;

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->setDaemon(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->start()V

    .line 51
    return-void
.end method

.method private a(IZ)Lcom/zinio/mobile/android/view/issue/h;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 158
    iget-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->g()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/issue/d;->f()I

    move-result v1

    .line 160
    iget-object v2, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/issue/d;->e()I

    move-result v2

    .line 162
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    move-object v0, v9

    .line 222
    :goto_0
    return-object v0

    .line 166
    :cond_1
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->r()I

    move-result v3

    .line 167
    if-eqz p2, :cond_5

    if-nez p1, :cond_4

    move v4, v8

    .line 168
    :goto_1
    if-eqz p2, :cond_8

    div-int/lit8 v5, v3, 0x2

    mul-int/lit8 v5, v5, 0x2

    if-ne p1, v5, :cond_7

    move v5, v8

    .line 169
    :goto_2
    invoke-static {p1}, Lcom/zinio/mobile/android/a/a/h;->a(I)Lcom/zinio/mobile/android/a/a/h;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/zinio/mobile/android/resources/a/a;->b(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Z

    move-result v6

    .line 172
    if-eqz p2, :cond_2

    .line 173
    add-int/lit8 v7, p1, 0x1

    invoke-static {v7}, Lcom/zinio/mobile/android/a/a/h;->a(I)Lcom/zinio/mobile/android/a/a/h;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/zinio/mobile/android/resources/a/a;->b(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Z

    move-result v7

    .line 180
    :cond_2
    if-eqz p2, :cond_3

    if-nez v4, :cond_a

    :cond_3
    if-nez v6, :cond_a

    move-object v0, v9

    .line 181
    goto :goto_0

    :cond_4
    move v4, v7

    .line 167
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

    .line 168
    goto :goto_2

    :cond_8
    if-ne p1, v3, :cond_9

    move v5, v8

    goto :goto_2

    :cond_9
    move v5, v7

    goto :goto_2

    .line 184
    :cond_a
    if-nez v4, :cond_b

    if-nez v5, :cond_b

    .line 185
    if-eqz p2, :cond_d

    if-nez v7, :cond_d

    move-object v0, v9

    .line 186
    goto :goto_0

    .line 188
    :cond_b
    if-eqz v4, :cond_c

    .line 189
    if-eqz p2, :cond_d

    if-nez v7, :cond_d

    move-object v0, v9

    .line 190
    goto :goto_0

    .line 193
    :cond_c
    if-eqz p2, :cond_d

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v8, :cond_d

    if-nez v7, :cond_d

    move-object v0, v9

    .line 194
    goto :goto_0

    .line 200
    :cond_d
    iget-object v3, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/issue/d;->i()Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 201
    invoke-static {p1}, Lcom/zinio/mobile/android/a/a/h;->a(I)Lcom/zinio/mobile/android/a/a/h;

    move-result-object v4

    .line 202
    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Lcom/zinio/mobile/android/a/a/h;->a(I)Lcom/zinio/mobile/android/a/a/h;

    move-result-object v5

    .line 203
    if-eqz p2, :cond_10

    .line 204
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->W()Z

    move-result v6

    if-nez v6, :cond_f

    .line 205
    invoke-static {v0, v4, v5, v3}, Lcom/zinio/mobile/android/resources/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/h;Lcom/zinio/mobile/android/a/a/h;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 215
    :goto_3
    if-nez v3, :cond_e

    .line 216
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v6

    .line 217
    invoke-virtual {v6, v0, v4}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)V

    .line 218
    if-eqz p2, :cond_e

    .line 219
    invoke-virtual {v6, v0, v5}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)V

    .line 222
    :cond_e
    if-nez v3, :cond_11

    move-object v0, v9

    goto/16 :goto_0

    .line 208
    :cond_f
    invoke-static {v0, v5, v4, v3}, Lcom/zinio/mobile/android/resources/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/h;Lcom/zinio/mobile/android/a/a/h;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_3

    .line 212
    :cond_10
    invoke-static {v0, v4, v3}, Lcom/zinio/mobile/android/resources/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/h;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_3

    .line 222
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
    .line 88
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->i:Z

    .line 90
    iget-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->g()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v0

    iput v0, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->f:I

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->j:Z

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized b(Lcom/zinio/mobile/android/view/issue/d;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->i:Z

    .line 98
    iget-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->g()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v0

    iput v0, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->f:I

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->j:Z

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 57
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 61
    :goto_0
    monitor-enter p0

    .line 62
    :goto_1
    :try_start_0
    iget v0, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_0

    .line 64
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 65
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 69
    :cond_0
    :try_start_3
    iget v0, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->f:I

    .line 70
    const/4 v1, -0x1

    iput v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->f:I

    .line 71
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->i:Z

    .line 72
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    iget-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->j:Z

    if-nez v1, :cond_15

    .line 75
    iget-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/issue/d;->g()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->n()Z

    move-result v2

    iget-object v3, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/issue/d;->h()I

    move-result v3

    iget-object v4, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v4}, Lcom/zinio/mobile/android/view/issue/d;->d()Z

    move-result v4

    if-eqz v2, :cond_5

    const/4 v5, 0x2

    :goto_2
    if-eqz v2, :cond_6

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x2

    :goto_3
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->W()Z

    move-result v1

    if-eqz v1, :cond_23

    neg-int v1, v5

    neg-int v3, v3

    :goto_4
    sub-int v5, v0, v1

    add-int/2addr v1, v0

    if-ne v2, v4, :cond_7

    move v6, v11

    :goto_5
    iget-object v7, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v7}, Lcom/zinio/mobile/android/view/issue/d;->a()Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v7

    iget-object v8, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v8}, Lcom/zinio/mobile/android/view/issue/d;->b()Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v8

    iget-object v9, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v9}, Lcom/zinio/mobile/android/view/issue/d;->c()Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v9

    iput-boolean v12, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->k:Z

    packed-switch v3, :pswitch_data_0

    invoke-direct {p0, v5, v2}, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v5

    iput-object v5, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->b:Lcom/zinio/mobile/android/view/issue/h;

    iget-boolean v5, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->i:Z

    if-nez v5, :cond_3

    invoke-direct {p0, v0, v2}, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v5

    iput-object v5, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->c:Lcom/zinio/mobile/android/view/issue/h;

    iget-boolean v5, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->i:Z

    if-nez v5, :cond_3

    invoke-direct {p0, v1, v2}, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->d:Lcom/zinio/mobile/android/view/issue/h;

    iget-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->i:Z

    if-nez v1, :cond_3

    :cond_1
    iput v0, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->g:I

    iput-boolean v2, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->h:Z

    if-nez v3, :cond_2

    if-eq v4, v2, :cond_3

    :cond_2
    iput-boolean v11, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->k:Z

    .line 80
    :cond_3
    :goto_6
    iget-boolean v0, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->i:Z

    if-nez v0, :cond_4

    .line 81
    iget-object v10, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->a:Lcom/zinio/mobile/android/modules/imageloader/b;

    iget-boolean v0, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->k:Z

    if-eqz v0, :cond_1f

    new-instance v0, Lcom/zinio/mobile/android/view/issue/d;

    iget-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->j:Z

    if-eqz v1, :cond_1c

    move-object v1, v13

    :goto_7
    iget-boolean v2, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->j:Z

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->e:Lcom/zinio/mobile/android/view/issue/h;

    :goto_8
    iget-boolean v3, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->j:Z

    if-eqz v3, :cond_1e

    move-object v3, v13

    :goto_9
    iget-boolean v4, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->j:Z

    iget-boolean v5, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->h:Z

    iget-object v6, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v6}, Lcom/zinio/mobile/android/view/issue/d;->e()I

    move-result v6

    iget-object v7, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v7}, Lcom/zinio/mobile/android/view/issue/d;->f()I

    move-result v7

    iget-object v8, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v8}, Lcom/zinio/mobile/android/view/issue/d;->g()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v8

    iget v9, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->g:I

    invoke-direct/range {v0 .. v9}, Lcom/zinio/mobile/android/view/issue/d;-><init>(Lcom/zinio/mobile/android/view/issue/h;Lcom/zinio/mobile/android/view/issue/h;Lcom/zinio/mobile/android/view/issue/h;ZZIILcom/zinio/mobile/android/a/a/j;I)V

    :goto_a
    invoke-virtual {v10, v0}, Lcom/zinio/mobile/android/modules/imageloader/b;->a(Lcom/zinio/mobile/android/view/issue/d;)V

    .line 83
    :cond_4
    iput-object v13, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->d:Lcom/zinio/mobile/android/view/issue/h;

    iput-object v13, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->c:Lcom/zinio/mobile/android/view/issue/h;

    iput-object v13, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->b:Lcom/zinio/mobile/android/view/issue/h;

    iput-object v13, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->e:Lcom/zinio/mobile/android/view/issue/h;

    goto/16 :goto_0

    :cond_5
    move v5, v11

    .line 75
    goto/16 :goto_2

    :cond_6
    sub-int v3, v0, v3

    goto/16 :goto_3

    :cond_7
    move v6, v12

    goto/16 :goto_5

    :pswitch_0
    if-nez v6, :cond_8

    invoke-direct {p0, v5, v2}, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v5

    iput-object v5, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->b:Lcom/zinio/mobile/android/view/issue/h;

    iget-boolean v5, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->i:Z

    if-nez v5, :cond_3

    invoke-direct {p0, v0, v2}, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v5

    iput-object v5, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->c:Lcom/zinio/mobile/android/view/issue/h;

    iget-boolean v5, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->i:Z

    if-nez v5, :cond_3

    invoke-direct {p0, v1, v2}, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->d:Lcom/zinio/mobile/android/view/issue/h;

    iget-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->i:Z

    if-eqz v1, :cond_1

    goto :goto_6

    :cond_8
    if-nez v7, :cond_c

    invoke-direct {p0, v5, v2}, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v5

    iput-object v5, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->b:Lcom/zinio/mobile/android/view/issue/h;

    iget-object v5, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->b:Lcom/zinio/mobile/android/view/issue/h;

    if-eqz v5, :cond_9

    iput-boolean v11, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->k:Z

    :cond_9
    :goto_b
    iget-boolean v5, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->i:Z

    if-nez v5, :cond_3

    if-nez v8, :cond_d

    invoke-direct {p0, v0, v2}, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v5

    iput-object v5, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->c:Lcom/zinio/mobile/android/view/issue/h;

    iget-object v5, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->c:Lcom/zinio/mobile/android/view/issue/h;

    if-eqz v5, :cond_a

    iput-boolean v11, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->k:Z

    :cond_a
    :goto_c
    iget-boolean v5, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->i:Z

    if-nez v5, :cond_3

    if-nez v9, :cond_e

    invoke-direct {p0, v1, v2}, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->d:Lcom/zinio/mobile/android/view/issue/h;

    iget-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->d:Lcom/zinio/mobile/android/view/issue/h;

    if-eqz v1, :cond_b

    iput-boolean v11, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->k:Z

    :cond_b
    :goto_d
    iget-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->i:Z

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_c
    iput-object v7, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->b:Lcom/zinio/mobile/android/view/issue/h;

    goto :goto_b

    :cond_d
    iput-object v8, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->c:Lcom/zinio/mobile/android/view/issue/h;

    goto :goto_c

    :cond_e
    iput-object v9, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->d:Lcom/zinio/mobile/android/view/issue/h;

    goto :goto_d

    :pswitch_1
    if-eqz v9, :cond_f

    if-eqz v6, :cond_f

    iput-object v9, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->b:Lcom/zinio/mobile/android/view/issue/h;

    :goto_e
    iget-boolean v5, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->i:Z

    if-nez v5, :cond_3

    invoke-direct {p0, v0, v2}, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v5

    iput-object v5, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->c:Lcom/zinio/mobile/android/view/issue/h;

    iget-boolean v5, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->i:Z

    if-nez v5, :cond_3

    invoke-direct {p0, v1, v2}, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->d:Lcom/zinio/mobile/android/view/issue/h;

    iget-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->i:Z

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_f
    invoke-direct {p0, v5, v2}, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v5

    iput-object v5, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->b:Lcom/zinio/mobile/android/view/issue/h;

    goto :goto_e

    :pswitch_2
    if-eqz v8, :cond_10

    if-eqz v6, :cond_10

    iput-object v8, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->b:Lcom/zinio/mobile/android/view/issue/h;

    :goto_f
    iget-boolean v5, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->i:Z

    if-nez v5, :cond_3

    if-eqz v9, :cond_11

    if-eqz v6, :cond_11

    iput-object v9, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->c:Lcom/zinio/mobile/android/view/issue/h;

    :goto_10
    iget-boolean v5, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->i:Z

    if-nez v5, :cond_3

    invoke-direct {p0, v1, v2}, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->d:Lcom/zinio/mobile/android/view/issue/h;

    iget-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->i:Z

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_10
    invoke-direct {p0, v5, v2}, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v5

    iput-object v5, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->b:Lcom/zinio/mobile/android/view/issue/h;

    goto :goto_f

    :cond_11
    invoke-direct {p0, v0, v2}, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v5

    iput-object v5, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->c:Lcom/zinio/mobile/android/view/issue/h;

    goto :goto_10

    :pswitch_3
    if-eqz v8, :cond_12

    if-eqz v6, :cond_12

    iput-object v8, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->d:Lcom/zinio/mobile/android/view/issue/h;

    :goto_11
    iget-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->i:Z

    if-nez v1, :cond_3

    if-eqz v7, :cond_13

    if-eqz v6, :cond_13

    iput-object v7, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->c:Lcom/zinio/mobile/android/view/issue/h;

    :goto_12
    iget-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->i:Z

    if-nez v1, :cond_3

    invoke-direct {p0, v5, v2}, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->b:Lcom/zinio/mobile/android/view/issue/h;

    iget-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->i:Z

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_12
    invoke-direct {p0, v1, v2}, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->d:Lcom/zinio/mobile/android/view/issue/h;

    goto :goto_11

    :cond_13
    invoke-direct {p0, v0, v2}, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->c:Lcom/zinio/mobile/android/view/issue/h;

    goto :goto_12

    :pswitch_4
    if-eqz v7, :cond_14

    if-eqz v6, :cond_14

    iput-object v7, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->d:Lcom/zinio/mobile/android/view/issue/h;

    :goto_13
    iget-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->i:Z

    if-nez v1, :cond_3

    invoke-direct {p0, v0, v2}, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->c:Lcom/zinio/mobile/android/view/issue/h;

    iget-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->i:Z

    if-nez v1, :cond_3

    invoke-direct {p0, v5, v2}, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->b:Lcom/zinio/mobile/android/view/issue/h;

    iget-boolean v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->i:Z

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_14
    invoke-direct {p0, v1, v2}, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->a(IZ)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->d:Lcom/zinio/mobile/android/view/issue/h;

    goto :goto_13

    .line 77
    :cond_15
    iget-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/issue/d;->g()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->W()Z

    move-result v2

    if-eqz v2, :cond_17

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Lcom/zinio/mobile/android/a/a/s;->a(I)Lcom/zinio/mobile/android/a/a/s;

    move-result-object v3

    :goto_14
    if-eqz v2, :cond_18

    invoke-static {v0}, Lcom/zinio/mobile/android/a/a/s;->a(I)Lcom/zinio/mobile/android/a/a/s;

    move-result-object v4

    :goto_15
    iget-object v5, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v5}, Lcom/zinio/mobile/android/view/issue/d;->i()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    iput-boolean v12, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->k:Z

    invoke-static {v1, v3}, Lcom/zinio/mobile/android/resources/a/a;->b(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->n()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-static {v1, v4}, Lcom/zinio/mobile/android/resources/a/a;->b(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_16
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->n()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-static {v1, v3, v4, v5}, Lcom/zinio/mobile/android/resources/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/s;Lcom/zinio/mobile/android/a/a/s;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_16
    if-eqz v2, :cond_1b

    new-instance v3, Lcom/zinio/mobile/android/view/issue/h;

    iget-object v4, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v4}, Lcom/zinio/mobile/android/view/issue/d;->f()I

    move-result v4

    iget-object v5, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v5}, Lcom/zinio/mobile/android/view/issue/d;->e()I

    move-result v5

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/a/a/j;->d(I)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v2, v4, v5, v1}, Lcom/zinio/mobile/android/view/issue/h;-><init>(Landroid/graphics/Bitmap;IILjava/util/List;)V

    iput-object v3, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->e:Lcom/zinio/mobile/android/view/issue/h;

    iput v0, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->g:I

    iput-boolean v11, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->k:Z

    goto/16 :goto_6

    :cond_17
    invoke-static {v0}, Lcom/zinio/mobile/android/a/a/s;->a(I)Lcom/zinio/mobile/android/a/a/s;

    move-result-object v3

    goto :goto_14

    :cond_18
    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Lcom/zinio/mobile/android/a/a/s;->a(I)Lcom/zinio/mobile/android/a/a/s;

    move-result-object v4

    goto :goto_15

    :cond_19
    if-nez v2, :cond_1a

    invoke-static {v1, v3, v5}, Lcom/zinio/mobile/android/resources/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/s;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_16

    :cond_1a
    invoke-static {v1, v4, v5}, Lcom/zinio/mobile/android/resources/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/s;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_16

    :cond_1b
    iput-object v13, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->e:Lcom/zinio/mobile/android/view/issue/h;

    goto/16 :goto_6

    .line 81
    :cond_1c
    iget-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->b:Lcom/zinio/mobile/android/view/issue/h;

    goto/16 :goto_7

    :cond_1d
    iget-object v2, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->c:Lcom/zinio/mobile/android/view/issue/h;

    goto/16 :goto_8

    :cond_1e
    iget-object v3, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->d:Lcom/zinio/mobile/android/view/issue/h;

    goto/16 :goto_9

    :cond_1f
    iget-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->a()Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/issue/d;->b()Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iget-object v2, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/issue/d;->c()Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v2

    iget-object v3, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/issue/d;->f()I

    move-result v3

    iget-object v4, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v4}, Lcom/zinio/mobile/android/view/issue/d;->e()I

    move-result v4

    if-eqz v0, :cond_20

    invoke-virtual {v0, v3, v4}, Lcom/zinio/mobile/android/view/issue/h;->c(II)V

    :cond_20
    if-eqz v1, :cond_21

    invoke-virtual {v1, v3, v4}, Lcom/zinio/mobile/android/view/issue/h;->c(II)V

    :cond_21
    if-eqz v2, :cond_22

    invoke-virtual {v2, v3, v4}, Lcom/zinio/mobile/android/view/issue/h;->c(II)V

    :cond_22
    iget-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/normal/NormalImageLoader;->l:Lcom/zinio/mobile/android/view/issue/d;

    goto/16 :goto_a

    :cond_23
    move v1, v5

    goto/16 :goto_4

    .line 75
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
