.class public Laa/D;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Laa/g;

.field private c:Laa/h;

.field private d:Laa/c;

.field private e:Laa/A;

.field private f:Laa/u;

.field private g:Laa/y;

.field private h:Laa/y;

.field private i:Laa/y;

.field private j:Laa/p;

.field private k:Laa/t;

.field private final l:Laa/j;

.field private final m:Ljava/util/List;

.field private n:I

.field private final o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Laa/j;

    invoke-direct {v0, p0, v1}, Laa/j;-><init>(Laa/D;Laa/n;)V

    iput-object v0, p0, Laa/D;->l:Laa/j;

    invoke-static {}, Lj/X;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Laa/D;->m:Ljava/util/List;

    iput v2, p0, Laa/D;->n:I

    iput-object p1, p0, Laa/D;->a:Landroid/content/Context;

    new-instance v0, Laa/o;

    invoke-direct {v0, p1, v1}, Laa/o;-><init>(Landroid/content/Context;Laa/n;)V

    iput-object v0, p0, Laa/D;->b:Laa/g;

    iput-boolean p2, p0, Laa/D;->o:Z

    new-instance v0, Laa/h;

    invoke-direct {v0}, Laa/h;-><init>()V

    iput-object v0, p0, Laa/D;->c:Laa/h;

    new-instance v0, Laa/a;

    iget-object v1, p0, Laa/D;->c:Laa/h;

    invoke-direct {v0, v1}, Laa/a;-><init>(Laa/C;)V

    iput-object v0, p0, Laa/D;->g:Laa/y;

    new-instance v0, Laa/l;

    iget-object v1, p0, Laa/D;->c:Laa/h;

    invoke-direct {v0, v1}, Laa/l;-><init>(Laa/C;)V

    iput-object v0, p0, Laa/D;->h:Laa/y;

    invoke-direct {p0, v2}, Laa/D;->b(I)V

    return-void
.end method

.method public static final a()F
    .locals 2

    invoke-static {}, Laa/D;->b()F

    move-result v0

    const v1, 0x3f2aacda

    mul-float/2addr v0, v1

    return v0
.end method

.method static synthetic a(Laa/D;)Laa/g;
    .locals 1

    iget-object v0, p0, Laa/D;->b:Laa/g;

    return-object v0
.end method

.method private a(Laa/g;)V
    .locals 2

    invoke-virtual {p0}, Laa/D;->f()V

    iput-object p1, p0, Laa/D;->b:Laa/g;

    iget-object v0, p0, Laa/D;->e:Laa/A;

    iget-object v1, p0, Laa/D;->b:Laa/g;

    invoke-virtual {v0, v1}, Laa/A;->a(Laa/g;)V

    invoke-virtual {p0}, Laa/D;->d()V

    return-void
.end method

.method public static final b()F
    .locals 1

    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->n()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method static synthetic b(Laa/D;)Laa/y;
    .locals 1

    iget-object v0, p0, Laa/D;->i:Laa/y;

    return-object v0
.end method

