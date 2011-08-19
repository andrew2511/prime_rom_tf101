.class public Lcom/google/googlenav/ui/view/android/aO;
.super Lcom/google/googlenav/ui/view/android/a;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field protected f:Landroid/view/View;

.field protected g:Lx/z;

.field private h:Z

.field private i:Lcom/google/googlenav/ui/br;

.field private j:Ljava/lang/CharSequence;

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 1

    const v0, 0x103000c

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/aO;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/a;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aO;->k:Z

    invoke-virtual {p2}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->g:Lx/z;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aO;->r()V

    return-void
.end method

.method private a(Lx/n;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p1, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/view/android/aO;->b(Lcom/google/googlenav/ui/bx;)I

    move-result v2

    if-le v1, v2, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method private a(Lx/B;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aO;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030079

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aO;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/google/googlenav/ui/view/android/aO;->a(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Lx/B;Landroid/widget/AbsListView;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aO;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p1, Lx/B;->g:Lx/D;

    invoke-virtual {p0, v2, v3, v1}, Lcom/google/googlenav/ui/view/android/aO;->a(Landroid/view/LayoutInflater;Lx/D;Landroid/widget/AbsListView;)V

    iget-boolean v2, p1, Lx/B;->x:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v2, Lcom/google/googlenav/ui/view/android/J;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aO;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/aO;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-direct {v2, v3, p1, v4}, Lcom/google/googlenav/ui/view/android/J;-><init>(Landroid/content/Context;Lx/B;Lcom/google/googlenav/ui/view/android/e;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v2, p1, Lx/B;->z:I

    invoke-virtual {v1, v2, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :goto_0
    const v2, 0x7f0f0143

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v2}, Lcom/google/googlenav/ui/view/android/aO;->a(Lx/B;Landroid/widget/LinearLayout;)V

    invoke-virtual {p0, v6, p1, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Landroid/view/LayoutInflater;Lx/B;Landroid/widget/LinearLayout;)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/aO;->a(Landroid/widget/AbsListView;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aO;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/aO;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-static {v2, p1, v3, v1}, Lcom/google/googlenav/ui/view/android/bj;->a(Landroid/content/Context;Lx/B;Lcom/google/googlenav/ui/view/android/e;Landroid/widget/ListView;)V

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p1}, Lx/B;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    goto :goto_0
.end method

.method private a(Lx/i;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aO;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03014c

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p1, Lx/i;->a:Lx/C;

    iget-object v1, v1, Lx/C;->c:Lx/G;

    if-eqz v1, :cond_0

    const v1, 0x7f0f0003

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aO;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p1, Lx/i;->a:Lx/C;

    iget-object v3, v3, Lx/C;->c:Lx/G;

    iget v4, p1, Lx/i;->m:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/googlenav/ui/view/android/aO;->a(Landroid/view/LayoutInflater;Lx/G;I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_0
    iget-object v1, p1, Lx/i;->a:Lx/C;

    invoke-virtual {p0, v0, v1, v5}, Lcom/google/googlenav/ui/view/android/aO;->a(Landroid/view/ViewGroup;Lx/C;Landroid/webkit/WebViewClient;)V

    return-object v0
.end method

.method private a(Lx/y;)Landroid/view/View;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aO;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03014a

    invoke-virtual {v0, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const v1, 0x7f0f0372

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    move v2, v8

    :goto_0
    iget-object v3, p1, Lx/y;->a:[Lx/F;

    array-length v3, v3

    if-ge v2, v3, :cond_6

    if-eqz v2, :cond_0

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/aO;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v3, p1, Lx/y;->a:[Lx/F;

    aget-object v3, v3, v2

    iget-object v4, v3, Lx/F;->a:[Lcom/google/googlenav/ui/aI;

    if-eqz v4, :cond_2

    array-length v5, v4

    if-lez v5, :cond_2

    move v5, v9

    :goto_1
    if-eqz v5, :cond_1

    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/googlenav/ui/view/android/aO;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v3, v3, Lx/F;->b:[Lx/b;

    if-nez v2, :cond_3

    if-nez v5, :cond_3

    if-eqz v3, :cond_3

    array-length v4, v3

    if-ne v4, v9, :cond_3

    move v4, v9

    :goto_2
    if-eqz v4, :cond_4

    sget-object v4, Lcom/google/googlenav/ui/av;->ag:Lcom/google/googlenav/ui/av;

    :goto_3
    if-eqz v3, :cond_5

    array-length v5, v3

    if-lez v5, :cond_5

    move v5, v8

    :goto_4
    array-length v6, v3

    if-ge v5, v6, :cond_5

    aget-object v6, v3, v5

    invoke-direct {p0, v6, v1, v4}, Lcom/google/googlenav/ui/view/android/aO;->a(Lx/b;Landroid/widget/LinearLayout;Lcom/google/googlenav/ui/av;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_2
    move v5, v8

    goto :goto_1

    :cond_3
    move v4, v8

    goto :goto_2

    :cond_4
    move-object v4, v10

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method private a(Landroid/view/View;Landroid/view/View;Lcom/google/googlenav/ui/bx;Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_0

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/google/googlenav/ui/bx;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/google/googlenav/ui/bx;->m:Lcom/google/googlenav/ui/bi;

    iget-object v0, v0, Lcom/google/googlenav/ui/bi;->a:Lk/l;

    check-cast v0, LaB/f;

    invoke-virtual {v0}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    const v0, 0x7f0f034a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    invoke-virtual {p3}, Lcom/google/googlenav/ui/bx;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p3, Lcom/google/googlenav/ui/bx;->o:Lcom/google/googlenav/ui/bi;

    iget-object v0, v0, Lcom/google/googlenav/ui/bi;->a:Lk/l;

    check-cast v0, LaB/f;

    invoke-virtual {v0}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    const v0, 0x7f0f034c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    const v0, 0x7f0f034b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v1, p3, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lez v1, :cond_5

    if-eqz p4, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget v0, p3, Lcom/google/googlenav/ui/bx;->r:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aO;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3}, Lcom/google/googlenav/ui/bx;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p3, Lcom/google/googlenav/ui/bx;->G:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/google/googlenav/ui/bx;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f018c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/googlenav/ui/bx;->o()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    move v1, v3

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aO;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02032f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aO;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020330

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/view/View;Lcom/google/googlenav/ui/bx;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    const v0, 0x7f0f0205

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/DistanceView;

    const v2, 0x7f0f020f

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/view/android/HeadingView;

    invoke-static {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/view/android/DistanceView;Lcom/google/googlenav/ui/view/android/HeadingView;Lf/h;)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->E:Lf/h;

    move-object v1, v0

    goto :goto_0
.end method

.method public static a(Lcom/google/googlenav/ui/view/android/DistanceView;Lcom/google/googlenav/ui/view/android/HeadingView;Lf/h;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-static {}, LH/f;->a()LH/f;

    move-result-object v0

    invoke-static {}, LQ/g;->j()LQ/g;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/DistanceView;->a(LH/f;)V

    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/view/android/DistanceView;->a(Lf/h;)V

    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/view/android/DistanceView;->b(Lf/h;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->a(LQ/g;)V

    invoke-virtual {p1, v1}, Lcom/google/googlenav/ui/view/android/HeadingView;->a(LH/f;)V

    invoke-virtual {p1, p2}, Lcom/google/googlenav/ui/view/android/HeadingView;->a(Lf/h;)V

    invoke-virtual {p1, p2}, Lcom/google/googlenav/ui/view/android/HeadingView;->b(Lf/h;)V

    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/LinearLayout;Lcom/google/googlenav/ui/av;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aO;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030149

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez p4, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    move-object v2, p2

    :goto_1
    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    new-instance v3, Lcom/google/googlenav/ui/view/android/bq;

    invoke-direct {v3, p0, v2}, Lcom/google/googlenav/ui/view/android/bq;-><init>(Lcom/google/googlenav/ui/view/android/aO;Ljava/lang/String;)V

    invoke-static {v0, v1, v4, v4, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_0
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    new-array v1, v3, [Lcom/google/googlenav/ui/aI;

    invoke-static {p1, p4}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const/16 v1, 0x3a

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v1

    move v1, v3

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "UI"

    invoke-static {v3, v2}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    move v1, v5

    goto :goto_1

    :cond_3
    move v1, v5

    move-object v2, p2

    goto :goto_1
.end method

.method private a(Lx/B;Landroid/widget/LinearLayout;)V
    .locals 6

    const/16 v1, 0x11

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p1, Lx/B;->s:Lx/n;

    if-eqz v0, :cond_5

    const v0, 0x7f080007

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p1, Lx/B;->s:Lx/n;

    iget v0, v0, Lx/n;->a:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v0, 0x4000

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    :cond_0
    iget-object v0, p1, Lx/B;->s:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v1, v0, v4

    if-eqz v1, :cond_1

    const v0, 0x7f0f003f

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v2, p1, Lx/B;->s:Lx/n;

    iget-object v2, v2, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v2, v2, v4

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bx;->g()Z

    move-result v1

    invoke-static {v0, v2, v1, p0}, Lcom/google/googlenav/ui/view/android/aO;->a(Landroid/widget/Button;Lcom/google/googlenav/ui/bx;ZLandroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lx/B;->s:Lx/n;

    iget v1, v1, Lx/n;->a:I

    if-ne v1, v3, :cond_1

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    iget-object v0, p1, Lx/B;->s:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v1, v0, v3

    if-eqz v1, :cond_2

    const v0, 0x7f0f0040

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v2, p1, Lx/B;->s:Lx/n;

    iget-object v2, v2, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v2, v2, v3

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bx;->g()Z

    move-result v1

    invoke-static {v0, v2, v1, p0}, Lcom/google/googlenav/ui/view/android/aO;->a(Landroid/widget/Button;Lcom/google/googlenav/ui/bx;ZLandroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p1, Lx/B;->s:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v1, v0, v5

    if-eqz v1, :cond_3

    const v0, 0x7f0f0140

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v2, p1, Lx/B;->s:Lx/n;

    iget-object v2, v2, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v2, v2, v5

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bx;->g()Z

    move-result v1

    invoke-static {v0, v2, v1, p0}, Lcom/google/googlenav/ui/view/android/aO;->a(Landroid/widget/Button;Lcom/google/googlenav/ui/bx;ZLandroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    if-eqz p2, :cond_4

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lx/D;Landroid/widget/LinearLayout;)V
    .locals 10

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0f0024

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    iget-object v1, p1, Lx/D;->a:Lcom/google/googlenav/ui/bx;

    if-nez v1, :cond_4

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    :cond_2
    :goto_1
    iget-object v0, p1, Lx/D;->b:Lx/n;

    if-eqz v0, :cond_0

    const v0, 0x7f0f023a

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lx/D;->c:Lx/n;

    iget-object v1, v1, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v1, v1, v8

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/bx;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lx/D;->c:Lx/n;

    iget-object v1, v1, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v1, v1, v7

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/bx;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lx/D;->c:Lx/n;

    iget-object v1, v1, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v1, v1, v9

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/bx;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lx/D;->c:Lx/n;

    iget-object v1, v1, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/bx;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lx/D;->b:Lx/n;

    iget-object v1, v1, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v1, v1, v8

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/bx;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lx/D;->b:Lx/n;

    iget-object v1, v1, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v1, v1, v7

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/bx;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lx/D;->b:Lx/n;

    iget-object v1, v1, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v1, v1, v9

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/bx;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lx/D;->b:Lx/n;

    iget-object v1, v1, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/bx;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    move v3, v8

    :goto_2
    iget-object v4, p1, Lx/D;->c:Lx/n;

    iget-object v4, v4, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    array-length v4, v4

    if-ge v3, v4, :cond_5

    aget v4, v1, v3

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p1, Lx/D;->c:Lx/n;

    iget-object v6, v6, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v6, v6, v3

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/google/googlenav/ui/view/android/aO;->a(Landroid/view/View;Landroid/view/View;Lcom/google/googlenav/ui/bx;Z)V

    aget v4, v2, v3

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p1, Lx/D;->b:Lx/n;

    iget-object v6, v6, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v6, v6, v3

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/google/googlenav/ui/view/android/aO;->a(Landroid/view/View;Landroid/view/View;Lcom/google/googlenav/ui/bx;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v8}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    iget-object v1, v1, Lcom/google/googlenav/ui/bx;->y:Lx/U;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v7}, Lcom/google/googlenav/ui/android/TemplateView;->setClickable(Z)V

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/android/TemplateView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    check-cast v0, Lcom/google/googlenav/ui/android/FlowLayout;

    new-instance v1, Lcom/google/googlenav/ui/android/ak;

    invoke-direct {v1, v9, v7, v7}, Lcom/google/googlenav/ui/android/ak;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/FlowLayout;->a(Lcom/google/googlenav/ui/android/ak;)V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 0x4
        0x3bt 0x2t 0xft 0x7ft
        0x3ct 0x2t 0xft 0x7ft
        0x3dt 0x2t 0xft 0x7ft
        0x3et 0x2t 0xft 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x3ft 0x2t 0xft 0x7ft
        0x40t 0x2t 0xft 0x7ft
        0x41t 0x2t 0xft 0x7ft
        0x42t 0x2t 0xft 0x7ft
    .end array-data
.end method

.method private a(Lx/b;Landroid/widget/LinearLayout;Lcom/google/googlenav/ui/av;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lx/b;->b:Ljava/lang/String;

    iget-object v1, p1, Lx/b;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/googlenav/ui/view/android/aO;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/LinearLayout;Lcom/google/googlenav/ui/av;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/bx;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/ui/bx;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bx;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private b(Lcom/google/googlenav/ui/bx;)I
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aO;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2, v2}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    goto :goto_0
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->g:Lx/z;

    check-cast v0, Lx/B;

    iget-object v1, v0, Lx/B;->o:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lx/B;->o:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aO;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->requestWindowFeature(I)Z

    goto :goto_0
.end method

.method private t()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->g:Lx/z;

    check-cast v0, Lx/B;

    iget-object v1, v0, Lx/B;->g:Lx/D;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->f:Landroid/view/View;

    const v2, 0x7f0f0239

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Lx/D;Landroid/widget/LinearLayout;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Lx/B;Landroid/widget/AbsListView;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p3, Lx/B;->d:Lx/G;

    if-nez v0, :cond_1

    iget-object v0, p3, Lx/B;->f:Lx/n;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p3, Lx/B;->d:Lx/G;

    iget v1, p3, Lx/B;->m:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlenav/ui/view/android/aO;->a(Landroid/view/LayoutInflater;Lx/G;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/google/googlenav/ui/view/android/aO;->a(Landroid/view/View;Lx/B;)V

    iget-object v1, p3, Lx/B;->d:Lx/G;

    if-eqz v1, :cond_0

    iget-object v1, p3, Lx/B;->d:Lx/G;

    iget-object v1, v1, Lx/G;->l:Lcom/google/googlenav/ui/bx;

    iget-object v2, v1, Lcom/google/googlenav/ui/bx;->E:Lf/h;

    if-eqz v2, :cond_2

    move-object v2, v1

    :goto_1
    invoke-static {v0, v2}, Lcom/google/googlenav/ui/view/android/aO;->a(Landroid/view/View;Lcom/google/googlenav/ui/bx;)V

    iget v2, p3, Lx/B;->m:I

    const/16 v3, 0x13

    if-ne v2, v3, :cond_3

    invoke-virtual {p2, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    iget-object v2, p3, Lx/B;->d:Lx/G;

    iget-object v2, v2, Lx/G;->m:Lcom/google/googlenav/ui/bx;

    goto :goto_1

    :cond_3
    check-cast p4, Landroid/widget/ListView;

    invoke-virtual {p4, v0, v1, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method protected a(Landroid/view/LayoutInflater;Lx/G;I)Landroid/view/View;
    .locals 4

    const v1, 0x7f03008a

    sparse-switch p3, :sswitch_data_0

    const v0, 0x7f030080

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f01f7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v2, p2, Lx/G;->o:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v1, 0x7f0f01f1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/android/TemplateView;

    const v2, 0x7f0f01f2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/googlenav/ui/android/TemplateView;

    const v3, 0x7f0f0282

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/googlenav/ui/android/TemplateView;

    invoke-virtual {p0, p2, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/aO;->a(Lx/G;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;)V

    return-object v0

    :sswitch_0
    const v0, 0x7f030085

    goto :goto_0

    :sswitch_1
    move v0, v1

    goto :goto_0

    :sswitch_2
    const v0, 0x7f030086

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/google/googlenav/android/Z;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f03008b

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_4
    const v0, 0x7f030089

    goto :goto_0

    :sswitch_5
    const v0, 0x7f03008d

    goto :goto_0

    :sswitch_6
    const v0, 0x7f030082

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x6 -> :sswitch_1
        0x7 -> :sswitch_3
        0xb -> :sswitch_2
        0xe -> :sswitch_4
        0xf -> :sswitch_0
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
    .end sparse-switch
.end method

.method protected a(Lx/z;)Landroid/view/View;
    .locals 1

    iget v0, p1, Lx/z;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    check-cast p1, Lx/B;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/aO;->a(Lx/B;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    check-cast p1, Lx/y;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/aO;->a(Lx/y;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    check-cast p1, Lx/i;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/aO;->a(Lx/i;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected a()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aO;->q()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aO;->h()Landroid/view/View;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aO;->h:Z

    return-void
.end method

.method public a(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aO;->o()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aO;->g:Lx/z;

    iget v1, v1, Lx/z;->l:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    sget v1, Lcom/google/googlenav/ui/view/android/aO;->e:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_0
    return-void
.end method

.method protected a(Landroid/view/LayoutInflater;Lx/B;Landroid/widget/LinearLayout;)V
    .locals 1

    iget-object v0, p2, Lx/B;->e:[Lcom/google/googlenav/ui/aI;

    if-eqz v0, :cond_0

    const v0, 0x7f0f01eb

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    iget-object v0, p2, Lx/B;->e:[Lcom/google/googlenav/ui/aI;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected a(Landroid/view/LayoutInflater;Lx/D;Landroid/widget/AbsListView;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f0300b3

    invoke-virtual {p1, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {p0, p2, v1}, Lcom/google/googlenav/ui/view/android/aO;->a(Lx/D;Landroid/widget/LinearLayout;)V

    move-object v0, p3

    check-cast v0, Landroid/widget/ListView;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    check-cast p3, Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->g:Lx/z;

    if-eqz v0, :cond_0

    iget v1, v0, Lx/z;->l:I

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast v0, Lx/B;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, v0, Lx/B;->s:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :sswitch_1
    iget-object v0, v0, Lx/B;->f:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :sswitch_2
    iget-object v0, v0, Lx/B;->f:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :sswitch_3
    iget-object v0, v0, Lx/B;->f:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :sswitch_4
    iget-object v0, v0, Lx/B;->f:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :sswitch_5
    iget-object v0, v0, Lx/B;->s:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :sswitch_6
    iget-object v0, v0, Lx/B;->s:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :sswitch_7
    iget-object v0, v0, Lx/B;->g:Lx/D;

    iget-object v0, v0, Lx/D;->b:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :sswitch_8
    iget-object v0, v0, Lx/B;->g:Lx/D;

    iget-object v0, v0, Lx/D;->b:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :sswitch_9
    iget-object v0, v0, Lx/B;->g:Lx/D;

    iget-object v0, v0, Lx/D;->b:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :sswitch_a
    iget-object v0, v0, Lx/B;->g:Lx/D;

    iget-object v0, v0, Lx/D;->b:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :sswitch_b
    iget-object v0, v0, Lx/B;->g:Lx/D;

    iget-object v0, v0, Lx/D;->c:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/br;)Z

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, v0, Lx/B;->g:Lx/D;

    iget-object v0, v0, Lx/D;->c:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/br;)Z

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, v0, Lx/B;->g:Lx/D;

    iget-object v0, v0, Lx/D;->c:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/br;)Z

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, v0, Lx/B;->g:Lx/D;

    iget-object v0, v0, Lx/D;->c:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/br;)Z

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, v0, Lx/B;->d:Lx/G;

    iget-object v0, v0, Lx/G;->l:Lcom/google/googlenav/ui/bx;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/br;)Z

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, v0, Lx/B;->d:Lx/G;

    iget-object v0, v0, Lx/G;->n:Lcom/google/googlenav/ui/bx;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/br;)Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f003f -> :sswitch_0
        0x7f0f0040 -> :sswitch_5
        0x7f0f0140 -> :sswitch_6
        0x7f0f01f0 -> :sswitch_f
        0x7f0f01f1 -> :sswitch_f
        0x7f0f01f3 -> :sswitch_1
        0x7f0f01f4 -> :sswitch_2
        0x7f0f01f5 -> :sswitch_3
        0x7f0f01f6 -> :sswitch_4
        0x7f0f023b -> :sswitch_b
        0x7f0f023c -> :sswitch_c
        0x7f0f023d -> :sswitch_d
        0x7f0f023e -> :sswitch_e
        0x7f0f023f -> :sswitch_7
        0x7f0f0240 -> :sswitch_8
        0x7f0f0241 -> :sswitch_9
        0x7f0f0242 -> :sswitch_a
        0x7f0f0282 -> :sswitch_10
    .end sparse-switch
.end method

.method protected a(Landroid/view/View;Lx/B;)V
    .locals 9

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v8, 0x0

    iget-object v0, p2, Lx/B;->f:Lx/n;

    if-eqz v0, :cond_4

    const v0, 0x7f0f006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-object v1, p2, Lx/B;->f:Lx/n;

    iget-object v1, v1, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v1, v1, v8

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/bx;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p2, Lx/B;->f:Lx/n;

    iget-object v1, v1, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v1, v1, v4

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/bx;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p2, Lx/B;->f:Lx/n;

    iget-object v1, v1, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/bx;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p2, Lx/B;->f:Lx/n;

    iget-object v1, v1, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/bx;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->U()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x190

    move v2, v1

    :goto_0
    const v1, 0x7f0f01f3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_5

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    :goto_1
    iget-object v3, p2, Lx/B;->f:Lx/n;

    iget v3, v3, Lx/n;->a:I

    div-int/2addr v2, v3

    sub-int v1, v2, v1

    iget-object v2, p2, Lx/B;->f:Lx/n;

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/view/android/aO;->a(Lx/n;)I

    move-result v2

    if-lt v1, v2, :cond_2

    move v1, v4

    :goto_2
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    new-array v3, v5, [I

    fill-array-data v3, :array_1

    move v4, v8

    :goto_3
    array-length v5, v2

    if-ge v4, v5, :cond_3

    aget v5, v2, v4

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aget v6, v3, v4

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p2, Lx/B;->f:Lx/n;

    iget-object v7, v7, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v7, v7, v4

    invoke-direct {p0, v5, v6, v7, v1}, Lcom/google/googlenav/ui/view/android/aO;->a(Landroid/view/View;Landroid/view/View;Lcom/google/googlenav/ui/bx;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aV;->ab()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v8

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    return-void

    :cond_5
    move v1, v8

    goto :goto_1

    nop

    :array_0
    .array-data 0x4
        0xf3t 0x1t 0xft 0x7ft
        0xf4t 0x1t 0xft 0x7ft
        0xf5t 0x1t 0xft 0x7ft
        0xf6t 0x1t 0xft 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0xat 0x2t 0xft 0x7ft
        0xbt 0x2t 0xft 0x7ft
        0xct 0x2t 0xft 0x7ft
        0xdt 0x2t 0xft 0x7ft
    .end array-data
.end method

.method protected a(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method protected a(Landroid/widget/AdapterView;I)V
    .locals 4

    const/4 v3, 0x0

    instance-of v1, p1, Lcom/google/googlenav/ui/android/GmmGridView;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/googlenav/ui/android/GmmGridView;

    move-object v1, v0

    invoke-virtual {v1, p2}, Lcom/google/googlenav/ui/android/GmmGridView;->a(I)V

    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    iput p2, p0, Lcom/google/googlenav/ui/view/android/aO;->d:I

    if-eqz v1, :cond_4

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/br;

    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/aO;->i:Lcom/google/googlenav/ui/br;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aO;->i:Lcom/google/googlenav/ui/br;

    instance-of v1, v1, Lcom/google/googlenav/ui/bx;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aO;->i:Lcom/google/googlenav/ui/br;

    check-cast v1, Lcom/google/googlenav/ui/bx;

    iget-object v2, v1, Lcom/google/googlenav/ui/bx;->J:Lcom/google/googlenav/ui/z;

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/google/googlenav/ui/bx;->J:Lcom/google/googlenav/ui/z;

    invoke-interface {v1}, Lcom/google/googlenav/ui/z;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/aO;->i:Lcom/google/googlenav/ui/br;

    :cond_2
    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/google/googlenav/ui/bx;->t:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v1, v1, Lcom/google/googlenav/ui/bx;->t:Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aO;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v2, p2, v1}, Lcom/google/googlenav/ui/view/android/e;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-static {v1}, Lcom/google/googlenav/ui/aV;->b([Lcom/google/googlenav/ui/aI;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    iput-object v3, p0, Lcom/google/googlenav/ui/view/android/aO;->i:Lcom/google/googlenav/ui/br;

    :cond_5
    move-object v1, v3

    goto :goto_1
.end method

.method protected b(Landroid/view/View;Lx/B;)V
    .locals 2

    iget-boolean v0, p2, Lx/B;->x:Z

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/ListView;

    iget v0, p2, Lx/B;->z:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    return-void
.end method

.method public c()I
    .locals 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aO;->o()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iput v1, p0, Lcom/google/googlenav/ui/view/android/aO;->d:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/googlenav/ui/view/android/aO;->d:I

    return v0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/aO;->d:I

    goto :goto_0
.end method

.method protected c(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->g:Lx/z;

    check-cast v0, Lx/B;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aO;->f:Landroid/view/View;

    const v2, 0x7f0f0143

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/aO;->a(Lx/B;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public e()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aO;->k:Z

    if-eqz v0, :cond_1

    invoke-static {}, LA/n;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->f:Landroid/view/View;

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->g:Lx/z;

    invoke-virtual {v0}, Lx/z;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->g:Lx/z;

    invoke-virtual {v0}, Lx/z;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/aO;->b(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->g:Lx/z;

    invoke-virtual {v0}, Lx/z;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aO;->q()V

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->g:Lx/z;

    iget v0, v0, Lx/z;->l:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->g:Lx/z;

    check-cast v0, Lx/B;

    invoke-virtual {v0}, Lx/B;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aO;->n()V

    :cond_4
    invoke-virtual {v0}, Lx/B;->m()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aO;->t()V

    :cond_5
    invoke-virtual {v0}, Lx/B;->n()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aO;->s()V

    :cond_6
    invoke-virtual {v0}, Lx/B;->o()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/aO;->c(Landroid/view/View;)V

    :cond_7
    invoke-virtual {v0}, Lx/B;->p()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aO;->f:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Landroid/view/View;Lx/B;)V

    :cond_8
    invoke-virtual {v0}, Lx/B;->q()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/view/android/aO;->b(Landroid/view/View;Lx/B;)V

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->g:Lx/z;

    invoke-virtual {v0}, Lx/z;->l()V

    goto :goto_0
.end method

.method protected h()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->g:Lx/z;

    iget v0, v0, Lx/z;->l:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->g:Lx/z;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Lx/z;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->f:Landroid/view/View;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->g:Lx/z;

    check-cast v0, Lx/y;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Lx/y;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->f:Landroid/view/View;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->g:Lx/z;

    check-cast v0, Lx/i;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Lx/i;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->f:Landroid/view/View;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->g:Lx/z;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Lx/z;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->f:Landroid/view/View;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method protected i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected n()V
    .locals 5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->g:Lx/z;

    check-cast v0, Lx/B;

    iget-object v1, v0, Lx/B;->d:Lx/G;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aO;->f:Landroid/view/View;

    const v2, 0x7f0f01f1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/android/TemplateView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aO;->f:Landroid/view/View;

    const v3, 0x7f0f01f2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/googlenav/ui/android/TemplateView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/aO;->f:Landroid/view/View;

    const v4, 0x7f0f0282

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/googlenav/ui/android/TemplateView;

    iget-object v0, v0, Lx/B;->d:Lx/G;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/aO;->a(Lx/G;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;)V

    goto :goto_0
.end method

.method protected o()Landroid/widget/ListView;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->f:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ListView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->f:Landroid/view/View;

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/google/googlenav/ui/view/android/aO;->f:Landroid/view/View;

    check-cast p0, Landroid/widget/ListView;

    move-object v0, p0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    invoke-virtual {p0, p1, p3}, Lcom/google/googlenav/ui/view/android/aO;->a(Landroid/widget/AdapterView;I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->i:Lcom/google/googlenav/ui/br;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->i:Lcom/google/googlenav/ui/br;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/br;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aO;->g()V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2

    invoke-virtual {p0, p1, p3}, Lcom/google/googlenav/ui/view/android/aO;->a(Landroid/widget/AdapterView;I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aO;->i:Lcom/google/googlenav/ui/br;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aO;->i:Lcom/google/googlenav/ui/br;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/br;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->i:Lcom/google/googlenav/ui/br;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->b(Lcom/google/googlenav/ui/br;)Z

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aO;->g()V

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/google/googlenav/ui/view/android/aO;->a(Landroid/widget/AdapterView;I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/aO;->a(Landroid/widget/AdapterView;I)V

    return-void
.end method

.method protected q()V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->g:Lx/z;

    iget v0, v0, Lx/z;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->g:Lx/z;

    iget-object v0, v0, Lx/z;->o:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->requestWindowFeature(I)Z

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aO;->p()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->g:Lx/z;

    iget-object v0, v0, Lx/z;->o:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aO;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->g:Lx/z;

    iget-object v0, v0, Lx/z;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f024a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f0380

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aO;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v1

    iget-object v1, v1, Lx/z;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public r()V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->g:Lx/z;

    iget v0, v0, Lx/z;->p:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aO;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0d0036

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aO;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0d0037

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected s()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->g:Lx/z;

    check-cast v0, Lx/B;

    iget-object v1, v0, Lx/B;->e:[Lcom/google/googlenav/ui/aI;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aO;->f:Landroid/view/View;

    const v2, 0x7f0f01eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    iget-object v0, v0, Lx/B;->e:[Lcom/google/googlenav/ui/aI;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/a;->setTitle(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aO;->j:Ljava/lang/CharSequence;

    return-void
.end method
