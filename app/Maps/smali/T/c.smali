.class public LT/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:Ljava/util/Vector;

.field protected b:Ljava/util/Vector;

.field protected c:Ljava/lang/Object;

.field protected final d:Lac/p;

.field protected e:LaJ/c;

.field protected f:[Ljava/lang/Thread;

.field protected g:Ljava/lang/String;

.field protected h:Z

.field private final i:Lag/g;

.field private j:I

.field private k:I

.field private l:I

.field private final m:Ljava/util/Hashtable;

.field private final n:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(LaJ/c;)V
    .locals 2

    const-string v0, "TaskRunner"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, LT/c;-><init>(LaJ/c;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(LaJ/c;Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LT/c;->a:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LT/c;->b:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LT/c;->c:Ljava/lang/Object;

    const/16 v0, 0x7f

    iput v0, p0, LT/c;->j:I

    const/16 v0, 0xff

    iput v0, p0, LT/c;->k:I

    iput v1, p0, LT/c;->l:I

    iput-boolean v1, p0, LT/c;->h:Z

    iput-object p1, p0, LT/c;->e:LaJ/c;

    iput-object p2, p0, LT/c;->g:Ljava/lang/String;

    new-array v0, p3, [Ljava/lang/Thread;

    iput-object v0, p0, LT/c;->f:[Ljava/lang/Thread;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    iput-object v0, p0, LT/c;->d:Lac/p;

    iput-object v2, p0, LT/c;->m:Ljava/util/Hashtable;

    iput-object v2, p0, LT/c;->n:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lag/g;->a(Ljava/lang/Class;)Lag/g;

    move-result-object v0

    iput-object v0, p0, LT/c;->i:Lag/g;

    return-void
.end method

.method private d(LT/b;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method private e(LT/b;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, LT/c;->j:I

    return v0
.end method

.method a(LT/a;)V
    .locals 10

    iget-object v1, p0, LT/c;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, LT/a;->e()J

    move-result-wide v2

    const/4 v0, 0x0

    iget-object v4, p0, LT/c;->b:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_1

    add-int v0, v5, v4

    div-int/lit8 v6, v0, 0x2

    iget-object v0, p0, LT/c;->b:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT/a;

    invoke-virtual {v0}, LT/a;->e()J

    move-result-wide v7

    cmp-long v0, v2, v7

    if-ltz v0, :cond_0

    add-int/lit8 v0, v6, 0x1

    move v9, v4

    move v4, v0

    move v0, v9

    :goto_1
    move v5, v4

    move v4, v0

    goto :goto_0

    :cond_0
    move v0, v6

    move v4, v5

    goto :goto_1

    :cond_1
    iget-object v0, p0, LT/c;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1, v5}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LT/a;->b(I)V

    iget-object v0, p0, LT/c;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(LT/b;)V
    .locals 2

    invoke-virtual {p1}, LT/b;->k()V

    iget-object v0, p0, LT/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, LT/b;->j()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    monitor-exit v0

    return-void

    :pswitch_1
    invoke-virtual {p1}, LT/b;->c()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_2
    const/4 v1, 0x4

    :try_start_1
    invoke-virtual {p1, v1}, LT/b;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method a(LT/d;)V
    .locals 7

    iget-object v1, p0, LT/c;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, LT/d;->p()I

    move-result v2

    const/4 v0, 0x0

    iget-object v3, p0, LT/c;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_1

    add-int v0, v4, v3

    div-int/lit8 v5, v0, 0x2

    iget-object v0, p0, LT/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT/d;

    invoke-virtual {v0}, LT/d;->p()I

    move-result v0

    if-gt v2, v0, :cond_0

    add-int/lit8 v0, v5, 0x1

    move v6, v3

    move v3, v0

    move v0, v6

    :goto_1
    move v4, v3

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v5

    move v3, v4

    goto :goto_1

    :cond_1
    iget-object v0, p0, LT/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    invoke-virtual {p1}, LT/d;->l()V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, LT/d;->b(I)V

    iget-object v0, p0, LT/c;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(LT/b;)I
    .locals 2

    iget-object v0, p0, LT/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, LT/b;->d()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected b()Z
    .locals 5

    const/4 v1, 0x3

    iget-boolean v0, p0, LT/c;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, LT/c;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LT/c;->i:Lag/g;

    invoke-virtual {v0, v1}, Lag/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LT/c;->i:Lag/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitForSomethingToDo(): task queue empty @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LT/c;->d:Lac/p;

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lag/g;->c(Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, LT/c;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LT/c;->i:Lag/g;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lag/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LT/c;->i:Lag/g;

    const-string v1, "waitForSomethingToDo(): timer task queue empty"

    invoke-virtual {v0, v1}, Lag/g;->c(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, LT/c;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-boolean v0, p0, LT/c;->h:Z

    return v0

    :cond_3
    :try_start_1
    iget-object v0, p0, LT/c;->b:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT/a;

    iget-object v1, p0, LT/c;->i:Lag/g;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lag/g;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, LT/c;->i:Lag/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitForSomethingToDo(): scheduled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LT/a;->e()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lag/g;->c(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v0}, LT/a;->e()J

    move-result-wide v0

    iget-object v2, p0, LT/c;->d:Lac/p;

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, LT/c;->i:Lag/g;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lag/g;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, LT/c;->i:Lag/g;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waitForSomethingToDo(): #1 delta = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lag/g;->c(Ljava/lang/Object;)V

    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    iget-object v2, p0, LT/c;->c:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, LT/c;->i:Lag/g;

    const-string v2, "exception thrown while waiting"

    invoke-virtual {v1, v2, v0}, Lag/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected c()LT/d;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v1, 0x0

    iget-object v0, p0, LT/c;->i:Lag/g;

    invoke-virtual {v0, v8}, Lag/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LT/c;->i:Lag/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextTaskToRun(): moving expired tasks @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LT/c;->d:Lac/p;

    invoke-interface {v3}, Lac/p;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lag/g;->c(Ljava/lang/Object;)V

    iget-object v0, p0, LT/c;->i:Lag/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextTaskToRun(): timer queue length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LT/c;->b:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lag/g;->c(Ljava/lang/Object;)V

    iget-object v0, p0, LT/c;->i:Lag/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextTaskToRun(): priority queue length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LT/c;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lag/g;->c(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v0, p0, LT/c;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, LT/c;->b:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT/a;

    iget-object v2, p0, LT/c;->i:Lag/g;

    invoke-virtual {v2, v8}, Lag/g;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, LT/c;->i:Lag/g;

    const-string v3, "getNextTaskToRun(): timerTask = "

    invoke-virtual {v2, v3, v0}, Lag/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, LT/a;->e()J

    move-result-wide v2

    iget-object v4, p0, LT/c;->d:Lac/p;

    invoke-interface {v4}, Lac/p;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, p0, LT/c;->i:Lag/g;

    invoke-virtual {v4, v8}, Lag/g;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, LT/c;->i:Lag/g;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNextTaskToRun(): current = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, LT/c;->d:Lac/p;

    invoke-interface {v6}, Lac/p;->a()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lag/g;->c(Ljava/lang/Object;)V

    iget-object v4, p0, LT/c;->i:Lag/g;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNextTaskToRun(): scheduled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, LT/a;->e()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lag/g;->c(Ljava/lang/Object;)V

    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_4

    iget-object v4, p0, LT/c;->i:Lag/g;

    invoke-virtual {v4, v8}, Lag/g;->a(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, LT/c;->i:Lag/g;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gettNextTaskToRun(): #2 delta = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lag/g;->c(Ljava/lang/Object;)V

    :cond_3
    iget-object v2, p0, LT/c;->b:Ljava/util/Vector;

    invoke-virtual {v2, v9}, Ljava/util/Vector;->removeElementAt(I)V

    invoke-virtual {p0, v0}, LT/c;->a(LT/d;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, LT/c;->i:Lag/g;

    invoke-virtual {v0, v8}, Lag/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, LT/c;->i:Lag/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextTask(): getting available task @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LT/c;->d:Lac/p;

    invoke-interface {v3}, Lac/p;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lag/g;->c(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, LT/c;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, LT/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT/d;

    invoke-virtual {v0, v8}, LT/d;->b(I)V

    iget-object v1, p0, LT/c;->a:Ljava/util/Vector;

    invoke-virtual {v1, v9}, Ljava/util/Vector;->removeElementAt(I)V

    :goto_1
    return-object v0

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method c(LT/b;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, LT/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, LT/b;->j()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    monitor-exit v0

    move v0, v2

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, LT/c;->b:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LT/b;->b(I)V

    iget-object v1, p0, LT/c;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    move v0, v3

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, LT/c;->a:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LT/b;->b(I)V

    iget-object v1, p0, LT/c;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    move v0, v3

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LT/b;->b(I)V

    monitor-exit v0

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public d()V
    .locals 6

    iget-object v0, p0, LT/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LT/c;->h:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, LT/c;->h:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, LT/c;->f:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, LT/c;->f:[Ljava/lang/Thread;

    iget-object v3, p0, LT/c;->e:LaJ/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, LT/c;->g:Ljava/lang/String;

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

    iget-object v2, p0, LT/c;->f:[Ljava/lang/Thread;

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

.method public e()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, LT/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LT/c;->h:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, LT/c;->h:Z

    move v1, v3

    :goto_0
    iget-object v2, p0, LT/c;->f:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, LT/c;->f:[Ljava/lang/Thread;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, LT/c;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_1
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
    .locals 6

    const/4 v5, 0x3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v1, p0, LT/c;->i:Lag/g;

    invoke-virtual {v1, v5}, Lag/g;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LT/c;->i:Lag/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run(): loop [running="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, LT/c;->h:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lag/g;->c(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, LT/c;->c:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v2, p0, LT/c;->i:Lag/g;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lag/g;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, LT/c;->i:Lag/g;

    const-string v3, "run(): clean up"

    invoke-virtual {v2, v3}, Lag/g;->c(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0}, LT/d;->j()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LT/d;->b(I)V

    invoke-virtual {v0}, LT/d;->c()V

    :cond_3
    :goto_1
    invoke-virtual {p0}, LT/c;->b()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, LT/c;->i:Lag/g;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lag/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, LT/c;->i:Lag/g;

    const-string v2, "run(): exiting loop"

    invoke-virtual {v0, v2}, Lag/g;->c(Ljava/lang/Object;)V

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LT/c;->i:Lag/g;

    invoke-virtual {v0, v5}, Lag/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, LT/c;->i:Lag/g;

    const-string v1, "run(): end "

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lag/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void

    :cond_6
    :try_start_1
    invoke-virtual {v0}, LT/d;->j()I

    move-result v2

    if-ne v2, v5, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LT/d;->b(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    :try_start_2
    invoke-virtual {p0}, LT/c;->c()LT/d;

    move-result-object v0

    iget-object v2, p0, LT/c;->i:Lag/g;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lag/g;->a(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, LT/c;->i:Lag/g;

    invoke-direct {p0, v0}, LT/c;->d(LT/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lag/g;->c(Ljava/lang/Object;)V

    :cond_8
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, LT/c;->i:Lag/g;

    invoke-virtual {v1, v5}, Lag/g;->a(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, LT/c;->i:Lag/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run(): running task @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LT/c;->d:Lac/p;

    invoke-interface {v3}, Lac/p;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lag/g;->c(Ljava/lang/Object;)V

    :cond_9
    if-eqz v0, :cond_0

    invoke-virtual {v0}, LT/d;->m()V

    :try_start_3
    invoke-virtual {v0}, LT/d;->g()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    iget-object v1, p0, LT/c;->i:Lag/g;

    invoke-virtual {v1, v5}, Lag/g;->a(I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, LT/c;->i:Lag/g;

    invoke-direct {p0, v0}, LT/c;->e(LT/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lag/g;->c(Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {v0}, LT/d;->n()V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, LT/c;->i:Lag/g;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runtime exception thrown by task ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lag/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
