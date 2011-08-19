.class public Lb/c;
.super Lb/b;


# static fields
.field public static final a:Lb/c;


# instance fields
.field public b:Z

.field private final j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/c;

    invoke-direct {v0}, Lb/c;-><init>()V

    sput-object v0, Lb/c;->a:Lb/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/b;-><init>()V

    new-instance v0, Lb/t;

    invoke-direct {v0, p0}, Lb/t;-><init>(Lb/c;)V

    iput-object v0, p0, Lb/c;->j:Ljava/lang/Runnable;

    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/app/bX;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.apps.maps"

    const-string v2, "com.google.android.maps.MapsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->v()LF/u;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->v()LF/u;

    move-result-object v1

    invoke-virtual {v1}, LF/u;->f()LF/s;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "http"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "maps.google.com"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "myl"

    const-string v3, "saddr"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->y()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "dirflg"

    const-string v3, "d"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    :goto_0
    const-string v2, "daddr"

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->v()LF/u;

    move-result-object v3

    invoke-virtual {v3}, LF/u;->f()LF/s;

    move-result-object v3

    invoke-virtual {v3}, LF/s;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->y()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string v2, "dirflg"

    const-string v3, "w"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method static synthetic a(Lb/c;)Z
    .locals 1

    invoke-direct {p0}, Lb/c;->ai()Z

    move-result v0

    return v0
.end method

.method private af()V
    .locals 5

    invoke-direct {p0}, Lb/c;->ah()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/c;->d:Lcom/google/android/maps/driveabout/app/e;

    const v1, 0x7f0b0058

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/e;->a(I)V

    iget-object v0, p0, Lb/c;->e:Lcom/google/android/maps/driveabout/app/Q;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/app/NavigationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/c;->e:Lcom/google/android/maps/driveabout/app/Q;

    check-cast v0, Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v1, p0, Lb/c;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/NavigationView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lb/c;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->c()V

    iget-object v0, p0, Lb/c;->e:Lcom/google/android/maps/driveabout/app/Q;

    const v1, 0x7f0b0048

    const v2, 0x7f0b00a9

    const v3, 0x7f0b00aa

    iget-object v4, p0, Lb/c;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-static {v4}, Lb/c;->a(Lcom/google/android/maps/driveabout/app/bX;)Landroid/content/Intent;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/Q;->a(IIILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private ag()I
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lb/c;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->y()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x3

    :cond_0
    return v0
.end method

.method private ah()Z
    .locals 2

    invoke-static {}, Lcom/google/android/maps/driveabout/app/cC;->a()Lcom/google/android/maps/driveabout/app/cC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cC;->h()Lcom/google/googlenav/ac;

    move-result-object v0

    invoke-direct {p0}, Lb/c;->ag()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ac;->a(I)Z

    move-result v0

    return v0
.end method

.method private ai()Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/maps/driveabout/app/cC;->a()Lcom/google/android/maps/driveabout/app/cC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cC;->h()Lcom/google/googlenav/ac;

    move-result-object v0

    iget-object v1, p0, Lb/c;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v1

    invoke-static {v1}, Lad/m;->a(Landroid/location/Location;)Lf/h;

    move-result-object v1

    invoke-direct {p0}, Lb/c;->ag()I

    move-result v2

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/googlenav/ac;->a(ILf/h;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lb/c;)V
    .locals 0

    invoke-direct {p0}, Lb/c;->af()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "WAIT_FOR_NAV_AVAILABILITY"

    return-object v0
.end method

.method public g()V
    .locals 1

    invoke-direct {p0}, Lb/c;->ai()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/c;->b:Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lb/c;->af()V

    goto :goto_0
.end method

.method public h()V
    .locals 3

    iget-boolean v0, p0, Lb/c;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/c;->h:Lb/p;

    sget-object v1, Lb/y;->a:Lb/y;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    :cond_0
    return-void
.end method

.method protected i()V
    .locals 0

    return-void
.end method
