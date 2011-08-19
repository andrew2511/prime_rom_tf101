.class Lcom/google/googlenav/android/G;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Z

.field final synthetic c:Lcom/google/googlenav/android/N;

.field final synthetic d:Lak/c;

.field final synthetic e:Lcom/google/googlenav/android/w;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/w;Landroid/app/ProgressDialog;ZLcom/google/googlenav/android/N;Lak/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/android/G;->e:Lcom/google/googlenav/android/w;

    iput-object p2, p0, Lcom/google/googlenav/android/G;->a:Landroid/app/ProgressDialog;

    iput-boolean p3, p0, Lcom/google/googlenav/android/G;->b:Z

    iput-object p4, p0, Lcom/google/googlenav/android/G;->c:Lcom/google/googlenav/android/N;

    iput-object p5, p0, Lcom/google/googlenav/android/G;->d:Lak/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/android/G;->a:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/h;->a(Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/google/googlenav/android/G;->e:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/android/G;->e:Lcom/google/googlenav/android/w;

    invoke-static {v0}, Lcom/google/googlenav/android/w;->d(Lcom/google/googlenav/android/w;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/googlenav/android/G;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/android/G;->e:Lcom/google/googlenav/android/w;

    invoke-static {v0}, Lcom/google/googlenav/android/w;->e(Lcom/google/googlenav/android/w;)Lak/h;

    move-result-object v0

    invoke-virtual {v0}, Lak/h;->f()V

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/android/G;->e:Lcom/google/googlenav/android/w;

    invoke-static {v0}, Lcom/google/googlenav/android/w;->f(Lcom/google/googlenav/android/w;)V

    iget-object v0, p0, Lcom/google/googlenav/android/G;->c:Lcom/google/googlenav/android/N;

    invoke-interface {v0}, Lcom/google/googlenav/android/N;->a()V

    iget-object v0, p0, Lcom/google/googlenav/android/G;->e:Lcom/google/googlenav/android/w;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/android/w;->a(Lcom/google/googlenav/android/w;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/googlenav/android/G;->e:Lcom/google/googlenav/android/w;

    invoke-static {v0}, Lcom/google/googlenav/android/w;->e(Lcom/google/googlenav/android/w;)Lak/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/android/G;->d:Lak/c;

    invoke-virtual {v0, v1}, Lak/h;->b(Lak/c;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/googlenav/android/G;->e:Lcom/google/googlenav/android/w;

    invoke-static {v1}, Lcom/google/googlenav/android/w;->e(Lcom/google/googlenav/android/w;)Lak/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/android/G;->d:Lak/c;

    invoke-virtual {v1, v2}, Lak/h;->b(Lak/c;)V

    throw v0
.end method
