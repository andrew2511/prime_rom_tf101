.class public Lc/k;
.super Ljava/lang/Object;


# instance fields
.field private volatile a:Lo/i;

.field private volatile b:Z

.field private final c:LT/c;


# direct methods
.method public constructor <init>(LT/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/k;->c:LT/c;

    return-void
.end method

.method static synthetic a(Lc/k;Lo/i;)Lo/i;
    .locals 0

    iput-object p1, p0, Lc/k;->a:Lo/i;

    return-object p1
.end method

.method private a(Lc/e;LaU/a;)V
    .locals 4

    new-instance v0, Lc/f;

    invoke-direct {v0, p0, p1, p2}, Lc/f;-><init>(Lc/k;Lc/e;LaU/a;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    new-instance v2, Lo/bm;

    const/16 v3, 0xc

    invoke-direct {v2, v3, v0}, Lo/bm;-><init>(ILc/e;)V

    invoke-virtual {v1, v2}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method static synthetic a(Lc/k;Lc/e;LaU/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/k;->a(Lc/e;LaU/a;)V

    return-void
.end method

.method static synthetic a(Lc/k;Lo/i;Lc/e;LaU/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lc/k;->a(Lo/i;Lc/e;LaU/a;)V

    return-void
.end method

.method static synthetic a(Ln/a;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lc/k;->b(Ln/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lo/i;Lc/e;LaU/a;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/k;->b:Z

    if-eqz p3, :cond_0

    new-instance v0, Lc/g;

    invoke-direct {v0, p0, p2, p1}, Lc/g;-><init>(Lc/k;Lc/e;Lo/i;)V

    invoke-interface {p3, v0}, LaU/a;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p2, p1}, Lc/e;->a(Lo/i;)V

    goto :goto_0
.end method

.method private static b(Ln/a;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SUGGESTED_FRIEND_MANAGER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "SAVED_BGSF_"

    invoke-interface {p0, v0}, Ln/a;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lo/i;
    .locals 1

    iget-object v0, p0, Lc/k;->a:Lo/i;

    return-object v0
.end method

.method public a(LaU/a;Lc/e;)V
    .locals 2

    iget-object v0, p0, Lc/k;->a:Lo/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/k;->a:Lo/i;

    invoke-virtual {v0}, Lo/i;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/k;->a:Lo/i;

    invoke-direct {p0, v0, p2, p1}, Lc/k;->a(Lo/i;Lc/e;LaU/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lc/k;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/k;->b:Z

    iget-object v0, p0, Lc/k;->a:Lo/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/k;->a:Lo/i;

    invoke-virtual {v0}, Lo/i;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2, p1}, Lc/k;->a(Lc/e;LaU/a;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lc/i;

    iget-object v1, p0, Lc/k;->c:LT/c;

    invoke-direct {v0, p0, v1, p2, p1}, Lc/i;-><init>(Lc/k;LT/c;Lc/e;LaU/a;)V

    invoke-virtual {v0}, Lc/i;->b()V

    goto :goto_0
.end method

.method public a(Lo/i;)V
    .locals 0

    iput-object p1, p0, Lc/k;->a:Lo/i;

    invoke-virtual {p0}, Lc/k;->b()V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lc/k;->a:Lo/i;

    new-instance v1, Lc/h;

    iget-object v2, p0, Lc/k;->c:LT/c;

    invoke-direct {v1, p0, v2, v0}, Lc/h;-><init>(Lc/k;LT/c;Lo/i;)V

    invoke-virtual {v1}, Lc/h;->b()V

    return-void
.end method
