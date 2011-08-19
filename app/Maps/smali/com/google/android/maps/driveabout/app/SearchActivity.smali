.class public Lcom/google/android/maps/driveabout/app/SearchActivity;
.super Landroid/app/Activity;


# static fields
.field private static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.google.android.maps.SearchHistoryProvider/suggestions"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/app/SearchActivity;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static a(LG/Q;LG/Q;)LG/S;
    .locals 3

    const v2, 0x461c4000

    invoke-virtual {p0}, LG/Q;->e()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0, p1}, LG/Q;->c(LG/Q;)F

    move-result v1

    div-float v0, v1, v0

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_0

    move-object v0, p1

    :goto_0
    invoke-static {p0, v0}, LG/S;->a(LG/Q;LG/Q;)LG/S;

    move-result-object v0

    return-object v0

    :cond_0
    div-float v0, v2, v0

    invoke-virtual {p0, p1, v0}, LG/Q;->a(LG/Q;F)LG/Q;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/driveabout/app/SearchActivity;->a:Landroid/net/Uri;

    const-string v3, "data1=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "data1"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/maps/driveabout/app/SearchActivity;->a:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "com.google.android.apps.maps"

    const-string v2, "com.google.android.maps.MapsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SearchActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SearchActivity;->finish()V

    return-void
.end method

.method private static a(Landroid/os/Bundle;LG/m;LG/S;)V
    .locals 7

    invoke-virtual {p2}, LG/S;->f()LG/Q;

    move-result-object v0

    const-string v1, "centerLatitude"

    invoke-virtual {v0}, LG/Q;->a()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "centerLongitude"

    invoke-virtual {v0}, LG/Q;->c()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2}, LG/S;->h()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, LG/Q;->b()D

    move-result-wide v3

    const-wide v5, 0x3f91df46a2529d39L

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v0, v1, v3

    const-wide v2, 0x3e3921fb54442d18L

    mul-double/2addr v0, v2

    const-wide v2, 0x404ca5dc1a63c1f8L

    mul-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p2}, LG/S;->g()I

    move-result p2

    int-to-double v1, p2

    const-wide v3, 0x3e3921fb54442d18L

    mul-double/2addr v1, v3

    const-wide v3, 0x404ca5dc1a63c1f8L

    mul-double/2addr v1, v3

    const-wide v3, 0x412e848000000000L

    mul-double/2addr v1, v3

    double-to-int p2, v1

    const-string v1, "latitudeSpan"

    const/16 v2, 0x4642

    int-to-float v0, v0

    const v3, 0x3f8ccccd

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "longitudeSpan"

    const/16 v1, 0x4642

    int-to-float p2, p2

    const v2, 0x3f8ccccd

    mul-float/2addr p2, v2

    float-to-int p2, p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "skipSearchWizardOnBack"

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(LG/m;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "routePolyline"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/os/Bundle;Lcom/google/android/maps/driveabout/app/bX;LG/z;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v0, -0x4080

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bX;->a(F)LG/o;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->n()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, LG/o;

    invoke-virtual {v0}, LG/o;->d()LG/m;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, LG/o;->b()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0}, LG/o;->c()I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, LG/o;-><init>(LG/m;II)V

    invoke-virtual {v1}, LG/o;->e()LG/m;

    move-result-object v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, LG/z;->b()LG/S;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    invoke-static {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(Landroid/os/Bundle;LG/m;LG/S;)V

    :cond_0
    return-void

    :cond_1
    const v1, 0x461c4000

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/app/bX;->a(F)LG/o;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, LG/o;->f()LG/S;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, LG/Q;->a(DD)LG/Q;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->v()LF/u;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, LF/u;->e()LG/y;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, LF/u;->e()LG/y;

    move-result-object v3

    invoke-virtual {v3}, LG/y;->a()I

    move-result v3

    invoke-virtual {v2}, LF/u;->e()LG/y;

    move-result-object v2

    invoke-virtual {v2}, LG/y;->b()I

    move-result v2

    invoke-static {v3, v2}, LG/Q;->b(II)LG/Q;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(LG/Q;LG/Q;)LG/S;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-static {v1, v6}, LG/S;->a(LG/Q;I)LG/S;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v5

    goto :goto_1

    :cond_5
    move-object v0, v5

    goto :goto_0
.end method

.method static a(LG/m;)[B
    .locals 12

    const/4 v3, 0x5

    const/4 v11, 0x3

    const/4 v5, 0x0

    new-instance v0, Law/e;

    sget-object v1, Ls/P;->d:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    invoke-virtual {v0, v11}, Law/e;->a(I)Law/e;

    move-result-object v1

    const v2, -0x3fbf5701

    invoke-virtual {v1, v3, v2}, Law/e;->h(II)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v3}, Law/e;->h(II)V

    invoke-virtual {p0}, LG/m;->b()I

    move-result v2

    mul-int/lit8 v3, v2, 0x8

    new-array v3, v3, [B

    new-instance v4, LG/Q;

    invoke-direct {v4}, LG/Q;-><init>()V

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_0

    invoke-virtual {p0, v5, v4}, LG/m;->a(ILG/Q;)V

    invoke-virtual {v4}, LG/Q;->a()I

    move-result v7

    invoke-virtual {v4}, LG/Q;->c()I

    move-result v8

    add-int/lit8 v9, v6, 0x1

    shr-int/lit8 v10, v7, 0x18

    int-to-byte v10, v10

    aput-byte v10, v3, v6

    add-int/lit8 v6, v9, 0x1

    shr-int/lit8 v10, v7, 0x10

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    add-int/lit8 v9, v6, 0x1

    shr-int/lit8 v10, v7, 0x8

    int-to-byte v10, v10

    aput-byte v10, v3, v6

    add-int/lit8 v6, v9, 0x1

    int-to-byte v7, v7

    aput-byte v7, v3, v9

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v9, v8, 0x18

    int-to-byte v9, v9

    aput-byte v9, v3, v6

    add-int/lit8 v6, v7, 0x1

    shr-int/lit8 v9, v8, 0x10

    int-to-byte v9, v9

    aput-byte v9, v3, v7

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v9, v8, 0x8

    int-to-byte v9, v9

    aput-byte v9, v3, v6

    add-int/lit8 v6, v7, 0x1

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    invoke-virtual {v1, v2, v3}, Law/e;->b(I[B)V

    invoke-virtual {v0, v11, v1}, Law/e;->b(ILaw/e;)V

    :try_start_0
    invoke-virtual {v0}, Law/e;->f()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(Landroid/content/Intent;)V

    return-void
.end method
