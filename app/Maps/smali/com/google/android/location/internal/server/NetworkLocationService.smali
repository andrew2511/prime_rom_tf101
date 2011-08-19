.class public Lcom/google/android/location/internal/server/NetworkLocationService;
.super Landroid/app/Service;


# instance fields
.field public final a:Lw/a;

.field private b:Lcom/google/android/location/internal/e;

.field private c:Lw/v;

.field private final d:Landroid/os/HandlerThread;

.field private e:Lcom/google/android/location/internal/server/e;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/google/android/location/internal/server/d;

    invoke-direct {v0, p0}, Lcom/google/android/location/internal/server/d;-><init>(Lcom/google/android/location/internal/server/NetworkLocationService;)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->a:Lw/a;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "gmmInternalNlpService"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->d:Landroid/os/HandlerThread;

    return-void
.end method

.method static synthetic a(Lcom/google/android/location/internal/server/NetworkLocationService;)Lcom/google/android/location/internal/server/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->e:Lcom/google/android/location/internal/server/e;

    return-object v0
.end method

.method private declared-synchronized a()V
    .locals 4

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->c:Lw/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/google/android/location/internal/server/e;

    iget-object v1, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/internal/server/e;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->e:Lcom/google/android/location/internal/server/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "nlp_debug_log"

    invoke-virtual {p0, v0}, Lcom/google/android/location/internal/server/NetworkLocationService;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_3
    new-instance v0, Ljava/io/BufferedOutputStream;

    const-string v2, "nlp_debug_log"

    const v3, 0x8000

    invoke-virtual {p0, v2, v3}, Lcom/google/android/location/internal/server/NetworkLocationService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v2

    :goto_2
    :try_start_4
    new-instance v1, Lw/v;

    iget-object v2, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->a:Lw/a;

    new-instance v3, Lcom/google/android/location/os/real/q;

    invoke-direct {v3}, Lcom/google/android/location/os/real/q;-><init>()V

    invoke-direct {v1, v2, v3, v0}, Lw/v;-><init>(Lw/a;Lw/u;Ljava/io/PrintWriter;)V

    iput-object v1, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->c:Lw/v;

    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->e:Lcom/google/android/location/internal/server/e;

    iget-object v1, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->c:Lw/v;

    invoke-virtual {v0, v1}, Lcom/google/android/location/internal/server/e;->a(Lw/v;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_5
    const-string v0, "gmmInternalNlpService"

    const-string v2, "debug log file missing for output!?"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/android/location/internal/server/NetworkLocationService;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/location/internal/server/NetworkLocationService;->a(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private a(Ljava/io/PrintWriter;)V
    .locals 7

    invoke-static {}, Lcom/google/android/location/os/real/l;->k()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/location/os/real/l;->l()J

    move-result-wide v2

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "MM-dd HH:mm:ss.SSS"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "elapsedRealtime "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    const-string v6, " is time "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->c:Lw/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->c:Lw/v;

    sub-long/2addr v2, v4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lw/v;->a(Ljava/text/Format;JJLjava/io/PrintWriter;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/location/internal/server/NetworkLocationService;->a(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->b:Lcom/google/android/location/internal/e;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/location/internal/server/NetworkLocationService;->a()V

    new-instance v0, Lcom/google/android/location/os/real/q;

    iget-object v1, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->c:Lw/v;

    invoke-direct {v0, v1}, Lcom/google/android/location/os/real/q;-><init>(Lw/v;)V

    invoke-static {v0}, Lw/x;->a(Lw/u;)V

    new-instance v0, Lcom/google/android/location/internal/server/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/internal/server/b;-><init>(Lcom/google/android/location/internal/server/NetworkLocationService;Lcom/google/android/location/internal/server/d;)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->b:Lcom/google/android/location/internal/e;

    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->e:Lcom/google/android/location/internal/server/e;

    invoke-virtual {v0}, Lcom/google/android/location/internal/server/e;->c()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->e:Lcom/google/android/location/internal/server/e;

    invoke-virtual {v0}, Lcom/google/android/location/internal/server/e;->d()V

    iput-object v1, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->b:Lcom/google/android/location/internal/e;

    invoke-static {v1}, Lw/x;->a(Lw/u;)V

    return-void
.end method
