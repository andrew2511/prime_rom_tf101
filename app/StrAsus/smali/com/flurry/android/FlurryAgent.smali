.class public final Lcom/flurry/android/FlurryAgent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static volatile a:Ljava/lang/String;

.field private static volatile b:Ljava/lang/String;

.field private static volatile c:Ljava/lang/String;

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:Ljava/lang/String;

.field private static final f:Lcom/flurry/android/FlurryAgent;

.field private static g:J

.field private static h:Z

.field private static i:Z

.field private static j:Z

.field private static k:Landroid/location/Criteria;

.field private static volatile kInsecureReportUrl:Ljava/lang/String;

.field private static volatile kSecureReportUrl:Ljava/lang/String;

.field private static l:Z

.field private static m:Lcom/flurry/android/AppCircle;


# instance fields
.field private A:Z

.field private B:J

.field private C:Ljava/util/List;

.field private D:J

.field private E:J

.field private F:J

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:B

.field private J:Ljava/lang/String;

.field private K:B

.field private L:Ljava/lang/Long;

.field private M:I

.field private N:Landroid/location/Location;

.field private O:Ljava/util/Map;

.field private P:Ljava/util/List;

.field private Q:Z

.field private R:I

.field private S:Ljava/util/List;

.field private T:I

.field private U:Lcom/flurry/android/n;

.field private final n:Landroid/os/Handler;

.field private o:Ljava/io/File;

.field private p:Z

.field private q:Z

.field private r:J

.field private s:Ljava/util/Map;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Ljava/util/List;

