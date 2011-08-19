.class Lh/dj;
.super Ljava/lang/Object;

# interfaces
.implements LI/j;


# instance fields
.field final synthetic a:Lh/fS;


# direct methods
.method constructor <init>(Lh/fS;)V
    .locals 0

    iput-object p1, p0, Lh/dj;->a:Lh/fS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 2

    const/16 v0, 0x3ef

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02020a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    new-instance v1, Lh/dS;

    invoke-direct {v1, p0}, Lh/dS;-><init>(Lh/dj;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method
