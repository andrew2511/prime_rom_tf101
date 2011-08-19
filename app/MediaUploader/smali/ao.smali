.class final Lao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ll;

.field private synthetic b:[LaF;

.field private synthetic c:I

.field private synthetic d:Lal;


# direct methods
.method constructor <init>(Lal;Ll;[LaF;I)V
    .locals 0

    iput-object p1, p0, Lao;->d:Lal;

    iput-object p2, p0, Lao;->a:Ll;

    iput-object p3, p0, Lao;->b:[LaF;

    iput p4, p0, Lao;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lao;->a:Ll;

    invoke-interface {v0}, Ll;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lao;->d:Lal;

    iget-object v1, p0, Lao;->b:[LaF;

    iget-object v2, p0, Lao;->a:Ll;

    invoke-interface {v2}, Ll;->c()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lal;->a(Lal;[Ljava/lang/Object;Ljava/lang/Exception;)V

    :goto_0
    iget-object v0, p0, Lao;->d:Lal;

    iget-object v1, p0, Lao;->b:[LaF;

    invoke-static {v0, v1}, Lal;->a(Lal;[Ljava/lang/Object;)V

    iget-object v0, p0, Lao;->d:Lal;

    iget v1, v0, Lal;->b:I

    iget v2, p0, Lao;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Lal;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lao;->a:Ll;

    invoke-interface {v0}, Ll;->b()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lao;->d:Lal;

    iget-object v1, p0, Lao;->a:Ll;

    iget-object v2, p0, Lao;->b:[LaF;

    invoke-static {v0, v1, v2}, Lal;->a(Lal;Ll;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lao;->a:Ll;

    invoke-interface {v1}, Ll;->b()V

    throw v0
.end method
