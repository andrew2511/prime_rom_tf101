.class public Lcom/zinio/mobile/android/view/LibraryActivity;
.super Lcom/zinio/mobile/android/view/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/zinio/mobile/android/a/b/aa;
.implements Lcom/zinio/mobile/android/a/b/m;
.implements Lcom/zinio/mobile/android/a/b/r;


# static fields
.field private static G:J

.field private static H:Z

.field private static I:Z

.field private static J:Landroid/app/Activity;

.field public static a:Ljava/lang/String;

.field public static c:Z

.field public static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;


# instance fields
.field private final A:I

.field private B:Z

.field private final C:I

.field private D:Landroid/os/Handler;

.field private E:Z

.field private final F:Landroid/view/View$OnClickListener;

.field b:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

.field public d:Z

.field e:Landroid/widget/BaseAdapter;

.field protected f:J

.field private i:I

.field private j:I

.field private k:Lcom/zinio/mobile/android/a/b/s;

.field private l:Lcom/zinio/mobile/android/a/b/l;

.field private n:Landroid/widget/ToggleButton;

.field private o:Landroid/widget/ToggleButton;

.field private p:Landroid/widget/Button;

.field private q:Lcom/zinio/mobile/android/view/by;

.field private r:Landroid/widget/ListView;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Ljava/util/ArrayList;

.field private x:Z

