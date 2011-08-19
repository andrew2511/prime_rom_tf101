.class Lh/ba;
.super Ljava/lang/Object;

# interfaces
.implements LI/n;


# instance fields
.field final synthetic a:Lh/dY;


# direct methods
.method constructor <init>(Lh/dY;)V
    .locals 0

    iput-object p1, p0, Lh/ba;->a:Lh/dY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f03013b

    return v0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x7f020174

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v6}, Lcom/google/googlenav/ui/view/android/a;->requestWindowFeature(I)Z

    :cond_0
    iget-object v2, p0, Lh/ba;->a:Lh/dY;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-static {v2, v0}, Lh/dY;->a(Lh/dY;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    const v0, 0x7f0f00b3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x33c

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0f0004

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lh/ba;->a:Lh/dY;

    new-instance v3, Lh/T;

    iget-object v4, p0, Lh/ba;->a:Lh/dY;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v1, v5}, Lh/T;-><init>(Lh/dY;Landroid/content/Context;Lh/ba;)V

    invoke-static {v2, v3}, Lh/dY;->a(Lh/dY;Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lh/ba;->a:Lh/dY;

    invoke-static {v1}, Lh/dY;->a(Lh/dY;)V

    iget-object v1, p0, Lh/ba;->a:Lh/dY;

    invoke-static {v1}, Lh/dY;->b(Lh/dY;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lh/dT;

    invoke-direct {v1, p0}, Lh/dT;-><init>(Lh/ba;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x103000b

    return v0
.end method
