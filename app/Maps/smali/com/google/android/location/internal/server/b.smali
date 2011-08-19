.class Lcom/google/android/location/internal/server/b;
.super Lcom/google/android/location/internal/e;


# instance fields
.field final synthetic a:Lcom/google/android/location/internal/server/NetworkLocationService;

.field private final b:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Lcom/google/android/location/internal/server/NetworkLocationService;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/location/internal/server/b;->a:Lcom/google/android/location/internal/server/NetworkLocationService;

    invoke-direct {p0}, Lcom/google/android/location/internal/e;-><init>()V

    iget-object v0, p0, Lcom/google/android/location/internal/server/b;->a:Lcom/google/android/location/internal/server/NetworkLocationService;

    invoke-virtual {v0}, Lcom/google/android/location/internal/server/NetworkLocationService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/internal/server/b;->b:Landroid/content/pm/PackageManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/internal/server/NetworkLocationService;Lcom/google/android/location/internal/server/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/location/internal/server/b;-><init>(Lcom/google/android/location/internal/server/NetworkLocationService;)V

    return-void
.end method

.method private b(Landroid/location/Location;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x3e80

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    if-eqz p1, :cond_0

    const-string v2, "RMI for "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/location/internal/server/b;->a:Lcom/google/android/location/internal/server/NetworkLocationService;

    invoke-static {v2, v1}, Lcom/google/android/location/internal/server/NetworkLocationService;->a(Lcom/google/android/location/internal/server/NetworkLocationService;Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/location/internal/server/b;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Access is restricted to packages signed with the same certificate."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/google/android/location/internal/server/b;->b()V

    sget-object v0, Lcom/google/android/location/internal/g;->b:Lcom/google/android/location/internal/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/location/internal/server/b;->a:Lcom/google/android/location/internal/server/NetworkLocationService;

    invoke-static {v0, v2}, Lcom/google/android/location/internal/d;->a(Lcom/google/android/location/internal/g;Landroid/content/Context;)Lcom/google/android/location/internal/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/location/internal/server/b;->b(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/google/android/location/internal/a;I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/location/internal/server/b;->b()V

    iget-object v0, p0, Lcom/google/android/location/internal/server/b;->a:Lcom/google/android/location/internal/server/NetworkLocationService;

    invoke-static {v0}, Lcom/google/android/location/internal/server/NetworkLocationService;->a(Lcom/google/android/location/internal/server/NetworkLocationService;)Lcom/google/android/location/internal/server/e;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3}, Lcom/google/android/location/internal/server/e;->a(Lcom/google/android/location/internal/a;II)V

    return-void
.end method

.method public a(Lcom/google/android/location/internal/a;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/location/internal/server/b;->b()V

    iget-object v0, p0, Lcom/google/android/location/internal/server/b;->a:Lcom/google/android/location/internal/server/NetworkLocationService;

    invoke-static {v0}, Lcom/google/android/location/internal/server/NetworkLocationService;->a(Lcom/google/android/location/internal/server/NetworkLocationService;)Lcom/google/android/location/internal/server/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/location/internal/server/e;->a(Lcom/google/android/location/internal/a;)V

    return-void
.end method

.method public a(Landroid/location/Location;)[B
    .locals 14

    const-wide v12, 0x416312d000000000L

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x6

    invoke-direct {p0}, Lcom/google/android/location/internal/server/b;->b()V

    new-instance v2, Law/e;

    sget-object v1, Lbd/a;->b:Law/f;

    invoke-direct {v2, v1}, Law/e;-><init>(Law/f;)V

    new-instance v3, Law/e;

    sget-object v1, Lbd/a;->k:Law/f;

    invoke-direct {v3, v1}, Law/e;-><init>(Law/f;)V

    iget-object v1, p0, Lcom/google/android/location/internal/server/b;->a:Lcom/google/android/location/internal/server/NetworkLocationService;

    invoke-static {v1}, Lcom/google/android/location/internal/server/NetworkLocationService;->a(Lcom/google/android/location/internal/server/NetworkLocationService;)Lcom/google/android/location/internal/server/e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/location/internal/server/e;->a(Landroid/location/Location;)Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x5

    invoke-direct {p0, p1}, Lcom/google/android/location/internal/server/b;->b(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Law/e;->b(ILjava/lang/String;)V

    new-instance v4, Law/e;

    sget-object v5, Lbd/a;->B:Law/f;

    invoke-direct {v4, v5}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v2, v11, v4}, Law/e;->b(ILaw/e;)V

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v11, v5}, Law/e;->h(II)V

    :cond_0
    new-instance v5, Law/e;

    sget-object v6, Lbd/a;->q:Law/f;

    invoke-direct {v5, v6}, Law/e;-><init>(Law/f;)V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    mul-double/2addr v6, v12

    double-to-int v6, v6

    invoke-virtual {v5, v10, v6}, Law/e;->h(II)V

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    mul-double/2addr v6, v12

    double-to-int v6, v6

    invoke-virtual {v5, v9, v6}, Law/e;->h(II)V

    invoke-virtual {v4, v10, v5}, Law/e;->b(ILaw/e;)V

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v3, v8, v1}, Law/e;->h(II)V

    :cond_1
    :goto_0
    const/4 v1, 0x7

    :try_start_0
    invoke-virtual {v3}, Law/e;->f()[B

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Law/e;->a(I[B)V

    const/4 v1, 0x6

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Law/e;->a(II)V

    invoke-virtual {v2}, Law/e;->f()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    return-object v1

    :cond_2
    instance-of v4, v1, LW/b;

    if-eqz v4, :cond_6

    move-object v0, v1

    check-cast v0, LW/b;

    move-object p0, v0

    iget-object v1, p0, LW/b;->a:LW/h;

    iget-object v4, p0, LW/b;->c:LW/l;

    if-ne v1, v4, :cond_5

    invoke-virtual {v3, v8, v10}, Law/e;->h(II)V

    :cond_3
    :goto_2
    invoke-static {}, Lcom/google/android/location/os/real/l;->m()J

    move-result-wide v4

    iget-object v1, p0, LW/b;->c:LW/l;

    if-eqz v1, :cond_4

    iget-object v1, p0, LW/b;->c:LW/l;

    iget-object v1, v1, LW/l;->a:LW/a;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v2, v4, v5}, LW/a;->a(Law/e;J)V

    :cond_4
    iget-object v1, p0, LW/b;->b:LW/d;

    if-eqz v1, :cond_1

    iget-object v1, p0, LW/b;->b:LW/d;

    iget-object v1, v1, LW/d;->a:LW/k;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4, v5}, LW/k;->a(J)Law/e;

    move-result-object v1

    invoke-virtual {v2, v9, v1}, Law/e;->b(ILaw/e;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, LW/b;->a:LW/h;

    iget-object v4, p0, LW/b;->b:LW/d;

    if-ne v1, v4, :cond_3

    invoke-virtual {v3, v8, v9}, Law/e;->h(II)V

    goto :goto_2

    :cond_6
    instance-of v4, v1, LW/h;

    if-eqz v4, :cond_7

    invoke-virtual {v3, v8, v11}, Law/e;->h(II)V

    goto :goto_0

    :cond_7
    instance-of v1, v1, Landroid/location/Location;

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v3, v8, v1}, Law/e;->h(II)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "gmmInternalNlpService"

    const-string v3, "getRmiInfo"

    invoke-static {v2, v3, v1}, Lw/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_1
.end method
