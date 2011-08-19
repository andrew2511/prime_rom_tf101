.class Lh/cG;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lh/el;


# direct methods
.method constructor <init>(Lh/el;)V
    .locals 0

    iput-object p1, p0, Lh/cG;->a:Lh/el;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lh/cG;->a:Lh/el;

    iget-object v0, v0, Lh/el;->c:Lh/eA;

    invoke-interface {v0}, Lh/eA;->a()V

    iget-object v0, p0, Lh/cG;->a:Lh/el;

    iget-object v0, v0, Lh/el;->d:Lh/bc;

    invoke-virtual {v0}, Lh/bc;->v()V

    return-void
.end method