.method private b(I)V
    .locals 4

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    new-instance v1, Laa/A;

    iget-object v2, p0, Laa/D;->c:Laa/h;

    iget-object v3, p0, Laa/D;->b:Laa/g;

    invoke-direct {v1, v2, v3, v0}, Laa/A;-><init>(Laa/C;Laa/g;Lac/p;)V

    iput-object v1, p0, Laa/D;->e:Laa/A;

    new-instance v1, Laa/c;

    iget-object v2, p0, Laa/D;->c:Laa/h;

    invoke-direct {v1, p0, v2}, Laa/c;-><init>(Laa/D;Laa/C;)V

    iput-object v1, p0, Laa/D;->d:Laa/c;

    new-instance v1, Laa/p;

    iget-object v2, p0, Laa/D;->c:Laa/h;

    iget-object v3, p0, Laa/D;->c:Laa/h;

    invoke-virtual {v3}, Laa/h;->c()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Laa/p;-><init>(Laa/C;Landroid/os/Handler;Lac/p;)V

    iput-object v1, p0, Laa/D;->j:Laa/p;

    new-instance v0, Laa/u;

    iget-object v1, p0, Laa/D;->c:Laa/h;

    invoke-direct {v0, v1}, Laa/u;-><init>(Laa/C;)V

    iput-object v0, p0, Laa/D;->f:Laa/u;

    iget-object v0, p0, Laa/D;->c:Laa/h;

    const-string v1, "gps"

    iget-object v2, p0, Laa/D;->e:Laa/A;

    invoke-virtual {v0, v1, v2}, Laa/h;->a(Ljava/lang/String;Laa/C;)V

    iget-object v0, p0, Laa/D;->c:Laa/h;

    const-string v1, "driveabout_gps_fixup"

    iget-object v2, p0, Laa/D;->d:Laa/c;

    invoke-virtual {v0, v1, v2}, Laa/h;->a(Ljava/lang/String;Laa/C;)V

    iget-object v0, p0, Laa/D;->c:Laa/h;

    const-string v1, "network"

    iget-object v2, p0, Laa/D;->d:Laa/c;

    invoke-virtual {v0, v1, v2}, Laa/h;->a(Ljava/lang/String;Laa/C;)V

    iget-object v0, p0, Laa/D;->c:Laa/h;

    const-string v1, "driveabout_base_location"

    iget-object v2, p0, Laa/D;->f:Laa/u;

    invoke-virtual {v0, v1, v2}, Laa/h;->a(Ljava/lang/String;Laa/C;)V

    iget-boolean v0, p0, Laa/D;->o:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Laa/D;->g:Laa/y;

    iput-object v0, p0, Laa/D;->i:Laa/y;

    invoke-direct {p0}, Laa/D;->l()V

    :goto_0
    iget-object v0, p0, Laa/D;->c:Laa/h;

    const-string v1, "driveabout_bearing_noise_reduction"

    iget-object v2, p0, Laa/D;->i:Laa/y;

    invoke-virtual {v0, v1, v2}, Laa/h;->a(Ljava/lang/String;Laa/C;)V

    new-instance v0, Laa/t;

    iget-object v1, p0, Laa/D;->c:Laa/h;

    invoke-direct {v0, v1}, Laa/t;-><init>(Laa/C;)V

    iput-object v0, p0, Laa/D;->k:Laa/t;

    iget-object v0, p0, Laa/D;->c:Laa/h;

    const-string v1, "android_orientation"

    iget-object v2, p0, Laa/D;->k:Laa/t;

    invoke-virtual {v0, v1, v2}, Laa/h;->a(Ljava/lang/String;Laa/C;)V

    iget-object v0, p0, Laa/D;->c:Laa/h;

    iget-object v1, p0, Laa/D;->i:Laa/y;

    invoke-interface {v1}, Laa/y;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laa/D;->k:Laa/t;

    invoke-virtual {v0, v1, v2}, Laa/h;->a(Ljava/lang/String;Laa/C;)V

    return-void

    :cond_1
    iget-object v0, p0, Laa/D;->h:Laa/y;

    iput-object v0, p0, Laa/D;->i:Laa/y;

    goto :goto_0
.end method

.method static synthetic c(Laa/D;)Laa/A;
    .locals 1

    iget-object v0, p0, Laa/D;->e:Laa/A;

    return-object v0
.end method

