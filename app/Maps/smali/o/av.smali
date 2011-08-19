.class public Lo/av;
.super Lo/aN;


# static fields
.field private static c:Lo/av;


# direct methods
.method private constructor <init>(LaU/a;Lh/eY;Lcom/google/googlenav/bL;)V
    .locals 3

    new-instance v0, Lo/y;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/y;-><init>(IZ)V

    invoke-direct {p0, p1, p2, p3, v0}, Lo/aN;-><init>(LaU/a;Lh/eY;Lcom/google/googlenav/bL;Lo/bx;)V

    return-void
.end method

.method public static declared-synchronized a(LaU/a;Lh/eY;Lcom/google/googlenav/bL;)Lo/av;
    .locals 2

    const-class v0, Lo/av;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lo/av;

    invoke-direct {v1, p0, p1, p2}, Lo/av;-><init>(LaU/a;Lh/eY;Lcom/google/googlenav/bL;)V

    sput-object v1, Lo/av;->c:Lo/av;

    sget-object v1, Lo/av;->c:Lo/av;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static l()Lo/av;
    .locals 1

    sget-object v0, Lo/av;->c:Lo/av;

    return-object v0
.end method

.method public static declared-synchronized o()Z
    .locals 2

    const-class v0, Lo/av;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo/av;->c:Lo/av;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static p()Z
    .locals 1

    const-string v0, "GOOGLE_PLUS_TERMS_ACCEPTED_SETTING"

    invoke-static {v0}, Lo/av;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Lh/eY;LaU/a;Lo/aN;Z)Lo/X;
    .locals 1

    new-instance v0, Lo/bk;

    invoke-direct {v0, p1, p2, p0, p4}, Lo/bk;-><init>(Lh/eY;LaU/a;Lo/aN;Z)V

    return-object v0
.end method

.method protected a(Law/e;)Z
    .locals 2

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Law/e;->h(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Law/e;->b(I)Z

    move-result v0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    invoke-virtual {p0}, Lo/av;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2da

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/av;->b:Lh/eY;

    const/16 v2, 0x2e5

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e6

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p0}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V

    :cond_0
    return-void
.end method

.method protected m()Ljava/lang/String;
    .locals 1

    const-string v0, "GOOGLE_PLUS_TERMS_ACCEPTED_SETTING"

    return-object v0
.end method

.method protected n()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected q()V
    .locals 3

    const/16 v0, 0x5b

    const-string v1, "co"

    const-string v2, "ol"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
