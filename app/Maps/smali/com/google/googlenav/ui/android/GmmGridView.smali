.class public Lcom/google/googlenav/ui/android/GmmGridView;
.super Landroid/widget/GridView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Z

.field private c:Z

.field private d:Lcom/google/googlenav/ui/android/GridTemplateView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/GmmGridView;->a:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmGridView;->b:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmGridView;->c:Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/GmmGridView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/GmmGridView;->a:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmGridView;->b:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmGridView;->c:Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/GmmGridView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/GmmGridView;->a:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmGridView;->b:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmGridView;->c:Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/GmmGridView;->a()V

    return-void
.end method

.method private a()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/google/googlenav/ui/android/GmmGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/GmmGridView;->d:Lcom/google/googlenav/ui/android/GridTemplateView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/GmmGridView;->d:Lcom/google/googlenav/ui/android/GridTemplateView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/GridTemplateView;->a(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/GmmGridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/GmmGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/GridTemplateView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/GmmGridView;->d:Lcom/google/googlenav/ui/android/GridTemplateView;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/GmmGridView;->d:Lcom/google/googlenav/ui/android/GridTemplateView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/GmmGridView;->d:Lcom/google/googlenav/ui/android/GridTemplateView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/GridTemplateView;->a(Z)V

    :cond_1
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/GmmGridView;->a:Ljava/lang/Object;

    monitor-enter v0

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmGridView;->b:Z

    iget-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmGridView;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/GmmGridView;->a:Ljava/lang/Object;

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

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/GmmGridView;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/android/Z;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/GmmGridView;->c:Z

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchModeChanged(Z)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/GridView;->onWindowFocusChanged(Z)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/GmmGridView;->b:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/GmmGridView;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/googlenav/ui/android/GmmGridView;->b:Z

    iget-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmGridView;->b:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/ui/android/GmmGridView;->a:Ljava/lang/Object;

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
