.class public Lh/af;
.super Ljava/lang/Object;

# interfaces
.implements LI/n;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Lh/bX;

.field private c:Landroid/widget/ArrayAdapter;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/google/googlenav/ui/view/android/ModalOverlay;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lh/af;->j:Z

    return-void
.end method

.method static synthetic a(Lh/af;)Lh/bX;
    .locals 1

    iget-object v0, p0, Lh/af;->b:Lh/bX;

    return-object v0
.end method

.method static synthetic b(Lh/af;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lh/af;->a:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic c(Lh/af;)Landroid/widget/ArrayAdapter;
    .locals 1

    iget-object v0, p0, Lh/af;->c:Landroid/widget/ArrayAdapter;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f0300c5

    return v0
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lh/af;->e:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    sget-object v1, Lcom/google/googlenav/ui/view/android/aW;->a:Lcom/google/googlenav/ui/view/android/aW;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a(Lcom/google/googlenav/ui/view/android/aW;I)V

    iget-object v0, p0, Lh/af;->g:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/a;->requestWindowFeature(I)Z

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lh/af;->a:Landroid/view/LayoutInflater;

    const v0, 0x7f0f0036

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lh/af;->d:Landroid/widget/TextView;

    iget-boolean v0, p0, Lh/af;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/af;->d:Landroid/widget/TextView;

    const/16 v1, 0x2da

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v0, 0x7f0f006c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/ModalOverlay;

    iput-object v0, p0, Lh/af;->e:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    const v0, 0x7f0f026a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lh/af;->f:Landroid/widget/ListView;

    new-instance v0, Lh/eH;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lh/eH;-><init>(Lh/af;Landroid/content/Context;Lh/fl;)V

    iput-object v0, p0, Lh/af;->c:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lh/af;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lh/af;->c:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0f0143

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lh/af;->g:Landroid/view/ViewGroup;

    const v0, 0x7f0f026b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lh/af;->h:Landroid/widget/Button;

    iget-object v0, p0, Lh/af;->h:Landroid/widget/Button;

    const/16 v1, 0x2a0

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh/af;->h:Landroid/widget/Button;

    new-instance v1, Lh/fl;

    invoke-direct {v1, p0}, Lh/fl;-><init>(Lh/af;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0117

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lh/af;->i:Landroid/widget/Button;

    iget-object v0, p0, Lh/af;->i:Landroid/widget/Button;

    const/16 v1, 0x5d

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh/af;->i:Landroid/widget/Button;

    new-instance v1, Lh/fk;

    invoke-direct {v1, p0}, Lh/fk;-><init>(Lh/af;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lh/af;->c()V

    return-void

    :cond_0
    iget-object v0, p0, Lh/af;->d:Landroid/widget/TextView;

    const/16 v1, 0x1f0

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public a(Lh/bX;)V
    .locals 0

    iput-object p1, p0, Lh/af;->b:Lh/bX;

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lh/af;->c:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/d;

    iget-object v2, p0, Lh/af;->c:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/d;

    iget-object v2, p0, Lh/af;->f:Landroid/widget/ListView;

    iget-object v3, p0, Lh/af;->c:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lh/af;->c:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0d0032

    return v0
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lh/af;->e:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    sget-object v1, Lcom/google/googlenav/ui/view/android/aW;->a:Lcom/google/googlenav/ui/view/android/aW;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a(Lcom/google/googlenav/ui/view/android/aW;I)V

    iget-object v0, p0, Lh/af;->g:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lh/af;->j:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2de

    invoke-virtual {p0, v0}, Lh/af;->a(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x105

    invoke-virtual {p0, v0}, Lh/af;->a(I)V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lh/af;->e:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a()V

    iget-object v0, p0, Lh/af;->g:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public e()Ljava/util/List;
    .locals 5

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lh/af;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iget-object v0, p0, Lh/af;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/af;->c:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/d;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    return-object v1
.end method
