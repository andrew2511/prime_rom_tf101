.class final Lh/eH;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lh/af;


# direct methods
.method private constructor <init>(Lh/af;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lh/eH;->a:Lh/af;

    const v0, 0x1020014

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method synthetic constructor <init>(Lh/af;Landroid/content/Context;Lh/fl;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh/eH;-><init>(Lh/af;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    iget-object v0, p0, Lh/eH;->a:Lh/af;

    invoke-static {v0}, Lh/af;->b(Lh/af;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lh/dJ;

    invoke-direct {v2}, Lh/dJ;-><init>()V

    const v0, 0x1020014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lh/dJ;->a:Landroid/widget/TextView;

    const v0, 0x1020015

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lh/dJ;->b:Landroid/widget/TextView;

    const v0, 0x1020006

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lh/dJ;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v2

    :goto_0
    iget-object v2, p0, Lh/eH;->a:Lh/af;

    invoke-static {v2}, Lh/af;->c(Lh/af;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/d;

    iget-object v2, v0, Lh/dJ;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lo/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lo/d;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget-object v2, v0, Lh/dJ;->b:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, v0, Lh/dJ;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lo/d;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/dJ;

    move-object v1, p2

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lh/dJ;->b:Landroid/widget/TextView;

    const/16 v3, 0x2dc

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lo/d;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
