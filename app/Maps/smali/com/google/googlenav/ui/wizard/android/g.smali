.class Lcom/google/googlenav/ui/wizard/android/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/android/k;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/android/k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/android/g;->a:Lcom/google/googlenav/ui/wizard/android/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/g;->a:Lcom/google/googlenav/ui/wizard/android/k;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/android/k;->a:Lcom/google/googlenav/ui/wizard/android/f;

    sget-object v1, Lh/dP;->a:Lh/dP;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/android/f;->a(Lh/dP;)V

    const/4 v0, 0x1

    return v0
.end method
