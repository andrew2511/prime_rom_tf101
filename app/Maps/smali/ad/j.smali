.class final Lad/j;
.super Lad/i;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lak/h;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lak/h;Ljava/lang/Runnable;Z)V
    .locals 0

    iput-object p2, p0, Lad/j;->a:Landroid/content/Context;

    iput-object p3, p0, Lad/j;->b:Lak/h;

    iput-object p4, p0, Lad/j;->c:Ljava/lang/Runnable;

    iput-boolean p5, p0, Lad/j;->d:Z

    invoke-direct {p0, p1}, Lad/i;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public aA_()V
    .locals 5

    iget-object v0, p0, Lad/j;->a:Landroid/content/Context;

    iget-object v1, p0, Lad/j;->b:Lak/h;

    iget-object v2, p0, Lad/j;->c:Ljava/lang/Runnable;

    const-string v3, "NavigationParameters.data"

    iget-boolean v4, p0, Lad/j;->d:Z

    if-eqz v4, :cond_0

    const-string v4, "NavZoomTables.data"

    :goto_0
    invoke-static {v0, v1, v2, v3, v4}, Lad/b;->a(Landroid/content/Context;Lak/h;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v4, "ZoomTables.data"

    goto :goto_0
.end method
