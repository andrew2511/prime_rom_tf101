.class public abstract LaY/c;
.super LT/a;


# instance fields
.field private final a:LaU/a;

.field private b:Ljava/lang/Runnable;

.field private final c:Ljava/util/concurrent/locks/Lock;

.field private d:Z


# direct methods
.method public constructor <init>(LT/c;LaU/a;)V
    .locals 1

    invoke-direct {p0, p1}, LT/a;-><init>(LT/c;)V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, LaY/c;->c:Ljava/util/concurrent/locks/Lock;

    iput-object p2, p0, LaY/c;->a:LaU/a;

    invoke-direct {p0}, LaY/c;->q()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, LaY/c;->b:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(LaY/c;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, LaY/c;->c:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic a(LaY/c;Z)Z
    .locals 0

    iput-boolean p1, p0, LaY/c;->d:Z

    return p1
.end method

.method static synthetic b(LaY/c;)Z
    .locals 1

    iget-boolean v0, p0, LaY/c;->d:Z

    return v0
.end method

.method private q()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, LaY/d;

    invoke-direct {v0, p0}, LaY/d;-><init>(LaY/c;)V

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, LaY/c;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, LaY/c;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LaY/c;->d:Z

    iget-object v0, p0, LaY/c;->a:LaU/a;

    iget-object v1, p0, LaY/c;->b:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, LaY/c;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, LaY/c;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected abstract o()V
.end method
