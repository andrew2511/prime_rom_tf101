.class public Laa/A;
.super Laa/w;


# instance fields
.field private a:J

.field private d:J

.field private volatile e:Laa/k;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lad/t;

.field private k:Laa/g;

.field private final l:Lac/p;


# direct methods
.method public constructor <init>(Laa/C;Laa/g;Lac/p;)V
    .locals 2

    const-string v0, "driveabout_gps_fixup"

    invoke-direct {p0, v0, p1}, Laa/w;-><init>(Ljava/lang/String;Laa/C;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Laa/A;->a:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laa/A;->d:J

    iput-object p2, p0, Laa/A;->k:Laa/g;

    iput-object p3, p0, Laa/A;->l:Lac/p;

    return-void
.end method

.method private a(Laa/E;)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Laa/A;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Laa/E;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Laa/E;->getAccuracy()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Laa/A;->h:Z

    :cond_0
    iget-boolean v0, p0, Laa/A;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Laa/E;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Laa/E;->d()I

    move-result v0

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    iget-object v1, p0, Laa/A;->j:Lad/t;

    invoke-virtual {v1}, Lad/t;->n()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4100

    if-ltz v0, :cond_1

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    packed-switch v0, :pswitch_data_0

    move v0, v4

    :goto_0
    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Laa/E;->setAccuracy(F)V

    :cond_1
    return-void

    :pswitch_0
    const/high16 v0, 0x3f80

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x3f40

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x3f00

    goto :goto_0

    :pswitch_3
    const/high16 v0, 0x3e80

    goto :goto_0

    :pswitch_4
    const/high16 v0, 0x3e00

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Landroid/location/Location;)V
    .locals 3

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x4080

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iget-object v2, p0, Laa/A;->j:Lad/t;

    invoke-virtual {v2}, Lad/t;->o()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/location/Location;->setAccuracy(F)V

    :cond_0
    return-void
.end method

.method private b(Laa/E;)V
    .locals 1

    iget-object v0, p0, Laa/A;->e:Laa/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laa/A;->e:Laa/k;

    invoke-virtual {v0}, Laa/k;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Laa/E;->a(I)V

    :cond_0
    return-void
.end method

.method private b(Landroid/location/Location;)V
    .locals 2

    iget-boolean v0, p0, Laa/A;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Laa/A;->g:Z

    :cond_0
    iget-boolean v0, p0, Laa/A;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->removeBearing()V

    :cond_1
    return-void
.end method

.method private c(Landroid/location/Location;)V
    .locals 2

    iget-boolean v0, p0, Laa/A;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Laa/A;->k:Laa/g;

    invoke-interface {v0}, Laa/g;->d()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/location/Location;->setBearing(F)V

    :cond_0
    return-void
.end method

.method private c(Laa/E;)Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Laa/E;->c()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Laa/E;->d()I

    move-result v0

    if-lt v0, v4, :cond_1

    iput-boolean v3, p0, Laa/A;->f:Z

    :cond_1
    iget-boolean v1, p0, Laa/A;->f:Z

    if-eqz v1, :cond_2

    if-ge v0, v4, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private d(Laa/E;)V
    .locals 2

    iget-boolean v0, p0, Laa/A;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Laa/E;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Laa/E;->d()I

    move-result v0

    iget-object v1, p0, Laa/A;->j:Lad/t;

    invoke-virtual {v1}, Lad/t;->m()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Laa/E;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Laa/A;->j:Lad/t;

    invoke-virtual {v1}, Lad/t;->n()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Laa/A;->j:Lad/t;

    invoke-virtual {v0}, Lad/t;->n()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Laa/E;->setAccuracy(F)V

    :cond_0
    return-void
.end method

.method private e(Laa/E;)V
    .locals 2

    iget-boolean v0, p0, Laa/A;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Laa/E;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Laa/A;->j:Lad/t;

    invoke-virtual {v1}, Lad/t;->n()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Laa/A;->j:Lad/t;

    invoke-virtual {v0}, Lad/t;->n()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Laa/E;->setAccuracy(F)V

    :cond_0
    return-void
.end method

.method private f(Laa/E;)V
    .locals 2

    invoke-virtual {p1}, Laa/E;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Laa/E;->getSpeed()F

    move-result v0

    const/high16 v1, 0x42c8

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Laa/E;->removeSpeed()V

    :cond_0
    return-void
.end method

.method private g(Laa/E;)V
    .locals 6

    invoke-virtual {p1}, Laa/E;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Laa/A;->j:Lad/t;

    invoke-virtual {v1}, Lad/t;->n()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-object v0, p0, Laa/A;->l:Lac/p;

    invoke-interface {v0}, Lac/p;->c()J

    move-result-wide v0

    iget-wide v2, p0, Laa/A;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Laa/A;->a:J

    sub-long v2, v0, v2

    iget-object v4, p0, Laa/A;->j:Lad/t;

    invoke-virtual {v4}, Lad/t;->k()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const-wide/16 v2, 0x1388

    add-long/2addr v2, v0

    iget-wide v4, p0, Laa/A;->d:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Laa/A;->d:J

    :cond_0
    iput-wide v0, p0, Laa/A;->a:J

    iget-wide v2, p0, Laa/A;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Laa/A;->j:Lad/t;

    invoke-virtual {v0}, Lad/t;->n()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Laa/E;->setAccuracy(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Laa/A;->a:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laa/A;->d:J

    const/4 v0, 0x0

    iput-object v0, p0, Laa/A;->e:Laa/k;

    const/4 v0, 0x0

    iput-boolean v0, p0, Laa/A;->i:Z

    return-void
.end method

.method public a(Laa/g;)V
    .locals 0

    iput-object p1, p0, Laa/A;->k:Laa/g;

    return-void
.end method

.method public a(Laa/k;)V
    .locals 0

    iput-object p1, p0, Laa/A;->e:Laa/k;

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "driveabout_hmm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Laa/p;->a(Landroid/location/Location;)Z

    move-result v0

    iput-boolean v0, p0, Laa/A;->i:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v0

    iput-object v0, p0, Laa/A;->j:Lad/t;

    new-instance v0, Laa/E;

    invoke-direct {v0, p1}, Laa/E;-><init>(Landroid/location/Location;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laa/E;->a(Z)V

    invoke-direct {p0, v0}, Laa/A;->b(Laa/E;)V

    invoke-direct {p0, v0}, Laa/A;->a(Laa/E;)V

    invoke-direct {p0, v0}, Laa/A;->a(Landroid/location/Location;)V

    invoke-direct {p0, v0}, Laa/A;->b(Landroid/location/Location;)V

    invoke-direct {p0, v0}, Laa/A;->c(Landroid/location/Location;)V

    invoke-direct {p0, v0}, Laa/A;->c(Laa/E;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Laa/A;->d(Laa/E;)V

    invoke-direct {p0, v0}, Laa/A;->e(Laa/E;)V

    invoke-direct {p0, v0}, Laa/A;->f(Laa/E;)V

    invoke-direct {p0, v0}, Laa/A;->g(Laa/E;)V

    invoke-super {p0, v0}, Laa/w;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0
.end method
