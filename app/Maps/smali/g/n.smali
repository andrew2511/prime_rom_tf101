.class Lg/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lg/g;


# direct methods
.method private constructor <init>(Lg/g;)V
    .locals 0

    iput-object p1, p0, Lg/n;->a:Lg/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lg/g;Lg/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/n;-><init>(Lg/g;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lg/n;->a:Lg/g;

    invoke-static {v1}, Lg/g;->d(Lg/g;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lg/n;->a:Lg/g;

    invoke-static {v2}, Lg/g;->e(Lg/g;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lg/n;->a:Lg/g;

    invoke-static {v0}, Lg/g;->e(Lg/g;)Ljava/util/Vector;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/j;

    move-object v0, p0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/j;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
