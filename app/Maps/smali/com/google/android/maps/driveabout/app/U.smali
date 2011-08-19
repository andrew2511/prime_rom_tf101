.class public Lcom/google/android/maps/driveabout/app/U;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/maps/driveabout/app/NavigationService;

.field private final c:Lcom/google/android/maps/driveabout/app/ew;

.field private d:Lm/k;

.field private final e:Lm/k;

.field private final f:Lm/i;

.field private final g:Lm/i;

.field private h:Lcom/google/android/maps/driveabout/app/dB;

.field private i:Lcom/google/android/maps/driveabout/app/dB;

.field private j:Lcom/google/android/maps/driveabout/app/dB;

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z

.field private final o:Lcom/google/android/maps/driveabout/app/dH;

.field private final p:Ljava/util/HashMap;

.field private q:I

.field private r:Lm/w;

.field private s:J

.field private t:Landroid/os/Handler;

.field private u:Z

.field private final v:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/U;->n:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->p:Ljava/util/HashMap;

    iput v1, p0, Lcom/google/android/maps/driveabout/app/U;->q:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->v:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/U;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/U;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->t:Landroid/os/Handler;

    new-instance v0, Lm/l;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/U;->t:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lm/l;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->d:Lm/k;

    new-instance v1, Lcom/google/android/maps/driveabout/app/bu;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/maps/driveabout/app/bu;-><init>(Lcom/google/android/maps/driveabout/app/U;Lcom/google/android/maps/driveabout/app/dV;)V

    invoke-virtual {v0, v1}, Lm/l;->a(Lm/U;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lm/X;->a(Lak/h;Landroid/content/Context;)Lm/X;

    move-result-object v0

    new-instance v1, Lm/Q;

    invoke-direct {v1, v0}, Lm/Q;-><init>(Lm/n;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->e:Lm/k;

    new-instance v0, Lm/h;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lm/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->f:Lm/i;

    new-instance v0, Lm/y;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lm/y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->g:Lm/i;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ew;->a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/app/ew;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->c:Lcom/google/android/maps/driveabout/app/ew;

    new-instance v0, Lcom/google/android/maps/driveabout/app/dH;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/app/dH;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->o:Lcom/google/android/maps/driveabout/app/dH;

    iget v0, p0, Lcom/google/android/maps/driveabout/app/U;->q:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/U;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/U;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->t:Landroid/os/Handler;

    return-object v0
.end method

.method private a(LF/w;Z)Lm/w;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, LF/w;->e()LF/y;

    move-result-object v1

    invoke-virtual {v1}, LF/y;->b()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, LF/w;->e()LF/y;

    move-result-object v0

    invoke-virtual {v0}, LF/y;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0b000f

    const/4 v1, 0x6

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/U;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lm/t;

    invoke-direct {v2, v0}, Lm/t;-><init>(I)V

    invoke-static {p1, v1, v2}, Lm/w;->a(LF/w;Ljava/lang/CharSequence;Lm/R;)Lm/w;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :pswitch_0
    const v0, 0x7f0b000d

    const/16 v1, 0x9

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b000e

    const/16 v1, 0xa

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, LF/w;->e()LF/y;

    move-result-object v0

    invoke-virtual {v0}, LF/y;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    const v0, 0x7f0b0012

    const/4 v1, 0x5

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0b0010

    const/4 v1, 0x7

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0b0011

    const/16 v1, 0x8

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LF/w;->e()LF/y;

    move-result-object v1

    invoke-virtual {v1}, LF/y;->n()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1}, LF/w;->j()Lm/R;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {p1, v1, v2}, Lm/w;->a(LF/w;Ljava/lang/CharSequence;Lm/R;)Lm/w;

    move-result-object v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(LF/w;)V
    .locals 0

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/app/dB;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/U;->i:Lcom/google/android/maps/driveabout/app/dB;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/dB;->a()V

    return-void
.end method

.method private a(Lm/w;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/U;->r:Lm/w;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/U;->s:J

    return-void
.end method

.method private declared-synchronized a(Lm/w;Lcom/google/android/maps/driveabout/app/cy;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Lcom/google/android/maps/driveabout/app/cy;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lcom/google/android/maps/driveabout/app/dB;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/maps/driveabout/app/dB;-><init>(Lcom/google/android/maps/driveabout/app/U;Lm/w;Lcom/google/android/maps/driveabout/app/cy;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->i:Lcom/google/android/maps/driveabout/app/dB;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->i:Lcom/google/android/maps/driveabout/app/dB;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dB;->a(Lcom/google/android/maps/driveabout/app/dB;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/android/maps/driveabout/app/cy;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->h:Lcom/google/android/maps/driveabout/app/dB;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->i:Lcom/google/android/maps/driveabout/app/dB;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->j:Lcom/google/android/maps/driveabout/app/dB;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->j:Lcom/google/android/maps/driveabout/app/dB;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dB;->d(Lcom/google/android/maps/driveabout/app/dB;)Lcom/google/android/maps/driveabout/app/cy;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->j:Lcom/google/android/maps/driveabout/app/dB;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dB;->d(Lcom/google/android/maps/driveabout/app/dB;)Lcom/google/android/maps/driveabout/app/cy;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/app/cy;->a()V

    :cond_4
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->j:Lcom/google/android/maps/driveabout/app/dB;

    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/U;->a(Lm/w;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/U;->a(Lcom/google/android/maps/driveabout/app/dB;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/U;)Lm/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->g:Lm/i;

    return-object v0
.end method

.method private b(LF/w;I)V
    .locals 4

    new-instance v0, Lcom/google/android/maps/driveabout/app/ch;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/app/ch;-><init>(LF/w;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ch;->a()LF/w;

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ch;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ch;->a()LF/w;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/U;->v:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v2, p2}, Lcom/google/android/maps/driveabout/app/U;->c(LF/w;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/U;)Lm/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->d:Lm/k;

    return-object v0
.end method

.method private c(LF/w;I)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/U;->a(LF/w;I)Lm/w;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->d:Lm/k;

    invoke-interface {v1, v0, v6}, Lm/k;->a(Lm/w;Lm/v;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->v:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, LF/w;->a()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, LF/w;->e()LF/y;

    move-result-object v0

    invoke-virtual {v0}, LF/y;->e()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, LF/y;->f()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1}, LF/w;->d()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0}, LF/y;->a()LG/Q;

    move-result-object v0

    invoke-virtual {v0}, LG/Q;->e()D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-virtual {p1}, LF/w;->c()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->o:Lcom/google/android/maps/driveabout/app/dH;

    invoke-virtual {v1, v0, p2}, Lcom/google/android/maps/driveabout/app/dH;->a(II)Lm/w;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->d:Lm/k;

    invoke-interface {v1, v0, v6}, Lm/k;->a(Lm/w;Lm/v;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/app/U;)Lm/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->e:Lm/k;

    return-object v0
.end method

.method private d(I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->a:Landroid/content/Context;

    invoke-static {p1}, LF/z;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lad/a;->a(Landroid/content/Context;Ljava/lang/String;)Lad/s;

    move-result-object v0

    const-string v1, "Volume"

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/U;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lad/s;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/U;->h()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/app/U;->m:I

    const-string v1, "AlertMode"

    invoke-virtual {v0, v1, v3}, Lad/s;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    const-string v1, "VolumeMode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lad/s;->a(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    :cond_1
    return-void
.end method

.method private e(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->a:Landroid/content/Context;

    invoke-static {p1}, LF/z;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lad/a;->b(Landroid/content/Context;Ljava/lang/String;)Lad/s;

    move-result-object v0

    const-string v1, "Volume"

    iget v2, p0, Lcom/google/android/maps/driveabout/app/U;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lad/s;->a(Ljava/lang/String;Ljava/lang/Object;)Lad/s;

    const-string v1, "AlertMode"

    iget v2, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lad/s;->a(Ljava/lang/String;Ljava/lang/Object;)Lad/s;

    const-string v1, "VolumeMode"

    invoke-virtual {v0, v1}, Lad/s;->a(Ljava/lang/String;)Lad/s;

    return-void
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/app/U;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/U;->n:Z

    return v0
.end method

.method static synthetic f(Lcom/google/android/maps/driveabout/app/U;)Lm/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->f:Lm/i;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/maps/driveabout/app/U;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/U;->t()V

    return-void
.end method

.method static synthetic h(Lcom/google/android/maps/driveabout/app/U;)Lcom/google/android/maps/driveabout/app/ew;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->c:Lcom/google/android/maps/driveabout/app/ew;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/maps/driveabout/app/U;)I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/U;->m:I

    return v0
.end method

.method private q()V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_0
    return-void
.end method

.method private declared-synchronized r()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->i:Lcom/google/android/maps/driveabout/app/dB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->i:Lcom/google/android/maps/driveabout/app/dB;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dB;->c(Lcom/google/android/maps/driveabout/app/dB;)Lm/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/U;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->i:Lcom/google/android/maps/driveabout/app/dB;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dB;->c(Lcom/google/android/maps/driveabout/app/dB;)Lm/p;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/U;->m:I

    invoke-virtual {v0, v1}, Lm/p;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->i:Lcom/google/android/maps/driveabout/app/dB;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dB;->c(Lcom/google/android/maps/driveabout/app/dB;)Lm/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lm/p;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private s()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/U;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    iget v1, p0, Lcom/google/android/maps/driveabout/app/U;->m:I

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/U;->h()I

    move-result v1

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Landroid/media/ToneGenerator;-><init>(II)V

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Landroid/media/ToneGenerator;->startTone(I)Z

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/U;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->a:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method private declared-synchronized t()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->i:Lcom/google/android/maps/driveabout/app/dB;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->h:Lcom/google/android/maps/driveabout/app/dB;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->c:Lcom/google/android/maps/driveabout/app/ew;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ew;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->j:Lcom/google/android/maps/driveabout/app/dB;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/U;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->c:Lcom/google/android/maps/driveabout/app/ew;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ew;->d()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->j:Lcom/google/android/maps/driveabout/app/dB;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->j:Lcom/google/android/maps/driveabout/app/dB;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->j:Lcom/google/android/maps/driveabout/app/dB;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/U;->a(Lcom/google/android/maps/driveabout/app/dB;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->i:Lcom/google/android/maps/driveabout/app/dB;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method a(LF/w;I)Lm/w;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, LF/w;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, LF/w;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, LF/w;->j()Lm/R;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {p1, v1, v2}, Lm/w;->a(LF/w;Ljava/lang/CharSequence;Lm/R;)Lm/w;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, LF/w;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, LF/w;->e()LF/y;

    move-result-object v1

    invoke-virtual {v1}, LF/y;->j()LF/y;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LF/y;->e()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->o:Lcom/google/android/maps/driveabout/app/dH;

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/android/maps/driveabout/app/dH;->a(LF/w;II)Lm/w;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LF/w;->a()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/U;->a(LF/w;Z)Lm/w;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/U;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/U;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/U;->r()V

    iget v0, p0, Lcom/google/android/maps/driveabout/app/U;->q:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/U;->e(I)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->d:Lm/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->d:Lm/k;

    invoke-interface {v0}, Lm/k;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->d:Lm/k;

    :cond_1
    if-ne p1, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->i()Lcom/google/android/maps/driveabout/app/be;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/dV;

    invoke-direct {v1, p0, v0}, Lcom/google/android/maps/driveabout/app/dV;-><init>(Lcom/google/android/maps/driveabout/app/U;Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/be;->a(Ljava/lang/Runnable;)V

    :cond_2
    if-nez p1, :cond_3

    const-string v0, "com.google.android.apps.networktts"

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->d:Lm/k;

    invoke-interface {v1}, Lm/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lm/b;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->d:Lm/k;

    invoke-direct {v0, v1}, Lm/b;-><init>(Lm/k;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->d:Lm/k;

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/U;->u:Z

    :cond_3
    return-void
.end method

.method public a(LF/w;II)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/U;->a(LF/w;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/U;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ecccccd

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v4, v3

    neg-float v1, v1

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_1

    int-to-float v1, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/maps/driveabout/app/U;->c(LF/w;II)Lm/w;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/U;->a(Lm/w;Lcom/google/android/maps/driveabout/app/cy;)V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/U;->a(Lm/w;)V

    :cond_0
    return-void

    :cond_1
    move v0, p2

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/app/cy;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/U;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/app/cy;->a()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->a:Landroid/content/Context;

    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lm/t;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lm/t;-><init>(I)V

    invoke-static {v0, v1, v2}, Lm/w;->a(ILjava/lang/CharSequence;Lm/R;)Lm/w;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/app/U;->a(Lm/w;Lcom/google/android/maps/driveabout/app/cy;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/U;->n:Z

    return-void
.end method

.method public b()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/U;->e()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/U;->d()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/U;->k:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/app/U;->m:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/U;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/U;->h()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/U;->m:I

    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/app/U;->m:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    :cond_2
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/U;->q()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/U;->r()V

    iget v0, p0, Lcom/google/android/maps/driveabout/app/U;->q:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/U;->e(I)V

    :cond_3
    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/app/U;->q:I

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/U;->d(I)V

    return-void
.end method

.method public b(LF/w;II)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/U;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->d:Lm/k;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/U;->c(LF/w;II)Lm/w;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->p:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->d:Lm/k;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lm/k;->a(Lm/w;Lm/v;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/U;->u:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/google/android/maps/driveabout/app/U;->b(LF/w;I)V

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/U;->k:Z

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    :goto_0
    iget v1, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    if-eq v1, v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/U;->q:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/U;->e(I)V

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    goto :goto_0
.end method

.method c(LF/w;II)Lm/w;
    .locals 8

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, LF/w;->a()I

    move-result v1

    if-ne v1, v6, :cond_2

    invoke-virtual {p0, p1, p3}, Lcom/google/android/maps/driveabout/app/U;->a(LF/w;I)Lm/w;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LF/w;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, LF/w;->g()LF/w;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, LF/w;->g()LF/w;

    move-result-object v1

    invoke-direct {p0, v1, v6}, Lcom/google/android/maps/driveabout/app/U;->a(LF/w;Z)Lm/w;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lm/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, LF/w;->i()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/U;->a:Landroid/content/Context;

    const v4, 0x7f0b0088

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-virtual {v1}, Lm/w;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v0}, Lm/w;->b()Lm/R;

    move-result-object v0

    new-instance v3, Lm/t;

    invoke-direct {v3, v7}, Lm/t;-><init>(I)V

    invoke-virtual {v1}, Lm/w;->b()Lm/R;

    move-result-object v1

    invoke-static {v3, v1}, Lm/R;->a(Lm/R;Lm/R;)Lm/R;

    move-result-object v1

    invoke-static {v1}, Lm/R;->a(Lm/R;)Lm/R;

    move-result-object v1

    invoke-static {v0, v1}, Lm/R;->a(Lm/R;Lm/R;)Lm/R;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lm/w;->a(LF/w;Ljava/lang/CharSequence;Lm/R;)Lm/w;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p1}, LF/w;->a()I

    move-result v1

    if-nez v1, :cond_3

    if-ltz p2, :cond_3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->o:Lcom/google/android/maps/driveabout/app/dH;

    invoke-virtual {v1, p2, p3}, Lcom/google/android/maps/driveabout/app/dH;->a(II)Lm/w;

    move-result-object v1

    invoke-virtual {p0, p1, p3}, Lcom/google/android/maps/driveabout/app/U;->a(LF/w;I)Lm/w;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Lm/K;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/U;->a:Landroid/content/Context;

    invoke-direct {v0, v3, v1, v2}, Lm/K;-><init>(Landroid/content/Context;Lm/w;Lm/w;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, LF/w;->a()I

    move-result v1

    if-ne v1, v5, :cond_1

    invoke-virtual {p0, p1, p3}, Lcom/google/android/maps/driveabout/app/U;->a(LF/w;I)Lm/w;

    move-result-object v0

    goto :goto_0
.end method

.method public c(I)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/U;->m:I

    iget v1, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/app/U;->k:Z

    if-eqz v2, :cond_8

    if-nez v1, :cond_5

    if-lez p1, :cond_0

    iget v2, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    iput v4, p0, Lcom/google/android/maps/driveabout/app/U;->m:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/U;->h()I

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/app/U;->m:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/maps/driveabout/app/U;->m:I

    iget v2, p0, Lcom/google/android/maps/driveabout/app/U;->m:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    :cond_1
    if-nez v1, :cond_2

    iget v2, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/U;->q()V

    :cond_2
    iget v2, p0, Lcom/google/android/maps/driveabout/app/U;->m:I

    if-ne v2, v0, :cond_3

    iget v0, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    if-eq v0, v1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/U;->s()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/U;->r()V

    iget v0, p0, Lcom/google/android/maps/driveabout/app/U;->q:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/U;->e(I)V

    :cond_4
    return-void

    :cond_5
    if-nez v0, :cond_6

    if-gez p1, :cond_7

    iget v2, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    :cond_6
    :goto_1
    iget v2, p0, Lcom/google/android/maps/driveabout/app/U;->m:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/google/android/maps/driveabout/app/U;->m:I

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    goto :goto_1

    :cond_8
    if-nez v1, :cond_9

    if-lez p1, :cond_0

    const/4 v2, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/app/U;->m:I

    iget v2, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    goto :goto_0

    :cond_9
    iget v2, p0, Lcom/google/android/maps/driveabout/app/U;->m:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/google/android/maps/driveabout/app/U;->m:I

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/U;->l:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/U;->m:I

    return v0
.end method

.method public h()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->p:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->d:Lm/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->d:Lm/k;

    invoke-interface {v0}, Lm/k;->a()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->v:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public j()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/U;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->a:Landroid/content/Context;

    const v2, 0x7f0b0013

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lm/t;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lm/t;-><init>(I)V

    invoke-static {v0, v1, v2}, Lm/w;->a(ILjava/lang/CharSequence;Lm/R;)Lm/w;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/U;->a(Lm/w;Lcom/google/android/maps/driveabout/app/cy;)V

    goto :goto_0
.end method

.method public k()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/U;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/U;->a:Landroid/content/Context;

    const v2, 0x7f0b0014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lm/t;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lm/t;-><init>(I)V

    invoke-static {v0, v1, v2}, Lm/w;->a(ILjava/lang/CharSequence;Lm/R;)Lm/w;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/U;->a(Lm/w;Lcom/google/android/maps/driveabout/app/cy;)V

    goto :goto_0
.end method

.method public l()V
    .locals 3

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/U;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->a:Landroid/content/Context;

    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lm/t;

    invoke-direct {v1, v2}, Lm/t;-><init>(I)V

    invoke-static {v2, v0, v1}, Lm/w;->a(ILjava/lang/CharSequence;Lm/R;)Lm/w;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/U;->a(Lm/w;Lcom/google/android/maps/driveabout/app/cy;)V

    goto :goto_0
.end method

.method public m()Lm/w;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->r:Lm/w;

    return-object v0
.end method

.method public n()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/app/U;->s:J

    return-wide v0
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->d:Lm/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->d:Lm/k;

    invoke-interface {v0}, Lm/k;->b()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->f:Lm/i;

    invoke-interface {v0}, Lm/i;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->g:Lm/i;

    invoke-interface {v0}, Lm/i;->b()V

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->d:Lm/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->d:Lm/k;

    invoke-interface {v0}, Lm/k;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
