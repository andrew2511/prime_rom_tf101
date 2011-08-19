.class public LaD/r;
.super Ljava/lang/Object;


# static fields
.field private static final f:LaD/q;

.field private static final j:Ljava/lang/Object;


# instance fields
.field private final a:Z

.field private final b:Lac/c;

.field private final c:Ljava/util/Hashtable;

.field private d:Ljava/util/Vector;

.field private volatile e:Z

.field private final g:LaU/a;

.field private final h:LT/c;

.field private final i:Ljava/util/Hashtable;

.field private final k:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v1, 0x0

    new-instance v0, LaD/q;

    new-instance v6, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v6, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, LaD/q;-><init>(Lk/l;Lk/l;Lk/l;Lk/l;Ljava/lang/String;Ljava/lang/Long;)V

    sput-object v0, LaD/r;->f:LaD/q;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LaD/r;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LaU/a;LT/c;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, LaD/r;->c:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaD/r;->d:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, LaD/r;->i:Ljava/util/Hashtable;

    new-instance v0, Lac/c;

    invoke-direct {v0, p4}, Lac/c;-><init>(I)V

    iput-object v0, p0, LaD/r;->b:Lac/c;

    iput-boolean p3, p0, LaD/r;->a:Z

    iput-object p1, p0, LaD/r;->g:LaU/a;

    iput-object p2, p0, LaD/r;->h:LT/c;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaD/r;->k:Ljava/util/Vector;

    invoke-direct {p0}, LaD/r;->f()V

    return-void
.end method

.method private a(LaD/q;)V
    .locals 4

    iget-boolean v0, p0, LaD/r;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, LaD/s;

    iget-object v2, p0, LaD/r;->h:LT/c;

    new-instance v3, LaD/m;

    invoke-direct {v3, p0}, LaD/m;-><init>(LaD/r;)V

    invoke-direct {v1, v2, v0, v3}, LaD/s;-><init>(LT/c;Ljava/util/Vector;LaD/i;)V

    invoke-virtual {v1}, LaD/s;->b()V

    :cond_0
    return-void
.end method

.method static synthetic a(LaD/r;)V
    .locals 0

    invoke-direct {p0}, LaD/r;->d()V

    return-void
.end method

.method static synthetic a(LaD/r;LaD/n;)V
    .locals 0

    invoke-direct {p0, p1}, LaD/r;->c(LaD/n;)V

    return-void
.end method

.method static synthetic a(LaD/r;LaD/q;)V
    .locals 0

    invoke-direct {p0, p1}, LaD/r;->a(LaD/q;)V

    return-void
.end method