.field private final y:I

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 88
    const-string v0, "date"

    sput-object v0, Lcom/zinio/mobile/android/view/LibraryActivity;->a:Ljava/lang/String;

    .line 89
    const-string v0, ""

    sput-object v0, Lcom/zinio/mobile/android/view/LibraryActivity;->h:Ljava/lang/String;

    .line 107
    sput-boolean v4, Lcom/zinio/mobile/android/view/LibraryActivity;->c:Z

    .line 154
    const-string v0, ""

    sput-object v0, Lcom/zinio/mobile/android/view/LibraryActivity;->g:Ljava/lang/String;

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/zinio/mobile/android/view/LibraryActivity;->G:J

    .line 387
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zinio/mobile/android/view/LibraryActivity;->H:Z

    .line 388
    sput-boolean v4, Lcom/zinio/mobile/android/view/LibraryActivity;->I:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 77
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/BaseActivity;-><init>()V

    .line 99
    iput v2, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->i:I

    .line 100
    iput v2, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->j:I

    .line 122
    iput-boolean v1, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->d:Z

    .line 126
    iput-boolean v1, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->s:Z

    .line 128
    iput-boolean v1, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->t:Z

    .line 129
    iput-boolean v1, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->u:Z

    .line 130
    iput-boolean v1, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->v:Z

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->w:Ljava/util/ArrayList;

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->e:Landroid/widget/BaseAdapter;

    .line 148
    iput v1, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->y:I

    .line 149
    const/4 v0, 0x2

    iput v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->z:I

    .line 150
    const/16 v0, 0x2ee

    iput v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->A:I

    .line 151
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->f:J

    .line 152
    iput-boolean v2, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->B:Z

    .line 156
    const/4 v0, 0x3

    iput v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->C:I

    .line 158
    new-instance v0, Lcom/zinio/mobile/android/view/bn;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/bn;-><init>(Lcom/zinio/mobile/android/view/LibraryActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->D:Landroid/os/Handler;

    .line 184
    iput-boolean v2, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->E:Z

    .line 189
    new-instance v0, Lcom/zinio/mobile/android/view/bm;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/bm;-><init>(Lcom/zinio/mobile/android/view/LibraryActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->F:Landroid/view/View$OnClickListener;

    .line 930
    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/LibraryActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->n:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/LibraryActivity;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 77
    const-string v0, ""

    sget-object v1, Lcom/zinio/mobile/android/view/LibraryActivity;->a:Ljava/lang/String;

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/zinio/mobile/android/view/LibraryActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/zinio/mobile/android/view/LibraryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

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

    sput-object p1, Lcom/zinio/mobile/android/view/LibraryActivity;->a:Ljava/lang/String;

    sput-object v0, Lcom/zinio/mobile/android/view/LibraryActivity;->h:Ljava/lang/String;

    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->o()V

    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    .line 262
    invoke-static {}, Lcom/zinio/mobile/android/App;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Grid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 265
    :cond_0
    const v0, 0x7f0c003f

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 268
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 269
    const v1, 0x7f040002

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 270
    const/high16 v2, 0x7f04

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 272
    if-eqz p1, :cond_1

    .line 274
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 275
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 279
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 280
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/zinio/mobile/android/view/LibraryActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->o:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method public static b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 391
    sget-boolean v0, Lcom/zinio/mobile/android/view/LibraryActivity;->I:Z

    if-eqz v0, :cond_0

    .line 393
    :try_start_0
    sget-object v0, Lcom/zinio/mobile/android/view/LibraryActivity;->J:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :goto_0
    sput-boolean v2, Lcom/zinio/mobile/android/view/LibraryActivity;->I:Z

    .line 398
    sput-boolean v2, Lcom/zinio/mobile/android/view/LibraryActivity;->H:Z

    .line 400
    :cond_0
    return-void

    .line 394
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Lcom/zinio/mobile/android/a/b/s;)V
    .locals 1
    .parameter

    .prologue
    .line 923
    iput-object p1, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->k:Lcom/zinio/mobile/android/a/b/s;

    .line 925
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->k:Lcom/zinio/mobile/android/a/b/s;

    if-eqz v0, :cond_0

    .line 926
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->o()V

    .line 928
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/zinio/mobile/android/view/LibraryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->n()V

    return-void
.end method

.method static synthetic d(Lcom/zinio/mobile/android/view/LibraryActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    sget-object v0, Lcom/zinio/mobile/android/a;->k:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic e(Lcom/zinio/mobile/android/view/LibraryActivity;)Lcom/zinio/mobile/android/a/b/l;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->l:Lcom/zinio/mobile/android/a/b/l;

    return-object v0
.end method

.method static synthetic f(Lcom/zinio/mobile/android/view/LibraryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->i()V

    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 351
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->l:Lcom/zinio/mobile/android/a/b/l;

    .line 352
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->l:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/l;->d()Lcom/zinio/mobile/android/a/b/s;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->b(Lcom/zinio/mobile/android/a/b/s;)V

    .line 353
    return-void
.end method

.method private declared-synchronized i()V
    .locals 6

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 365
    sget-wide v2, Lcom/zinio/mobile/android/view/LibraryActivity;->G:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    sget-boolean v2, Lcom/zinio/mobile/android/view/LibraryActivity;->c:Z

    if-nez v2, :cond_0

    .line 366
    new-instance v2, Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {v2, p0}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    .line 367
    const v3, 0x7f080054

    invoke-virtual {v2, v3}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 370
    :cond_0
    sput-wide v0, Lcom/zinio/mobile/android/view/LibraryActivity;->G:J

    .line 371
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zinio/mobile/android/view/LibraryActivity;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    monitor-exit p0

    return-void

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 536
    const v0, 0x7f0c003d

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/GridView;

    return-object p0
.end method

.method private k()V
    .locals 5

    .prologue
    const v2, 0x7f0c000d

    const/4 v4, 0x0

    const v3, 0x7f080020

    .line 626
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v0

    .line 627
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 628
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 629
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->j()Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 630
    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/view/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 631
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 633
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->j()Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 634
    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/view/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 636
    invoke-virtual {p0, v3}, Lcom/zinio/mobile/android/view/LibraryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\ufe63"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/zinio/mobile/android/view/LibraryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\ufe63"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 637
    :cond_2
    invoke-virtual {p0, v3}, Lcom/zinio/mobile/android/view/LibraryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/zinio/mobile/android/view/LibraryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private l()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 810
    const-string v0, "settings"

    invoke-virtual {p0, v0, v4}, Lcom/zinio/mobile/android/view/LibraryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 813
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v1

    .line 814
    if-eqz v1, :cond_0

    .line 815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sortKey@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/zinio/mobile/android/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "date"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/view/LibraryActivity;->a:Ljava/lang/String;

    .line 817
    const-string v0, ""

    sput-object v0, Lcom/zinio/mobile/android/view/LibraryActivity;->h:Ljava/lang/String;

    .line 823
    :goto_0
    sget-object v0, Lcom/zinio/mobile/android/view/LibraryActivity;->a:Ljava/lang/String;

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 824
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->n:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 825
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->o:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 830
    :goto_1
    return-void

    .line 819
    :cond_0
    const-string v0, "date"

    sput-object v0, Lcom/zinio/mobile/android/view/LibraryActivity;->a:Ljava/lang/String;

    .line 820
    const-string v0, ""

    sput-object v0, Lcom/zinio/mobile/android/view/LibraryActivity;->h:Ljava/lang/String;

    goto :goto_0

    .line 827
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->n:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 828
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->o:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_1
.end method

.method private m()V
    .locals 0

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->l()V

    .line 834
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->o()V

    .line 835
    return-void
.end method

.method private n()V
    .locals 1

    .prologue
    .line 843
    sget-object v0, Lcom/zinio/mobile/android/view/LibraryActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/zinio/mobile/android/a;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->startActivity(Landroid/content/Intent;)V

    .line 844
    return-void
.end method

.method private o()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 866
    sget-object v0, Lcom/zinio/mobile/android/view/LibraryActivity;->a:Ljava/lang/String;

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 867
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->k:Lcom/zinio/mobile/android/a/b/s;

    sget-object v1, Lcom/zinio/mobile/android/a/b/v;->a:Lcom/zinio/mobile/android/a/b/v;

    sget-object v2, Lcom/zinio/mobile/android/view/LibraryActivity;->h:Ljava/lang/String;

    const-string v3, "All content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v4

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/a/b/s;->a(Lcom/zinio/mobile/android/a/b/v;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->w:Ljava/util/ArrayList;

    .line 884
    :goto_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 885
    invoke-static {}, Lcom/zinio/mobile/android/App;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Grid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 886
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 887
    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 888
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/b/z;

    .line 889
    if-eqz v0, :cond_0

    .line 890
    iget-object v0, v0, Lcom/zinio/mobile/android/a/b/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 867
    :cond_1
    sget-object v2, Lcom/zinio/mobile/android/view/LibraryActivity;->h:Ljava/lang/String;

    goto :goto_0

    .line 871
    :cond_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->k:Lcom/zinio/mobile/android/a/b/s;

    sget-object v1, Lcom/zinio/mobile/android/a/b/v;->a:Lcom/zinio/mobile/android/a/b/v;

    sget-object v2, Lcom/zinio/mobile/android/view/LibraryActivity;->h:Ljava/lang/String;

    const-string v3, "All"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v4

    :goto_3
    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/a/b/s;->b(Lcom/zinio/mobile/android/a/b/v;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->w:Ljava/util/ArrayList;

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/zinio/mobile/android/view/LibraryActivity;->h:Ljava/lang/String;

    goto :goto_3

    .line 893
    :cond_4
    new-instance v0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    invoke-direct {v0, p0, v1}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->e:Landroid/widget/BaseAdapter;

    .line 896
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->k()V

    .line 897
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->j()Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->e:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 920
    :goto_4
    return-void

    .line 900
    :cond_5
    new-instance v0, Lcom/zinio/mobile/android/view/library/g;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/library/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->e:Landroid/widget/BaseAdapter;

    .line 901
    :cond_6
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 902
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/b/z;

    .line 903
    if-eqz v0, :cond_6

    .line 904
    new-instance v3, Lcom/zinio/mobile/android/view/library/t;

    iget-object v1, v0, Lcom/zinio/mobile/android/a/b/z;->b:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v1}, Lcom/zinio/mobile/android/view/library/t;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 907
    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->e:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/zinio/mobile/android/view/library/g;

    iget-object v0, v0, Lcom/zinio/mobile/android/a/b/z;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/zinio/mobile/android/view/library/g;->a(Ljava/lang/String;Landroid/widget/Adapter;)V

    goto :goto_5

    .line 914
    :cond_7
    const v0, 0x7f0c004f

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->r:Landroid/widget/ListView;

    .line 915
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->r:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->e:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_4
.end method

.method private p()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x2ee

    const/4 v4, 0x1

    .line 1026
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->D:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1028
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->x:Z

    if-nez v0, :cond_0

    .line 1029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1030
    iget-wide v2, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->f:J

    sub-long/2addr v0, v2

    .line 1031
    iget-object v2, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->D:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1032
    cmp-long v3, v0, v5

    if-lez v3, :cond_1

    .line 1033
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->D:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1038
    :cond_0
    :goto_0
    return-void

    .line 1035
    :cond_1
    iget-object v3, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->D:Landroid/os/Handler;

    sub-long v0, v5, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/zinio/mobile/android/a/a/j;)V
    .locals 2
    .parameter

    .prologue
    .line 854
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->B:Z

    if-nez v0, :cond_0

    .line 855
    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->startActivity(Landroid/content/Intent;)V

    .line 858
    :cond_0
    return-void
.end method

.method public final a(Lcom/zinio/mobile/android/a/a/x;)V
    .locals 1
    .parameter

    .prologue
    .line 1017
    instance-of v0, p1, Lcom/zinio/mobile/android/a/a/ae;

    if-eqz v0, :cond_0

    .line 1018
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->p()V

    .line 1020
    :cond_0
    return-void
.end method

.method public final a(Lcom/zinio/mobile/android/a/b/s;)V
    .locals 1
    .parameter

    .prologue
    .line 958
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->E:Z

    if-eqz v0, :cond_0

    .line 959
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->removeDialog(I)V

    .line 962
    :cond_0
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/view/LibraryActivity;->b(Lcom/zinio/mobile/android/a/b/s;)V

    .line 963
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->k:Lcom/zinio/mobile/android/a/b/s;

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/b/s;->a(Ljava/lang/Object;)V

    .line 965
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->t:Z

    .line 966
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->B:Z

    return v0
.end method

.method public final b(Lcom/zinio/mobile/android/a/a/j;)V
    .locals 0
    .parameter

    .prologue
    .line 998
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->p()V

    .line 999
    return-void
.end method

.method public final c()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->D:Landroid/os/Handler;

    return-object v0
.end method

.method public final d()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 970
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 973
    iget-boolean v1, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->t:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    .line 976
    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/e;->d()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 977
    iput-boolean v2, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->t:Z

    .line 980
    :cond_0
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->E:Z

    if-eqz v0, :cond_1

    .line 981
    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/view/LibraryActivity;->removeDialog(I)V

    .line 984
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->D:Landroid/os/Handler;

    new-instance v1, Lcom/zinio/mobile/android/view/bi;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/bi;-><init>(Lcom/zinio/mobile/android/view/LibraryActivity;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 991
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 994
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/e;->e()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 995
    return-void
.end method

.method public final f()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x2ee

    const/4 v4, 0x2

    .line 1009
    invoke-static {}, Lcom/zinio/mobile/android/App;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Grid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1010
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->D:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->x:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->f:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->D:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    cmp-long v3, v0, v5

    if-lez v3, :cond_1

    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->D:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1014
    :cond_0
    :goto_0
    return-void

    .line 1010
    :cond_1
    iget-object v3, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->D:Landroid/os/Handler;

    sub-long v0, v5, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1012
    :cond_2
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->p()V

    goto :goto_0
.end method

.method public final g()V
    .locals 3

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->D:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->D:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1097
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f020001

    .line 608
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 610
    invoke-static {}, Lcom/zinio/mobile/android/App;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Grid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/dialogs/m;

    .line 613
    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/m;->a()V

    goto :goto_0

    .line 615
    :cond_0
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->k()V

    .line 616
    const v0, 0x7f0c003c

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 622
    :goto_1
    return-void

    .line 619
    :cond_1
    const v0, 0x7f0c004e

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0c0044

    const/4 v2, 0x0

    .line 245
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 248
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->requestWindowFeature(I)Z

    .line 249
    invoke-static {}, Lcom/zinio/mobile/android/App;->n()V

    invoke-static {}, Lcom/zinio/mobile/android/App;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Grid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->setContentView(I)V

    invoke-virtual {p0, v3}, Lcom/zinio/mobile/android/view/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->p:Landroid/widget/Button;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->p:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "settings"

    invoke-virtual {p0, v0, v2}, Lcom/zinio/mobile/android/view/LibraryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :goto_0
    const/high16 v0, 0x7f0c

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->b:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->b:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setVisibility(I)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->b:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->D:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->b:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0003

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/zinio/mobile/android/App;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Grid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/zinio/mobile/android/view/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-direct {p0, v2}, Lcom/zinio/mobile/android/view/LibraryActivity;->a(Z)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->b:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a()V

    const v0, 0x7f0c0042

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->n:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->n:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0043

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->o:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->o:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->l()V

    .line 250
    new-instance v0, Lcom/zinio/mobile/android/view/by;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/by;-><init>(Lcom/zinio/mobile/android/view/LibraryActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->q:Lcom/zinio/mobile/android/view/by;

    .line 252
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->h()V

    .line 254
    sput-object p0, Lcom/zinio/mobile/android/view/LibraryActivity;->J:Landroid/app/Activity;

    .line 258
    return-void

    .line 249
    :cond_1
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->setContentView(I)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 573
    invoke-static {p0}, Lcom/zinio/mobile/android/view/dialogs/e;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 574
    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->l:Lcom/zinio/mobile/android/a/b/l;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->l:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/l;->e()V

    .line 591
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->l:Lcom/zinio/mobile/android/a/b/l;

    const-class v1, Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Ljava/lang/Class;)V

    .line 594
    :cond_0
    const-string v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zinio/mobile/android/view/LibraryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->e:Landroid/widget/BaseAdapter;

    .line 598
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onDestroy()V

    .line 599
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 643
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 644
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 645
    sget-object v0, Lcom/zinio/mobile/android/a;->m:Landroid/content/Intent;

    .line 646
    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->startActivity(Landroid/content/Intent;)V

    .line 647
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->finish()V

    .line 649
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->b:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->d()V

    .line 653
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/zinio/mobile/android/view/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 381
    const-string v0, "show_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->s:Z

    .line 382
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/view/LibraryActivity;->setIntent(Landroid/content/Intent;)V

    .line 383
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 384
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 658
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 670
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 660
    :pswitch_0
    invoke-static {p0}, Lcom/zinio/mobile/android/d/a;->a(Lcom/zinio/mobile/android/view/cf;)V

    move v0, v1

    .line 661
    goto :goto_0

    .line 663
    :pswitch_1
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->n()V

    move v0, v1

    .line 664
    goto :goto_0

    .line 666
    :pswitch_2
    sget-object v0, Lcom/zinio/mobile/android/a;->k:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 667
    goto :goto_0

    .line 658
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 542
    invoke-static {}, Lcom/zinio/mobile/android/App;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Grid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->j()Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 547
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->a(Z)V

    .line 548
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->b:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a()V

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->q:Lcom/zinio/mobile/android/view/by;

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :goto_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->l:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/b/l;->b(Ljava/lang/Object;)V

    .line 560
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->k:Lcom/zinio/mobile/android/a/b/s;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->k:Lcom/zinio/mobile/android/a/b/s;

    const-class v1, Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/s;->a(Ljava/lang/Class;)V

    .line 564
    :cond_0
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onPause()V

    .line 567
    invoke-static {}, Lcom/zinio/mobile/android/App;->e()V

    .line 568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->B:Z

    .line 569
    return-void

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->r:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 603
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onRestart()V

    .line 604
    return-void
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const v10, 0x7f020001

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 404
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onResume()V

    .line 407
    invoke-static {}, Lcom/zinio/mobile/android/App;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-static {v8}, Lcom/zinio/mobile/android/App;->a(Z)V

    .line 411
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 412
    const v1, 0x7f080068

    invoke-virtual {p0, v1}, Lcom/zinio/mobile/android/view/LibraryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 413
    invoke-static {v0, v1}, Lcom/zinio/mobile/android/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->startActivity(Landroid/content/Intent;)V

    .line 532
    :goto_0
    return-void

    .line 417
    :cond_0
    invoke-static {}, Lcom/zinio/mobile/android/App;->d()V

    .line 418
    iput-boolean v8, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->B:Z

    .line 420
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v0

    .line 422
    if-nez v0, :cond_1

    .line 423
    sget-object v0, Lcom/zinio/mobile/android/a;->b:Landroid/content/Intent;

    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->startActivity(Landroid/content/Intent;)V

    .line 426
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->finish()V

    goto :goto_0

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->k:Lcom/zinio/mobile/android/a/b/s;

    if-nez v0, :cond_6

    .line 431
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->h()V

    .line 478
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->k:Lcom/zinio/mobile/android/a/b/s;

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/b/s;->a(Ljava/lang/Object;)V

    .line 480
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->s:Z

    if-eqz v0, :cond_4

    .line 488
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->l:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/l;->c()V

    .line 489
    sget-object v0, Lcom/zinio/mobile/android/view/dialogs/s;->a:Lcom/zinio/mobile/android/view/dialogs/s;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/dialogs/o;->a(Lcom/zinio/mobile/android/view/dialogs/s;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 493
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const-string v2, "com.zinio.mobile.android.tooltips"

    invoke-virtual {p0, v2, v8}, Lcom/zinio/mobile/android/view/LibraryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "read-tip-index"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {v4, p0}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/zinio/mobile/android/view/bk;

    invoke-direct {v5, p0, v4}, Lcom/zinio/mobile/android/view/bk;-><init>(Lcom/zinio/mobile/android/view/LibraryActivity;Lcom/zinio/mobile/android/view/dialogs/e;)V

    new-instance v6, Lcom/zinio/mobile/android/view/bj;

    invoke-direct {v6, p0}, Lcom/zinio/mobile/android/view/bj;-><init>(Lcom/zinio/mobile/android/view/LibraryActivity;)V

    aget-object v0, v0, v3

    const v7, 0x7f08001a

    invoke-virtual {v4, v0, v6, v7, v5}, Lcom/zinio/mobile/android/view/dialogs/e;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "read-tip-index"

    add-int/lit8 v3, v3, 0x1

    rem-int v1, v3, v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 494
    iput-boolean v8, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->v:Z

    .line 502
    :cond_3
    iput-boolean v8, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->s:Z

    .line 506
    :cond_4
    sget-boolean v0, Lcom/zinio/mobile/android/view/LibraryActivity;->H:Z

    if-eqz v0, :cond_5

    .line 507
    invoke-virtual {p0, v8}, Lcom/zinio/mobile/android/view/LibraryActivity;->showDialog(I)V

    .line 508
    sput-boolean v9, Lcom/zinio/mobile/android/view/LibraryActivity;->I:Z

    .line 511
    :cond_5
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->p()V

    .line 512
    invoke-direct {p0, v8}, Lcom/zinio/mobile/android/view/LibraryActivity;->a(Z)V

    .line 513
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->v:Z

    if-eqz v0, :cond_a

    .line 514
    iput-boolean v8, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->v:Z

    .line 515
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->b:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->b()V

    .line 520
    :goto_2
    invoke-static {}, Lcom/zinio/mobile/android/App;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Grid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 521
    const v0, 0x7f0c003c

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 524
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->j()Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 525
    invoke-direct {p0, v8}, Lcom/zinio/mobile/android/view/LibraryActivity;->a(Z)V

    .line 526
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->l()V

    goto/16 :goto_0

    .line 434
    :cond_6
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->k:Lcom/zinio/mobile/android/a/b/s;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/s;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 435
    invoke-virtual {p0, v8}, Lcom/zinio/mobile/android/view/LibraryActivity;->removeDialog(I)V

    .line 438
    :cond_7
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->k:Lcom/zinio/mobile/android/a/b/s;

    .line 439
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->d()Lcom/zinio/mobile/android/a/b/s;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->k:Lcom/zinio/mobile/android/a/b/s;

    .line 441
    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->q:Lcom/zinio/mobile/android/view/by;

    invoke-static {}, Lcom/zinio/mobile/android/view/by;->b()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/zinio/mobile/android/view/LibraryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 444
    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->k:Lcom/zinio/mobile/android/a/b/s;

    if-eq v1, v0, :cond_8

    .line 445
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->l()V

    .line 446
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->k:Lcom/zinio/mobile/android/a/b/s;

    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->b(Lcom/zinio/mobile/android/a/b/s;)V

    .line 448
    :cond_8
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->l:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/b/l;->a(Ljava/lang/Object;)V

    .line 450
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->k:Lcom/zinio/mobile/android/a/b/s;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/s;->c()Ljava/util/Collection;

    move-result-object v0

    .line 451
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 452
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 453
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/j;

    .line 454
    invoke-static {}, Lcom/zinio/mobile/android/a/a/ae;->a()Lcom/zinio/mobile/android/a/a/ae;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/resources/a/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-static {v0}, Lcom/zinio/mobile/android/resources/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 456
    sget-object v0, Lcom/zinio/mobile/android/view/LibraryActivity;->a:Ljava/lang/String;

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->k:Lcom/zinio/mobile/android/a/b/s;

    sget-object v1, Lcom/zinio/mobile/android/a/b/v;->a:Lcom/zinio/mobile/android/a/b/v;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/s;->a(Lcom/zinio/mobile/android/a/b/v;)Ljava/util/ArrayList;

    move-result-object v0

    .line 459
    :goto_3
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 460
    new-instance v1, Lcom/zinio/mobile/android/view/bl;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/bl;-><init>(Lcom/zinio/mobile/android/view/LibraryActivity;)V

    new-array v2, v9, [Ljava/util/List;

    aput-object v0, v2, v8

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/view/bl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 456
    :cond_9
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->k:Lcom/zinio/mobile/android/a/b/s;

    sget-object v1, Lcom/zinio/mobile/android/a/b/v;->a:Lcom/zinio/mobile/android/a/b/v;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/s;->b(Lcom/zinio/mobile/android/a/b/v;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_3

    .line 517
    :cond_a
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->b:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->c()V

    goto/16 :goto_2

    .line 528
    :cond_b
    const v0, 0x7f0c004e

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 530
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->r:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto/16 :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1060
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->a(Z)V

    .line 1061
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1073
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    if-ne p2, v1, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/LibraryActivity;->x:Z

    .line 1075
    invoke-direct {p0, v1}, Lcom/zinio/mobile/android/view/LibraryActivity;->a(Z)V

    .line 1076
    if-nez p2, :cond_1

    .line 1077
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->p()V

    .line 1079
    :cond_1
    return-void

    .line 1073
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1087
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v0

    .line 1088
    const-string v1, "date"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1090
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sortKey@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zinio/mobile/android/view/LibraryActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryActivity;->m()V

    .line 1092
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 579
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onStop()V

    .line 581
    invoke-static {}, Lcom/zinio/mobile/android/App;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Grid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    const v0, 0x7f0c003c

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 584
    :cond_0
    return-void
.end method
