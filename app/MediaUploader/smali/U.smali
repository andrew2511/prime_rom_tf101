.class public abstract LU;
.super Ljava/lang/Object;


# static fields
.field private static final a:[LU;


# instance fields
.field protected b:LW;

.field private c:Ljava/lang/Runnable;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [LU;

    sput-object v0, LU;->a:[LU;

    return-void
.end method

.method public constructor <init>(LW;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU;->b:LW;

    iput-object p2, p0, LU;->c:Ljava/lang/Runnable;

    return-void
.end method

.method private h()[LU;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, LU;->a:[LU;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected a()V
    .locals 1

    iget-object v0, p0, LU;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, LU;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected final a(I)V
    .locals 0

    iput p1, p0, LU;->d:I

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, LU;->b:LW;

    invoke-virtual {v0, p0}, LW;->b(LU;)I

    move-result v0

    return v0
.end method

.method protected abstract c()I
.end method

.method protected final d()I
    .locals 1

    iget v0, p0, LU;->d:I

    return v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, LU;->b:LW;

    invoke-virtual {v0, p0}, LW;->a(LU;)V

    return-void
.end method

.method protected abstract f()V
.end method

.method protected g()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, LU;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, LU;->h()[LU;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, LU;->e()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
