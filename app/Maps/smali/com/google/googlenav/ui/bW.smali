.class public Lcom/google/googlenav/ui/bW;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/ui/bu;

.field private final b:Lh/eY;

.field private final c:Lcom/google/googlenav/g;

.field private volatile d:Ljava/util/Vector;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/bu;Lh/eY;Lcom/google/googlenav/g;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/bW;->d:Ljava/util/Vector;

    iput-object p1, p0, Lcom/google/googlenav/ui/bW;->a:Lcom/google/googlenav/ui/bu;

    iput-object p2, p0, Lcom/google/googlenav/ui/bW;->b:Lh/eY;

    iput-object p3, p0, Lcom/google/googlenav/ui/bW;->c:Lcom/google/googlenav/g;

    iget-object v0, p0, Lcom/google/googlenav/ui/bW;->d:Ljava/util/Vector;

    new-instance v1, Lcom/google/googlenav/ui/aq;

    const-string v2, "LBS_CRIPPLED_PREF"

    invoke-direct {v1, p0, v2, p1}, Lcom/google/googlenav/ui/aq;-><init>(Lcom/google/googlenav/ui/bW;Ljava/lang/String;Lcom/google/googlenav/ui/bu;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/bW;->d:Ljava/util/Vector;

    new-instance v1, Lcom/google/googlenav/ui/ao;

    const-string v2, "WIFI_CRIPPLED_PREF"

    invoke-direct {v1, p0, v2, p1}, Lcom/google/googlenav/ui/ao;-><init>(Lcom/google/googlenav/ui/bW;Ljava/lang/String;Lcom/google/googlenav/ui/bu;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v1, p0, Lcom/google/googlenav/ui/bW;->d:Ljava/util/Vector;

    monitor-enter v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/ui/bW;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/bW;->d:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/by;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/by;->d()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/bW;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/bW;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/bW;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/bW;->e:Z

    return v0
.end method

.method private b()V
    .locals 3

    iget-object v1, p0, Lcom/google/googlenav/ui/bW;->d:Ljava/util/Vector;

    monitor-enter v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/ui/bW;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/bW;->d:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/by;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/by;->c()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/bW;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/bW;->a()V

    return-void
.end method

.method private b(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "c"

    move-object v1, v0

    :goto_0
    const/16 v0, 0x5f

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x21a

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    iget-object v0, p0, Lcom/google/googlenav/ui/bW;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/bW;->d:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/by;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/by;->a(Ljava/lang/StringBuilder;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_0
    const-string v0, "s"

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/bW;->b:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->v()LaU/a;

    move-result-object v0

    new-instance v3, Lcom/google/googlenav/ui/an;

    invoke-direct {v3, p0, v2, p1, v1}, Lcom/google/googlenav/ui/an;-><init>(Lcom/google/googlenav/ui/bW;Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-interface {v0, v3}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/bW;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/bW;->b()V

    return-void
.end method

.method static synthetic d(Lcom/google/googlenav/ui/bW;)Lcom/google/googlenav/ui/bu;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bW;->a:Lcom/google/googlenav/ui/bu;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/bW;)Lcom/google/googlenav/g;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bW;->c:Lcom/google/googlenav/g;

    return-object v0
.end method

.method static synthetic f(Lcom/google/googlenav/ui/bW;)Lh/eY;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bW;->b:Lh/eY;

    return-object v0
.end method

.method static synthetic g(Lcom/google/googlenav/ui/bW;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bW;->d:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/google/googlenav/ui/bW;->e:Z

    const-string v0, "LBS_GO_AWAY_AND_DONT_COME_BACK"

    const/4 v1, -0x1

    new-instance v2, Lcom/google/googlenav/ui/ap;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/ap;-><init>(Lcom/google/googlenav/ui/bW;)V

    invoke-static {v0, v1, v2}, Lo/as;->a(Ljava/lang/String;ILo/cf;)V

    return-void
.end method
