.class public Lcom/zinio/mobile/android/view/LibraryDeleteActivity;
.super Lcom/zinio/mobile/android/view/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/a/b/aa;
.implements Lcom/zinio/mobile/android/a/b/ab;
.implements Lcom/zinio/mobile/android/view/cf;


# static fields
.field private static b:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# instance fields
.field a:Landroid/view/LayoutInflater;

.field private c:I

.field private d:I

.field private f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

.field private g:Landroid/os/Handler;

.field private h:Lcom/zinio/mobile/android/a/a/j;

.field private i:Lcom/zinio/mobile/android/a/b/l;

.field private j:Lcom/zinio/mobile/android/a/b/s;

.field private k:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

.field private l:Landroid/widget/ToggleButton;

.field private n:Landroid/widget/ToggleButton;

.field private o:Landroid/widget/Button;

.field private p:Ljava/util/ArrayList;

.field private q:Lcom/zinio/mobile/android/view/ce;

.field private final r:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "date"

    sput-object v0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->b:Ljava/lang/String;

    .line 65
    const-string v0, ""

    sput-object v0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/BaseActivity;-><init>()V

    .line 63
    iput v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->c:I

    .line 64
    iput v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->d:I

    .line 68
    iput-object v1, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->h:Lcom/zinio/mobile/android/a/a/j;

    .line 86
    iput-object v1, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->q:Lcom/zinio/mobile/android/view/ce;

    .line 90
    new-instance v0, Lcom/zinio/mobile/android/view/d;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/d;-><init>(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->r:Landroid/view/View$OnClickListener;

    .line 670
    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->l:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;Lcom/zinio/mobile/android/a/a/j;)Lcom/zinio/mobile/android/a/a/j;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->h:Lcom/zinio/mobile/android/a/a/j;

    return-object p1
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 58
    const-string v0, ""

    sget-object v1, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->b:Ljava/lang/String;

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-string v1, "settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sortKey@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zinio/mobile/android/c/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sput-object p1, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->b:Ljava/lang/String;

    sput-object v0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->f()V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->n:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic c(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)Lcom/zinio/mobile/android/view/BottomToolbarActivity;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    return-object v0
.end method

.method private c()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-wide/high16 v7, 0x41d0

    .line 302
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    long-to-double v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v5, v0

    mul-long/2addr v3, v5

    long-to-double v3, v3

    div-double/2addr v1, v7

    div-double/2addr v3, v7

    sub-double v5, v3, v1

    const v0, 0x7f0c004a

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%.2f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GB "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f080017

    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x0

    cmpl-double v0, v3, v0

    if-eqz v0, :cond_2

    div-double v0, v5, v3

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    move v1, v0

    :goto_0
    const v0, 0x7f0c0049

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 303
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->j:Lcom/zinio/mobile/android/a/b/s;

    if-nez v0, :cond_1

    .line 310
    :cond_0
    :goto_1
    return-void

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->j:Lcom/zinio/mobile/android/a/b/s;

    if-eqz v0, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->f()V

    goto :goto_1

    :cond_2
    move v1, v10

    goto :goto_0
.end method

.method static synthetic d(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)Lcom/zinio/mobile/android/a/b/l;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->i:Lcom/zinio/mobile/android/a/b/l;

    return-object v0
.end method

