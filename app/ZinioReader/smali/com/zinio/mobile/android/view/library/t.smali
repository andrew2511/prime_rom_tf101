.class public final Lcom/zinio/mobile/android/view/library/t;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field a:Lcom/zinio/mobile/android/view/LibraryActivity;

.field protected b:Landroid/os/Handler;

.field private c:Landroid/view/LayoutInflater;

.field private final d:Lcom/zinio/mobile/android/view/library/d;

.field private final e:Lcom/zinio/mobile/android/view/library/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 73
    const v0, 0x1090003

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 285
    new-instance v0, Lcom/zinio/mobile/android/view/library/f;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/library/f;-><init>(Lcom/zinio/mobile/android/view/library/t;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/t;->b:Landroid/os/Handler;

    .line 75
    check-cast p1, Lcom/zinio/mobile/android/view/LibraryActivity;

    iput-object p1, p0, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    .line 76
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/LibraryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/t;->c:Landroid/view/LayoutInflater;

    .line 79
    new-instance v0, Lcom/zinio/mobile/android/view/library/d;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/library/d;-><init>(Lcom/zinio/mobile/android/view/library/t;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/t;->d:Lcom/zinio/mobile/android/view/library/d;

    .line 80
    new-instance v0, Lcom/zinio/mobile/android/view/library/u;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/library/u;-><init>(Lcom/zinio/mobile/android/view/library/t;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/t;->e:Lcom/zinio/mobile/android/view/library/u;

    .line 81
    return-void
.end method


# virtual methods
.method final declared-synchronized a(Lcom/zinio/mobile/android/view/library/b;Lcom/zinio/mobile/android/a/a/j;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 386
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 387
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/zinio/mobile/android/a/a/j;->b(Ljava/lang/Object;)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 390
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/zinio/mobile/android/a/b/l;->c(Lcom/zinio/mobile/android/a/a/j;)V

    .line 391
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, p2}, Lcom/zinio/mobile/android/view/LibraryActivity;->a(Lcom/zinio/mobile/android/a/a/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :cond_1
    monitor-exit p0

    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/zinio/mobile/android/a/a/j;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 396
    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->f()J

    move-result-wide v0

    .line 397
    invoke-static {p1}, Lcom/zinio/mobile/android/resources/a/a;->c(Lcom/zinio/mobile/android/a/a/j;)J

    move-result-wide v2

    .line 398
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v7, v4

    mul-long v4, v5, v7

    .line 402
    sub-long/2addr v0, v2

    sub-long v0, v4, v0

    .line 405
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 408
    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/t;->b:Landroid/os/Handler;

    iget-object v3, p0, Lcom/zinio/mobile/android/view/library/t;->b:Landroid/os/Handler;

    new-instance v4, Ljava/lang/Long;

    neg-long v0, v0

    invoke-direct {v4, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, v9, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v9

    .line 413
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-virtual/range {p0 .. p1}, Lcom/zinio/mobile/android/view/library/t;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zinio/mobile/android/a/a/j;

    .line 192
    if-nez p2, :cond_a

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/t;->c:Landroid/view/LayoutInflater;

    move-object v3, v0

    const v4, 0x7f03000c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 194
    new-instance v4, Lcom/zinio/mobile/android/view/library/a;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/zinio/mobile/android/view/library/a;-><init>(Lcom/zinio/mobile/android/view/library/t;Landroid/view/View;)V

    .line 195
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 196
    invoke-virtual {v4}, Lcom/zinio/mobile/android/view/library/a;->f()Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    .line 202
    :goto_0
    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/library/a;->a()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v5

    .line 209
    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/library/a;->a(Lcom/zinio/mobile/android/a/a/j;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/t;->d:Lcom/zinio/mobile/android/view/library/d;

    move-object v6, v0

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/library/a;->f()Landroid/widget/Button;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/t;->e:Lcom/zinio/mobile/android/view/library/u;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    invoke-virtual/range {p1 .. p1}, Lcom/zinio/mobile/android/a/a/j;->b()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/zinio/mobile/android/a/a/j;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/library/a;->b()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 219
    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/library/a;->b()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/zinio/mobile/android/a/a/j;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/zinio/mobile/android/a/a/j;->d()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/zinio/mobile/android/a/a/j;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/library/a;->c()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 224
    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/library/a;->c()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/zinio/mobile/android/a/a/j;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :cond_1
    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/library/a;->d()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/library/a;->d()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    if-gez v6, :cond_b

    :cond_2
    const/4 v6, 0x1

    .line 239
    :goto_1
    if-nez v6, :cond_3

    if-eqz v5, :cond_3

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/j;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 241
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/zinio/mobile/android/resources/a;->a(Lcom/zinio/mobile/android/a/a/j;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 242
    if-nez v5, :cond_4

    .line 243
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v6

    invoke-static {}, Lcom/zinio/mobile/android/a/a/ae;->a()Lcom/zinio/mobile/android/a/a/ae;

    move-result-object v7

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)V

    .line 245
    :cond_4
    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/library/a;->d()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 248
    :cond_5
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/zinio/mobile/android/a/b/l;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/zinio/mobile/android/App;->j()Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/zinio/mobile/android/view/LibraryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02002d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/library/a;->f()Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/16 v8, 0x8

    const-string v9, ""

    invoke-virtual/range {p1 .. p1}, Lcom/zinio/mobile/android/a/a/j;->f()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/zinio/mobile/android/a/a/j;->h()J

    move-result-wide v12

    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/library/a;->e()Landroid/widget/ImageView;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-ltz v14, :cond_7

    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-gez v14, :cond_d

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    move-object v6, v0

    const v7, 0x7f08003e

    invoke-virtual {v6, v7}, Lcom/zinio/mobile/android/view/LibraryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v9, 0x0

    move-object/from16 v18, v6

    move v6, v8

    move v8, v7

    move v7, v9

    move v9, v5

    move-object/from16 v5, v18

    :goto_3
    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/library/a;->j()Landroid/widget/RelativeLayout;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/library/a;->k()Landroid/widget/RelativeLayout;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/library/a;->f()Landroid/widget/Button;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/zinio/mobile/android/a/a/j;->M()Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v8, 0x4

    :cond_8
    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/library/a;->h()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/library/a;->i()Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/zinio/mobile/android/a/a/j;->M()Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 250
    return-object v4

    .line 199
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/zinio/mobile/android/view/library/a;

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    goto/16 :goto_0

    .line 235
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 248
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/zinio/mobile/android/view/LibraryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02004b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/library/a;->f()Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_d
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-eqz v14, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/zinio/mobile/android/a/a/j;->j()Z

    move-result v14

    if-nez v14, :cond_10

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/zinio/mobile/android/a/a/j;->F()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/library/a;->e()Landroid/widget/ImageView;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    move-object v7, v0

    const v9, 0x7f08003f

    invoke-virtual {v7, v9}, Lcom/zinio/mobile/android/view/LibraryActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v18, v7

    move v7, v9

    move v9, v5

    move-object/from16 v5, v18

    move/from16 v19, v6

    move v6, v8

    move/from16 v8, v19

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    move-object v7, v0

    const v9, 0x7f080040

    invoke-virtual {v7, v9}, Lcom/zinio/mobile/android/view/LibraryActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v18, v7

    move v7, v9

    move v9, v5

    move-object/from16 v5, v18

    move/from16 v19, v6

    move v6, v8

    move/from16 v8, v19

    goto/16 :goto_3

    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/zinio/mobile/android/a/a/j;->i()Z

    move-result v14

    if-eqz v14, :cond_16

    const/4 v5, 0x4

    const/4 v6, 0x4

    :goto_5
    invoke-static {}, Lcom/zinio/mobile/android/resources/a/b;->a()J

    move-result-wide v14

    const-wide/32 v16, 0x100000

    cmp-long v14, v14, v16

    if-gez v14, :cond_11

    const-wide/16 v14, 0x64

    mul-long/2addr v14, v12

    div-long/2addr v14, v10

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    move-object v7, v0

    const v9, 0x7f080040

    invoke-virtual {v7, v9}, Lcom/zinio/mobile/android/view/LibraryActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v18, v7

    move v7, v9

    move v9, v6

    move v6, v8

    move v8, v5

    move-object/from16 v5, v18

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    move-object v14, v0

    const v15, 0x7f080041

    invoke-virtual {v14, v15}, Lcom/zinio/mobile/android/view/LibraryActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-wide/16 v15, 0x64

    mul-long/2addr v12, v15

    div-long v10, v12, v10

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    move-object v7, v0

    const v9, 0x7f080040

    invoke-virtual {v7, v9}, Lcom/zinio/mobile/android/view/LibraryActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v18, v7

    move v7, v9

    move v9, v6

    move v6, v8

    move v8, v5

    move-object/from16 v5, v18

    goto/16 :goto_3

    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/zinio/mobile/android/a/a/j;->g()D

    move-result-wide v12

    const-wide/high16 v15, 0x4059

    mul-double/2addr v12, v15

    double-to-int v8, v12

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v12, v13

    invoke-static {v14, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/library/a;->l()Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/library/a;->g()Landroid/widget/ProgressBar;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/4 v10, 0x0

    const/16 v11, 0x64

    if-ge v8, v11, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/zinio/mobile/android/a/a/j;->i()Z

    move-result v8

    if-eqz v8, :cond_15

    :cond_13
    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v8, 0x8

    move-object/from16 v18, v9

    move v9, v8

    move v8, v6

    move v6, v5

    move-object/from16 v5, v18

    goto/16 :goto_3

    :cond_14
    const/4 v5, 0x4

    goto/16 :goto_4

    :cond_15
    move v8, v5

    move-object v5, v9

    move v9, v6

    move v6, v10

    goto/16 :goto_3

    :cond_16
    move/from16 v18, v6

    move v6, v5

    move/from16 v5, v18

    goto/16 :goto_5
.end method
