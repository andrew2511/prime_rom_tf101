.class public Lcom/google/android/maps/driveabout/app/db;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field private a:LF/M;

.field private b:I

.field private final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/db;->c:Ljava/util/ArrayList;

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/db;->c:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/db;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/db;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(LF/y;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/db;->a:LF/M;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/db;->a:LF/M;

    invoke-virtual {p1}, LF/y;->i()I

    move-result v1

    invoke-virtual {v0, v1}, LF/M;->a(I)LF/y;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/db;->b:I

    invoke-virtual {p1}, LF/y;->i()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, LF/y;->i()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/db;->b:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/db;->a()V

    :cond_0
    return-void
.end method

.method public a(LF/M;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/db;->a:LF/M;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/db;->a:LF/M;

    iput v1, p0, Lcom/google/android/maps/driveabout/app/db;->b:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/db;->a()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/db;->a:LF/M;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/db;->a:LF/M;

    invoke-virtual {v0}, LF/M;->j()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/db;->b:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/db;->b:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/db;->a:LF/M;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/db;->a:LF/M;

    invoke-virtual {v1, v0}, LF/M;->a(I)LF/y;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/db;->b:I

    add-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;-><init>(Landroid/content/Context;)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/db;->a:LF/M;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/db;->b:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, LF/M;->a(I)LF/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a(LF/y;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/db;->a:LF/M;

    invoke-virtual {v1}, LF/M;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a(I)V

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a(Z)V

    return-object v0

    :cond_1
    check-cast p2, Lcom/google/android/maps/driveabout/app/DirectionsListItem;

    move-object v0, p2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/db;->a:LF/M;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/db;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/db;->c:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/db;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/db;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/db;->c:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/db;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
