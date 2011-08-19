.class public Lat/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final a:Lag/g;


# instance fields
.field protected b:Z

.field private c:Ljava/util/Vector;

.field private d:Ljava/lang/Object;

.field private e:LT/c;

.field private f:LaJ/c;

.field private g:Ln/b;

.field private h:Ljava/lang/String;

.field private i:[Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lat/g;

    invoke-static {v0}, Lag/g;->a(Ljava/lang/Class;)Lag/g;

    move-result-object v0

    sput-object v0, Lat/g;->a:Lag/g;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lat/g;->c:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lat/g;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LT/c;LaJ/c;Ln/b;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lat/g;->c:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lat/g;->d:Ljava/lang/Object;

    iput-object p1, p0, Lat/g;->e:LT/c;

    iput-object p2, p0, Lat/g;->f:LaJ/c;

    iput-object p3, p0, Lat/g;->g:Ln/b;

    iput-object p4, p0, Lat/g;->h:Ljava/lang/String;

    new-array v0, p5, [Ljava/lang/Thread;

    iput-object v0, p0, Lat/g;->i:[Ljava/lang/Thread;

    return-void
.end method

.method static synthetic a(Lat/g;)LT/c;
    .locals 1

    invoke-direct {p0}, Lat/g;->b()LT/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lat/g;Ljava/lang/String;Z)Ln/n;
    .locals 1

    invoke-direct {p0, p1, p2}, Lat/g;->a(Ljava/lang/String;Z)Ln/n;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Ln/n;
    .locals 1

    iget-object v0, p0, Lat/g;->g:Ln/b;

    invoke-interface {v0, p1, p2}, Ln/b;->a(Ljava/lang/String;Z)Ln/n;

    move-result-object v0

    return-object v0
.end method

.method private a(Lat/d;)Z
    .locals 2

    iget-object v0, p0, Lat/g;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lat/g;->c:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lat/g;->c:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lat/g;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic a(Lat/g;Lat/d;)Z
    .locals 1

    invoke-direct {p0, p1}, Lat/g;->a(Lat/d;)Z

    move-result v0

    return v0
.end method

.method private b()LT/c;
    .locals 1

    iget-object v0, p0, Lat/g;->e:LT/c;

    return-object v0
.end method

.method static synthetic b(Lat/g;)Ln/b;
    .locals 1

    iget-object v0, p0, Lat/g;->g:Ln/b;

    return-object v0
.end method

.method private c()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lat/g;->d:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lat/g;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lat/g;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lat/g;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    move v0, v2

    :goto_1
    return v0

    :cond_0
    iget-boolean v0, p0, Lat/g;->b:Z

    if-nez v0, :cond_1

    monitor-exit v1

    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lat/g;->c:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/d;

    iget-object v2, p0, Lat/g;->c:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v1, Lat/g;->a:Lag/g;

    const-string v2, "Executing AsyncHttpRequest "

    invoke-virtual {v1, v2}, Lag/g;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lat/d;->run()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    sget-object v1, Lat/g;->a:Lag/g;

    const-string v2, "AsyncHttpRequestFactory.run(): uncaught exception"

    invoke-virtual {v1, v2, v0}, Lag/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lat/f;
    .locals 1

    new-instance v0, Lat/d;

    invoke-direct {v0, p0, p1, p2}, Lat/d;-><init>(Lat/g;Ljava/lang/String;I)V

    return-object v0
.end method

.method public a()V
    .locals 6

    iget-object v0, p0, Lat/g;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lat/g;->b:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lat/g;->b:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lat/g;->i:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lat/g;->i:[Ljava/lang/Thread;

    iget-object v3, p0, Lat/g;->f:LaJ/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lat/g;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p0}, LaJ/c;->a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lat/g;->i:[Ljava/lang/Thread;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 2

    sget-object v0, Lat/g;->a:Lag/g;

    const-string v1, "run"

    invoke-virtual {v0, v1}, Lag/g;->c(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lat/g;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method
