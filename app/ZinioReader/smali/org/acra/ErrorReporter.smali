.class public Lorg/acra/ErrorReporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final a:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static f:Lorg/acra/ErrorReporter;

.field private static k:Landroid/net/Uri;


# instance fields
.field private b:Ljava/util/Properties;

.field private c:Ljava/util/Map;

.field private e:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private g:Landroid/content/Context;

.field private h:Ljava/lang/String;

.field private i:Lorg/acra/ReportingInteractionMode;

.field private j:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    sput-object v0, Lorg/acra/ErrorReporter;->a:Ljava/lang/String;

    .line 162
    const-string v0, ""

    sput-object v0, Lorg/acra/ErrorReporter;->d:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->c:Ljava/util/Map;

    .line 186
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    iput-object v0, p0, Lorg/acra/ErrorReporter;->i:Lorg/acra/ReportingInteractionMode;

    .line 189
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->j:Landroid/os/Bundle;

    .line 83
    return-void
.end method

.method static synthetic a(Lorg/acra/ErrorReporter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lorg/acra/ErrorReporter;->g:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lorg/acra/ErrorReporter;
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lorg/acra/ErrorReporter;->f:Lorg/acra/ErrorReporter;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Lorg/acra/ErrorReporter;

    invoke-direct {v0}, Lorg/acra/ErrorReporter;-><init>()V

    sput-object v0, Lorg/acra/ErrorReporter;->f:Lorg/acra/ErrorReporter;

    .line 292
    :cond_0
    sget-object v0, Lorg/acra/ErrorReporter;->f:Lorg/acra/ErrorReporter;

    return-object v0
.end method

.method private a(Ljava/lang/Throwable;Lorg/acra/ReportingInteractionMode;)Lorg/acra/i;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 496
    .line 498
    if-nez p2, :cond_2

    .line 499
    iget-object v0, p0, Lorg/acra/ErrorReporter;->i:Lorg/acra/ReportingInteractionMode;

    move-object v2, v0

    .line 504
    :goto_0
    if-nez p1, :cond_8

    .line 505
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "Report requested by developer"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 508
    :goto_1
    sget-object v0, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-ne v2, v0, :cond_0

    .line 509
    new-instance v0, Lorg/acra/e;

    invoke-direct {v0, p0}, Lorg/acra/e;-><init>(Lorg/acra/ErrorReporter;)V

    .line 523
    invoke-virtual {v0}, Lorg/acra/e;->start()V

    .line 526
    :cond_0
    iget-object v0, p0, Lorg/acra/ErrorReporter;->g:Landroid/content/Context;

    :try_start_0
    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v5, "entry.22.single"

    iget-object v6, p0, Lorg/acra/ErrorReporter;->h:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v5, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v6, "entry.23.single"

    invoke-static {v4}, Lorg/acra/h;->a(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v5, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v6, "entry.0.single"

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v5, v6, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v5, "entry.1.single"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v5, "entry.3.single"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v5, "entry.4.single"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v5, "entry.5.single"

    sget-object v6, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v5, "entry.6.single"

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v5, "entry.7.single"

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v5, "entry.8.single"

    sget-object v6, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v5, "entry.9.single"

    sget-object v6, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v5, "entry.10.single"

    sget-object v6, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v5, "entry.11.single"

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v5, "entry.12.single"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v5, "entry.13.single"

    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v5, "entry.14.single"

    sget-object v6, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v5, "entry.15.single"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v7, Landroid/os/Build;->TIME:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v5, "entry.16.single"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v5, "entry.17.single"

    sget-object v6, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v5, "entry.18.single"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v9, v7

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockCount()I

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v5, "entry.19.single"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v9, v7

    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v5, "entry.2.single"

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v5, "entry.24.single"

    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "width="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "height="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "pixelFormat="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/view/Display;->getPixelFormat()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "refreshRate="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "fps"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "metrics.density=x"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v6, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "metrics.scaledDensity=x"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v6, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "metrics.widthPixels="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "metrics.heightPixels="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "metrics.xdpi="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v6, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "metrics.ydpi="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v6, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v5, "entry.26.single"

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v4, "entry.20.single"

    invoke-direct {p0}, Lorg/acra/ErrorReporter;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :goto_4
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 530
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 531
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 532
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 535
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 536
    :goto_5
    if-nez v3, :cond_5

    .line 540
    iget-object v3, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v5, "entry.21.single"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 544
    invoke-direct {p0}, Lorg/acra/ErrorReporter;->f()Ljava/lang/String;

    move-result-object v0

    .line 546
    sget-object v3, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v2, v3, :cond_1

    .line 547
    sget-object v3, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-ne v2, v3, :cond_6

    .line 549
    :cond_1
    new-instance v0, Lorg/acra/i;

    invoke-direct {v0, p0, v1}, Lorg/acra/i;-><init>(Lorg/acra/ErrorReporter;Z)V

    .line 550
    invoke-virtual {v0}, Lorg/acra/i;->start()V

    .line 556
    :goto_6
    return-object v0

    .line 501
    :cond_2
    const/4 v0, 0x1

    move v1, v0

    move-object v2, p2

    goto/16 :goto_0

    .line 526
    :cond_3
    :try_start_1
    const-string v4, "not set"

    goto/16 :goto_2

    :cond_4
    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v5, "entry.1.single"

    const-string v6, "Package info unavailable"

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    .line 537
    :cond_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 538
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_5

    .line 552
    :cond_6
    sget-object v1, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-ne v2, v1, :cond_7

    .line 554
    invoke-direct {p0, v0}, Lorg/acra/ErrorReporter;->b(Ljava/lang/String;)V

    .line 556
    :cond_7
    const/4 v0, 0x0

    goto :goto_6

    :cond_8
    move-object v3, p1

    goto/16 :goto_1
.end method

.method static a(Landroid/net/Uri;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    sput-object p0, Lorg/acra/ErrorReporter;->k:Landroid/net/Uri;

    .line 202
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 918
    sput-object p0, Lorg/acra/ErrorReporter;->d:Ljava/lang/String;

    .line 919
    return-void
.end method

.method static synthetic b(Lorg/acra/ErrorReporter;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lorg/acra/ErrorReporter;->j:Landroid/os/Bundle;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 599
    iget-object v0, p0, Lorg/acra/ErrorReporter;->g:Landroid/content/Context;

    .line 600
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 599
    check-cast v0, Landroid/app/NotificationManager;

    .line 603
    const v1, 0x1080078

    .line 604
    iget-object v2, p0, Lorg/acra/ErrorReporter;->j:Landroid/os/Bundle;

    const-string v3, "RES_NOTIF_ICON"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 606
    iget-object v1, p0, Lorg/acra/ErrorReporter;->j:Landroid/os/Bundle;

    const-string v2, "RES_NOTIF_ICON"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 609
    :cond_0
    iget-object v2, p0, Lorg/acra/ErrorReporter;->g:Landroid/content/Context;

    iget-object v3, p0, Lorg/acra/ErrorReporter;->j:Landroid/os/Bundle;

    const-string v4, "RES_NOTIF_TICKER_TEXT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 611
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 613
    iget-object v1, p0, Lorg/acra/ErrorReporter;->g:Landroid/content/Context;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->j:Landroid/os/Bundle;

    const-string v3, "RES_NOTIF_TITLE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 614
    iget-object v2, p0, Lorg/acra/ErrorReporter;->g:Landroid/content/Context;

    iget-object v3, p0, Lorg/acra/ErrorReporter;->j:Landroid/os/Bundle;

    const-string v4, "RES_NOTIF_TEXT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 616
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->g:Landroid/content/Context;

    const-class v6, Lorg/acra/CrashReportDialog;

    invoke-direct {v3, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 617
    const-string v4, "REPORT_FILE_NAME"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    iget-object v4, p0, Lorg/acra/ErrorReporter;->g:Landroid/content/Context;

    invoke-static {v4, v7, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 620
    iget-object v4, p0, Lorg/acra/ErrorReporter;->g:Landroid/content/Context;

    invoke-virtual {v5, v4, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 621
    const/16 v1, 0x29a

    invoke-virtual {v0, v1, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 622
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 5

    .prologue
    .line 273
    const-string v0, ""

    .line 274
    iget-object v1, p0, Lorg/acra/ErrorReporter;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v0

    .line 275
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    return-object v3

    .line 276
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 277
    iget-object v1, p0, Lorg/acra/ErrorReporter;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_0
.end method

.method private f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 657
    :try_start_0
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 659
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 660
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 661
    iget-object v2, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v3, "silent"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 662
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v2, :cond_0

    const-string v1, "-silent"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".stacktrace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 663
    iget-object v1, p0, Lorg/acra/ErrorReporter;->g:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 664
    invoke-static {}, Lorg/acra/ErrorReporter;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 665
    iget-object v2, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/util/Properties;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 669
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 672
    :goto_2
    return-object v0

    .line 662
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 667
    :cond_1
    iget-object v2, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 672
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2
.end method

.method private g()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 683
    iget-object v0, p0, Lorg/acra/ErrorReporter;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Looking for error files in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 688
    new-instance v1, Lorg/acra/f;

    invoke-direct {v1, p0}, Lorg/acra/f;-><init>(Lorg/acra/ErrorReporter;)V

    .line 693
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h()Z
    .locals 2

    .prologue
    .line 777
    invoke-static {}, Lorg/acra/ErrorReporter;->i()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static i()I
    .locals 2

    .prologue
    .line 924
    :try_start_0
    const-class v0, Landroid/os/Build$VERSION;

    const-string v1, "SDK_INT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 925
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 935
    :goto_0
    return v0

    .line 927
    :catch_0
    move-exception v0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 929
    :catch_1
    move-exception v0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 931
    :catch_2
    move-exception v0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 933
    :catch_3
    move-exception v0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, Lorg/acra/ErrorReporter;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_0

    .line 308
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ErrorReporter;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 309
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 310
    iput-object p1, p0, Lorg/acra/ErrorReporter;->g:Landroid/content/Context;

    .line 311
    iget-object v0, p0, Lorg/acra/ErrorReporter;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lorg/acra/h;->a(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ErrorReporter;->h:Ljava/lang/String;

    .line 313
    :cond_0
    return-void
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 714
    :try_start_0
    invoke-direct {p0}, Lorg/acra/ErrorReporter;->g()[Ljava/lang/String;

    move-result-object v0

    .line 715
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 716
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 717
    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    .line 718
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 720
    const/4 v2, 0x0

    .line 721
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 722
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_2

    .line 761
    :cond_1
    const-string v0, ""

    sput-object v0, Lorg/acra/ErrorReporter;->d:Ljava/lang/String;

    .line 763
    :goto_1
    return-void

    .line 721
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 723
    if-eqz p3, :cond_3

    if-eqz p3, :cond_0

    const-string v4, "-silent"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 724
    :cond_3
    const/4 v4, 0x5

    if-ge v2, v4, :cond_7

    .line 725
    invoke-virtual {p1, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 726
    invoke-static {}, Lorg/acra/ErrorReporter;->h()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 727
    invoke-virtual {v0, v4}, Ljava/util/Properties;->loadFromXML(Ljava/io/InputStream;)V

    .line 731
    :goto_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 734
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 736
    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v2, v4, :cond_6

    const-string v4, ""

    sget-object v5, Lorg/acra/ErrorReporter;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 737
    :cond_4
    const-string v4, "entry.20.single"

    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 738
    if-eqz v4, :cond_5

    .line 739
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 743
    :cond_5
    const-string v4, "entry.25.single"

    sget-object v5, Lorg/acra/ErrorReporter;->d:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    const-string v4, ""

    sput-object v4, Lorg/acra/ErrorReporter;->d:Ljava/lang/String;

    .line 747
    :cond_6
    const-string v4, "pageNumber"

    const-string v5, "0"

    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "backupCache"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "submit"

    const-string v5, "Envoyer"

    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/net/URL;

    sget-object v5, Lorg/acra/ErrorReporter;->k:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Connect to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v0, v4}, Lorg/acra/b;->a(Ljava/util/Map;Ljava/net/URL;)V

    .line 750
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 751
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 753
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 729
    :cond_8
    invoke-virtual {v0, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 757
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 761
    const-string v0, ""

    sput-object v0, Lorg/acra/ErrorReporter;->d:Ljava/lang/String;

    goto/16 :goto_1

    .line 759
    :catchall_0
    move-exception v0

    .line 761
    const-string v1, ""

    sput-object v1, Lorg/acra/ErrorReporter;->d:Ljava/lang/String;

    .line 762
    throw v0
.end method

.method final a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 880
    iput-object p1, p0, Lorg/acra/ErrorReporter;->j:Landroid/os/Bundle;

    .line 881
    return-void
.end method

.method final a(Lorg/acra/ReportingInteractionMode;)V
    .locals 0
    .parameter

    .prologue
    .line 786
    iput-object p1, p0, Lorg/acra/ErrorReporter;->i:Lorg/acra/ReportingInteractionMode;

    .line 787
    return-void
.end method

.method public addCustomData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lorg/acra/ErrorReporter;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-void
.end method

.method public final b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 794
    invoke-direct {p0}, Lorg/acra/ErrorReporter;->g()[Ljava/lang/String;

    move-result-object v0

    .line 795
    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 796
    array-length v1, v0

    move v2, v6

    :goto_0
    if-lt v2, v1, :cond_3

    move v1, v5

    .line 800
    :goto_1
    iget-object v2, p0, Lorg/acra/ErrorReporter;->i:Lorg/acra/ReportingInteractionMode;

    sget-object v3, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v2, v3, :cond_0

    .line 801
    iget-object v2, p0, Lorg/acra/ErrorReporter;->i:Lorg/acra/ReportingInteractionMode;

    sget-object v3, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq v2, v3, :cond_0

    .line 802
    iget-object v2, p0, Lorg/acra/ErrorReporter;->i:Lorg/acra/ReportingInteractionMode;

    sget-object v3, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-ne v2, v3, :cond_5

    if-eqz v1, :cond_5

    .line 804
    :cond_0
    iget-object v0, p0, Lorg/acra/ErrorReporter;->i:Lorg/acra/ReportingInteractionMode;

    sget-object v2, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v2, :cond_1

    if-nez v1, :cond_1

    .line 807
    iget-object v0, p0, Lorg/acra/ErrorReporter;->g:Landroid/content/Context;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->j:Landroid/os/Bundle;

    const-string v2, "RES_TOAST_TEXT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 810
    :cond_1
    new-instance v0, Lorg/acra/i;

    invoke-direct {v0, p0}, Lorg/acra/i;-><init>(Lorg/acra/ErrorReporter;)V

    invoke-virtual {v0}, Lorg/acra/i;->start()V

    .line 818
    :cond_2
    :goto_2
    return-void

    .line 796
    :cond_3
    aget-object v3, v0, v2

    const-string v4, "-silent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v6

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 811
    :cond_5
    iget-object v1, p0, Lorg/acra/ErrorReporter;->i:Lorg/acra/ReportingInteractionMode;

    sget-object v2, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-ne v1, v2, :cond_2

    .line 814
    invoke-static {}, Lorg/acra/ErrorReporter;->a()Lorg/acra/ErrorReporter;

    move-result-object v1

    if-eqz v0, :cond_8

    array-length v2, v0

    if-lez v2, :cond_8

    array-length v2, v0

    sub-int/2addr v2, v5

    :goto_3
    if-gez v2, :cond_6

    array-length v2, v0

    sub-int/2addr v2, v5

    aget-object v0, v0, v2

    :goto_4
    invoke-direct {v1, v0}, Lorg/acra/ErrorReporter;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    aget-object v3, v0, v2

    const-string v4, "-silent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    aget-object v0, v0, v2

    goto :goto_4

    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public final c()V
    .locals 6

    .prologue
    .line 838
    invoke-direct {p0}, Lorg/acra/ErrorReporter;->g()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    .line 839
    :cond_0
    return-void

    .line 838
    :cond_1
    aget-object v3, v0, v2

    const-string v4, "-silent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "-silent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/acra/ErrorReporter;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ACRA is disabled for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/acra/ErrorReporter;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 889
    iget-object v0, p0, Lorg/acra/ErrorReporter;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lorg/acra/ErrorReporter;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 892
    :cond_0
    return-void
.end method

.method public handleSilentException(Ljava/lang/Throwable;)Lorg/acra/i;
    .locals 3
    .parameter

    .prologue
    .line 582
    iget-object v0, p0, Lorg/acra/ErrorReporter;->b:Ljava/util/Properties;

    const-string v1, "silent"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    invoke-direct {p0, p1, v0}, Lorg/acra/ErrorReporter;->a(Ljava/lang/Throwable;Lorg/acra/ReportingInteractionMode;)Lorg/acra/i;

    move-result-object v0

    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0xa

    .line 437
    iget-object v0, p0, Lorg/acra/ErrorReporter;->i:Lorg/acra/ReportingInteractionMode;

    invoke-direct {p0, p2, v0}, Lorg/acra/ErrorReporter;->a(Ljava/lang/Throwable;Lorg/acra/ReportingInteractionMode;)Lorg/acra/i;

    move-result-object v0

    .line 439
    iget-object v1, p0, Lorg/acra/ErrorReporter;->i:Lorg/acra/ReportingInteractionMode;

    sget-object v2, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-ne v1, v2, :cond_0

    .line 442
    const-wide/16 v1, 0xfa0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 444
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 456
    :goto_1
    invoke-virtual {v0}, Lorg/acra/i;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 461
    :cond_1
    iget-object v0, p0, Lorg/acra/ErrorReporter;->i:Lorg/acra/ReportingInteractionMode;

    sget-object v1, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v1, :cond_3

    .line 464
    iget-object v0, p0, Lorg/acra/ErrorReporter;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 481
    :goto_2
    return-void

    .line 454
    :cond_2
    const-wide/16 v1, 0x64

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    .line 469
    :cond_3
    :try_start_2
    iget-object v0, p0, Lorg/acra/ErrorReporter;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 472
    iget-object v1, p0, Lorg/acra/ErrorReporter;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lorg/acra/ErrorReporter;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fatal error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 477
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 478
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 475
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 478
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_2

    .line 476
    :catchall_0
    move-exception v0

    .line 477
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 478
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 479
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0
.end method
