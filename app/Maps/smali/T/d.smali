.class public LT/d;
.super LT/b;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(LT/c;)V
    .locals 2

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1}, LT/c;->a()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, LT/d;-><init>(LT/c;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public constructor <init>(LT/c;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p1}, LT/c;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, LT/d;-><init>(LT/c;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public constructor <init>(LT/c;Ljava/lang/Runnable;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, LT/d;-><init>(LT/c;Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(LT/c;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, LT/c;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, LT/d;-><init>(LT/c;Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(LT/c;Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, LT/b;-><init>(LT/c;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-direct {p0, p4}, LT/d;->a(I)V

    return-void
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, LT/d;->a:I

    return-void
.end method


# virtual methods
.method c()V
    .locals 1

    iget-object v0, p0, LT/d;->e:LT/c;

    invoke-virtual {v0, p0}, LT/c;->a(LT/d;)V

    return-void
.end method

.method d()I
    .locals 1

    iget-object v0, p0, LT/d;->e:LT/c;

    invoke-virtual {v0, p0}, LT/c;->c(LT/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized p()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, LT/d;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
