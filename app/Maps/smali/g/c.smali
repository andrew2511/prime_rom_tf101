.class public abstract Lg/c;
.super Ljava/lang/Object;

# interfaces
.implements Lp/n;


# instance fields
.field private a:Lg/h;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lg/c;->b:I

    iput v0, p0, Lg/c;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lg/c;->d:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lg/h;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/c;->a:Lg/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lg/c;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract f()Ljava/io/InputStream;
.end method
