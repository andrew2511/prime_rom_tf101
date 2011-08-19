.class public Lcom/zinio/mobile/android/view/library/LibraryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field a:Lcom/zinio/mobile/android/view/LibraryActivity;

.field protected b:Landroid/os/Handler;

.field private c:Landroid/view/LayoutInflater;

.field private final d:Lcom/zinio/mobile/android/view/library/c;

.field private final e:Lcom/zinio/mobile/android/view/library/m;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->f:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->g:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->h:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->i:Ljava/util/Map;

    .line 413
    new-instance v0, Lcom/zinio/mobile/android/view/library/q;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/library/q;-><init>(Lcom/zinio/mobile/android/view/library/LibraryAdapter;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->b:Landroid/os/Handler;

    .line 88
    check-cast p1, Lcom/zinio/mobile/android/view/LibraryActivity;

    iput-object p1, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    .line 89
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/LibraryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->c:Landroid/view/LayoutInflater;

    .line 92
    new-instance v0, Lcom/zinio/mobile/android/view/library/c;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/library/c;-><init>(Lcom/zinio/mobile/android/view/library/LibraryAdapter;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->d:Lcom/zinio/mobile/android/view/library/c;

    .line 93
    new-instance v0, Lcom/zinio/mobile/android/view/library/m;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/library/m;-><init>(Lcom/zinio/mobile/android/view/library/LibraryAdapter;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->e:Lcom/zinio/mobile/android/view/library/m;

    .line 97
    return-void
.end method

.method private a(Lcom/zinio/mobile/android/view/library/e;Lcom/zinio/mobile/android/a/a/j;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/16 v7, 0x8

    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 109
    .line 111
    invoke-virtual {p1}, Lcom/zinio/mobile/android/view/library/e;->f()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 116
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v1

    invoke-virtual {p2}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/zinio/mobile/android/a/b/l;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v7

    .line 121
    :goto_0
    invoke-virtual {p2}, Lcom/zinio/mobile/android/a/a/j;->f()J

    move-result-wide v2

    .line 122
    invoke-virtual {p2}, Lcom/zinio/mobile/android/a/a/j;->h()J

    move-result-wide v4

    .line 123
    cmp-long v6, v2, v8

    if-ltz v6, :cond_0

    cmp-long v6, v4, v8

    if-ltz v6, :cond_0

    invoke-virtual {p2}, Lcom/zinio/mobile/android/a/a/j;->M()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 127
    :cond_0
    invoke-virtual {p2}, Lcom/zinio/mobile/android/a/a/j;->i()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0, p2}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->b(Lcom/zinio/mobile/android/a/a/j;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v11

    move v6, v7

    .line 161
    :goto_1
    invoke-virtual {p1}, Lcom/zinio/mobile/android/view/library/e;->d()Landroid/widget/Button;

    move-result-object v7

    .line 163
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p2}, Lcom/zinio/mobile/android/a/a/j;->i()Z

    move-result v8

    if-nez v8, :cond_1

    move v6, v10

    .line 169
    :cond_1
    invoke-virtual {v7}, Landroid/widget/Button;->getVisibility()I

    move-result v8

    if-eq v8, v6, :cond_2

    .line 170
    invoke-virtual {v7, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    if-nez v6, :cond_2

    .line 174
    iget-object v6, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v6}, Lcom/zinio/mobile/android/view/LibraryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f02002d

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 175
    invoke-virtual {v7, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    :cond_2
    invoke-virtual {p1}, Lcom/zinio/mobile/android/view/library/e;->e()Landroid/widget/Button;

    move-result-object v6

    .line 180
    invoke-virtual {v6, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 181
    if-nez v1, :cond_3

    .line 183
    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/LibraryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f020037

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 184
    invoke-virtual {v6, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    :cond_3
    invoke-virtual {p2}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-direct {p0, p2}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->b(Lcom/zinio/mobile/android/a/a/j;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 191
    invoke-virtual {v0, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 192
    sput-object v1, Lcom/zinio/mobile/android/view/LibraryActivity;->g:Ljava/lang/String;

    .line 200
    :goto_2
    invoke-virtual {p2}, Lcom/zinio/mobile/android/a/a/j;->g()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059

    mul-double/2addr v6, v8

    double-to-int v6, v6

    .line 202
    const/16 v7, 0x64

    if-lt v6, v7, :cond_b

    const/4 v6, 0x1

    .line 203
    :goto_3
    if-nez v6, :cond_4

    invoke-virtual {p2}, Lcom/zinio/mobile/android/a/a/j;->i()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 204
    :cond_4
    invoke-virtual {v0, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 211
    :cond_5
    :goto_4
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 212
    long-to-float v1, v4

    long-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 213
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 216
    :cond_6
    return-void

    :cond_7
    move v1, v11

    move v6, v11

    .line 134
    goto :goto_1

    .line 138
    :cond_8
    cmp-long v6, v2, v8

    if-eqz v6, :cond_d

    invoke-virtual {p2}, Lcom/zinio/mobile/android/a/a/j;->j()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 140
    invoke-virtual {p2}, Lcom/zinio/mobile/android/a/a/j;->i()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 145
    invoke-direct {p0, p2}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->b(Lcom/zinio/mobile/android/a/a/j;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 147
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->b()V

    move v1, v10

    move v6, v11

    goto/16 :goto_1

    .line 152
    :cond_9
    invoke-direct {p0, p2}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->b(Lcom/zinio/mobile/android/a/a/j;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v1, v11

    move v6, v7

    .line 155
    goto/16 :goto_1

    .line 196
    :cond_a
    invoke-virtual {v0, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    :cond_b
    move v6, v10

    .line 202
    goto :goto_3

    .line 207
    :cond_c
    sget-object v6, Lcom/zinio/mobile/android/view/LibraryActivity;->g:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 208
    invoke-virtual {v0, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_4

    :cond_d
    move v6, v1

    move v1, v11

    goto/16 :goto_1

    :cond_e
    move v1, v10

    move v6, v11

    goto/16 :goto_1

    :cond_f
    move v1, v10

    goto/16 :goto_0
.end method

.method private b(Lcom/zinio/mobile/android/a/a/j;)Z
    .locals 3
    .parameter

    .prologue
    .line 231
    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v1

    .line 234
    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->f:Ljava/lang/String;

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->g:Ljava/lang/String;

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->f:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->g:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->f:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final declared-synchronized a(Lcom/zinio/mobile/android/view/library/r;Lcom/zinio/mobile/android/a/a/j;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 513
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 514
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/zinio/mobile/android/a/a/j;->b(Ljava/lang/Object;)V

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 518
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/zinio/mobile/android/a/b/l;->c(Lcom/zinio/mobile/android/a/a/j;)V

    .line 520
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, p2}, Lcom/zinio/mobile/android/view/LibraryActivity;->a(Lcom/zinio/mobile/android/a/a/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    :cond_1
    monitor-exit p0

    return-void

    .line 513
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 243
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 245
    iput-object p2, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->f:Ljava/lang/String;

    .line 246
    iput-object p1, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->g:Ljava/lang/String;

    .line 253
    :goto_0
    return-void

    .line 250
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->f:Ljava/lang/String;

    .line 251
    const-string v0, ""

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method final a()Z
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/LibraryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Lcom/zinio/mobile/android/a/a/j;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 525
    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->f()J

    move-result-wide v0

    .line 526
    invoke-static {p1}, Lcom/zinio/mobile/android/resources/a/a;->c(Lcom/zinio/mobile/android/a/a/j;)J

    move-result-wide v2

    .line 527
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v7, v4

    mul-long v4, v5, v7

    .line 531
    sub-long/2addr v0, v2

    sub-long v0, v4, v0

    .line 534
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 537
    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->b:Landroid/os/Handler;

    iget-object v3, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->b:Landroid/os/Handler;

    new-instance v4, Ljava/lang/Long;

    neg-long v0, v0

    invoke-direct {v4, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, v9, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v9

    .line 542
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 256
    const-string v0, ""

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->f:Ljava/lang/String;

    .line 257
    const-string v0, ""

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->g:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public final c()V
    .locals 6

    .prologue
    .line 876
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/library/e;

    .line 877
    if-eqz v0, :cond_0

    .line 878
    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/e;->a()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v2

    .line 879
    if-eqz v2, :cond_0

    .line 880
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v3

    .line 881
    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/e;->a()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v4

    .line 882
    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/e;->a()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v5

    .line 884
    invoke-virtual {v3, v4, v5}, Lcom/zinio/mobile/android/a/b/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 885
    if-eqz v3, :cond_0

    .line 886
    invoke-direct {p0, v0, v2}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a(Lcom/zinio/mobile/android/view/library/e;Lcom/zinio/mobile/android/a/a/j;)V

    .line 887
    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/e;->c()Lcom/zinio/mobile/android/view/ClippedImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/ClippedImageView;->postInvalidate()V

    goto :goto_0

    .line 894
    :cond_1
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/j;

    .line 285
    if-nez p2, :cond_4

    .line 287
    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f03000b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 288
    new-instance v2, Lcom/zinio/mobile/android/view/library/e;

    invoke-direct {v2, p0, v1}, Lcom/zinio/mobile/android/view/library/e;-><init>(Lcom/zinio/mobile/android/view/library/LibraryAdapter;Landroid/view/View;)V

    .line 289
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 290
    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/library/e;->d()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 291
    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/library/e;->e()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 298
    :goto_0
    iget-object v3, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/library/e;->a()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v3

    .line 307
    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/library/e;->a(Lcom/zinio/mobile/android/a/a/j;)V

    .line 309
    const v4, 0x7f0c0030

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 310
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 313
    iget-object v5, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->d:Lcom/zinio/mobile/android/view/library/c;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/library/e;->d()Landroid/widget/Button;

    move-result-object v4

    iget-object v5, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->e:Lcom/zinio/mobile/android/view/library/m;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/library/e;->e()Landroid/widget/Button;

    move-result-object v4

    iget-object v5, p0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->e:Lcom/zinio/mobile/android/view/library/m;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->D()Ljava/lang/String;

    move-result-object v4

    .line 320
    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/library/e;->b()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 323
    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/library/e;->b()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :cond_0
    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/library/e;->c()Lcom/zinio/mobile/android/view/ClippedImageView;

    move-result-object v4

    .line 340
    invoke-virtual {v4}, Lcom/zinio/mobile/android/view/ClippedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/zinio/mobile/android/view/ClippedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    if-gez v4, :cond_5

    :cond_1
    const/4 v4, 0x1

    .line 344
    :goto_1
    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Lcom/zinio/mobile/android/a/a/j;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 346
    :cond_2
    invoke-static {v0}, Lcom/zinio/mobile/android/resources/a;->a(Lcom/zinio/mobile/android/a/a/j;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 347
    if-nez v3, :cond_6

    .line 348
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v3

    invoke-static {}, Lcom/zinio/mobile/android/a/a/ae;->a()Lcom/zinio/mobile/android/a/a/ae;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)V

    .line 379
    :cond_3
    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a(Lcom/zinio/mobile/android/view/library/e;Lcom/zinio/mobile/android/a/a/j;)V

    .line 380
    return-object v2

    .line 295
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zinio/mobile/android/view/library/e;

    move-object v2, p2

    goto/16 :goto_0

    .line 340
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 353
    :cond_6
    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/library/e;->c()Lcom/zinio/mobile/android/view/ClippedImageView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/zinio/mobile/android/view/ClippedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method
