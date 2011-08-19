.class Lcom/google/android/maps/driveabout/app/v;
.super Lcom/google/android/maps/driveabout/app/cB;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/app/ax;

.field private final d:Ljava/util/ArrayList;

.field private e:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ax;ZZ)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/cB;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/v;->d:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/v;->a:Lcom/google/android/maps/driveabout/app/ax;

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/v;->d:Ljava/util/ArrayList;

    const v1, 0x7f0b00af

    const v2, 0x7f0200fe

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/aQ;->a(II)Lcom/google/android/maps/driveabout/app/aQ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/v;->d:Ljava/util/ArrayList;

    const v1, 0x7f0b00ae

    const v2, 0x7f020100

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/aQ;->a(II)Lcom/google/android/maps/driveabout/app/aQ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/v;->d:Ljava/util/ArrayList;

    const v1, 0x7f0b00b0

    const v2, 0x7f0200fd

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/aQ;->a(II)Lcom/google/android/maps/driveabout/app/aQ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/v;->d:Ljava/util/ArrayList;

    const v1, 0x7f0b00b1

    const v2, 0x7f0200ff

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/aQ;->a(II)Lcom/google/android/maps/driveabout/app/aQ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/v;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/google/android/maps/driveabout/app/aQ;->a()Lcom/google/android/maps/driveabout/app/aQ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/v;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/v;->c:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dt;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/dt;-><init>(Lcom/google/android/maps/driveabout/app/v;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/v;LG/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/v;->b(LG/y;)V

    return-void
.end method

.method private b(LG/y;)V
    .locals 4

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/v;->e:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/v;->e:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/v;->d:Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/v;->a:Lcom/google/android/maps/driveabout/app/ax;

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v2}, Lcom/google/android/maps/driveabout/app/ax;->a(LG/y;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_1

    const v2, 0x7f0b00b3

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/aQ;->a(I)Lcom/google/android/maps/driveabout/app/aQ;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/u;

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/app/aQ;->a(LF/u;I)Lcom/google/android/maps/driveabout/app/aQ;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/v;->b(Ljava/util/ArrayList;)V

    goto :goto_0
.end method


# virtual methods
.method public a(LG/y;)V
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/app/du;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/app/du;-><init>(Lcom/google/android/maps/driveabout/app/v;LG/y;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/du;->start()V

    return-void
.end method
