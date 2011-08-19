.class Lh/dk;
.super Ljava/lang/Object;

# interfaces
.implements LI/n;


# instance fields
.field final synthetic a:Lh/fS;


# direct methods
.method constructor <init>(Lh/fS;)V
    .locals 0

    iput-object p1, p0, Lh/dk;->a:Lh/fS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f03011e

    return v0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V
    .locals 12

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/a;->requestWindowFeature(I)Z

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const v1, 0x7f0f0348

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->setup()V

    const v1, 0x7f0f0349

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/Workspace;

    move-object v0, v1

    check-cast v0, Lcom/google/googlenav/ui/Workspace;

    move-object v3, v0

    new-instance v1, Lh/ec;

    invoke-direct {v1, p0, v8, v3}, Lh/ec;-><init>(Lh/dk;Ljava/util/Map;Lcom/google/googlenav/ui/Workspace;)V

    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    new-instance v1, Lh/eb;

    invoke-direct {v1, p0, v2}, Lh/eb;-><init>(Lh/dk;Landroid/widget/TabHost;)V

    invoke-virtual {v3, v1}, Lcom/google/googlenav/ui/Workspace;->a(Lcom/google/googlenav/ui/N;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    iget-object v1, p0, Lh/dk;->a:Lh/fS;

    const-string v5, "stars"

    const/16 v4, 0x3ec

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f020223

    iget-object v4, p0, Lh/dk;->a:Lh/fS;

    iget-object v9, p0, Lh/dk;->a:Lh/fS;

    iget-object v9, v9, Lh/fS;->b:LI/x;

    const-string v11, "stars"

    invoke-virtual {v4, p1, v10, v9, v11}, Lh/fS;->a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/LayoutInflater;LI/n;Ljava/lang/String;)Landroid/view/View;

    move-result-object v9

    move-object v4, p1

    invoke-virtual/range {v1 .. v9}, Lh/fS;->a(Landroid/widget/TabHost;Lcom/google/googlenav/ui/Workspace;Lcom/google/googlenav/ui/view/android/e;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Landroid/view/View;)V

    iget-object v1, p0, Lh/dk;->a:Lh/fS;

    const-string v5, "recent"

    const/16 v4, 0x337

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f02021f

    iget-object v4, p0, Lh/dk;->a:Lh/fS;

    iget-object v9, p0, Lh/dk;->a:Lh/fS;

    iget-object v9, v9, Lh/fS;->c:LI/q;

    const-string v11, "recent"

    invoke-virtual {v4, p1, v10, v9, v11}, Lh/fS;->a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/LayoutInflater;LI/n;Ljava/lang/String;)Landroid/view/View;

    move-result-object v9

    move-object v4, p1

    invoke-virtual/range {v1 .. v9}, Lh/fS;->a(Landroid/widget/TabHost;Lcom/google/googlenav/ui/Workspace;Lcom/google/googlenav/ui/view/android/e;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Landroid/view/View;)V

    iget-object v1, p0, Lh/dk;->a:Lh/fS;

    iget-object v1, v1, Lh/fS;->a:Ljava/lang/String;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d0033

    :goto_0
    return v0

    :cond_0
    const v0, 0x103000d

    goto :goto_0
.end method
