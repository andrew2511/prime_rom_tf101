.class public Lo/ao;
.super Lo/aN;


# static fields
.field private static c:Lo/ao;


# direct methods
.method protected constructor <init>(LaU/a;Lh/eY;Lcom/google/googlenav/bL;)V
    .locals 3

    new-instance v0, Lo/y;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/y;-><init>(IZ)V

    invoke-direct {p0, p1, p2, p3, v0}, Lo/aN;-><init>(LaU/a;Lh/eY;Lcom/google/googlenav/bL;Lo/bx;)V

    return-void
.end method

.method public static declared-synchronized a(LaU/a;Lh/eY;Lcom/google/googlenav/bL;)Lo/ao;
    .locals 2

    const-class v0, Lo/ao;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lo/ao;

    invoke-direct {v1, p0, p1, p2}, Lo/ao;-><init>(LaU/a;Lh/eY;Lcom/google/googlenav/bL;)V

    sput-object v1, Lo/ao;->c:Lo/ao;

    sget-object v1, Lo/ao;->c:Lo/ao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static l()Lo/ao;
    .locals 1

    sget-object v0, Lo/ao;->c:Lo/ao;

    return-object v0
.end method

.method public static o()Z
    .locals 1

    const-string v0, "CHECKINS_TERMS_ACCEPTED_SETTING"

    invoke-static {v0}, Lo/ao;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Lh/eY;LaU/a;Lo/aN;Z)Lo/X;
    .locals 6

    new-instance v0, Lo/aG;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lo/aG;-><init>(Lo/ao;Lh/eY;LaU/a;Lo/aN;Z)V

    return-object v0
.end method

.method protected a(Law/e;)Z
    .locals 4

    const/16 v1, 0x9

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1}, Law/e;->h(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Law/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method public b()V
    .locals 3

    invoke-virtual {p0}, Lo/ao;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ao;->b:Lh/eY;

    const/16 v1, 0x77

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x78

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V

    :cond_0
    return-void
.end method

.method protected m()Ljava/lang/String;
    .locals 1

    const-string v0, "CHECKINS_TERMS_ACCEPTED_SETTING"

    return-object v0
.end method

.method protected n()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