.method static synthetic a(LaD/r;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, LaD/r;->b(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic a(LaD/r;Ljava/lang/Long;LaD/q;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LaD/r;->a(Ljava/lang/Long;LaD/q;)V

    return-void
.end method

.method static synthetic a(LaD/r;Ljava/util/Vector;)V
    .locals 0

    invoke-direct {p0, p1}, LaD/r;->b(Ljava/util/Vector;)V

    return-void
.end method

.method private a(Ljava/lang/Long;LaD/q;)V
    .locals 2

    invoke-virtual {p2}, LaD/q;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LaD/r;->b:Lac/c;

    invoke-virtual {v0, p1, p2}, Lac/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, LaD/r;->i:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, LaD/r;->b:Lac/c;

    sget-object v1, LaD/r;->f:LaD/q;

    invoke-virtual {v0, p1, v1}, Lac/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Ljava/util/Vector;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LaD/n;

    invoke-interface {p0}, LaD/n;->ar_()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lk/l;Lo/bO;)V
    .locals 4

    invoke-static {p1}, Lk/e;->c(Lk/l;)[B

    move-result-object v0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    new-instance v2, Lo/bz;

    iget-object v3, p0, LaD/r;->g:LaU/a;

    invoke-direct {v2, v0, v3, p2}, Lo/bz;-><init>([BLaU/a;Lo/bO;)V

    invoke-virtual {v1, v2}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method private static a(LaD/q;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LaD/q;->b()LaD/j;

    move-result-object v0

    invoke-virtual {v0}, LaD/j;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, LaD/q;->b()LaD/j;

    move-result-object v0

    invoke-virtual {v0}, LaD/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(LaD/r;Z)Z
    .locals 0

    iput-boolean p1, p0, LaD/r;->e:Z

    return p1
.end method

.method static synthetic b(LaD/r;Ljava/util/Vector;)V
    .locals 0

    invoke-direct {p0, p1}, LaD/r;->a(Ljava/util/Vector;)V

    return-void
.end method

.method private b(Ljava/lang/Long;)V
    .locals 4

    iget-object v0, p0, LaD/r;->b:Lac/c;

    invoke-virtual {v0, p1}, Lac/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaD/q;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, LaD/r;->i:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, LaD/r;->b:Lac/c;

    invoke-virtual {v1, p1}, Lac/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LaD/r;->f:LaD/q;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PHOTO_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z

    iget-object v0, p0, LaD/r;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, LaD/r;->e()V

    goto :goto_0
.end method

.method private b(Ljava/util/Vector;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaD/q;

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LaD/q;->a()Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3, v0}, LaD/r;->a(Ljava/lang/Long;LaD/q;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic b(LaD/r;)Z
    .locals 1

    iget-boolean v0, p0, LaD/r;->a:Z

    return v0
.end method

.method private b(Ljava/util/Vector;LaD/n;)Z
    .locals 8

    const/4 v7, 0x0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    move v5, v7

    :goto_0
    if-ge v5, v4, :cond_3

    invoke-virtual {p1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaD/j;

    iget-object v1, p0, LaD/r;->i:Ljava/util/Hashtable;

    invoke-virtual {v0}, LaD/j;->b()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, LaD/r;->b:Lac/c;

    invoke-virtual {v0}, LaD/j;->b()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Lac/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaD/q;

    if-nez v1, :cond_2

    iget-object v1, p0, LaD/r;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, LaD/j;->b()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    iget-object v1, p0, LaD/r;->i:Ljava/util/Hashtable;

    invoke-virtual {v0}, LaD/j;->b()Ljava/lang/Long;

    move-result-object v0

    sget-object v6, LaD/r;->j:Ljava/lang/Object;

    invoke-virtual {v1, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, LaD/j;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, LaD/r;->a(LaD/q;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, LaD/r;->i:Ljava/util/Hashtable;

    invoke-virtual {v0}, LaD/j;->b()Ljava/lang/Long;

    move-result-object v0

    sget-object v6, LaD/r;->j:Ljava/lang/Object;

    invoke-virtual {v1, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_4
    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, LaD/u;

    iget-object v4, p0, LaD/r;->h:LT/c;

    new-instance v5, LaD/d;

    invoke-direct {v5, p0, p2}, LaD/d;-><init>(LaD/r;LaD/n;)V

    invoke-direct {v1, v4, v3, p0, v5}, LaD/u;-><init>(LT/c;Ljava/util/Vector;LaD/r;LaD/o;)V

    invoke-virtual {v1}, LaD/u;->b()V

    :cond_5
    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    new-instance v3, Lo/W;

    new-instance v4, LaD/h;

    invoke-direct {v4, p0, p2}, LaD/h;-><init>(LaD/r;LaD/n;)V

    invoke-direct {v3, v2, v4}, Lo/W;-><init>(Ljava/util/Vector;Lo/aJ;)V

    invoke-virtual {v1, v3}, Lak/h;->c(Lak/d;)V

    :cond_6
    return v0

    :cond_7
    move v0, v7

    goto :goto_3
.end method

.method static synthetic c(LaD/r;)LT/c;
    .locals 1

    iget-object v0, p0, LaD/r;->h:LT/c;

    return-object v0
.end method

.method static synthetic c()LaD/q;
    .locals 1

    sget-object v0, LaD/r;->f:LaD/q;

    return-object v0
.end method

.method static synthetic c(LaD/r;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 0

    iput-object p1, p0, LaD/r;->d:Ljava/util/Vector;

    return-object p1
.end method

.method private c(LaD/n;)V
    .locals 3

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    if-eqz p1, :cond_1

    iget-object v1, p0, LaD/r;->g:LaU/a;

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, LaD/r;->g:LaU/a;

    new-instance v2, LaD/g;

    invoke-direct {v2, p0, v0}, LaD/g;-><init>(LaD/r;Ljava/util/Vector;)V

    invoke-interface {v1, v2}, LaU/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, LaD/r;->a(Ljava/util/Vector;)V

    goto :goto_0
.end method

.method static synthetic d(LaD/r;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, LaD/r;->k:Ljava/util/Vector;

    return-object v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, LaD/r;->g:LaU/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, LaD/r;->g:LaU/a;

    new-instance v1, LaD/f;

    invoke-direct {v1, p0}, LaD/f;-><init>(LaD/r;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, LaD/r;->k:Ljava/util/Vector;

    invoke-direct {p0, v0}, LaD/r;->a(Ljava/util/Vector;)V

    goto :goto_0
.end method

.method static synthetic e(LaD/r;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, LaD/r;->c:Ljava/util/Hashtable;

    return-object v0
.end method

.method private e()V
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, LaD/r;->c:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, LaD/r;->c:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v1, LaD/e;

    iget-object v2, p0, LaD/r;->h:LT/c;

    invoke-direct {v1, p0, v2, v0}, LaD/e;-><init>(LaD/r;LT/c;Ljava/util/Vector;)V

    invoke-virtual {v1}, LaD/e;->b()V

    return-void
.end method

.method private f()V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, LaD/r;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LaD/r;->e:Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, LaD/c;

    iget-object v1, p0, LaD/r;->h:LT/c;

    invoke-direct {v0, p0, v1}, LaD/c;-><init>(LaD/r;LT/c;)V

    invoke-virtual {v0}, LaD/c;->b()V

    goto :goto_0
.end method

.method static synthetic f(LaD/r;)V
    .locals 0

    invoke-direct {p0}, LaD/r;->e()V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, LaD/r;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "PROTO_CLIENT_SAVED_PHOTO_CACHE"

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z

    const-string v1, "PHOTO_"

    invoke-interface {v0, v1}, Ln/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(LaD/r;)V
    .locals 0

    invoke-direct {p0}, LaD/r;->g()V

    return-void
.end method

.method static synthetic h(LaD/r;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, LaD/r;->d:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Long;)LaD/q;
    .locals 1

    iget-object v0, p0, LaD/r;->b:Lac/c;

    invoke-virtual {v0, p1}, Lac/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LaD/q;

    return-object p0
.end method

.method public a(Lcom/google/googlenav/ui/aH;)Lk/l;
    .locals 2

    check-cast p1, Lc/a;

    invoke-virtual {p1}, Lc/a;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, LaD/r;->a(Ljava/lang/Long;)LaD/q;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, LaD/r;->f:LaD/q;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lc/a;->b()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {v0}, LaD/q;->f()Lk/l;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, LaD/q;->c()Lk/l;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/google/googlenav/ui/aV;->ah()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, LaD/q;->e()Lk/l;

    move-result-object v0

    goto :goto_0

    :cond_1
    :pswitch_3
    invoke-virtual {v0}, LaD/q;->d()Lk/l;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, LaD/r;->b:Lac/c;

    invoke-virtual {v0}, Lac/c;->b()V

    return-void
.end method

.method public a(LaD/n;)V
    .locals 1

    iget-object v0, p0, LaD/r;->k:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/aH;Lk/l;Ljava/lang/String;Lo/B;)V
    .locals 7

    check-cast p1, Lc/a;

    invoke-virtual {p1}, Lc/a;->a()Ljava/lang/Long;

    move-result-object v2

    if-nez p2, :cond_0

    invoke-direct {p0, v2}, LaD/r;->b(Ljava/lang/Long;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, LaD/b;

    const/4 v6, 0x0

    move-object v1, p4

    move-object v3, p3

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, LaD/b;-><init>(Lo/B;Ljava/lang/Long;Ljava/lang/String;Lk/l;LaD/r;LaD/d;)V

    invoke-direct {p0, p2, v0}, LaD/r;->a(Lk/l;Lo/bO;)V

    goto :goto_0
.end method

.method public a(Ljava/util/Vector;LaD/n;)Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, LaD/r;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LaD/r;->d:Ljava/util/Vector;

    invoke-static {p1, v1, v0}, LA/r;->a(Ljava/util/Vector;ILjava/util/Vector;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, LaD/r;->b(Ljava/util/Vector;LaD/n;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, LaD/r;->b:Lac/c;

    invoke-virtual {v0}, Lac/c;->d()Ljava/util/Vector;

    move-result-object v0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LaD/q;

    sget-object v3, LaD/r;->f:LaD/q;

    if-ne p0, v3, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LaD/q;->i()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    return v2
.end method

.method public b(LaD/n;)V
    .locals 1

    iget-object v0, p0, LaD/r;->k:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/google/googlenav/ui/aH;)Z
    .locals 2

    iget-object v0, p0, LaD/r;->b:Lac/c;

    check-cast p1, Lc/a;

    invoke-virtual {p1}, Lc/a;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lac/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LaD/q;

    if-eqz p0, :cond_0

    sget-object v0, LaD/r;->f:LaD/q;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
