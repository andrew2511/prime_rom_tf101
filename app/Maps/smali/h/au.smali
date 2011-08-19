.class Lh/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lh/dC;


# direct methods
.method constructor <init>(Lh/dC;)V
    .locals 0

    iput-object p1, p0, Lh/au;->a:Lh/dC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/16 v0, 0x43

    const-string v1, "c"

    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    iget-object v0, p0, Lh/au;->a:Lh/dC;

    invoke-static {v0}, Lh/dC;->a(Lh/dC;)Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->F()V

    iget-object v0, p0, Lh/au;->a:Lh/dC;

    invoke-virtual {v0}, Lh/dC;->v()V

    return-void
.end method