.method private c(I)V
    .locals 4

    iget-object v0, p0, Laa/D;->c:Laa/h;

    const-string v1, "driveabout_bearing_noise_reduction"

    iget-object v2, p0, Laa/D;->i:Laa/y;

    invoke-virtual {v0, v1, v2}, Laa/h;->b(Ljava/lang/String;Laa/C;)V

    iget-object v0, p0, Laa/D;->c:Laa/h;

    iget-object v1, p0, Laa/D;->i:Laa/y;

    invoke-interface {v1}, Laa/y;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laa/D;->k:Laa/t;

    invoke-virtual {v0, v1, v2}, Laa/h;->b(Ljava/lang/String;Laa/C;)V

    iget-object v0, p0, Laa/D;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laa/C;

    iget-object v2, p0, Laa/D;->c:Laa/h;

    iget-object v3, p0, Laa/D;->i:Laa/y;

    invoke-interface {v3}, Laa/y;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Laa/h;->b(Ljava/lang/String;Laa/C;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Laa/D;->g:Laa/y;

    iput-object v0, p0, Laa/D;->i:Laa/y;

    invoke-direct {p0}, Laa/D;->l()V

    :goto_1
    iget-object v0, p0, Laa/D;->c:Laa/h;

    const-string v1, "driveabout_bearing_noise_reduction"

    iget-object v2, p0, Laa/D;->i:Laa/y;

    invoke-virtual {v0, v1, v2}, Laa/h;->a(Ljava/lang/String;Laa/C;)V

    iget-object v0, p0, Laa/D;->c:Laa/h;

    iget-object v1, p0, Laa/D;->i:Laa/y;

    invoke-interface {v1}, Laa/y;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laa/D;->k:Laa/t;

    invoke-virtual {v0, v1, v2}, Laa/h;->a(Ljava/lang/String;Laa/C;)V

    iget-object v0, p0, Laa/D;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laa/C;

    iget-object v2, p0, Laa/D;->c:Laa/h;

    iget-object v3, p0, Laa/D;->i:Laa/y;

    invoke-interface {v3}, Laa/y;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Laa/h;->a(Ljava/lang/String;Laa/C;)V

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Laa/D;->m()V

    iget-object v0, p0, Laa/D;->h:Laa/y;

    iput-object v0, p0, Laa/D;->i:Laa/y;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private l()V
    .locals 3

    iget-object v0, p0, Laa/D;->c:Laa/h;

    const-string v1, "driveabout_hmm"

    iget-object v2, p0, Laa/D;->j:Laa/p;

    invoke-virtual {v0, v1, v2}, Laa/h;->a(Ljava/lang/String;Laa/C;)V

    iget-object v0, p0, Laa/D;->c:Laa/h;

    const-string v1, "da_tunnel_heartbeat"

    iget-object v2, p0, Laa/D;->i:Laa/y;

    invoke-virtual {v0, v1, v2}, Laa/h;->a(Ljava/lang/String;Laa/C;)V

    iget-object v0, p0, Laa/D;->c:Laa/h;

    const-string v1, "driveabout_hmm"

    iget-object v2, p0, Laa/D;->e:Laa/A;

    invoke-virtual {v0, v1, v2}, Laa/h;->a(Ljava/lang/String;Laa/C;)V

    return-void
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, Laa/D;->c:Laa/h;

    const-string v1, "driveabout_hmm"

    iget-object v2, p0, Laa/D;->j:Laa/p;

    invoke-virtual {v0, v1, v2}, Laa/h;->b(Ljava/lang/String;Laa/C;)V

    iget-object v0, p0, Laa/D;->c:Laa/h;

    const-string v1, "da_tunnel_heartbeat"

    iget-object v2, p0, Laa/D;->i:Laa/y;

    invoke-virtual {v0, v1, v2}, Laa/h;->b(Ljava/lang/String;Laa/C;)V

    iget-object v0, p0, Laa/D;->c:Laa/h;

    const-string v1, "driveabout_hmm"

    iget-object v2, p0, Laa/D;->e:Laa/A;

    invoke-virtual {v0, v1, v2}, Laa/h;->b(Ljava/lang/String;Laa/C;)V

    return-void
.end method

.method private n()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Laa/D;->b:Laa/g;

    invoke-interface {v2}, Laa/g;->a()Ljava/util/List;

    move-result-object v2

    const-string v3, "gps"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Laa/D;->b:Laa/g;

    const-string v3, "gps"

    invoke-interface {v2, v3}, Laa/g;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    :goto_0
    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v3

    invoke-virtual {v3}, Lad/t;->k()I

    move-result v3

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long v4, v0, v4

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    iget-object v3, p0, Laa/D;->c:Laa/h;

    invoke-virtual {v3, v2}, Laa/h;->onLocationChanged(Landroid/location/Location;)V

    :goto_1
    iget-object v2, p0, Laa/D;->b:Laa/g;

    invoke-interface {v2}, Laa/g;->a()Ljava/util/List;

    move-result-object v2

    const-string v3, "network"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Laa/D;->b:Laa/g;

    const-string v3, "network"

    invoke-interface {v2, v3}, Laa/g;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v0, v3

    const-wide/32 v3, 0xea60

    cmp-long v0, v0, v3

    if-gez v0, :cond_1

    iget-object v0, p0, Laa/D;->c:Laa/h;

    invoke-virtual {v0, v2}, Laa/h;->onLocationChanged(Landroid/location/Location;)V

    :goto_3
    return-void

    :cond_0
    iget-object v2, p0, Laa/D;->c:Laa/h;

    invoke-virtual {v2, v9, v8}, Laa/h;->a(ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Laa/D;->c:Laa/h;

    const-string v1, "network"

    invoke-virtual {v0, v1, v9, v8}, Laa/h;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_3

    :cond_2
    move-object v2, v8

    goto :goto_2

    :cond_3
    move-object v2, v8

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-boolean v0, p0, Laa/D;->o:Z

    if-eqz v0, :cond_0

    iget v0, p0, Laa/D;->n:I

    if-eq v0, p1, :cond_0

    invoke-direct {p0, p1}, Laa/D;->c(I)V

    iput p1, p0, Laa/D;->n:I

    :cond_0
    iget-object v0, p0, Laa/D;->c:Laa/h;

    new-instance v1, Laa/m;

    invoke-direct {v1, p0, p1}, Laa/m;-><init>(Laa/D;I)V

    invoke-virtual {v0, v1}, Laa/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(J)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Laa/D;->b:Laa/g;

    invoke-interface {v0}, Laa/g;->a()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laa/D;->b:Laa/g;

    const-string v1, "gps"

    iget-object v5, p0, Laa/D;->c:Laa/h;

    move-wide v2, p1

    invoke-interface/range {v0 .. v5}, Laa/g;->a(Ljava/lang/String;JFLaa/C;)V

    :cond_0
    iget-object v0, p0, Laa/D;->b:Laa/g;

    invoke-interface {v0}, Laa/g;->a()Ljava/util/List;

    move-result-object v0

    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Laa/D;->b:Laa/g;

    const-string v1, "network"

    iget-object v5, p0, Laa/D;->c:Laa/h;

    move-wide v2, p1

    invoke-interface/range {v0 .. v5}, Laa/g;->a(Ljava/lang/String;JFLaa/C;)V

    :cond_1
    return-void
.end method

.method public a(LF/M;)V
    .locals 2

    iget-object v0, p0, Laa/D;->c:Laa/h;

    new-instance v1, Laa/n;

    invoke-direct {v1, p0, p1}, Laa/n;-><init>(Laa/D;LF/M;)V

    invoke-virtual {v0, v1}, Laa/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Laa/C;)V
    .locals 2

    iget-object v0, p0, Laa/D;->c:Laa/h;

    iget-object v1, p0, Laa/D;->i:Laa/y;

    invoke-interface {v1}, Laa/y;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Laa/h;->a(Ljava/lang/String;Laa/C;)V

    iget-object v0, p0, Laa/D;->c:Laa/h;

    const-string v1, "driveabout_orientation_filter"

    invoke-virtual {v0, v1, p1}, Laa/h;->a(Ljava/lang/String;Laa/C;)V

    iget-object v0, p0, Laa/D;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Laa/x;)V
    .locals 1

    iget-object v0, p0, Laa/D;->b:Laa/g;

    invoke-interface {v0, p1}, Laa/g;->a(Laa/x;)V

    return-void
