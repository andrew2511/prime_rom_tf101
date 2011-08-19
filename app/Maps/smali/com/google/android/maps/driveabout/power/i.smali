.class public Lcom/google/android/maps/driveabout/power/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/maps/driveabout/power/i;

.field private static b:Lcom/google/android/maps/driveabout/power/i;

.field private static final c:Ljava/util/Set;

.field private static final d:Lcom/google/android/maps/driveabout/power/a;


# instance fields
.field private final e:Lcom/google/android/maps/driveabout/power/g;

.field private final f:Landroid/view/Window;

.field private final g:Lcom/google/android/maps/driveabout/power/c;

.field private final h:F

.field private final i:Laa/D;

.field private final j:I

.field private k:I

.field private final l:Ljava/lang/Runnable;

.field private final m:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/power/d;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/power/d;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/power/i;->a:Lcom/google/android/maps/driveabout/power/i;

    sget-object v0, Lcom/google/android/maps/driveabout/power/i;->a:Lcom/google/android/maps/driveabout/power/i;

    sput-object v0, Lcom/google/android/maps/driveabout/power/i;->b:Lcom/google/android/maps/driveabout/power/i;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/power/i;->c:Ljava/util/Set;

    new-instance v0, Lcom/google/android/maps/driveabout/power/a;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/power/a;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/power/i;->d:Lcom/google/android/maps/driveabout/power/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    new-instance v3, Lcom/google/android/maps/driveabout/power/b;

    invoke-direct {v3}, Lcom/google/android/maps/driveabout/power/b;-><init>()V

    const/high16 v4, 0x7fc0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v2, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/power/i;-><init>(Lcom/google/android/maps/driveabout/power/g;Landroid/view/Window;Lcom/google/android/maps/driveabout/power/c;FLaa/D;I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/power/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/power/i;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/maps/driveabout/power/g;Landroid/view/Window;Lcom/google/android/maps/driveabout/power/c;FLaa/D;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/power/i;->k:I

    new-instance v0, Lcom/google/android/maps/driveabout/power/e;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/power/e;-><init>(Lcom/google/android/maps/driveabout/power/i;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/power/i;->l:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/maps/driveabout/power/f;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/power/f;-><init>(Lcom/google/android/maps/driveabout/power/i;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/power/i;->m:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/power/i;->e:Lcom/google/android/maps/driveabout/power/g;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/power/i;->f:Landroid/view/Window;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/power/i;->g:Lcom/google/android/maps/driveabout/power/c;

    iput p4, p0, Lcom/google/android/maps/driveabout/power/i;->h:F

    iput-object p5, p0, Lcom/google/android/maps/driveabout/power/i;->i:Laa/D;

    iput p6, p0, Lcom/google/android/maps/driveabout/power/i;->j:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/power/g;Landroid/view/Window;Lcom/google/android/maps/driveabout/power/c;FLaa/D;ILcom/google/android/maps/driveabout/power/d;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/maps/driveabout/power/i;-><init>(Lcom/google/android/maps/driveabout/power/g;Landroid/view/Window;Lcom/google/android/maps/driveabout/power/c;FLaa/D;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/power/i;)Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/i;->f:Landroid/view/Window;

    return-object v0
.end method

.method public static a()Lcom/google/android/maps/driveabout/power/h;
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/power/h;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/power/h;-><init>()V

    return-object v0
.end method

.method public static a(LF/L;)V
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/power/i;->d:Lcom/google/android/maps/driveabout/power/a;

    invoke-virtual {p0, v0}, LF/L;->a(LF/G;)V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/google/android/maps/driveabout/power/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/maps/driveabout/power/i;->b:Lcom/google/android/maps/driveabout/power/i;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Veto has been cast by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/power/i;->f(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/maps/driveabout/power/i;->c:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/power/i;)F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/power/i;->h:F

    return v0
.end method

.method static synthetic b()Lcom/google/android/maps/driveabout/power/i;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/power/i;->b:Lcom/google/android/maps/driveabout/power/i;

    return-object v0
.end method

.method public static b(LF/L;)V
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/power/i;->d:Lcom/google/android/maps/driveabout/power/a;

    invoke-virtual {p0, v0}, LF/L;->b(LF/G;)V

    return-void
.end method

.method public static declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/google/android/maps/driveabout/power/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/maps/driveabout/power/i;->c:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/i;->e:Lcom/google/android/maps/driveabout/power/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/i;->f:Landroid/view/Window;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/i;->e:Lcom/google/android/maps/driveabout/power/g;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/power/i;->l:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/power/g;->a(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public static declared-synchronized c(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/google/android/maps/driveabout/power/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/maps/driveabout/power/i;->b:Lcom/google/android/maps/driveabout/power/i;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/power/i;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/power/i;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/power/i;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/power/i;)I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/power/i;->k:I

    return v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/i;->e:Lcom/google/android/maps/driveabout/power/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/i;->f:Landroid/view/Window;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/i;->e:Lcom/google/android/maps/driveabout/power/g;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/power/i;->l:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/power/g;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/i;->e:Lcom/google/android/maps/driveabout/power/g;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/power/i;->m:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/power/g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static declared-synchronized d(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/google/android/maps/driveabout/power/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/maps/driveabout/power/i;->b:Lcom/google/android/maps/driveabout/power/i;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/power/i;->f(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/i;->i:Laa/D;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/i;->i:Laa/D;

    invoke-virtual {v0}, Laa/D;->g()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/i;->i:Laa/D;

    iget v1, p0, Lcom/google/android/maps/driveabout/power/i;->j:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Laa/D;->a(J)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/power/i;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/maps/driveabout/power/i;->f(Lcom/google/android/maps/driveabout/power/i;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/power/i;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/power/i;->c()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/power/i;->e()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/power/i;->h()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/power/i;->k:I

    goto :goto_0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/i;->i:Laa/D;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/i;->i:Laa/D;

    invoke-virtual {v0}, Laa/D;->g()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/i;->i:Laa/D;

    invoke-virtual {v0}, Laa/D;->e()V

    goto :goto_0
.end method

.method private static declared-synchronized f(Lcom/google/android/maps/driveabout/power/i;)V
    .locals 2

    const-class v0, Lcom/google/android/maps/driveabout/power/i;

    monitor-enter v0

    :try_start_0
    const-string v1, "New power manager created"

    invoke-static {v1}, Lcom/google/android/maps/driveabout/power/i;->d(Ljava/lang/String;)V

    sput-object p0, Lcom/google/android/maps/driveabout/power/i;->b:Lcom/google/android/maps/driveabout/power/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private f(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/power/i;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/power/i;->d()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/power/i;->f()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/power/i;->i()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/power/i;->k:I

    goto :goto_0
.end method

.method private g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/i;->g:Lcom/google/android/maps/driveabout/power/c;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/power/c;->a()Z

    move-result v0

    return v0
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/i;->i:Laa/D;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/power/i;->j:I

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ck;->a(I)V

    goto :goto_0
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/i;->i:Laa/D;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x7d0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ck;->a(I)V

    goto :goto_0
.end method
