.class public Lcom/google/googlenav/ui/android/ar;
.super Ljava/lang/Object;

# interfaces
.implements LaU/a;
.implements Lax/g;


# instance fields
.field private final a:Ljava/util/List;

.field private b:Landroid/view/View;

.field private c:Ljava/util/List;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    invoke-static {v0}, Lj/X;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ar;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/google/googlenav/ui/android/ar;->d:Landroid/content/Context;

    return-void
.end method

.method private h()Landroid/util/DisplayMetrics;
    .locals 3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ar;->d:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ar;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ar;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ar;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ar;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/googlenav/ui/android/ar;->b:Landroid/view/View;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public a(Lax/e;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ar;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ar;->b:Landroid/view/View;

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ar;->b:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ar;->c:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ar;->c:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ar;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit p0

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ar;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ar;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z[Lax/e;Lax/f;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Lax/e;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ar;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ar;->b:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ar;->h()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ar;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ar;->b:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ar;->h()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ar;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ar;->b:Landroid/view/View;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ar;->a:Ljava/util/List;

    return-object v0
.end method