.end method

.method public a(Lah/I;)V
    .locals 1

    invoke-virtual {p1}, Lah/I;->a()Laa/b;

    move-result-object v0

    invoke-direct {p0, v0}, Laa/D;->a(Laa/g;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Laa/D;->i:Laa/y;

    invoke-interface {v0}, Laa/y;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Laa/D;->d:Laa/c;

    invoke-virtual {v0}, Laa/c;->b()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Laa/D;->d:Laa/c;

    invoke-virtual {v0}, Laa/c;->a()V

    iget-object v0, p0, Laa/D;->j:Laa/p;

    invoke-virtual {v0}, Laa/p;->b()V

    invoke-direct {p0}, Laa/D;->n()V

    invoke-virtual {p0}, Laa/D;->e()V

    iget-object v0, p0, Laa/D;->b:Laa/g;

    iget-object v1, p0, Laa/D;->l:Laa/j;

    invoke-interface {v0, v1}, Laa/g;->a(Landroid/location/GpsStatus$Listener;)Z

    iget-object v0, p0, Laa/D;->b:Laa/g;

    iget-object v1, p0, Laa/D;->c:Laa/h;

    invoke-interface {v0, v1}, Laa/g;->b(Laa/C;)V

    return-void
.end method

.method public e()V
    .locals 2

    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->l()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Laa/D;->a(J)V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Laa/D;->c:Laa/h;

    invoke-virtual {v0}, Laa/h;->e()V

    iget-object v0, p0, Laa/D;->j:Laa/p;

    invoke-virtual {v0}, Laa/p;->a()V

    iget-object v0, p0, Laa/D;->e:Laa/A;

    invoke-virtual {v0}, Laa/A;->a()V

    invoke-virtual {p0}, Laa/D;->g()V

    iget-object v0, p0, Laa/D;->b:Laa/g;

    iget-object v1, p0, Laa/D;->l:Laa/j;

    invoke-interface {v0, v1}, Laa/g;->b(Landroid/location/GpsStatus$Listener;)V

    iget-object v0, p0, Laa/D;->b:Laa/g;

    invoke-interface {v0}, Laa/g;->b()V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Laa/D;->b:Laa/g;

    iget-object v1, p0, Laa/D;->c:Laa/h;

    invoke-interface {v0, v1}, Laa/g;->a(Laa/C;)V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Laa/D;->b:Laa/g;

    invoke-interface {v0}, Laa/g;->f()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Laa/D;->b:Laa/g;

    invoke-interface {v0}, Laa/g;->e()V

    return-void
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Laa/D;->b:Laa/g;

    iget-object v1, p0, Laa/D;->c:Laa/h;

    invoke-interface {v0, v1}, Laa/g;->a(Laa/C;)V

    iget-object v0, p0, Laa/D;->b:Laa/g;

    invoke-interface {v0}, Laa/g;->b()V

    iget-object v0, p0, Laa/D;->c:Laa/h;

    invoke-virtual {v0}, Laa/h;->b()V

    return-void
.end method

.method public k()V
    .locals 3

    new-instance v0, Laa/o;

    iget-object v1, p0, Laa/D;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Laa/o;-><init>(Landroid/content/Context;Laa/n;)V

    invoke-direct {p0, v0}, Laa/D;->a(Laa/g;)V

    return-void
.end method
