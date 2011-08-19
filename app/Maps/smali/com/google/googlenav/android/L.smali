.class public Lcom/google/googlenav/android/L;
.super Lcom/google/googlenav/d;


# instance fields
.field private W:Ljava/lang/Boolean;

.field private X:Ljava/lang/Boolean;

.field private Y:Ljava/lang/Boolean;

.field private Z:Ljava/lang/Boolean;

.field private final aa:Z

.field private ab:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/d;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/android/L;->W:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/googlenav/android/L;->X:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/googlenav/android/L;->Y:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/googlenav/android/L;->Z:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/googlenav/android/L;->ab:Ljava/lang/Boolean;

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/googlenav/android/L;->aa:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private av()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lz/b;->y()Lac/m;

    move-result-object p0

    check-cast p0, Lz/b;

    invoke-virtual {p0}, Lz/b;->q()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private aw()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/android/L;->Y:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/android/Z;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ro.com.google.gmsversion"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/googlenav/android/L;->av()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    const-string v1, "com.google.android.gsf"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/L;->Y:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/android/L;->Y:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/L;->Y:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/L;->Y:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/L;->Y:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public A()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/android/L;->X:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/android/L;->av()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/L;->X:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/android/L;->X:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public B()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/android/L;->W:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lac/d;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/android/L;->ao()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lac/d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/L;->W:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/android/L;->W:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/L;->W:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/googlenav/capabilities/a;->a()Lcom/google/googlenav/capabilities/a;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/googlenav/android/L;->av()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/capabilities/a;->c(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/L;->W:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public J()Z
    .locals 1

    sget-object v0, Lcom/google/googlenav/labs/android/f;->a:Lcom/google/googlenav/labs/android/f;

    invoke-virtual {v0}, Lcom/google/googlenav/labs/android/f;->f()Z

    move-result v0

    return v0
.end method

.method public M()Z
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/android/L;->ab:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/android/L;->av()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v2, :cond_1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    const/16 v1, 0x1e0

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/L;->ab:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/android/L;->ab:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public N()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public R()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public S()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public U()Z
    .locals 2

    invoke-static {}, Lcom/google/googlenav/capabilities/a;->a()Lcom/google/googlenav/capabilities/a;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/googlenav/android/L;->av()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/capabilities/a;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public V()Z
    .locals 6

    iget-object v0, p0, Lcom/google/googlenav/android/L;->Z:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lz/b;->y()Lac/m;

    move-result-object v0

    check-cast v0, Lz/b;

    invoke-virtual {v0}, Lz/b;->n()F

    move-result v1

    invoke-virtual {v0}, Lz/b;->o()F

    move-result v2

    invoke-virtual {v0}, Lz/b;->q()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    div-float v1, v3, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    mul-float v2, v1, v1

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    const/high16 v3, 0x41c8

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/android/L;->Z:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/google/googlenav/android/L;->Z:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x4e

    const-string v3, "cp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/android/L;->Z:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public Y()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/android/L;->D()Z

    move-result v0

    return v0
.end method

.method public a(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/L;->W:Ljava/lang/Boolean;

    return-void
.end method

.method public aa()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/android/L;->aw()Z

    move-result v0

    return v0
.end method

.method public af()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ag()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public al()I
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/android/L;->av()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/S;->f(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public am()I
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/android/L;->av()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/S;->g(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public an()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/android/L;->aa:Z

    return v0
.end method

.method public ao()Z
    .locals 1

    invoke-static {}, Lcom/google/googlenav/android/Z;->f()Z

    move-result v0

    return v0
.end method

.method public ap()Z
    .locals 1

    invoke-static {}, Lcom/google/googlenav/android/Z;->a()Z

    move-result v0

    return v0
.end method

.method protected e()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/google/googlenav/android/L;->av()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "12"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "24"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/google/googlenav/d;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public q()Z
    .locals 1

    invoke-super {p0}, Lcom/google/googlenav/d;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/login/g;->e()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public s()Z
    .locals 1

    invoke-static {}, Lcom/google/googlenav/login/g;->e()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->a()Z

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/android/L;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/login/g;->e()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()Z
    .locals 1

    invoke-static {}, Lcom/google/googlenav/gesture/A;->c()Lcom/google/googlenav/gesture/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/gesture/A;->a()Z

    move-result v0

    return v0
.end method
