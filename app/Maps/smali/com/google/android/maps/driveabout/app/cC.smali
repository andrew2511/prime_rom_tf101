.class public Lcom/google/android/maps/driveabout/app/cC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/P;


# static fields
.field private static a:Z

.field private static b:Lcom/google/android/maps/driveabout/app/cC;

.field private static final c:Lcom/google/googlenav/ac;

.field private static d:Lcom/google/googlenav/ui/android/ar;

.field private static volatile e:Z


# instance fields
.field private final f:Landroid/app/Application;

.field private g:Lcom/google/android/maps/driveabout/app/NavigationActivity;

.field private h:Lcom/google/android/maps/driveabout/app/NavigationService;

.field private i:Laa/E;

.field private final j:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/googlenav/ac;

    invoke-direct {v0}, Lcom/google/googlenav/ac;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/app/cC;->c:Lcom/google/googlenav/ac;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cC;->f:Landroid/app/Application;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cC;->j:Landroid/os/Handler;

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/E;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/maps/driveabout/app/E;-><init>(Lcom/google/android/maps/driveabout/app/cC;Lcom/google/android/maps/driveabout/app/bd;)V

    invoke-virtual {v0, v1}, Lak/h;->a(Lak/c;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/cC;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cC;->j:Landroid/os/Handler;

    return-object v0
.end method

.method public static a()Lcom/google/android/maps/driveabout/app/cC;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/app/cC;->b:Lcom/google/android/maps/driveabout/app/cC;

    return-object v0
.end method

.method public static a(Landroid/app/Application;)V
    .locals 3

    sget-boolean v1, Lcom/google/android/maps/driveabout/app/cC;->a:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/cC;->d(Landroid/content/Context;)V

    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/google/googlenav/android/AndroidGmmApplication;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/P;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/google/android/maps/driveabout/app/cC;->b:Lcom/google/android/maps/driveabout/app/cC;

    if-nez v2, :cond_1

    new-instance v2, Lcom/google/android/maps/driveabout/app/cC;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/cC;-><init>(Landroid/app/Application;)V

    sput-object v2, Lcom/google/android/maps/driveabout/app/cC;->b:Lcom/google/android/maps/driveabout/app/cC;

    :cond_1
    sget-object v2, Lcom/google/android/maps/driveabout/app/cC;->b:Lcom/google/android/maps/driveabout/app/cC;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/android/AndroidGmmApplication;->a(Lcom/google/googlenav/android/P;)V

    :cond_2
    return-void
.end method

.method private static a(Landroid/content/Context;II)V
    .locals 5

    const/16 v4, 0x138e

    const/16 v3, 0x1068

    const/16 v0, 0xfa0

    if-ge p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "google_maps_navigation"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Las/a;->a(Ljava/io/File;Landroid/content/Context;)Z

    :cond_0
    if-ge p1, v3, :cond_1

    if-lt p2, v3, :cond_1

    const/4 v0, 0x6

    :goto_0
    if-ltz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "._speech_nav_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".wav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    if-ge p1, v4, :cond_2

    if-lt p2, v4, :cond_2

    invoke-static {p0}, Las/a;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v1, "cache_ImageTileStore"

    invoke-static {v0, v1}, Las/a;->a(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "cache_LayerTileStore"

    invoke-static {v0, v1}, Las/a;->a(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "cache_RoadGraphTileStore"

    invoke-static {v0, v1}, Las/a;->a(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "cache_VectorTileStore"

    invoke-static {v0, v1}, Las/a;->a(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "cache_Resource"

    invoke-static {v0, v1}, Las/a;->a(Ljava/io/File;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-gtz p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    if-ge v0, p1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/maps/driveabout/app/cC;->e:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/app/cC;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Lad/k;

    invoke-direct {v1}, Lad/k;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/cC;->e(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bc;->a:[Ljava/lang/String;

    const-string v1, "DriveAbout"

    const v2, 0x7f060003

    new-instance v3, Lcom/google/googlenav/android/q;

    invoke-direct {v3, p0}, Lcom/google/googlenav/android/q;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bc;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;ILac/y;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-static {}, Lcom/google/android/maps/driveabout/app/cC;->i()V

    invoke-static {p0, v0}, LF/c;->a(Landroid/content/Context;Lak/h;)V

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/google/googlenav/ui/android/ar;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/ar;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/maps/driveabout/app/cC;->d:Lcom/google/googlenav/ui/android/ar;

    sget-object v0, Lcom/google/android/maps/driveabout/app/cC;->d:Lcom/google/googlenav/ui/android/ar;

    invoke-static {p0, v0}, Lcom/google/googlenav/login/b;->b(Landroid/content/Context;LaU/a;)Lcom/google/googlenav/login/j;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v0

    invoke-virtual {v0}, LT/c;->d()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/maps/driveabout/app/cC;->a:Z

    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .locals 2

    const-string v0, "LastRunVersion"

    const/16 v1, 0xce4

    invoke-static {p0, v0, v1}, Lad/a;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "5080011"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/cC;->a(Landroid/content/Context;II)V

    const-string v0, "LastRunVersion"

    invoke-static {p0, v0, v1}, Lad/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private static i()V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sget-object v1, Lcom/google/android/maps/driveabout/app/cC;->c:Lcom/google/googlenav/ac;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ac;->a([I)V

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public a(Laa/E;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cC;->i:Laa/E;

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    check-cast v0, Lz/b;

    invoke-virtual {v0, p1}, Lz/b;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cC;->f:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LF/c;->a(Landroid/content/Context;)V

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/bc;->a(Ljava/util/Locale;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cC;->g:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/NavigationService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cC;->h:Lcom/google/android/maps/driveabout/app/NavigationService;

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x0

    const-string v0, "DriveAbout"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "RmiOverride"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RmiOverride"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cC;->i:Laa/E;

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cC;->i:Laa/E;

    invoke-virtual {v0}, Laa/E;->m()Lf/h;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/app/cC;->c:Lcom/google/googlenav/ac;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/googlenav/ac;->a(ILf/h;Z)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    invoke-static {p1}, Las/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lad/t;->B()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/cC;->a(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lad/t;)Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "DriveAbout"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "OfflineRoutingOverride"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OfflineRoutingOverride"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {p1}, Las/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lad/t;->C()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/cC;->a(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public c()Lcom/google/android/maps/driveabout/app/NavigationActivity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cC;->g:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    return-object v0
.end method

.method public d()V
    .locals 0

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->c()V

    return-void
.end method

.method public e()V
    .locals 0

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->d()V

    return-void
.end method

.method public bridge synthetic f()Landroid/app/Activity;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cC;->c()Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/google/android/maps/driveabout/app/NavigationService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cC;->h:Lcom/google/android/maps/driveabout/app/NavigationService;

    return-object v0
.end method

.method public h()Lcom/google/googlenav/ac;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/app/cC;->c:Lcom/google/googlenav/ac;

    return-object v0
.end method
