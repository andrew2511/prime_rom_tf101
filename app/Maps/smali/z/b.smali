.class public Lz/b;
.super Lac/m;

# interfaces
.implements Lac/v;


# static fields
.field private static G:Landroid/content/Context;

.field private static H:Ljava/lang/Thread;

.field private static I:Ljava/lang/Boolean;


# instance fields
.field private final C:I

.field private final D:F

.field private final E:F

.field private final F:Lac/p;

.field private volatile J:Z

.field protected a:LP/a;

.field protected b:Ln/a;

.field protected c:LaB/e;

.field protected d:Lk/q;

.field protected final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lz/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x1

    const-wide/high16 v4, 0x3fd0

    invoke-direct {p0}, Lac/m;-><init>()V

    new-instance v0, Lz/c;

    invoke-direct {v0}, Lz/c;-><init>()V

    iput-object v0, p0, Lz/b;->F:Lac/p;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz/b;->J:Z

    iput-object p1, p0, Lz/b;->e:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lz/b;->H:Ljava/lang/Thread;

    invoke-static {p0}, Lz/b;->a(Lac/m;)V

    invoke-virtual {p0}, Lz/b;->z()V

    sput-boolean v1, Lz/b;->w:Z

    sput-boolean v1, Lz/b;->A:Z

    const/4 v0, 0x4

    sput v0, Lz/b;->f:I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lz/b;->C:I

    :goto_0
    iget v0, p0, Lz/b;->C:I

    int-to-float v0, v0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v0

    float-to-double v2, v2

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_0

    iget v2, v1, Landroid/util/DisplayMetrics;->ydpi:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v0

    float-to-double v2, v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    :cond_0
    iput v0, p0, Lz/b;->D:F

    iput v0, p0, Lz/b;->E:F

    :goto_1
    invoke-virtual {p0, p2}, Lz/b;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz/b;->a(Ljava/util/Locale;)V

    return-void

    :cond_1
    const/16 v0, 0xa0

    iput v0, p0, Lz/b;->C:I

    goto :goto_0

    :cond_2
    iget v0, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Lz/b;->D:F

    iget v0, v1, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Lz/b;->E:F

    goto :goto_1

    :cond_3
    iput v0, p0, Lz/b;->D:F

    iput v0, p0, Lz/b;->E:F

    goto :goto_1
.end method

.method private static O()[Ljava/lang/String;
    .locals 2

    const-string v0, "en bg ca cs da de el en_GB es es_MX fi fr hr hu it ja ko lt lv nl no pl pt_BR pt_PT ro ru sk sl sr sv tl tr uk vi zh_TW zh_CN"

    const-string v1, " "

    invoke-static {v0, v1}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lz/b;->G:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0, p1}, Lz/b;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lac/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lac/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lz/b;->O()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lac/e;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lac/e;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lz/b;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.google.settings/partner"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "value"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v6

    :goto_2
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_3
    move-object v1, v6

    goto :goto_0
.end method

.method public static u()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x5f

    const/16 v5, 0x2d

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 3

    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v1, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v0, p1, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    return-object v0
.end method

.method public a(JJ)Ljava/lang/String;
    .locals 6

    const-wide/32 v4, 0xea60

    move-wide v0, p1

    move-wide v2, p3

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    sput-object p1, Lz/b;->G:Landroid/content/Context;

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lz/b;->a(Ljava/util/Locale;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lz/b;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ln/j;

    invoke-direct {v0}, Ln/j;-><init>()V

    iput-object v0, p0, Lz/b;->b:Ln/a;

    :goto_0
    new-instance v0, LP/a;

    iget-object v1, p0, Lz/b;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, LP/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lz/b;->a:LP/a;

    new-instance v0, LaB/g;

    invoke-direct {v0}, LaB/g;-><init>()V

    iput-object v0, p0, Lz/b;->d:Lk/q;

    new-instance v0, LaB/i;

    iget-object v1, p0, Lz/b;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, LaB/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lz/b;->c:LaB/e;

    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, LP/g;

    invoke-direct {v0, p1}, LP/g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lz/b;->b:Ln/a;

    goto :goto_0

    :cond_1
    new-instance v0, LP/j;

    iget-object v1, p0, Lz/b;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, LP/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lz/b;->b:Ln/a;

    goto :goto_0
.end method

.method public a(Ljava/util/Locale;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lz/b;->F()Lac/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/e;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lz/b;->F()Lac/e;

    move-result-object v1

    invoke-static {}, Lz/b;->O()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lz/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lac/e;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "5.8.0"

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 4

    const-string v0, "Web"

    const-string v0, "maps_client_id"

    invoke-direct {p0, v0}, Lz/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "client_id"

    invoke-direct {p0, v0}, Lz/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "Web"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gmm-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public e()LP/a;
    .locals 1

    iget-object v0, p0, Lz/b;->a:LP/a;

    return-object v0
.end method

.method public f()Lk/q;
    .locals 1

    iget-object v0, p0, Lz/b;->d:Lk/q;

    return-object v0
.end method

.method public g()Ln/a;
    .locals 1

    iget-object v0, p0, Lz/b;->b:Ln/a;

    return-object v0
.end method

.method public h()LaB/e;
    .locals 1

    iget-object v0, p0, Lz/b;->c:LaB/e;

    return-object v0
.end method

.method public i()Lac/v;
    .locals 0

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lz/b;->e:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const-string v0, "Unknown"

    :goto_1
    return-object v0

    :pswitch_0
    const-string v0, "WiFi"

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lz/b;->e:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    const-string v0, "GPRS"

    goto :goto_1

    :pswitch_3
    const-string v0, "UMTS"

    goto :goto_1

    :pswitch_4
    const-string v0, "EDGE"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public k()Landroid/location/LocationManager;
    .locals 2

    iget-object v0, p0, Lz/b;->e:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    return-object p0
.end method

.method protected l()V
    .locals 1

    new-instance v0, Lz/d;

    invoke-direct {v0, p0}, Lz/d;-><init>(Lz/b;)V

    invoke-static {v0}, Ln/g;->a(Ln/k;)V

    return-void
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lz/b;->C:I

    return v0
.end method

.method public n()F
    .locals 1

    iget v0, p0, Lz/b;->D:F

    return v0
.end method

.method public o()F
    .locals 1

    iget v0, p0, Lz/b;->E:F

    return v0
.end method

.method public p()Lac/p;
    .locals 1

    iget-object v0, p0, Lz/b;->F:Lac/p;

    return-object v0
.end method

.method public q()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lz/b;->e:Landroid/content/Context;

    return-object v0
.end method

.method public r()I
    .locals 1

    const/16 v0, 0x22

    return v0
.end method

.method public s()Z
    .locals 2

    sget-object v0, Lz/b;->H:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()D
    .locals 2

    iget-object v0, p0, Lz/b;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public v()Z
    .locals 6

    const/4 v1, 0x0

    sget-object v0, Lz/b;->I:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lz/b;->I:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/googlenav/android/Z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz/b;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hasSystemFeature"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    sput-object p0, Lz/b;->I:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object v0, Lz/b;->I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic w()Lk/i;
    .locals 1

    invoke-virtual {p0}, Lz/b;->h()LaB/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic x()Ln/b;
    .locals 1

    invoke-virtual {p0}, Lz/b;->e()LP/a;

    move-result-object v0

    return-object v0
.end method
