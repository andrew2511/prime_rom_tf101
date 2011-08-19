.class public Lcom/google/android/maps/driveabout/vector/VectorMapActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

.field private b:Lcom/google/android/maps/driveabout/vector/s;

.field private final c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bc;->a:[Ljava/lang/String;

    const-string v1, "DriveAbout"

    const v2, 0x7f060003

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bc;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;ILac/y;)V

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/s;->a(Landroid/os/Bundle;)Lcom/google/android/maps/driveabout/vector/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->b:Lcom/google/android/maps/driveabout/vector/s;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bM;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/bM;->e()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e()V

    :cond_1
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bM;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/bM;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->v()V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bM;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/bM;->v()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h()Lcom/google/android/maps/driveabout/vector/bD;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/vector/s;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/vector/s;-><init>(Lcom/google/android/maps/driveabout/vector/bI;)V

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/s;->b(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
