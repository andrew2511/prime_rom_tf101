.class final Lh/T;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lh/dY;


# direct methods
.method private constructor <init>(Lh/dY;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lh/T;->a:Lh/dY;

    const v0, 0x1020014

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method synthetic constructor <init>(Lh/dY;Landroid/content/Context;Lh/ba;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh/T;-><init>(Lh/dY;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lh/T;->a:Lh/dY;

    invoke-static {v0}, Lh/dY;->f(Lh/dY;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lh/t;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lh/t;-><init>(Lh/ba;)V

    const v0, 0x1020014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lh/t;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v2

    :goto_0
    iget-object v0, v0, Lh/t;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lh/T;->a:Lh/dY;

    invoke-static {v2}, Lh/dY;->b(Lh/dY;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh/fm;

    iget-object v2, p0, Lh/fm;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/t;

    move-object v1, p2

    goto :goto_0
.end method
