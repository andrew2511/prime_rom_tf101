.class Lh/av;
.super Ljava/lang/Object;

# interfaces
.implements LI/n;


# instance fields
.field final synthetic a:Lh/dC;


# direct methods
.method constructor <init>(Lh/dC;)V
    .locals 0

    iput-object p1, p0, Lh/av;->a:Lh/dC;

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
    .locals 4

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f020174

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->U()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/a;->requestWindowFeature(I)Z

    :cond_0
    const v0, 0x7f0f00b3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x20b

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0f0004

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lh/av;->a:Lh/dC;

    invoke-virtual {v1, p1}, Lh/dC;->a(Lcom/google/googlenav/ui/view/android/e;)Lcom/google/googlenav/ui/view/android/L;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lh/ck;

    iget-object v2, p0, Lh/av;->a:Lh/dC;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lh/ck;-><init>(Lh/dC;Lh/av;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lh/av;->a:Lh/dC;

    invoke-virtual {v0, p2}, Lh/dC;->a(Landroid/view/View;)V

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x103000b

    return v0
.end method
