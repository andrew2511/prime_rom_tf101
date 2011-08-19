.class public Lcom/google/android/maps/driveabout/vector/bf;
.super Lcom/google/android/maps/driveabout/vector/I;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/vector/cb;

.field private b:Lcom/google/android/maps/driveabout/vector/cv;

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/I;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(IIZ)Lcom/google/android/maps/driveabout/vector/cb;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bf;->a:Lcom/google/android/maps/driveabout/vector/cb;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/I;->a(IIZ)Lcom/google/android/maps/driveabout/vector/cb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bf;->a:Lcom/google/android/maps/driveabout/vector/cb;

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bf;->c:I

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/bf;->d:I

    iput-boolean p3, p0, Lcom/google/android/maps/driveabout/vector/bf;->e:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bf;->a:Lcom/google/android/maps/driveabout/vector/cb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(IZ)Lcom/google/android/maps/driveabout/vector/cv;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bf;->b:Lcom/google/android/maps/driveabout/vector/cv;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/I;->a(IZ)Lcom/google/android/maps/driveabout/vector/cv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bf;->b:Lcom/google/android/maps/driveabout/vector/cv;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bf;->b:Lcom/google/android/maps/driveabout/vector/cv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
