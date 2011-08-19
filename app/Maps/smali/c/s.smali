.class public Lc/s;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:B

.field private c:J

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lc/s;->b:B

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc/s;->c:J

    iput v2, p0, Lc/s;->d:I

    iput v2, p0, Lc/s;->e:I

    return-void
.end method


# virtual methods
.method public a()B
    .locals 1

    iget-byte v0, p0, Lc/s;->b:B

    return v0
.end method

.method public a(B)V
    .locals 0

    iput-byte p1, p0, Lc/s;->b:B

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lc/s;->e:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lc/s;->c:J

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/Boolean;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lc/s;->a:Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "WIFI_DETECTION_ALERT_ALLOWED"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lo/as;->a(Ljava/lang/String;ILo/Z;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lc/s;->f:Z

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lc/s;->c:J

    return-wide v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lc/s;->d:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lc/s;->d:I

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lc/s;->f:Z

    return v0
.end method

.method public declared-synchronized e()Ljava/lang/Boolean;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/s;->a:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
