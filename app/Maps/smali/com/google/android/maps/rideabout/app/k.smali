.class public Lcom/google/android/maps/rideabout/app/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:LB/c;

.field private b:Ll/c;

.field private c:Lcom/google/android/maps/rideabout/app/o;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(LB/c;Lcom/google/android/maps/rideabout/app/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/k;->d:Z

    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/k;->a:LB/c;

    iput-object p2, p0, Lcom/google/android/maps/rideabout/app/k;->c:Lcom/google/android/maps/rideabout/app/o;

    return-void
.end method

.method private b(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/k;->l()I

    move-result v0

    const-string v1, ""

    const-string v2, ""

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/k;->k()F

    move-result v3

    float-to-int v3, v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    invoke-static {v3, v2}, Lcom/google/googlenav/ui/y;->a(II)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/k;->g()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x36f

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private b(Ll/c;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/k;->c(Ll/c;)Lcom/google/android/maps/rideabout/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/k;->b:Ll/c;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/k;->c:Lcom/google/android/maps/rideabout/app/o;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/k;->c:Lcom/google/android/maps/rideabout/app/o;

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/k;->b:Ll/c;

    iget-object v1, v1, Ll/c;->c:Ll/C;

    iget-object v2, p1, Ll/c;->c:Ll/C;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/k;->b:Ll/c;

    iget-object v1, v1, Ll/c;->d:LB/b;

    if-nez v1, :cond_0

    iget-object v1, p1, Ll/c;->d:LB/b;

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/k;->b:Ll/c;

    iget-object v1, v1, Ll/c;->d:LB/b;

    if-eqz v1, :cond_1

    iget-object v1, p1, Ll/c;->d:LB/b;

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/k;->b:Ll/c;

    iget-object v1, v1, Ll/c;->d:LB/b;

    if-eqz v1, :cond_3

    iget-object v1, p1, Ll/c;->d:LB/b;

    if-eqz v1, :cond_3

    iget-object v1, p1, Ll/c;->d:LB/b;

    iget-object v1, v1, LB/b;->a:LB/l;

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/k;->b:Ll/c;

    iget-object v2, v2, Ll/c;->d:LB/b;

    iget-object v2, v2, LB/b;->a:LB/l;

    invoke-virtual {v1, v2}, LB/l;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/maps/rideabout/app/k;->e:Z

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->c:Lcom/google/android/maps/rideabout/app/o;

    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private c(Ll/c;)Lcom/google/android/maps/rideabout/app/o;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p1, Ll/c;->d:LB/b;

    sget-object v1, Lcom/google/android/maps/rideabout/app/m;->b:[I

    iget-object v2, p1, Ll/c;->c:Ll/C;

    invoke-virtual {v2}, Ll/C;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    sget-object v0, Lcom/google/android/maps/rideabout/app/o;->h:Lcom/google/android/maps/rideabout/app/o;

    :goto_1
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/google/android/maps/rideabout/app/o;->i:Lcom/google/android/maps/rideabout/app/o;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/google/android/maps/rideabout/app/o;->h:Lcom/google/android/maps/rideabout/app/o;

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/k;->a:LB/c;

    iget-object v2, v0, LB/b;->a:LB/l;

    invoke-virtual {v1, v2}, LB/c;->a(LB/l;)LB/u;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/rideabout/app/m;->a:[I

    invoke-virtual {v1}, LB/u;->p()LB/h;

    move-result-object v3

    invoke-virtual {v3}, LB/h;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/maps/rideabout/app/o;->a:Lcom/google/android/maps/rideabout/app/o;

    goto :goto_1

    :pswitch_4
    iget v2, v0, LB/b;->b:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    sget-object v0, Lcom/google/android/maps/rideabout/app/o;->b:Lcom/google/android/maps/rideabout/app/o;

    goto :goto_1

    :cond_0
    :pswitch_5
    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/k;->a:LB/c;

    iget-object v3, v0, LB/b;->a:LB/l;

    invoke-virtual {v2, v3}, LB/c;->g(LB/l;)Z

    move-result v2

    invoke-virtual {v1}, LB/u;->D()F

    move-result v1

    const/high16 v3, 0x3f80

    iget v4, v0, LB/b;->b:F

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    if-eqz v2, :cond_1

    iget v0, v0, LB/b;->b:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    const/high16 v0, 0x447a

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_1

    sget-object v0, Lcom/google/android/maps/rideabout/app/o;->d:Lcom/google/android/maps/rideabout/app/o;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/google/android/maps/rideabout/app/o;->c:Lcom/google/android/maps/rideabout/app/o;

    goto :goto_1

    :pswitch_6
    iget v2, v0, LB/b;->b:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    instance-of v2, v1, LB/i;

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/k;->a:LB/c;

    iget-object v0, v0, LB/b;->a:LB/l;

    invoke-virtual {v1, v0}, LB/c;->c(LB/l;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/maps/rideabout/app/o;->f:Lcom/google/android/maps/rideabout/app/o;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/google/android/maps/rideabout/app/o;->a:Lcom/google/android/maps/rideabout/app/o;

    goto :goto_1

    :cond_3
    instance-of v0, v1, LB/f;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/maps/rideabout/app/o;->a:Lcom/google/android/maps/rideabout/app/o;

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/k;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v4, p0, Lcom/google/android/maps/rideabout/app/k;->d:Z

    :cond_5
    sget-object v0, Lcom/google/android/maps/rideabout/app/o;->e:Lcom/google/android/maps/rideabout/app/o;

    goto :goto_1

    :pswitch_7
    iput-boolean v4, p0, Lcom/google/android/maps/rideabout/app/k;->d:Z

    sget-object v0, Lcom/google/android/maps/rideabout/app/o;->g:Lcom/google/android/maps/rideabout/app/o;

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private k()F
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->b:Ll/c;

    iget-object v0, v0, Ll/c;->d:LB/b;

    iget v0, v0, LB/b;->b:F

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/k;->i()LB/u;

    move-result-object v1

    invoke-virtual {v1}, LB/u;->E()F

    move-result v2

    invoke-virtual {v1}, LB/u;->z()F

    move-result v1

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    return v0
.end method

.method private l()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->b:Ll/c;

    iget-object v0, v0, Ll/c;->d:LB/b;

    iget v0, v0, LB/b;->b:F

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/k;->i()LB/u;

    move-result-object v1

    invoke-virtual {v1}, LB/u;->F()I

    move-result v2

    invoke-virtual {v1}, LB/u;->y()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sub-int v0, v2, v0

    return v0
.end method

.method private static m()J
    .locals 2

    invoke-static {}, LK/m;->a()LK/l;

    move-result-object v0

    iget v0, v0, LK/l;->q:I

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public a(Z)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x381

    const/16 v4, 0x37f

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/k;->i()LB/u;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/rideabout/app/m;->c:[I

    iget-object v3, p0, Lcom/google/android/maps/rideabout/app/k;->c:Lcom/google/android/maps/rideabout/app/o;

    invoke-virtual {v3}, Lcom/google/android/maps/rideabout/app/o;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :pswitch_0
    const/16 v2, 0x3a0

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_1

    invoke-virtual {v1}, LB/u;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/rideabout/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, LB/u;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    move-object v0, v1

    check-cast v0, LB/s;

    move-object p0, v0

    const/16 v1, 0x374

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, LB/s;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/view/android/rideabout/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v1, v2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, LB/s;->h()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :pswitch_2
    invoke-virtual {v1}, LB/u;->o()Lu/e;

    move-result-object v1

    invoke-virtual {v1}, Lu/e;->f()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x395

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/rideabout/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    if-eqz p1, :cond_3

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/rideabout/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    if-eqz p1, :cond_4

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/rideabout/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_5
    check-cast v1, LB/i;

    const/16 v2, 0x39b

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_5

    invoke-virtual {v1}, LB/i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/rideabout/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {v2, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1}, LB/i;->e()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :pswitch_6
    const/16 v1, 0x371

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_7
    const/16 v1, 0x39f

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_8
    const/16 v1, 0x38f

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public a(ZLjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/k;->i()LB/u;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/rideabout/app/m;->c:[I

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/k;->c:Lcom/google/android/maps/rideabout/app/o;

    invoke-virtual {v2}, Lcom/google/android/maps/rideabout/app/o;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move-object v0, v5

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/k;->g()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    :goto_1
    invoke-direct {p0, v0, p2}, Lcom/google/android/maps/rideabout/app/k;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, LB/u;->a(Ljava/util/Date;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    invoke-static {}, Lcom/google/android/maps/rideabout/app/k;->m()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    long-to-int v0, v0

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/aM;->a(IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/rideabout/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/16 v1, 0x378

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v5

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ll/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/k;->b(Ll/c;)V

    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/k;->b:Ll/c;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/k;->e:Z

    return v0
.end method

.method public b()Z
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/maps/rideabout/app/m;->c:[I

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/k;->c:Lcom/google/android/maps/rideabout/app/o;

    invoke-virtual {v1}, Lcom/google/android/maps/rideabout/app/o;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/k;->d:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :pswitch_0
    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/k;->i()LB/u;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/k;->c:Lcom/google/android/maps/rideabout/app/o;

    sget-object v3, Lcom/google/android/maps/rideabout/app/o;->c:Lcom/google/android/maps/rideabout/app/o;

    if-ne v2, v3, :cond_0

    const/16 v2, 0x388

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LB/s;

    move-object p0, v0

    invoke-virtual {p0}, LB/s;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/maps/rideabout/app/k;->a(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->c:Lcom/google/android/maps/rideabout/app/o;

    sget-object v1, Lcom/google/android/maps/rideabout/app/o;->c:Lcom/google/android/maps/rideabout/app/o;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/k;->i()LB/u;

    move-result-object v0

    invoke-virtual {v0}, LB/u;->o()Lu/e;

    move-result-object v0

    invoke-virtual {v0}, Lu/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/k;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x389

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-direct {p0, v3, v2}, Lcom/google/android/maps/rideabout/app/k;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/k;->l()I

    move-result v1

    const/16 v2, 0x387

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/google/googlenav/ui/aM;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "/"

    invoke-virtual {p0, v3, v0}, Lcom/google/android/maps/rideabout/app/k;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public e()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->b:Ll/c;

    iget-object v0, v0, Ll/c;->d:LB/b;

    iget v0, v0, LB/b;->b:F

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/k;->i()LB/u;

    move-result-object v1

    invoke-virtual {v1}, LB/u;->G()I

    move-result v2

    invoke-virtual {v1}, LB/u;->y()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sub-int v0, v2, v0

    return v0
.end method

.method public f()Z
    .locals 2

    sget-object v0, Lcom/google/android/maps/rideabout/app/m;->c:[I

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/k;->c:Lcom/google/android/maps/rideabout/app/o;

    invoke-virtual {v1}, Lcom/google/android/maps/rideabout/app/o;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public g()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->b:Ll/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->b:Ll/c;

    iget-object v0, v0, Ll/c;->b:Ll/i;

    sget-object v1, Ll/i;->c:Ll/i;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->b:Ll/c;

    iget-object v0, v0, Ll/c;->c:Ll/C;

    sget-object v1, Ll/C;->c:Ll/C;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/k;->i()LB/u;

    move-result-object v0

    instance-of v1, v0, LB/x;

    if-nez v1, :cond_0

    instance-of v0, v0, LB/p;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()LB/u;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->b:Ll/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->b:Ll/c;

    iget-object v0, v0, Ll/c;->d:LB/b;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->a:LB/c;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/k;->b:Ll/c;

    iget-object v1, v1, Ll/c;->d:LB/b;

    iget-object v1, v1, LB/b;->a:LB/l;

    invoke-virtual {v0, v1}, LB/c;->a(LB/l;)LB/u;

    move-result-object v0

    goto :goto_0
.end method

.method public j()Lcom/google/android/maps/rideabout/app/o;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->c:Lcom/google/android/maps/rideabout/app/o;

    return-object v0
.end method