.method static synthetic e(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)Lcom/zinio/mobile/android/view/LibraryDeleteActivity;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->k:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    return-object v0
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 413
    sget-object v0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->b:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->j:Lcom/zinio/mobile/android/a/b/s;

    sget-object v1, Lcom/zinio/mobile/android/a/b/v;->b:Lcom/zinio/mobile/android/a/b/v;

    sget-object v2, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->e:Ljava/lang/String;

    const-string v3, "All"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v4

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/a/b/s;->b(Lcom/zinio/mobile/android/a/b/v;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->p:Ljava/util/ArrayList;

    .line 439
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 440
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 441
    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 442
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/b/z;

    .line 444
    if-eqz v0, :cond_0

    .line 453
    iget-object v0, v0, Lcom/zinio/mobile/android/a/b/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 414
    :cond_1
    sget-object v2, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->e:Ljava/lang/String;

    goto :goto_0

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->j:Lcom/zinio/mobile/android/a/b/s;

    sget-object v1, Lcom/zinio/mobile/android/a/b/v;->b:Lcom/zinio/mobile/android/a/b/v;

    sget-object v2, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->e:Ljava/lang/String;

    const-string v3, "All content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v4

    :goto_3
    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/a/b/s;->a(Lcom/zinio/mobile/android/a/b/v;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->p:Ljava/util/ArrayList;

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->e:Ljava/lang/String;

    goto :goto_3

    .line 456
    :cond_4
    new-instance v0, Lcom/zinio/mobile/android/view/ce;

    invoke-direct {v0, p0, p0, v1}, Lcom/zinio/mobile/android/view/ce;-><init>(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->q:Lcom/zinio/mobile/android/view/ce;

    .line 459
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->i:Lcom/zinio/mobile/android/a/b/l;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->q:Lcom/zinio/mobile/android/view/ce;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Ljava/lang/Object;)V

    .line 464
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->h()Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->q:Lcom/zinio/mobile/android/view/ce;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 465
    return-void
.end method

.method static synthetic f(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->showDialog(I)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->i:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/b/ab;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zinio/mobile/android/view/e;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/e;-><init>(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic g(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->showDialog(I)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->i:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/b/ab;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zinio/mobile/android/view/f;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/f;-><init>(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private h()Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 469
    const v0, 0x7f0c003d

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic h(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)Lcom/zinio/mobile/android/a/a/j;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->h:Lcom/zinio/mobile/android/a/a/j;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/zinio/mobile/android/a/b/s;)V
    .locals 0
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->j:Lcom/zinio/mobile/android/a/b/s;

    .line 686
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->c()V

    .line 687
    return-void
.end method

.method public final b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 698
    invoke-virtual {p0, v6}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->dismissDialog(I)V

    .line 700
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->j:Lcom/zinio/mobile/android/a/b/s;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/s;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->h()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 702
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->startActivity(Landroid/content/Intent;)V

    .line 705
    :cond_1
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->finish()V

    .line 706
    return-void

    :cond_2
    move v0, v6

    goto :goto_0
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 691
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 695
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 727
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800a1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 730
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0c000d

    const/4 v4, 0x0

    const v3, 0x7f080012

    .line 241
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 242
    const-string v0, "This is my parsed string output:"

    invoke-virtual {p0, v3}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const v0, 0x7f0c0045

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 247
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 248
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->h()Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 249
    invoke-virtual {p0, v5}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 250
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->h()Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 253
    invoke-virtual {p0, v5}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 255
    invoke-virtual {p0, v3}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\ufe63"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\ufe63"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual {p0, v3}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const v2, 0x7f0c000d

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x7f080012

    .line 131
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->g:Landroid/os/Handler;

    .line 133
    invoke-virtual {p0, v5}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->requestWindowFeature(I)Z

    .line 135
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->setContentView(I)V

    .line 137
    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 138
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 139
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->h()Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 143
    :cond_0
    :goto_0
    sget-object v0, Lcom/zinio/mobile/android/view/LibraryActivity;->a:Ljava/lang/String;

    sput-object v0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->b:Ljava/lang/String;

    .line 146
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->a:Landroid/view/LayoutInflater;

    .line 148
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->i:Lcom/zinio/mobile/android/a/b/l;

    .line 149
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->i:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/l;->d()Lcom/zinio/mobile/android/a/b/s;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->j:Lcom/zinio/mobile/android/a/b/s;

    .line 150
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->c()V

    .line 154
    const v0, 0x7f0c0042

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->l:Landroid/widget/ToggleButton;

    .line 155
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->l:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v0, 0x7f0c0043

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->n:Landroid/widget/ToggleButton;

    .line 158
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->n:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v0, 0x7f0c004b

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->o:Landroid/widget/Button;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->o:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v0, 0x7f0c

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setVisibility(I)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a()V

    .line 162
    const v0, 0x7f0c0046

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iput-object p0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->k:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    .line 166
    sget-object v0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->b:Ljava/lang/String;

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->l:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 169
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->n:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 176
    :goto_1
    return-void

    .line 139
    :cond_1
    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->h()Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\ufe63"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\ufe63"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->l:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 174
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->n:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter

    .prologue
    .line 289
    packed-switch p1, :pswitch_data_0

    .line 295
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 298
    :goto_0
    return-object v0

    .line 291
    :pswitch_0
    invoke-static {p0}, Lcom/zinio/mobile/android/view/dialogs/e;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 292
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 279
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onDestroy()V

    .line 281
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->i:Lcom/zinio/mobile/android/a/b/l;

    const-class v1, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Ljava/lang/Class;)V

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->q:Lcom/zinio/mobile/android/view/ce;

    .line 283
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 193
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->d()V

    .line 198
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zinio/mobile/android/view/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 203
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onResume()V

    .line 205
    const v0, 0x7f0c0045

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 206
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->c()V

    .line 208
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 209
    const-string v1, "sort_by_parameter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    sput-object v0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->b:Ljava/lang/String;

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->l:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 215
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->n:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->l:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 220
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->n:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 226
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onStop()V

    .line 229
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->j:Lcom/zinio/mobile/android/a/b/s;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/s;->f()Ljava/util/ArrayList;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/j;

    .line 232
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/a/a/j;->a(Z)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a()V

    .line 236
    const v0, 0x7f0c0045

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    return-void
.end method
