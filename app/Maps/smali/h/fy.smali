.class Lh/fy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lh/fJ;


# direct methods
.method constructor <init>(Lh/fJ;)V
    .locals 0

    iput-object p1, p0, Lh/fy;->a:Lh/fJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lh/fy;->a:Lh/fJ;

    invoke-static {v0}, Lh/fJ;->a(Lh/fJ;)Lh/R;

    move-result-object v0

    invoke-interface {v0}, Lh/R;->d()V

    return-void
.end method
