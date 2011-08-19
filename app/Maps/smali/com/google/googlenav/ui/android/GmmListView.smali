.class public Lcom/google/googlenav/ui/android/GmmListView;
.super Landroid/widget/ListView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->a:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->b:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->c:Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/GmmListView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->a:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->b:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->c:Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/GmmListView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->a:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->b:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->c:Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/GmmListView;->a()V

    return-void
.end method

.method private a()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/google/googlenav/ui/android/GmmListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->a:Ljava/lang/Object;

    monitor-enter v0

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->b:Z

    iget-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTouchModeChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/android/Z;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->c:Z

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchModeChanged(Z)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ListView;->onWindowFocusChanged(Z)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->b:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/googlenav/ui/android/GmmListView;->b:Z

    iget-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->b:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSelectionFromTop(II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->c:Z

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method
