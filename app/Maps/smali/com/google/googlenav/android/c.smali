.class public Lcom/google/googlenav/android/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/P;


# static fields
.field private static a:Lcom/google/googlenav/android/c;


# instance fields
.field private final b:Lcom/google/googlenav/android/w;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/android/AndroidGmmApplication;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Maps"

    const-string v1, "Build: 5080011"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lak/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/android/w;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lcom/google/googlenav/android/w;-><init>(Lcom/google/googlenav/android/AndroidGmmApplication;LT/c;Lak/h;)V

    iput-object v1, p0, Lcom/google/googlenav/android/c;->b:Lcom/google/googlenav/android/w;

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Maps"

    const-string v1, "Upgrading friends opt in history"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lo/bv;->c()V

    :cond_0
    invoke-static {}, Lo/aF;->l()Lo/aF;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/friend/android/F;

    invoke-direct {v1, p1}, Lcom/google/googlenav/friend/android/F;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lo/aF;->a(Lcom/google/googlenav/login/k;)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->ab()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Maps"

    const-string v1, "Upgrading Term Acceptance preference"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/google/googlenav/friend/android/A;->s(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/googlenav/android/c;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ak()V

    :cond_1
    new-instance v0, Lcom/google/googlenav/networkinitiated/k;

    invoke-direct {v0, p1}, Lcom/google/googlenav/networkinitiated/k;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lo/aF;->l()Lo/aF;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/aF;->a(Lcom/google/googlenav/login/k;)V

    invoke-virtual {v0}, Lcom/google/googlenav/networkinitiated/k;->a()V

    :cond_2
    invoke-static {}, Lcom/google/googlenav/appwidget/hotpot/d;->a()V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->Z()Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Lak/h;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "5080011"

    const-string v2, "5080011"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->ai()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lac/m;->G()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lac/d;->a()Z

    move-result v3

    invoke-static {v1, p0, v0, v2, v3}, Lak/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lak/h;

    move-result-object v0

    invoke-static {}, LaO/a;->c()V

    :goto_0
    invoke-static {v0}, Laj/b;->a(Lak/h;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lak/h;->a(Z)V

    const-string v1, "GMM"

    invoke-virtual {v0, v1}, Lak/h;->e(Ljava/lang/String;)V

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static a()Lcom/google/googlenav/android/c;
    .locals 1

    sget-object v0, Lcom/google/googlenav/android/c;->a:Lcom/google/googlenav/android/c;

    return-object v0
.end method

.method public static a(Landroid/app/Application;)Lcom/google/googlenav/android/c;
    .locals 1

    sget-object v0, Lcom/google/googlenav/android/c;->a:Lcom/google/googlenav/android/c;

    if-nez v0, :cond_0

    check-cast p0, Lcom/google/googlenav/android/AndroidGmmApplication;

    new-instance v0, Lcom/google/googlenav/android/c;

    invoke-direct {v0, p0}, Lcom/google/googlenav/android/c;-><init>(Lcom/google/googlenav/android/AndroidGmmApplication;)V

    sput-object v0, Lcom/google/googlenav/android/c;->a:Lcom/google/googlenav/android/c;

    sget-object v0, Lcom/google/googlenav/android/c;->a:Lcom/google/googlenav/android/c;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a(Lcom/google/googlenav/android/P;)V

    :cond_0
    sget-object v0, Lcom/google/googlenav/android/c;->a:Lcom/google/googlenav/android/c;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lz/b;

    invoke-direct {v0, p0}, Lz/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lz/b;->a(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {v0}, Lz/b;->h()LaB/e;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/maps/c;

    invoke-direct {v2}, Lcom/google/android/apps/maps/c;-><init>()V

    invoke-virtual {v1, v2}, LaB/e;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Lac/m;->a(Lac/m;)V

    :cond_0
    invoke-static {}, Lac/g;->d()Lac/j;

    move-result-object v0

    instance-of v0, v0, Lcom/google/googlenav/android/o;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/googlenav/android/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/android/o;-><init>(Lcom/google/googlenav/android/R;)V

    invoke-static {v0}, Lac/g;->a(Lac/j;)V

    :cond_1
    invoke-static {}, Lac/g;->a()Lac/y;

    move-result-object v0

    instance-of v0, v0, Lcom/google/googlenav/android/q;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/googlenav/android/q;

    invoke-direct {v0, p0}, Lcom/google/googlenav/android/q;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lac/g;->a(Lac/y;)V

    :cond_2
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/googlenav/android/L;

    invoke-direct {v0}, Lcom/google/googlenav/android/L;-><init>()V

    invoke-static {v0}, Lcom/google/googlenav/d;->a(Lcom/google/googlenav/d;)V

    :cond_3
    invoke-static {}, LaR/d;->a()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, LaR/b;

    invoke-direct {v0}, LaR/b;-><init>()V

    invoke-static {v0}, LaR/d;->a(LaR/c;)V

    :cond_4
    invoke-static {}, LaW/a;->a()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, LaW/c;

    invoke-direct {v0}, LaW/c;-><init>()V

    invoke-static {v0}, LaW/a;->a(LaW/b;)V

    :cond_5
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "*** If you are running on Ecliar, build with -Dconflictavoidance=true ***"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Landroid/content/Context;)Lak/h;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v4

    :goto_0
    invoke-static {}, Lz/b;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/android/c;->a(Ljava/lang/String;)Lak/h;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "logging_id2"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "logging_id2"

    invoke-static {v2, v3}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v1, v2}, Lak/h;->d(Ljava/lang/String;)V

    const-string v2, "SYSTEM"

    invoke-virtual {v1, v2}, Lak/h;->c(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lak/h;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/d;->U()Z

    move-result v2

    invoke-virtual {v1, v2}, Lak/h;->b(Z)V

    invoke-static {}, Lcom/google/googlenav/capabilities/a;->a()Lcom/google/googlenav/capabilities/a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/googlenav/capabilities/a;->b(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lak/h;->d(Z)V

    invoke-virtual {v2}, Lcom/google/googlenav/capabilities/a;->b()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Lak/h;->e(Z)V

    invoke-virtual {v1, v4}, Lak/h;->d(I)V

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/googlenav/android/y;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/googlenav/android/y;-><init>(Lcom/google/googlenav/android/R;)V

    invoke-virtual {v1, v0}, Lak/h;->a(Lak/c;)V

    :cond_1
    invoke-virtual {v1}, Lak/h;->t()V

    return-object v1

    :cond_2
    move v2, v5

    goto :goto_1

    :cond_3
    move v0, v5

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/google/googlenav/android/c;->a:Lcom/google/googlenav/android/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g()V
    .locals 0

    invoke-static {}, Lac/g;->c()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    check-cast v0, Lz/b;

    invoke-virtual {v0, p1}, Lz/b;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/google/googlenav/android/c;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/android/w;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public c()Lcom/google/googlenav/android/w;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/c;->b:Lcom/google/googlenav/android/w;

    return-object v0
.end method

.method public d()V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->c()V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/android/c;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/android/c;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->l(Z)V

    :cond_1
    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0}, Lak/h;->s()V

    invoke-static {}, Lak/h;->b()V

    :cond_2
    invoke-static {}, LH/f;->a()LH/f;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, LH/f;->b()V

    :cond_3
    return-void
.end method

.method public e()V
    .locals 0

    invoke-static {}, Lac/i;->a()V

    return-void
.end method

.method public f()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/c;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    return-object v0
.end method
