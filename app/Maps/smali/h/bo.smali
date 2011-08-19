.class Lh/bo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lh/eP;


# direct methods
.method constructor <init>(Lh/eP;)V
    .locals 0

    iput-object p1, p0, Lh/bo;->a:Lh/eP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lh/bo;->a:Lh/eP;

    iget-object v0, v0, Lh/eP;->a:Lh/ar;

    invoke-static {v0}, Lh/ar;->a(Lh/ar;)V

    iget-object v0, p0, Lh/bo;->a:Lh/eP;

    iget-object v0, v0, Lh/eP;->a:Lh/ar;

    invoke-virtual {v0}, Lh/ar;->v()V

    iget-object v0, p0, Lh/bo;->a:Lh/eP;

    iget-object v0, v0, Lh/eP;->a:Lh/ar;

    iget-object v1, p0, Lh/bo;->a:Lh/eP;

    iget-object v1, v1, Lh/eP;->a:Lh/ar;

    invoke-virtual {v1}, Lh/ar;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh/ar;->a(Lh/ar;Ljava/lang/String;)V

    return-void
.end method
