.class public final LaT;
.super LaQ;


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Ljava/lang/Object;

.field private c:Lal;

.field private d:Law;

.field private e:LW;

.field private f:LV;

.field private g:I


# direct methods
.method public constructor <init>(Lal;LW;Law;)V
    .locals 2

    invoke-direct {p0}, LaQ;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaT;->a:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LaT;->b:Ljava/lang/Object;

    const/16 v0, 0x4000

    iput v0, p0, LaT;->g:I

    iput-object p1, p0, LaT;->c:Lal;

    iput-object p2, p0, LaT;->e:LW;

    iput-object p3, p0, LaT;->d:Law;

    new-instance v0, LV;

    new-instance v1, LaY;

    invoke-direct {v1, p0}, LaY;-><init>(LaT;)V

    invoke-direct {v0, p2, v1}, LV;-><init>(LW;Ljava/lang/Runnable;)V

    iput-object v0, p0, LaT;->f:LV;

    return-void
.end method

.method static synthetic a(LaT;)Law;
    .locals 1

    iget-object v0, p0, LaT;->d:Law;

    return-object v0
.end method

.method static synthetic b(LaT;)I
    .locals 1

    iget v0, p0, LaT;->g:I

    return v0
.end method

.method static synthetic c(LaT;)Lal;
    .locals 1

    iget-object v0, p0, LaT;->c:Lal;

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Le;->a()V

    return-void
.end method

.method static synthetic d(LaT;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LaT;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(LaT;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, LaT;->a:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic f(LaT;)LW;
    .locals 1

    iget-object v0, p0, LaT;->e:LW;

    return-object v0
.end method

.method static synthetic g(LaT;)LV;
    .locals 1

    iget-object v0, p0, LaT;->f:LV;

    return-object v0
.end method


# virtual methods
.method public final a(LaO;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.submitRequest("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Le;->a()V

    iget-object v1, p0, LaT;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, LaT;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, LaT;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaW;

    iget-object v0, v0, LaW;->a:LaO;

    if-ne v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "request is already submitted"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, LaT;->a:Ljava/util/Vector;

    new-instance v2, LaW;

    invoke-direct {v2, p0, p1}, LaW;-><init>(LaT;LaO;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, LaT;->f:LV;

    invoke-virtual {v0}, LV;->e()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final b(LaO;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.cancelRequest("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Le;->a()V

    iget-object v1, p0, LaT;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, LaT;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, LaT;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaW;

    iget-object v0, v0, LaW;->a:LaO;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, LaT;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->removeElementAt(I)V

    new-instance v0, LV;

    iget-object v2, p0, LaT;->e:LW;

    new-instance v3, LaU;

    invoke-direct {v3, p1}, LaU;-><init>(LaO;)V

    invoke-direct {v0, v2, v3}, LV;-><init>(LW;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LV;->e()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
