.class Lh/dA;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lh/cL;


# direct methods
.method constructor <init>(Lh/cL;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lh/dA;->b:Lh/cL;

    iput-object p2, p0, Lh/dA;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lh/dA;->b:Lh/cL;

    iget-object v1, p0, Lh/dA;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lh/cL;->b(Lh/cL;Landroid/view/View;)V

    return-void
.end method
