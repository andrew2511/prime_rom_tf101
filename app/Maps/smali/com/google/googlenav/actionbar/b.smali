.class Lcom/google/googlenav/actionbar/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/aT;

.field final synthetic b:Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;


# direct methods
.method constructor <init>(Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;Lcom/google/googlenav/ui/aT;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/actionbar/b;->b:Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;

    iput-object p2, p0, Lcom/google/googlenav/actionbar/b;->a:Lcom/google/googlenav/ui/aT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/actionbar/b;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aA()Lcom/google/googlenav/ui/bu;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/bu;->a(ZZ)V

    return-void
.end method
