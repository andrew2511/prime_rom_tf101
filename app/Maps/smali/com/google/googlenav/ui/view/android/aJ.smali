.class final Lcom/google/googlenav/ui/view/android/aJ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/aY;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aY;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aJ;->a:Lcom/google/googlenav/ui/aY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aJ;->a:Lcom/google/googlenav/ui/aY;

    const/16 v1, 0xf2

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/aY;->a(IILjava/lang/Object;)Z

    const/4 v0, 0x4

    const-string v1, "mb"

    const-string v2, "ct"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/google/googlenav/ui/view/android/K;->ae_()V

    return-void
.end method
