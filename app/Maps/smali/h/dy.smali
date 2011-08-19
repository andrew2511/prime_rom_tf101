.class Lh/dy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lh/cL;


# direct methods
.method constructor <init>(Lh/cL;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lh/dy;->b:Lh/cL;

    iput-object p2, p0, Lh/dy;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lh/dy;->b:Lh/cL;

    iget-object v1, p0, Lh/dy;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lh/cL;->a(Lh/cL;Landroid/view/View;)V

    return-void
.end method
