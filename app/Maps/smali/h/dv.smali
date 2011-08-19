.class Lh/dv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lh/cL;


# direct methods
.method constructor <init>(Lh/cL;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lh/dv;->b:Lh/cL;

    iput-object p2, p0, Lh/dv;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lh/dv;->a:Landroid/view/View;

    iget-object v1, p0, Lh/dv;->b:Lh/cL;

    invoke-static {v1}, Lh/cL;->c(Lh/cL;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lh/dv;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
