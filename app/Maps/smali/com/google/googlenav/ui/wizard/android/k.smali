.class Lcom/google/googlenav/ui/wizard/android/k;
.super Ljava/lang/Object;

# interfaces
.implements LI/j;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/android/f;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/android/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/android/k;->a:Lcom/google/googlenav/ui/wizard/android/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 3

    const v2, 0x7f0201f8

    const/16 v0, 0x126

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    new-instance v1, Lcom/google/googlenav/ui/wizard/android/h;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/android/h;-><init>(Lcom/google/googlenav/ui/wizard/android/k;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/16 v0, 0x128

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    new-instance v1, Lcom/google/googlenav/ui/wizard/android/g;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/android/g;-><init>(Lcom/google/googlenav/ui/wizard/android/k;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method
