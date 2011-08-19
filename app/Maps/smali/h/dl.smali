.class final Lh/dl;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lh/fJ;


# direct methods
.method private constructor <init>(Lh/fJ;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lh/dl;->a:Lh/fJ;

    const v0, 0x1020014

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method synthetic constructor <init>(Lh/fJ;Landroid/content/Context;Lh/fs;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh/dl;-><init>(Lh/fJ;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    iget-object v0, p0, Lh/dl;->a:Lh/fJ;

    invoke-static {v0}, Lh/fJ;->f(Lh/fJ;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lh/cb;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lh/cb;-><init>(Lh/fs;)V

    const v0, 0x1020014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lh/cb;->a:Landroid/widget/TextView;

    const v0, 0x1020015

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lh/cb;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_0
    iget-object v3, v1, Lh/cb;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lh/dl;->a:Lh/fJ;

    invoke-static {v0}, Lh/fJ;->c(Lh/fJ;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/h;

    invoke-virtual {v0}, Lcom/google/googlenav/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lh/cb;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lh/dl;->a:Lh/fJ;

    invoke-static {v0}, Lh/fJ;->c(Lh/fJ;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/h;

    invoke-virtual {v0}, Lcom/google/googlenav/h;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lh/dl;->a:Lh/fJ;

    invoke-static {v3}, Lh/fJ;->c(Lh/fJ;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/h;

    invoke-virtual {p0}, Lcom/google/googlenav/h;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/googlenav/af;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/cb;

    move-object v1, v0

    move-object v2, p2

    goto :goto_0
.end method
