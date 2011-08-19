.class Lcom/google/googlenav/android/F;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/an;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/google/googlenav/android/N;

.field final synthetic d:Landroid/app/ProgressDialog;

.field final synthetic e:Z

.field final synthetic f:Lcom/google/googlenav/android/w;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/w;Ljava/lang/String;Lcom/google/googlenav/ui/android/an;Landroid/os/Handler;Lcom/google/googlenav/android/N;Landroid/app/ProgressDialog;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/android/F;->f:Lcom/google/googlenav/android/w;

    iput-object p3, p0, Lcom/google/googlenav/android/F;->a:Lcom/google/googlenav/ui/android/an;

    iput-object p4, p0, Lcom/google/googlenav/android/F;->b:Landroid/os/Handler;

    iput-object p5, p0, Lcom/google/googlenav/android/F;->c:Lcom/google/googlenav/android/N;

    iput-object p6, p0, Lcom/google/googlenav/android/F;->d:Landroid/app/ProgressDialog;

    iput-boolean p7, p0, Lcom/google/googlenav/android/F;->e:Z

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/android/F;->a:Lcom/google/googlenav/ui/android/an;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/android/an;->a(Z)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lac/m;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/android/F;->f:Lcom/google/googlenav/android/w;

    iget-object v1, p0, Lcom/google/googlenav/android/F;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/googlenav/android/F;->c:Lcom/google/googlenav/android/N;

    iget-object v3, p0, Lcom/google/googlenav/android/F;->d:Landroid/app/ProgressDialog;

    iget-boolean v4, p0, Lcom/google/googlenav/android/F;->e:Z

    iget-object v5, p0, Lcom/google/googlenav/android/F;->a:Lcom/google/googlenav/ui/android/an;

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/android/w;->a(Lcom/google/googlenav/android/w;Landroid/os/Handler;Lcom/google/googlenav/android/N;Landroid/app/ProgressDialog;ZLak/c;)V

    return-void
.end method
