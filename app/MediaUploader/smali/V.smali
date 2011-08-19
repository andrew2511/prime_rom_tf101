.class public LV;
.super LU;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(LW;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p1}, LW;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, LV;-><init>(LW;Ljava/lang/Runnable;I)V

    return-void
.end method

.method private constructor <init>(LW;Ljava/lang/Runnable;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, LU;-><init>(LW;Ljava/lang/Runnable;)V

    iput p3, p0, LV;->a:I

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    iget-object v0, p0, LV;->b:LW;

    invoke-virtual {v0, p0}, LW;->c(LU;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f()V
    .locals 1

    iget-object v0, p0, LV;->b:LW;

    invoke-virtual {v0, p0}, LW;->a(LV;)V

    return-void
.end method

.method public final declared-synchronized h()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, LV;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
