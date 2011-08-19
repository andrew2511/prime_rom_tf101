.class public Lcom/google/googlenav/ui/view/android/A;
.super Lcom/google/googlenav/ui/view/android/a;


# instance fields
.field private f:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 1

    const v0, 0x103000b

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/a;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;I)V

    return-void
.end method

.method private static a(Landroid/widget/CheckBox;)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/widget/Spinner;)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method private a(Lcom/google/googlenav/ui/bx;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const v0, 0x7f0f012f

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/A;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/A;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030049

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0f012a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-static {v2}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0f012b

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    if-ne p2, v4, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setClickable(Z)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setClickable(Z)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/S;

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/view/android/S;-><init>(Lcom/google/googlenav/ui/view/android/A;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/A;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    move v3, v5

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;I)V
    .locals 1

    instance-of v0, p1, Lx/B;

    if-eqz v0, :cond_1

    check-cast p1, Lx/B;

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/A;->a(Lx/B;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/google/googlenav/ui/bx;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/googlenav/ui/bx;

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/A;->a(Lcom/google/googlenav/ui/bx;I)V

    goto :goto_0
.end method

.method private a(Lx/B;I)V
    .locals 4

    const v0, 0x7f0f012f

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/A;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/A;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03004a

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0f012d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lx/B;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f012e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    new-instance v1, Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/A;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/A;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-direct {v1, v2, p1, v3}, Lcom/google/googlenav/ui/view/android/bb;-><init>(Landroid/content/Context;Lx/B;Lcom/google/googlenav/ui/view/android/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v1, p1, Lx/B;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/A;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static c(Landroid/view/View;)I
    .locals 2

    instance-of v0, p0, Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/Spinner;

    invoke-static {p0}, Lcom/google/googlenav/ui/view/android/A;->a(Landroid/widget/Spinner;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/widget/CheckBox;

    invoke-static {p0}, Lcom/google/googlenav/ui/view/android/A;->a(Landroid/widget/CheckBox;)I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected view type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private n()V
    .locals 4

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/A;->o()Lx/e;

    move-result-object v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, v1, Lx/e;->b:[I

    array-length v0, v0

    if-ge v2, v0, :cond_0

    iget-object v3, v1, Lx/e;->b:[I

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/A;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/A;->c(Landroid/view/View;)I

    move-result v0

    aput v0, v3, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private o()Lx/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/A;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object p0

    check-cast p0, Lx/e;

    return-object p0
.end method


# virtual methods
.method protected a()V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/A;->requestWindowFeature(I)Z

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/A;->f:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/A;->o()Lx/e;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/A;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x7f020174

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const v0, 0x7f03004b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/A;->setContentView(I)V

    const v0, 0x7f0f026c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/A;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, v1, Lx/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lx/e;->a:[I

    array-length v0, v0

    iget-object v2, v1, Lx/e;->c:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lx/e;->b:[I

    aget v5, v5, v3

    invoke-direct {p0, v4, v5}, Lcom/google/googlenav/ui/view/android/A;->a(Ljava/lang/Object;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f0f010b

    iget-object v1, v1, Lx/e;->d:Lcom/google/googlenav/ui/bx;

    iget-object v1, v1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-virtual {p0, v0, v1, p0}, Lcom/google/googlenav/ui/view/android/A;->a(I[Lcom/google/googlenav/ui/aI;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/A;->k()V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0f0042

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/A;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/A;->o()Lx/e;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/A;->hide()V

    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/A;->n()V

    iget-object v0, v0, Lx/e;->d:Lcom/google/googlenav/ui/bx;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/A;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0f0108
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