.field private y:Landroid/location/LocationManager;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 58
    sput-object v2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    .line 59
    const-string v0, "http://data.flurry.com/aap.do"

    sput-object v0, Lcom/flurry/android/FlurryAgent;->kInsecureReportUrl:Ljava/lang/String;

    .line 60
    const-string v0, "https://data.flurry.com/aap.do"

    sput-object v0, Lcom/flurry/android/FlurryAgent;->kSecureReportUrl:Ljava/lang/String;

    .line 62
    sput-object v2, Lcom/flurry/android/FlurryAgent;->b:Ljava/lang/String;

    .line 63
    const-string v0, "http://ad.flurry.com/getCanvas.do"

    sput-object v0, Lcom/flurry/android/FlurryAgent;->c:Ljava/lang/String;

    .line 65
    sput-object v2, Lcom/flurry/android/FlurryAgent;->d:Ljava/lang/String;

    .line 66
    const-string v0, "http://ad.flurry.com/getAndroidApp.do"

    sput-object v0, Lcom/flurry/android/FlurryAgent;->e:Ljava/lang/String;

    .line 101
    new-instance v0, Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0}, Lcom/flurry/android/FlurryAgent;-><init>()V

    sput-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    .line 103
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/flurry/android/FlurryAgent;->g:J

    .line 104
    sput-boolean v4, Lcom/flurry/android/FlurryAgent;->h:Z

    .line 106
    sput-boolean v3, Lcom/flurry/android/FlurryAgent;->i:Z

    .line 110
    sput-boolean v4, Lcom/flurry/android/FlurryAgent;->j:Z

    .line 111
    sput-object v2, Lcom/flurry/android/FlurryAgent;->k:Landroid/location/Criteria;

    .line 113
    sput-boolean v3, Lcom/flurry/android/FlurryAgent;->l:Z

    .line 114
    new-instance v0, Lcom/flurry/android/AppCircle;

    invoke-direct {v0}, Lcom/flurry/android/AppCircle;-><init>()V

    sput-object v0, Lcom/flurry/android/FlurryAgent;->m:Lcom/flurry/android/AppCircle;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->o:Ljava/io/File;

    .line 122
    iput-boolean v2, p0, Lcom/flurry/android/FlurryAgent;->p:Z

    .line 123
    iput-boolean v2, p0, Lcom/flurry/android/FlurryAgent;->q:Z

    .line 125
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/util/Map;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->w:Z

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Ljava/util/List;

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/lang/String;

    .line 145
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->H:Ljava/lang/String;

    .line 146
    iput-byte v1, p0, Lcom/flurry/android/FlurryAgent;->I:B

    .line 148
    iput-byte v1, p0, Lcom/flurry/android/FlurryAgent;->K:B

    .line 214
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FlurryAgent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 216
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->n:Landroid/os/Handler;

    .line 217
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 235
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-nez v0, :cond_0

    move-object v0, v3

    .line 244
    :goto_0
    return-object v0

    .line 239
    :cond_0
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/android/n;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 243
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    .line 244
    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Lcom/flurry/android/Offer;
    .locals 1
    .parameter

    .prologue
    .line 262
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 264
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0, p0}, Lcom/flurry/android/n;->a(Ljava/lang/String;)Lcom/flurry/android/Offer;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 1579
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1580
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1581
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1583
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1594
    :goto_0
    return-object v0

    .line 1585
    :cond_0
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eqz v1, :cond_1

    .line 1587
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1590
    :catch_0
    move-exception v0

    .line 1592
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1594
    :cond_1
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 250
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-nez v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0, p0, p1}, Lcom/flurry/android/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized a(Landroid/content/Context;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 711
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 713
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 714
    if-nez v0, :cond_0

    .line 716
    const-string v0, "FlurryAgent"

    const-string v1, "onEndSession called without context from corresponding onStartSession"

    invoke-static {v0, v1}, Lcom/flurry/android/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->p:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 721
    const-string v0, "FlurryAgent"

    const-string v1, "Ending session"

    invoke-static {v0, v1}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->h()V

    .line 725
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 727
    :goto_0
    if-eqz p1, :cond_1

    .line 729
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 730
    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->u:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 732
    const-string v2, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEndSession called from different application package, expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/FlurryAgent;->u:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " actual: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flurry/android/FlurryAgent;->p:Z

    .line 737
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 738
    iput-wide v1, p0, Lcom/flurry/android/FlurryAgent;->r:J

    .line 740
    iget-wide v3, p0, Lcom/flurry/android/FlurryAgent;->E:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/flurry/android/FlurryAgent;->F:J

    .line 741
    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->e()V

    .line 742
    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->g()V

    .line 743
    if-nez p2, :cond_2

    .line 745
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->n:Landroid/os/Handler;

    new-instance v2, Lcom/flurry/android/b;

    invoke-direct {v2, p0, v0}, Lcom/flurry/android/b;-><init>(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;)V

    sget-wide v3, Lcom/flurry/android/FlurryAgent;->g:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 754
    :cond_2
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-eqz v0, :cond_3

    .line 756
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0}, Lcom/flurry/android/n;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    :cond_3
    monitor-exit p0

    return-void

    .line 725
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 711
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 46
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->p:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/android/FlurryAgent;->r:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/flurry/android/FlurryAgent;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/flurry/android/FlurryAgent;->c(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic a(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/flurry/android/FlurryAgent;->b(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->N:Landroid/location/Location;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/flurry/android/FlurryAgent;->c(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Ljava/io/DataInputStream;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x0

    .line 1210
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1211
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1212
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1213
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1214
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1217
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    .line 1218
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1219
    packed-switch v6, :pswitch_data_0

    .line 1309
    :pswitch_0
    const-string v7, "FlurryAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown chunkType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 1313
    :cond_1
    :goto_0
    :pswitch_1
    const/16 v0, 0x108

    if-ne v6, v0, :cond_0

    .line 1315
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 1317
    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/FlurryAgent;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 1319
    :cond_2
    return-void

    .line 1222
    :pswitch_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    goto :goto_0

    .line 1226
    :pswitch_3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 1228
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v7

    .line 1230
    new-array v8, v7, [Lcom/flurry/android/o;

    move v9, v11

    .line 1231
    :goto_1
    if-ge v9, v7, :cond_3

    .line 1233
    new-instance v10, Lcom/flurry/android/o;

    invoke-direct {v10, p1}, Lcom/flurry/android/o;-><init>(Ljava/io/DataInput;)V

    .line 1234
    aput-object v10, v8, v9

    .line 1231
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1237
    :cond_3
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1240
    :pswitch_4
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    move v7, v11

    .line 1241
    :goto_2
    if-ge v7, v0, :cond_1

    .line 1243
    new-instance v8, Lcom/flurry/android/AdImage;

    invoke-direct {v8, p1}, Lcom/flurry/android/AdImage;-><init>(Ljava/io/DataInput;)V

    .line 1244
    iget-wide v9, v8, Lcom/flurry/android/AdImage;->a:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1249
    :pswitch_5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    move v7, v11

    .line 1250
    :goto_3
    if-ge v7, v0, :cond_1

    .line 1252
    new-instance v8, Lcom/flurry/android/e;

    invoke-direct {v8, p1}, Lcom/flurry/android/e;-><init>(Ljava/io/DataInput;)V

    .line 1253
    iget-object v9, v8, Lcom/flurry/android/e;->a:Ljava/lang/String;

    invoke-interface {v3, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1259
    :pswitch_6
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_0

    .line 1262
    :pswitch_7
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    move v7, v11

    .line 1263
    :goto_4
    if-ge v7, v0, :cond_1

    .line 1265
    new-instance v8, Lcom/flurry/android/c;

    invoke-direct {v8, p1}, Lcom/flurry/android/c;-><init>(Ljava/io/DataInput;)V

    .line 1266
    iget-byte v9, v8, Lcom/flurry/android/c;->a:B

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v4, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1271
    :pswitch_8
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    move v8, v11

    .line 1272
    :goto_5
    if-ge v8, v7, :cond_1

    .line 1274
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 1275
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/c;

    .line 1276
    if-eqz v0, :cond_4

    .line 1278
    invoke-virtual {v0, p1}, Lcom/flurry/android/c;->a(Ljava/io/DataInput;)V

    .line 1272
    :cond_4
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_5

    .line 1284
    :pswitch_9
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    move v7, v11

    .line 1286
    :goto_6
    if-ge v7, v0, :cond_1

    .line 1288
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 1289
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v10

    .line 1290
    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 1295
    :pswitch_a
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto/16 :goto_0

    .line 1299
    :pswitch_b
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto/16 :goto_0

    .line 1303
    :pswitch_c
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto/16 :goto_0

    .line 1219
    :pswitch_data_0
    .packed-switch 0x102
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_b
        :pswitch_6
        :pswitch_8
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 972
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/List;

    if-nez v0, :cond_1

    .line 974
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError called before onStartSession.  Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 988
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 978
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/flurry/android/FlurryAgent;->M:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->M:I

    .line 979
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 981
    new-instance v0, Lcom/flurry/android/u;

    invoke-direct {v0}, Lcom/flurry/android/u;-><init>()V

    .line 982
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/flurry/android/u;->a:J

    .line 983
    invoke-static {p1}, Lcom/flurry/android/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/u;->b:Ljava/lang/String;

    .line 984
    invoke-static {p2}, Lcom/flurry/android/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/u;->c:Ljava/lang/String;

    .line 985
    invoke-static {p3}, Lcom/flurry/android/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/u;->d:Ljava/lang/String;

    .line 986
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 972
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x64

    const/16 v6, 0x1f40

    .line 884
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->P:Ljava/util/List;

    if-nez v0, :cond_1

    .line 886
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent called before onStartSession.  Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 890
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/android/FlurryAgent;->E:J

    sub-long v3, v0, v2

    .line 892
    invoke-static {p1}, Lcom/flurry/android/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 893
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->O:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/j;

    .line 898
    if-nez v0, :cond_4

    .line 900
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->O:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v7, :cond_3

    .line 902
    new-instance v0, Lcom/flurry/android/j;

    invoke-direct {v0}, Lcom/flurry/android/j;-><init>()V

    .line 903
    const/4 v2, 0x1

    iput v2, v0, Lcom/flurry/android/j;->a:I

    .line 904
    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->O:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    :cond_2
    :goto_1
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->h:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v7, :cond_7

    iget v0, p0, Lcom/flurry/android/FlurryAgent;->R:I

    if-ge v0, v6, :cond_7

    .line 923
    if-nez p2, :cond_8

    .line 925
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object v2, v0

    .line 927
    :goto_2
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v5, 0xa

    if-le v0, v5, :cond_5

    .line 929
    const-string v0, "FlurryAgent"

    invoke-static {v0}, Lcom/flurry/android/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MaxEventParams exceeded: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 884
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 908
    :cond_3
    :try_start_2
    const-string v0, "FlurryAgent"

    invoke-static {v0}, Lcom/flurry/android/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 910
    const-string v0, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MaxEventIds exceeded: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 916
    :cond_4
    iget v2, v0, Lcom/flurry/android/j;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/flurry/android/j;->a:I

    goto :goto_1

    .line 936
    :cond_5
    new-instance v0, Lcom/flurry/android/m;

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/m;-><init>(Ljava/lang/String;Ljava/util/Map;JZ)V

    .line 938
    invoke-virtual {v0}, Lcom/flurry/android/m;->b()[B

    move-result-object v1

    array-length v1, v1

    iget v2, p0, Lcom/flurry/android/FlurryAgent;->R:I

    add-int/2addr v1, v2

    if-gt v1, v6, :cond_6

    .line 940
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->P:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 941
    iget v1, p0, Lcom/flurry/android/FlurryAgent;->R:I

    invoke-virtual {v0}, Lcom/flurry/android/m;->b()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->R:I

    goto/16 :goto_0

    .line 946
    :cond_6
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->R:I

    .line 947
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->Q:Z

    goto/16 :goto_0

    .line 953
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->Q:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_8
    move-object v2, p2

    goto/16 :goto_2
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0, p2}, Lcom/flurry/android/n;->a(Ljava/util/Map;)V

    .line 1329
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/o;

    .line 1331
    array-length v2, v0

    .line 1332
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 1334
    aget-object v4, v0, v3

    .line 1335
    if-eqz v4, :cond_1

    .line 1337
    iget-object v5, p0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    iget-object v6, v4, Lcom/flurry/android/o;->f:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/flurry/android/n;->a(J)Lcom/flurry/android/AdImage;

    move-result-object v5

    .line 1339
    if-eqz v5, :cond_1

    .line 1341
    iput-object v5, v4, Lcom/flurry/android/o;->h:Lcom/flurry/android/AdImage;

    .line 1332
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1347
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1348
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1350
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/e;

    .line 1351
    iget-byte v2, v1, Lcom/flurry/android/e;->b:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/flurry/android/o;

    .line 1352
    if-eqz v2, :cond_4

    .line 1354
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    :cond_4
    iget-byte v0, v1, Lcom/flurry/android/e;->c:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/c;

    .line 1357
    if-eqz v0, :cond_3

    .line 1359
    iput-object v0, v1, Lcom/flurry/android/e;->d:Lcom/flurry/android/c;

    goto :goto_1

    .line 1363
    :cond_5
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0, v3, p3, p4, p5}, Lcom/flurry/android/n;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 1365
    return-void
.end method

.method static a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 269
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-nez v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0, p0}, Lcom/flurry/android/n;->a(Z)V

    goto :goto_0
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 276
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0}, Lcom/flurry/android/n;->g()Z

    move-result v0

    return v0
.end method

.method private a([B)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1111
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    .line 1112
    :goto_0
    if-nez v0, :cond_2

    move v0, v3

    .line 1130
    :cond_0
    :goto_1
    return v0

    .line 1111
    :cond_1
    sget-object v0, Lcom/flurry/android/FlurryAgent;->kInsecureReportUrl:Ljava/lang/String;

    goto :goto_0

    .line 1119
    :cond_2
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/flurry/android/FlurryAgent;->a([BLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1126
    :goto_2
    if-nez v0, :cond_0

    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1121
    :catch_0
    move-exception v0

    .line 1123
    const-string v1, "FlurryAgent"

    const-string v2, "Sending report exception"

    invoke-static {v1, v2}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v3

    goto :goto_2
.end method

.method private a([BLjava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 1153
    const-string v0, "local"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    .line 1183
    :goto_0
    return v0

    .line 1158
    :cond_0
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending report to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    const/4 v0, 0x0

    .line 1160
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 1161
    const-string v2, "application/octet-stream"

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 1162
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1164
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1165
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 1166
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 1167
    monitor-enter p0

    .line 1169
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 1171
    :try_start_0
    const-string v0, "FlurryAgent"

    const-string v2, "Report successful"

    invoke-static {v0, v2}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->A:Z

    .line 1173
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Ljava/util/List;

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1175
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/io/DataInputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    move v0, v5

    .line 1181
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1182
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/util/List;

    goto/16 :goto_0

    .line 1175
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v1

    .line 1181
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_1
    move v0, v5

    .line 1175
    goto :goto_1

    .line 1179
    :cond_2
    :try_start_4
    const-string v1, "FlurryAgent"

    const-string v2, "Report failed"

    invoke-static {v1, v2}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method

.method public static addUserCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 294
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-nez v0, :cond_0

    .line 297
    :goto_0
    return-void

    .line 296
    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0, p0, p1}, Lcom/flurry/android/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Landroid/location/Location;
    .locals 7
    .parameter

    .prologue
    .line 1599
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1602
    :cond_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1603
    monitor-enter p0

    .line 1605
    :try_start_0
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->y:Landroid/location/LocationManager;

    if-nez v1, :cond_2

    .line 1607
    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->y:Landroid/location/LocationManager;

    .line 1613
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1614
    sget-object v1, Lcom/flurry/android/FlurryAgent;->k:Landroid/location/Criteria;

    .line 1615
    if-nez v1, :cond_1

    .line 1617
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 1619
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 1620
    if-eqz v1, :cond_3

    .line 1622
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 1623
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 1626
    :goto_1
    return-object v0

    .line 1611
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->y:Landroid/location/LocationManager;

    goto :goto_0

    .line 1613
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1626
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static b()Lcom/flurry/android/n;
    .locals 1

    .prologue
    .line 611
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    return-object v0
.end method

.method private declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 616
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->t:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartSession called with different api keys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 622
    if-eqz v0, :cond_1

    .line 624
    const-string v0, "FlurryAgent"

    const-string v1, "onStartSession called with duplicate context, use a specific Activity or Service as context instead of using a global context"

    invoke-static {v0, v1}, Lcom/flurry/android/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_1
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->p:Z

    if-nez v0, :cond_8

    .line 628
    iput-object p2, p0, Lcom/flurry/android/FlurryAgent;->t:Ljava/lang/String;

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurryagent."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->t:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->o:Ljava/io/File;

    .line 630
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->j:Z

    if-eqz v0, :cond_2

    .line 632
    new-instance v0, Lcom/flurry/android/f;

    invoke-direct {v0}, Lcom/flurry/android/f;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 635
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 636
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/android/FlurryAgent;->p:Z

    .line 638
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->v:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 640
    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->v:Ljava/lang/String;

    .line 642
    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 643
    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->u:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->u:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 645
    const-string v2, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartSession called from different application packages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/FlurryAgent;->u:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_4
    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->u:Ljava/lang/String;

    .line 649
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 650
    iget-wide v3, p0, Lcom/flurry/android/FlurryAgent;->r:J

    sub-long v3, v1, v3

    sget-wide v5, Lcom/flurry/android/FlurryAgent;->g:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_b

    .line 652
    const-string v3, "FlurryAgent"

    const-string v4, "Starting new session"

    invoke-static {v3, v4}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/flurry/android/FlurryAgent;->D:J

    .line 656
    iput-wide v1, p0, Lcom/flurry/android/FlurryAgent;->E:J

    .line 657
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/flurry/android/FlurryAgent;->F:J

    .line 658
    const-string v1, ""

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->J:Ljava/lang/String;

    .line 659
    const/4 v1, 0x0

    iput v1, p0, Lcom/flurry/android/FlurryAgent;->M:I

    .line 660
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->N:Landroid/location/Location;

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/lang/String;

    .line 662
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->O:Ljava/util/Map;

    .line 663
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->P:Ljava/util/List;

    .line 664
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/android/FlurryAgent;->Q:Z

    .line 665
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/List;

    .line 666
    const/4 v1, 0x0

    iput v1, p0, Lcom/flurry/android/FlurryAgent;->R:I

    .line 667
    const/4 v1, 0x0

    iput v1, p0, Lcom/flurry/android/FlurryAgent;->T:I

    .line 669
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got locale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-boolean v1, p0, Lcom/flurry/android/FlurryAgent;->q:Z

    if-nez v1, :cond_7

    .line 673
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->o:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_6

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->o:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    const v3, 0xb5fa

    if-ne v1, v3, :cond_5

    invoke-direct {p0, v2}, Lcom/flurry/android/FlurryAgent;->b(Ljava/io/DataInputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    :try_start_3
    invoke-static {v2}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    iget-boolean v1, p0, Lcom/flurry/android/FlurryAgent;->q:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->o:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "FlurryAgent"

    const-string v2, "Cannot delete persistence file"

    invoke-static {v1, v2}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_6
    :goto_1
    :try_start_5
    iget-boolean v1, p0, Lcom/flurry/android/FlurryAgent;->q:Z

    if-nez v1, :cond_7

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flurry/android/FlurryAgent;->A:Z

    iget-wide v1, p0, Lcom/flurry/android/FlurryAgent;->D:J

    iput-wide v1, p0, Lcom/flurry/android/FlurryAgent;->B:J

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "9774d56d682e549c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AND"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->z:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/android/FlurryAgent;->q:Z

    .line 676
    :cond_7
    iget-boolean v1, p0, Lcom/flurry/android/FlurryAgent;->w:Z

    .line 677
    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->n:Landroid/os/Handler;

    new-instance v3, Lcom/flurry/android/d;

    invoke-direct {v3, p0, v0, v1}, Lcom/flurry/android/d;-><init>(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 683
    new-instance v0, Lcom/flurry/android/a;

    invoke-direct {v0}, Lcom/flurry/android/a;-><init>()V

    .line 684
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->t:Ljava/lang/String;

    iput-object v1, v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    .line 685
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->z:Ljava/lang/String;

    iput-object v1, v0, Lcom/flurry/android/a;->b:Ljava/lang/String;

    .line 686
    iget-wide v1, p0, Lcom/flurry/android/FlurryAgent;->B:J

    iput-wide v1, v0, Lcom/flurry/android/a;->c:J

    .line 687
    iget-wide v1, p0, Lcom/flurry/android/FlurryAgent;->D:J

    iput-wide v1, v0, Lcom/flurry/android/a;->d:J

    .line 688
    iget-wide v1, p0, Lcom/flurry/android/FlurryAgent;->E:J

    iput-wide v1, v0, Lcom/flurry/android/a;->e:J

    .line 689
    sget-object v1, Lcom/flurry/android/FlurryAgent;->b:Ljava/lang/String;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/flurry/android/FlurryAgent;->b:Ljava/lang/String;

    :goto_3
    iput-object v1, v0, Lcom/flurry/android/a;->f:Ljava/lang/String;

    .line 690
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/a;->g:Ljava/lang/String;

    .line 691
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->n:Landroid/os/Handler;

    iput-object v1, v0, Lcom/flurry/android/a;->h:Landroid/os/Handler;

    .line 693
    sget-boolean v1, Lcom/flurry/android/FlurryAgent;->l:Z

    if-eqz v1, :cond_8

    .line 695
    new-instance v1, Lcom/flurry/android/n;

    invoke-direct {v1, p1, v0}, Lcom/flurry/android/n;-><init>(Landroid/content/Context;Lcom/flurry/android/a;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    .line 696
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0}, Lcom/flurry/android/n;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 707
    :cond_8
    :goto_4
    monitor-exit p0

    return-void

    .line 673
    :catch_0
    move-exception v1

    move-object v2, v8

    :goto_5
    :try_start_6
    const-string v3, "FlurryAgent"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {v2}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 616
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 673
    :catchall_1
    move-exception v0

    move-object v1, v8

    :goto_6
    :try_start_8
    invoke-static {v1}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-exception v1

    const-string v2, "FlurryAgent"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const-wide/16 v3, 0x25

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/flurry/android/FlurryAgent;->t:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    mul-int/lit8 v7, v7, 0x25

    int-to-long v7, v7

    add-long/2addr v5, v7

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v1, v2, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 689
    :cond_a
    sget-object v1, Lcom/flurry/android/FlurryAgent;->c:Ljava/lang/String;

    goto :goto_3

    .line 701
    :cond_b
    const-string v0, "FlurryAgent"

    const-string v1, "Continuing previous session"

    invoke-static {v0, v1}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Ljava/util/List;

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 673
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5
.end method

.method private declared-synchronized b(Ljava/io/DataInputStream;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 1470
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 1472
    if-le v0, v1, :cond_0

    .line 1474
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown agent file version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1477
    :cond_0
    if-lt v0, v1, :cond_2

    .line 1479
    :try_start_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 1480
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1482
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->z:Ljava/lang/String;

    .line 1483
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->A:Z

    .line 1484
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/FlurryAgent;->B:J

    .line 1488
    :goto_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 1489
    if-eqz v0, :cond_1

    .line 1491
    new-array v0, v0, [B

    .line 1494
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1495
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->C:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1498
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->q:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1505
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 1502
    :cond_3
    :try_start_2
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Api keys do not match, old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", new: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 960
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/m;

    .line 962
    invoke-virtual {v0, p1}, Lcom/flurry/android/m;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 964
    invoke-virtual {v0}, Lcom/flurry/android/m;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    :cond_1
    monitor-exit p0

    return-void

    .line 960
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Z)[B
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 992
    monitor-enter p0

    .line 996
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 997
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 999
    const/16 v0, 0xf

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1000
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1002
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1009
    :goto_0
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-eqz v0, :cond_1

    .line 1012
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0}, Lcom/flurry/android/n;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1013
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0}, Lcom/flurry/android/n;->d()Ljava/util/Set;

    move-result-object v0

    .line 1014
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1015
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1017
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1018
    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1067
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1069
    :goto_2
    :try_start_2
    const-string v2, "FlurryAgent"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1073
    :try_start_3
    invoke-static {v1}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v7

    .line 1076
    :goto_3
    monitor-exit p0

    return-object v0

    .line 1006
    :cond_0
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1073
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_5
    invoke-static {v1}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 992
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1023
    :cond_1
    const-wide/16 v3, 0x0

    :try_start_6
    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1024
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1027
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1028
    const/16 v0, 0x6c

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1030
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->t:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1031
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->v:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1033
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1034
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->z:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1036
    iget-wide v3, p0, Lcom/flurry/android/FlurryAgent;->B:J

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1037
    iget-wide v3, p0, Lcom/flurry/android/FlurryAgent;->D:J

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1040
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1041
    const-string v0, "device.model"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1042
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1043
    const-string v0, "build.brand"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1044
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1045
    const-string v0, "build.id"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1046
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1047
    const-string v0, "version.release"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1048
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1049
    const-string v0, "build.device"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1050
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1051
    const-string v0, "build.product"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1052
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1055
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    move v4, v6

    .line 1056
    :goto_5
    if-ge v4, v3, :cond_3

    .line 1058
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1059
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 1056
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_5

    .line 1062
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/flurry/android/FlurryAgent;->C:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/util/List;

    .line 1064
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1065
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v0

    .line 1073
    :try_start_7
    invoke-static {v2}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v7

    goto/16 :goto_4

    :catchall_3
    move-exception v0

    goto/16 :goto_4

    .line 1067
    :catch_1
    move-exception v0

    move-object v1, v7

    goto/16 :goto_2
.end method

.method static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1106
    sget-object v0, Lcom/flurry/android/FlurryAgent;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flurry/android/FlurryAgent;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method private c(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1371
    :try_start_0
    invoke-direct {p0, p1}, Lcom/flurry/android/FlurryAgent;->b(Z)[B

    move-result-object v0

    .line 1372
    if-eqz v0, :cond_0

    .line 1374
    invoke-direct {p0, v0}, Lcom/flurry/android/FlurryAgent;->a([B)Z

    move-result v0

    .line 1375
    if-eqz v0, :cond_0

    .line 1377
    const-string v0, "FlurryAgent"

    const-string v1, "Done sending agent report"

    invoke-static {v0, v1}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->g()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1392
    :cond_0
    :goto_0
    return-void

    .line 1384
    :catch_0
    move-exception v0

    .line 1386
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1388
    :catch_1
    move-exception v0

    .line 1390
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static clearUserCookies()V
    .locals 1

    .prologue
    .line 301
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-nez v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 303
    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0}, Lcom/flurry/android/n;->j()V

    goto :goto_0
.end method

.method static synthetic d()Lcom/flurry/android/FlurryAgent;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    return-object v0
.end method

.method private e()V
    .locals 7

    .prologue
    .line 786
    const/4 v0, 0x0

    .line 789
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 790
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 792
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 793
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->v:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 794
    iget-wide v0, p0, Lcom/flurry/android/FlurryAgent;->D:J

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 795
    iget-wide v0, p0, Lcom/flurry/android/FlurryAgent;->F:J

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 796
    const-wide/16 v0, 0x0

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 797
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->H:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 799
    iget-byte v0, p0, Lcom/flurry/android/FlurryAgent;->I:B

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 800
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->J:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 802
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->N:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 804
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 814
    :goto_0
    iget v0, p0, Lcom/flurry/android/FlurryAgent;->T:I

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 815
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 816
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 817
    iget-byte v0, p0, Lcom/flurry/android/FlurryAgent;->K:B

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 818
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->L:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 820
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 828
    :goto_1
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->O:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 829
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->O:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 831
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 832
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/j;

    iget v0, v0, Lcom/flurry/android/j;->a:I

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 867
    :catch_0
    move-exception v0

    move-object v1, v3

    .line 869
    :goto_3
    :try_start_2
    const-string v2, "FlurryAgent"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 873
    invoke-static {v1}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V

    .line 874
    :goto_4
    return-void

    .line 808
    :cond_0
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 809
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->N:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 810
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->N:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 811
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->N:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 873
    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_5
    invoke-static {v1}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V

    throw v0

    .line 824
    :cond_1
    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 825
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->L:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_1

    .line 835
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 836
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/m;

    .line 838
    invoke-virtual {v0}, Lcom/flurry/android/m;->b()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_6

    .line 840
    :cond_3
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->Q:Z

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 842
    iget v0, p0, Lcom/flurry/android/FlurryAgent;->M:I

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 843
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 844
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/u;

    .line 846
    iget-wide v4, v0, Lcom/flurry/android/u;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 847
    iget-object v4, v0, Lcom/flurry/android/u;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 848
    iget-object v4, v0, Lcom/flurry/android/u;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 849
    iget-object v0, v0, Lcom/flurry/android/u;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_7

    .line 852
    :cond_4
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-eqz v0, :cond_5

    .line 854
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0}, Lcom/flurry/android/n;->e()Ljava/util/List;

    move-result-object v0

    .line 855
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 856
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/y;

    .line 858
    invoke-virtual {v0, v3}, Lcom/flurry/android/y;->a(Ljava/io/DataOutput;)V

    goto :goto_8

    .line 863
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 865
    :cond_6
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Ljava/util/List;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 873
    invoke-static {v3}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V

    goto/16 :goto_4

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    goto/16 :goto_5

    .line 867
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_3
.end method

.method public static enableAppCircle()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    .line 283
    return-void
.end method

.method public static endTimedEvent(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 412
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0, p0}, Lcom/flurry/android/FlurryAgent;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    return-void

    .line 414
    :catch_0
    move-exception v0

    .line 416
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to signify the end of event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private declared-synchronized f()V
    .locals 1

    .prologue
    .line 879
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/flurry/android/FlurryAgent;->T:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->T:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    monitor-exit p0

    return-void

    .line 879
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1509
    monitor-enter p0

    .line 1513
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->o:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 1514
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 1515
    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1518
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create persistent dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1552
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1553
    :goto_0
    monitor-exit p0

    return-void

    .line 1521
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->o:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1522
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1523
    const v0, 0xb5fa

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1524
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1526
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->t:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1527
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->z:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1528
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->A:Z

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1529
    iget-wide v2, p0, Lcom/flurry/android/FlurryAgent;->B:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1533
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v2, v0

    :goto_1
    if-ltz v2, :cond_1

    .line 1535
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1536
    array-length v3, v0

    .line 1537
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->size()I

    move-result v5

    add-int/2addr v4, v5

    const v5, 0xc350

    if-gt v4, v5, :cond_1

    .line 1539
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1542
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 1533
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 1544
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 1552
    :try_start_4
    invoke-static {v1}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1509
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1546
    :catch_0
    move-exception v0

    move-object v1, v4

    .line 1548
    :goto_2
    :try_start_5
    const-string v2, "FlurryAgent"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1552
    :try_start_6
    invoke-static {v1}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v4

    :goto_3
    invoke-static {v1}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 1546
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static getAgentVersion()I
    .locals 1

    .prologue
    .line 503
    const/16 v0, 0x6c

    return v0
.end method

.method public static getAppCircle()Lcom/flurry/android/AppCircle;
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/flurry/android/FlurryAgent;->m:Lcom/flurry/android/AppCircle;

    return-object v0
.end method

.method public static getForbidPlaintextFallback()Z
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized h()V
    .locals 1

    .prologue
    .line 1631
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->y:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 1633
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->y:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1635
    :cond_0
    monitor-exit p0

    return-void

    .line 1631
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static logEvent(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 364
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 368
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 376
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 380
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 400
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0, p0, p1, p2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 404
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static logEvent(Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 388
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v0

    .line 392
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onEndSession(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 334
    if-nez p0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_0
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/android/FlurryAgent;->a(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 344
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 424
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0, p0, p1, p2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 428
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onEvent(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 588
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :goto_0
    return-void

    .line 590
    :catch_0
    move-exception v0

    .line 592
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 601
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :goto_0
    return-void

    .line 603
    :catch_0
    move-exception v0

    .line 605
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onPageView()V
    .locals 3

    .prologue
    .line 352
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0}, Lcom/flurry/android/FlurryAgent;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 356
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onStartSession(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 313
    if-nez p0, :cond_0

    .line 315
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 319
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Api key not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_2
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/FlurryAgent;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 328
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setAge(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 474
    if-lez p0, :cond_0

    const/16 v0, 0x6e

    if-ge p0, v0, :cond_0

    .line 476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p0

    const-wide v4, 0x7528ad000L

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 477
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v0

    .line 478
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v0, v6, v6}, Ljava/util/Date;-><init>(III)V

    .line 479
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/FlurryAgent;->L:Ljava/lang/Long;

    .line 481
    :cond_0
    return-void
.end method

.method public static setCanvasUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 439
    sput-object p0, Lcom/flurry/android/FlurryAgent;->b:Ljava/lang/String;

    .line 440
    return-void
.end method

.method public static setCaptureUncaughtExceptions(Z)V
    .locals 3
    .parameter

    .prologue
    .line 568
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    monitor-enter v0

    .line 570
    :try_start_0
    sget-object v1, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    iget-boolean v1, v1, Lcom/flurry/android/FlurryAgent;->p:Z

    if-eqz v1, :cond_0

    .line 572
    const-string v1, "FlurryAgent"

    const-string v2, "Cannot setCaptureUncaughtExceptions after onSessionStart"

    invoke-static {v1, v2}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    monitor-exit v0

    .line 576
    :goto_0
    return-void

    .line 575
    :cond_0
    sput-boolean p0, Lcom/flurry/android/FlurryAgent;->j:Z

    .line 576
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setContinueSessionMillis(J)V
    .locals 2
    .parameter

    .prologue
    .line 544
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    monitor-enter v0

    .line 546
    :try_start_0
    sput-wide p0, Lcom/flurry/android/FlurryAgent;->g:J

    .line 547
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setDefaultNoAdsMessage(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 287
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-nez v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 289
    :cond_0
    if-nez p0, :cond_1

    const-string v0, ""

    :goto_1
    sput-object v0, Lcom/flurry/android/n;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, p0

    goto :goto_1
.end method

.method public static setGender(B)V
    .locals 2
    .parameter

    .prologue
    .line 489
    packed-switch p0, :pswitch_data_0

    .line 497
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    const/4 v1, -0x1

    iput-byte v1, v0, Lcom/flurry/android/FlurryAgent;->K:B

    .line 499
    :goto_0
    return-void

    .line 493
    :pswitch_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    iput-byte p0, v0, Lcom/flurry/android/FlurryAgent;->K:B

    goto :goto_0

    .line 489
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static setGetAppUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 444
    sput-object p0, Lcom/flurry/android/FlurryAgent;->d:Ljava/lang/String;

    .line 445
    return-void
.end method

.method public static setLocationCriteria(Landroid/location/Criteria;)V
    .locals 2
    .parameter

    .prologue
    .line 465
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    monitor-enter v0

    .line 467
    :try_start_0
    sput-object p0, Lcom/flurry/android/FlurryAgent;->k:Landroid/location/Criteria;

    .line 468
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setLogEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 530
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    monitor-enter v0

    .line 532
    if-eqz p0, :cond_0

    .line 534
    :try_start_0
    invoke-static {}, Lcom/flurry/android/z;->b()V

    .line 540
    :goto_0
    monitor-exit v0

    return-void

    .line 538
    :cond_0
    invoke-static {}, Lcom/flurry/android/z;->a()V

    goto :goto_0

    .line 540
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setLogEvents(Z)V
    .locals 2
    .parameter

    .prologue
    .line 552
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    monitor-enter v0

    .line 554
    :try_start_0
    sput-boolean p0, Lcom/flurry/android/FlurryAgent;->h:Z

    .line 555
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setReportLocation(Z)V
    .locals 2
    .parameter

    .prologue
    .line 457
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    monitor-enter v0

    .line 459
    :try_start_0
    sget-object v1, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    iput-boolean p0, v1, Lcom/flurry/android/FlurryAgent;->w:Z

    .line 460
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setReportUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 434
    sput-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    .line 435
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 560
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    monitor-enter v0

    .line 562
    :try_start_0
    sget-object v1, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    invoke-static {p0}, Lcom/flurry/android/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/flurry/android/FlurryAgent;->J:Ljava/lang/String;

    .line 563
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setVersionName(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 449
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    monitor-enter v0

    .line 451
    :try_start_0
    sget-object v1, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    iput-object p0, v1, Lcom/flurry/android/FlurryAgent;->v:Ljava/lang/String;

    .line 452
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method final a(Ljava/lang/Throwable;)V
    .locals 3
    .parameter

    .prologue
    .line 205
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    const-string v2, "uncaught"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/FlurryAgent;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 209
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/FlurryAgent;->a(Landroid/content/Context;Z)V

    .line 210
    return-void
.end method

.method public final declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .parameter

    .prologue
    .line 1642
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/flurry/android/FlurryAgent;->N:Landroid/location/Location;

    .line 1643
    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1649
    :goto_0
    monitor-exit p0

    return-void

    .line 1645
    :catch_0
    move-exception v0

    .line 1647
    :try_start_1
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1642
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1655
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1661
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1667
    return-void
.end method
