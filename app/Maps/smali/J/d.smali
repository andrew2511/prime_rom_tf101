.class public LJ/d;
.super LJ/e;


# static fields
.field public static a:J


# instance fields
.field private final c:Ljava/util/Vector;

.field private d:LJ/c;

.field private final e:LJ/q;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0xfa

    sput-wide v0, LJ/d;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LJ/e;-><init>()V

    new-instance v0, LJ/q;

    invoke-direct {v0, p0}, LJ/q;-><init>(LJ/d;)V

    iput-object v0, p0, LJ/d;->e:LJ/q;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LJ/d;->c:Ljava/util/Vector;

    const/4 v0, 0x0

    iput v0, p0, LJ/d;->f:I

    return-void
.end method

.method static synthetic a(LJ/d;)LJ/c;
    .locals 1

    iget-object v0, p0, LJ/d;->d:LJ/c;

    return-object v0
.end method

.method static synthetic a(LJ/d;LJ/c;)LJ/c;
    .locals 0

    iput-object p1, p0, LJ/d;->d:LJ/c;

    return-object p1
.end method

.method static synthetic b(LJ/d;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, LJ/d;->c:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic c(LJ/d;)I
    .locals 1

    iget v0, p0, LJ/d;->f:I

    return v0
.end method

.method static synthetic d(LJ/d;)I
    .locals 1

    invoke-super {p0}, LJ/e;->e()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, LJ/d;->f:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, LJ/d;->b:Z

    invoke-static {}, LJ/h;->a()LJ/h;

    move-result-object v1

    monitor-enter p0

    :try_start_0
    new-instance v0, LJ/c;

    invoke-virtual {v1}, LJ/h;->f()Law/e;

    move-result-object v3

    invoke-virtual {v1}, LJ/h;->g()Lf/h;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, LJ/c;-><init>(LJ/d;Ljava/lang/String;Law/e;Lf/h;I)V

    iput-object v0, p0, LJ/d;->d:LJ/c;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LJ/d;->e:LJ/q;

    invoke-virtual {v0}, LJ/q;->a()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, LJ/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJ/d;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LJ/d;->d:LJ/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "r"

    return-object v0
.end method
