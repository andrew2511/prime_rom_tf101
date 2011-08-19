.class public final Lag/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:I

.field private static b:Lag/g;

.field private static c:Ljava/util/Vector;

.field private static d:[[Ljava/lang/Object;

.field private static e:Lag/h;


# instance fields
.field private final f:Ljava/lang/Object;

.field private final g:Ljava/lang/StringBuffer;

.field private final h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lag/g;->d()I

    move-result v0

    sput v0, Lag/g;->a:I

    invoke-static {}, Lag/g;->b()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lag/g;->f:Ljava/lang/Object;

    sget v0, Lag/g;->a:I

    iput v0, p0, Lag/g;->i:I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lag/g;->g:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lag/g;->g:Ljava/lang/StringBuffer;

    invoke-static {p1}, Lag/i;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lag/g;->g:Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lag/g;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, p0, Lag/g;->h:I

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/Class;)Lag/g;
    .locals 2

    const-class v0, Lag/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lag/g;->b:Lag/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Ljava/lang/Object;)Lag/g;
    .locals 3

    const-class v0, Lag/g;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lag/g;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lag/g;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a()V
    .locals 0

    invoke-static {}, Lag/g;->c()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)[[Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lag/g;->b(Ljava/lang/String;)[[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a([[Ljava/lang/Object;)[[Ljava/lang/Object;
    .locals 0

    sput-object p0, Lag/g;->d:[[Ljava/lang/Object;

    return-object p0
.end method

.method private static b()V
    .locals 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lag/g;->c:Ljava/util/Vector;

    const-string v0, "${LOG_SOURCE_LEVELS}"

    const-string v1, ""

    invoke-static {v0, v1}, Lag/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lag/g;->b(Ljava/lang/String;)[[Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lag/g;->d:[[Ljava/lang/Object;

    invoke-static {}, Lag/a;->a()Lag/a;

    move-result-object v1

    const-string v2, "/logs/level"

    invoke-virtual {v1, v2}, Lag/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lag/a;->a()Lag/a;

    move-result-object v1

    const-string v2, "/logs/level"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const-string v4, "*=FINE"

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string v4, "*=INFO"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string v4, "*=SEVERE"

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lag/a;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lag/h;

    invoke-direct {v0}, Lag/h;-><init>()V

    sput-object v0, Lag/g;->e:Lag/h;

    invoke-static {}, Lag/a;->a()Lag/a;

    move-result-object v0

    sget-object v1, Lag/g;->e:Lag/h;

    invoke-virtual {v0, v1}, Lag/a;->a(LA/t;)V

    new-instance v0, Lag/g;

    const-class v1, Lag/g;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lag/g;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lag/g;->b:Lag/g;

    return-void
.end method

.method private static b(Ljava/lang/String;)[[Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    check-cast p0, [[Ljava/lang/Object;

    return-object p0
.end method

.method private static declared-synchronized c()V
    .locals 6

    const-class v1, Lag/g;

    monitor-enter v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    :try_start_0
    sget-object v0, Lag/g;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    sget-object v0, Lag/g;->c:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lag/g;

    if-nez v0, :cond_0

    sget-object v0, Lag/g;->c:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->removeElementAt(I)V

    move v0, v2

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Lag/g;->e()V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lag/g;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lag/g;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static d()I
    .locals 2

    const/4 v0, 0x7

    :try_start_0
    invoke-static {v0}, Lag/e;->a(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXCEPTION["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lag/g;->g:Ljava/lang/StringBuffer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lag/g;->g:Ljava/lang/StringBuffer;

    iget v2, p0, Lag/g;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v1, p0, Lag/g;->f:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lag/g;->g:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lag/g;->f:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lag/g;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lag/g;->g:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lag/g;->g:Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Lag/g;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_1

    instance-of v1, p2, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    check-cast p2, Ljava/lang/Throwable;

    iget-object v1, p0, Lag/g;->g:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lag/g;->g:Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lag/g;->g:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lag/g;->g:Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    iget-object v1, p0, Lag/g;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_2
    iget-object v1, p0, Lag/g;->g:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lag/g;->g:Ljava/lang/StringBuffer;

    invoke-direct {p0, p2}, Lag/g;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private e()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Lag/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p5, p6}, Lag/g;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lag/e;->a(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lag/g;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(I)Z
    .locals 1

    iget v0, p0, Lag/g;->i:I

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lag/g;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lag/g;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lag/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lag/g;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
