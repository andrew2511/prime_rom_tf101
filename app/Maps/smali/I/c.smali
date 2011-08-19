.class public LI/c;
.super Ljava/lang/Object;

# interfaces
.implements LI/n;


# instance fields
.field private final a:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI/c;->a:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(LI/c;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, LI/c;->a:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f030079

    return v0
.end method

.method protected a(Lcom/google/googlenav/ui/view/android/e;)Lcom/google/googlenav/ui/view/android/L;
    .locals 7

    const/4 v3, 0x0

    new-instance v6, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v6, v0, v1}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/q;

    const-string v1, "place"

    const-string v2, "description"

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/q;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LaB/f;LaB/f;Lx/q;)V

    invoke-virtual {v6, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    return-object v6
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0f0004

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {p0, p1}, LI/c;->a(Lcom/google/googlenav/ui/view/android/e;)Lcom/google/googlenav/ui/view/android/L;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, LI/J;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LI/J;-><init>(LI/c;LI/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0d0032

    return v0
.end method
