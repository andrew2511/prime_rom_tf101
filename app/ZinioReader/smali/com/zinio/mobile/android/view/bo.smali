.class public final Lcom/zinio/mobile/android/view/bo;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field a:Lcom/zinio/mobile/android/a/a/j;

.field b:Lcom/zinio/mobile/android/view/cp;

.field c:J

.field d:I

.field private e:Landroid/view/LayoutInflater;

.field private f:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

.field private g:Ljava/util/List;

.field private h:Landroid/graphics/BitmapFactory$Options;

.field private i:Landroid/widget/FrameLayout$LayoutParams;

.field private j:Landroid/widget/FrameLayout$LayoutParams;

.field private k:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final l:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/zinio/mobile/android/a/a/j;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v9, 0xa

    const/4 v2, 0x2

    const/4 v8, -0x2

    .line 78
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 56
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v1, p0, Lcom/zinio/mobile/android/view/bo;->h:Landroid/graphics/BitmapFactory$Options;

    .line 60
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1f4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/zinio/mobile/android/view/q;

    invoke-direct {v7, p0}, Lcom/zinio/mobile/android/view/q;-><init>(Lcom/zinio/mobile/android/view/bo;)V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/zinio/mobile/android/view/bo;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 64
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/view/bo;->l:Ljava/util/concurrent/ScheduledExecutorService;

    .line 79
    iput-object p3, p0, Lcom/zinio/mobile/android/view/bo;->a:Lcom/zinio/mobile/android/a/a/j;

    .line 80
    move-object v0, p1

    check-cast v0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    move-object v1, v0

    iput-object v1, p0, Lcom/zinio/mobile/android/view/bo;->f:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    .line 81
    iget-object v1, p0, Lcom/zinio/mobile/android/view/bo;->f:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/zinio/mobile/android/view/bo;->e:Landroid/view/LayoutInflater;

    .line 83
    iput-object p2, p0, Lcom/zinio/mobile/android/view/bo;->g:Ljava/util/List;

    .line 84
    iget-object v1, p0, Lcom/zinio/mobile/android/view/bo;->h:Landroid/graphics/BitmapFactory$Options;

    const/16 v2, 0xf

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 85
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 86
    iget-object v2, p0, Lcom/zinio/mobile/android/view/bo;->f:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 88
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x53

    invoke-direct {v1, v8, v8, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v1, p0, Lcom/zinio/mobile/android/view/bo;->i:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/bo;->i:Landroid/widget/FrameLayout$LayoutParams;

    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x55

    invoke-direct {v1, v8, v8, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v1, p0, Lcom/zinio/mobile/android/view/bo;->j:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/bo;->j:Landroid/widget/FrameLayout$LayoutParams;

    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 90
    new-instance v1, Lcom/zinio/mobile/android/view/cp;

    invoke-direct {v1, p0, p1}, Lcom/zinio/mobile/android/view/cp;-><init>(Lcom/zinio/mobile/android/view/bo;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zinio/mobile/android/view/bo;->b:Lcom/zinio/mobile/android/view/cp;

    .line 92
    iget-object v1, p0, Lcom/zinio/mobile/android/view/bo;->b:Lcom/zinio/mobile/android/view/cp;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/bo;->b:Lcom/zinio/mobile/android/view/cp;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/cp;->a:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zinio/mobile/android/view/cp;->a:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/cp;->a:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zinio/mobile/android/view/bo;->c:J

    .line 96
    invoke-virtual {p3}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v1

    iput v1, p0, Lcom/zinio/mobile/android/view/bo;->d:I

    .line 98
    new-instance v2, Lcom/zinio/mobile/android/view/a;

    invoke-direct {v2, p0, p3}, Lcom/zinio/mobile/android/view/a;-><init>(Lcom/zinio/mobile/android/view/bo;Lcom/zinio/mobile/android/a/a/j;)V

    .line 99
    iget-object v1, p0, Lcom/zinio/mobile/android/view/bo;->l:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x12c

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 102
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bo;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->r()I

    move-result v0

    .line 136
    const/4 v1, 0x1

    sub-int v1, v0, v1

    if-ne p1, v1, :cond_0

    .line 137
    const/4 v1, 0x0

    .line 142
    :goto_0
    iget-object v2, p0, Lcom/zinio/mobile/android/view/bo;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->W()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    sub-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    rem-int v0, v1, v0

    .line 146
    :goto_1
    return v0

    .line 139
    :cond_0
    add-int/lit8 v1, p1, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method final declared-synchronized a(Lcom/zinio/mobile/android/a/a/f;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter

    .prologue
    .line 389
    monitor-enter p0

    const/4 v0, 0x0

    .line 390
    :try_start_0
    iget-object v1, p0, Lcom/zinio/mobile/android/view/bo;->b:Lcom/zinio/mobile/android/view/cp;

    iget-object v2, p1, Lcom/zinio/mobile/android/a/a/f;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/zinio/mobile/android/view/cp;->a(Lcom/zinio/mobile/android/view/cp;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 392
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 397
    :cond_0
    if-nez v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bo;->a:Lcom/zinio/mobile/android/a/a/j;

    iget v1, p1, Lcom/zinio/mobile/android/a/a/f;->b:I

    invoke-static {v1}, Lcom/zinio/mobile/android/a/a/h;->a(I)Lcom/zinio/mobile/android/a/a/h;

    move-result-object v1

    iget-object v2, p0, Lcom/zinio/mobile/android/view/bo;->h:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Lcom/zinio/mobile/android/resources/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/h;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 403
    :cond_1
    if-eqz v0, :cond_2

    .line 404
    iget-object v1, p0, Lcom/zinio/mobile/android/view/bo;->b:Lcom/zinio/mobile/android/view/cp;

    invoke-virtual {v1, p1, v0}, Lcom/zinio/mobile/android/view/cp;->a(Lcom/zinio/mobile/android/a/a/f;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :cond_2
    monitor-exit p0

    return-object v0

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bo;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 436
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bo;->l:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 437
    return-void
.end method

.method public final b(I)Lcom/zinio/mobile/android/a/a/f;
    .locals 2
    .parameter

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/view/bo;->a(I)I

    move-result v0

    .line 154
    iget-object v1, p0, Lcom/zinio/mobile/android/view/bo;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/a/f;

    return-object p0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bo;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/view/bo;->b(I)Lcom/zinio/mobile/android/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 123
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 159
    .line 162
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/view/bo;->b(I)Lcom/zinio/mobile/android/a/a/f;

    move-result-object v1

    .line 164
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/bo;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    move-object v0, v3

    .line 216
    :goto_0
    return-object v0

    .line 167
    :cond_0
    if-nez p2, :cond_1

    .line 169
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bo;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f03001f

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 171
    new-instance v3, Lcom/zinio/mobile/android/view/ai;

    invoke-direct {v3, p0}, Lcom/zinio/mobile/android/view/ai;-><init>(Lcom/zinio/mobile/android/view/bo;)V

    .line 173
    const v0, 0x7f0c0086

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/zinio/mobile/android/view/ai;->b:Landroid/widget/ImageView;

    .line 175
    const v0, 0x7f0c0087

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/zinio/mobile/android/view/ai;->a:Landroid/widget/TextView;

    .line 178
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v2

    move-object v2, v3

    .line 185
    :goto_1
    iput p1, p0, Lcom/zinio/mobile/android/view/bo;->d:I

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/zinio/mobile/android/view/bo;->c:J

    .line 188
    iget-object v3, p0, Lcom/zinio/mobile/android/view/bo;->b:Lcom/zinio/mobile/android/view/cp;

    invoke-virtual {v3, v1}, Lcom/zinio/mobile/android/view/cp;->a(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 189
    if-eqz v3, :cond_2

    .line 190
    iget-object v1, v2, Lcom/zinio/mobile/android/view/ai;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 204
    :goto_2
    iget-object v1, v2, Lcom/zinio/mobile/android/view/ai;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zinio/mobile/android/view/bo;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/view/bo;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/zinio/mobile/android/a/a/j;->e(I)Lcom/zinio/mobile/android/a/a/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zinio/mobile/android/a/a/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    add-int/lit8 v1, p1, 0x1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 207
    :goto_3
    iget-object v3, v2, Lcom/zinio/mobile/android/view/ai;->b:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x5a

    const/16 v6, 0x78

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    if-eqz v1, :cond_4

    .line 209
    iget-object v1, v2, Lcom/zinio/mobile/android/view/ai;->b:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 210
    iget-object v1, v2, Lcom/zinio/mobile/android/view/ai;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/bo;->i:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/ai;

    move-object v2, v0

    move-object v0, p2

    goto :goto_1

    .line 193
    :cond_2
    iget-object v3, v2, Lcom/zinio/mobile/android/view/ai;->b:Landroid/widget/ImageView;

    const v4, 0x7f02005d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    iput-object v1, v2, Lcom/zinio/mobile/android/view/ai;->c:Lcom/zinio/mobile/android/a/a/f;

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/zinio/mobile/android/view/bo;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/zinio/mobile/android/view/cn;

    invoke-direct {v3, p0, v2}, Lcom/zinio/mobile/android/view/cn;-><init>(Lcom/zinio/mobile/android/view/bo;Lcom/zinio/mobile/android/view/ai;)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_2

    .line 206
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 212
    :cond_4
    iget-object v1, v2, Lcom/zinio/mobile/android/view/ai;->b:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 213
    iget-object v1, v2, Lcom/zinio/mobile/android/view/ai;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/bo;->j:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method
