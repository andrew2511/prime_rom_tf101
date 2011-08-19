.class public LK/m;
.super Ljava/lang/Object;


# static fields
.field static volatile a:Z

.field private static volatile b:LK/l;

.field private static volatile c:LK/l;

.field private static final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, LK/m;->a:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, LK/m;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, LK/m;->c()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LK/l;
    .locals 1

    sget-object v0, LK/m;->b:LK/l;

    return-object v0
.end method

.method static synthetic a(LK/l;)LK/l;
    .locals 0

    sput-object p0, LK/m;->c:LK/l;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lak/h;LK/c;)V
    .locals 1

    const-string v0, "TransitNavigationParameters"

    invoke-static {p0, p1, p2, v0}, LK/m;->a(Landroid/content/Context;Lak/h;LK/c;Ljava/lang/String;)V

    return-void
.end method

.method static a(Landroid/content/Context;Lak/h;LK/c;Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    const/16 v2, 0x9

    const/4 v3, 0x2

    sget-boolean v0, LK/m;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, LK/m;->b()V

    if-eqz p2, :cond_0

    invoke-interface {p2}, LK/c;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Ls/q;->c:Law/f;

    invoke-static {p0, p3, v0}, LK/g;->a(Landroid/content/Context;Ljava/lang/String;Law/f;)Law/e;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    new-instance v2, LK/l;

    invoke-direct {v2, v0}, LK/l;-><init>(Law/e;)V

    sput-object v2, LK/m;->b:LK/l;

    invoke-virtual {v1, v3}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v3}, Law/e;->e(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v3, v0

    :goto_2
    if-eqz p1, :cond_0

    new-instance v0, LK/b;

    const-class v1, LK/a;

    invoke-direct {v0, p1, p2, v1}, LK/b;-><init>(Lak/h;LK/c;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lak/h;->a(Lak/c;)V

    new-instance v0, LK/a;

    move-object v1, p0

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, LK/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;LK/c;LK/h;)V

    invoke-virtual {p1, v0}, Lak/h;->c(Lak/d;)V

    goto :goto_0

    :cond_2
    new-instance v0, Law/e;

    sget-object v1, Ls/q;->c:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    new-instance v1, Law/e;

    sget-object v2, Ls/q;->r:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    :cond_3
    move-object v3, v5

    goto :goto_2
.end method

.method static b()V
    .locals 3

    sget-object v0, LK/m;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LK/m;->c:LK/l;

    sput-object v0, LK/m;->b:LK/l;

    :cond_0
    return-void
.end method

.method public static c()V
    .locals 3

    new-instance v0, LK/l;

    new-instance v1, Law/e;

    sget-object v2, Ls/q;->r:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    invoke-direct {v0, v1}, LK/l;-><init>(Law/e;)V

    sput-object v0, LK/m;->b:LK/l;

    return-void
.end method

.method static synthetic d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, LK/m;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method
