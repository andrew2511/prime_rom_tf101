.class Lcom/google/android/maps/driveabout/vector/cI;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/google/android/maps/driveabout/vector/J;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GLThreadManager"

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cI;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/vector/co;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cI;-><init>()V

    return-void
.end method

.method private c()V
    .locals 3

    const/high16 v2, 0x2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->b:Z

    if-nez v0, :cond_1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cI;->c:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->c:I

    if-lt v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cI;->e:Z

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cI;->b:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/J;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/vector/J;->a(Lcom/google/android/maps/driveabout/vector/J;Z)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->g:Lcom/google/android/maps/driveabout/vector/J;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->g:Lcom/google/android/maps/driveabout/vector/J;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->d:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cI;->c()V

    const/16 v0, 0x1f01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cI;->c:I

    const/high16 v2, 0x2

    if-ge v1, v2, :cond_0

    const-string v1, "Q3Dimension MSM7500 "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cI;->e:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cI;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "Adreno"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    move v1, v4

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cI;->c()V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/J;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->g:Lcom/google/android/maps/driveabout/vector/J;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->g:Lcom/google/android/maps/driveabout/vector/J;

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cI;->g:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cI;->c()V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->e:Z

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->g:Lcom/google/android/maps/driveabout/vector/J;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->g:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/J;->i()V

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/google/android/maps/driveabout/vector/J;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->g:Lcom/google/android/maps/driveabout/vector/J;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->g:Lcom/google/android/maps/driveabout/vector/J;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method
