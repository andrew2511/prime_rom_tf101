.class public Lcom/google/googlenav/ui/view/android/ae;
.super Lcom/google/googlenav/ui/view/android/a;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 1

    const v0, 0x103000b

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/a;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/a;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;I)V

    return-void
.end method

.method private a(Landroid/view/View;Lcom/google/googlenav/ui/bx;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/google/googlenav/ui/bx;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/google/googlenav/ui/bx;->m:Lcom/google/googlenav/ui/bi;

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
    invoke-virtual {p2}, Lcom/google/googlenav/ui/bx;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/googlenav/ui/bx;->o:Lcom/google/googlenav/ui/bi;

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

    iget-object v1, p2, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ae;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/google/googlenav/ui/bx;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method private a(Landroid/view/View;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ae;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ae;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_1

    if-eqz p2, :cond_0

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void

    :cond_0
    const/16 v0, 0x118

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    int-to-double v0, v0

    const-wide v2, 0x3fe3333333333333L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_2
    const/16 v0, 0xaa

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/ae;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/ae;->o()V

    return-void
.end method

.method private a(Lx/B;I)V
    .locals 5

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ae;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v4, p1, Lx/B;->d:Lx/G;

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

    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/ae;->a(Lx/G;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;)V

    const v1, 0x7f0f0004

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/ae;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView;

    iget-object v1, p1, Lx/B;->d:Lx/G;

    iget-object v1, v1, Lx/G;->l:Lcom/google/googlenav/ui/bx;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method private a(Lx/B;Z)V
    .locals 6

    const v5, 0x7f0f0143

    const/16 v2, 0x11

    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p1, Lx/B;->s:Lx/n;

    if-eqz v0, :cond_2

    const v0, 0x7f0f0355

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/view/android/ae;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0202a8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v1, p1, Lx/B;->s:Lx/n;

    iget v1, v1, Lx/n;->a:I

    if-ne v1, v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    :cond_0
    const v1, 0x7f0f003f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p1, Lx/B;->s:Lx/n;

    iget-object v2, v2, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v2, v2, v4

    invoke-static {v1, v2, p2, p0}, Lcom/google/googlenav/ui/view/android/ae;->a(Landroid/widget/Button;Lcom/google/googlenav/ui/bx;ZLandroid/view/View$OnClickListener;)V

    iget-object v2, p1, Lx/B;->s:Lx/n;

    iget v2, v2, Lx/n;->a:I

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    const v1, 0x7f0f0040

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p1, Lx/B;->s:Lx/n;

    iget-object v2, v2, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v2, v2, v3

    invoke-static {v1, v2, p2, p0}, Lcom/google/googlenav/ui/view/android/ae;->a(Landroid/widget/Button;Lcom/google/googlenav/ui/bx;ZLandroid/view/View$OnClickListener;)V

    const v1, 0x7f0f0140

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p1, Lx/B;->s:Lx/n;

    iget-object v2, v2, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v1, v2, p2, p0}, Lcom/google/googlenav/ui/view/android/ae;->a(Landroid/widget/Button;Lcom/google/googlenav/ui/bx;ZLandroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/view/android/ae;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f0355

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private d(Lx/B;)V
    .locals 3

    const v1, 0x7f0f0354

    const/4 v2, 0x1

    iget-object v0, p1, Lx/B;->r:Lcom/google/googlenav/ui/bx;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/ae;->n()Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    iget-object v1, p1, Lx/B;->r:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/TemplateView;->setEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/TemplateView;->setFocusable(Z)V

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/android/TemplateView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/ae;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/android/TemplateView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    goto :goto_0
.end method

.method private e(Lx/B;)V
    .locals 2

    iget-boolean v0, p1, Lx/B;->u:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lx/B;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0f0350

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private f(Lx/B;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    iget-object v0, p1, Lx/B;->j:Lx/C;

    if-eqz v0, :cond_0

    const v0, 0x7f0f0352

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p1, Lx/B;->j:Lx/C;

    new-instance v3, Lcom/google/googlenav/ui/view/android/aC;

    invoke-direct {v3, p0, p1, v0}, Lcom/google/googlenav/ui/view/android/aC;-><init>(Lcom/google/googlenav/ui/view/android/ae;Lx/B;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/googlenav/ui/view/android/ae;->a(Landroid/view/ViewGroup;Lx/C;Landroid/webkit/WebViewClient;)V

    iget-boolean v2, p1, Lx/B;->u:Z

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/ui/view/android/ae;->a(Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p1, Lx/B;->j:Lx/C;

    iget-boolean v0, v0, Lx/C;->h:Z

    if-eqz v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private g(Lx/B;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p1, Lx/B;->i:Lcom/google/googlenav/ui/bx;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/ae;->n()Landroid/widget/ScrollView;

    move-result-object v0

    const v1, 0x7f0f0082

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p1, Lx/B;->y:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    :cond_0
    iget-object v1, p1, Lx/B;->i:Lcom/google/googlenav/ui/bx;

    iget-object v1, v1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private h(Lx/B;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p1, Lx/B;->f:Lx/n;

    if-eqz v0, :cond_1

    const v0, 0x7f0f006d

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lx/B;->f:Lx/n;

    iget-object v1, v1, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p1, Lx/B;->f:Lx/n;

    iget-object v1, v1, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v1, v1, v4

    if-nez v1, :cond_0

    iget-object v1, p1, Lx/B;->f:Lx/n;

    iget-object v1, v1, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v1, v1, v5

    if-nez v1, :cond_0

    iget-object v1, p1, Lx/B;->f:Lx/n;

    iget-object v1, v1, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v1, v1, v6

    if-eqz v1, :cond_1

    :cond_0
    const v1, 0x7f0f01f3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p1, Lx/B;->f:Lx/n;

    iget-object v2, v2, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/ui/view/android/ae;->a(Landroid/view/View;Lcom/google/googlenav/ui/bx;)V

    const v1, 0x7f0f01f4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p1, Lx/B;->f:Lx/n;

    iget-object v2, v2, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v2, v2, v4

    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/ui/view/android/ae;->a(Landroid/view/View;Lcom/google/googlenav/ui/bx;)V

    const v1, 0x7f0f01f5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p1, Lx/B;->f:Lx/n;

    iget-object v2, v2, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v2, v2, v5

    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/ui/view/android/ae;->a(Landroid/view/View;Lcom/google/googlenav/ui/bx;)V

    const v1, 0x7f0f01f6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p1, Lx/B;->f:Lx/n;

    iget-object v2, v2, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v2, v2, v6

    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/ui/view/android/ae;->a(Landroid/view/View;Lcom/google/googlenav/ui/bx;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private i(Lx/B;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    const v0, 0x7f0f0042

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iget v0, p1, Lx/B;->t:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0201ed

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0201eb

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0201e5

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private j(Lx/B;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p1, Lx/B;->o:Ljava/lang/String;

    if-eqz v0, :cond_1

    const v0, 0x7f0f00b3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_0
    iget-object v0, p1, Lx/B;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private k(Lx/B;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lx/B;->d:Lx/G;

    if-eqz v0, :cond_0

    iget v0, p1, Lx/B;->m:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    const v0, 0x7f030085

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/ae;->a(Lx/B;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0f01f1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    iget-object v1, p1, Lx/B;->d:Lx/G;

    iget-object v1, v1, Lx/G;->l:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    const v0, 0x7f0f01f2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/android/TemplateView;

    iget-object v0, p1, Lx/B;->d:Lx/G;

    iget-object v0, v0, Lx/G;->m:Lcom/google/googlenav/ui/bx;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    goto :goto_0
.end method

.method private n()Landroid/widget/ScrollView;
    .locals 1

    const v0, 0x7f0f0353

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    const v0, 0x7f0f0351

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ScrollView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method private o()V
    .locals 5

    const v4, 0x7f0f0140

    const v3, 0x7f0f0040

    const v2, 0x7f0f003f

    const/4 v1, 0x1

    const v0, 0x7f0f0143

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method private q()Lx/B;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ae;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v0

    instance-of v0, v0, Lx/B;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ae;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object p0

    check-cast p0, Lx/B;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 3

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/ae;->q()Lx/B;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ae;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f020174

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/ae;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ae;->p()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/ae;->setContentView(I)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->a(Lx/B;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->c(Lx/B;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->b(Lx/B;)V

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/ae;->q()Lx/B;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0f003f

    if-ne v1, v2, :cond_1

    iget-object v0, v0, Lx/B;->s:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->a(Lcom/google/googlenav/ui/br;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0f0040

    if-ne v1, v2, :cond_2

    iget-object v0, v0, Lx/B;->s:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0f0140

    if-ne v1, v2, :cond_3

    iget-object v0, v0, Lx/B;->s:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0f0082

    if-ne v1, v2, :cond_4

    iget-object v0, v0, Lx/B;->i:Lcom/google/googlenav/ui/bx;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0f01f3

    if-ne v1, v2, :cond_5

    iget-object v0, v0, Lx/B;->f:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0f01f4

    if-ne v1, v2, :cond_6

    iget-object v0, v0, Lx/B;->f:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0f01f5

    if-ne v1, v2, :cond_7

    iget-object v0, v0, Lx/B;->f:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0f01f6

    if-ne v1, v2, :cond_8

    iget-object v0, v0, Lx/B;->f:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->a(Lcom/google/googlenav/ui/br;)Z

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0f0354

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lx/B;->r:Lcom/google/googlenav/ui/bx;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->a(Lcom/google/googlenav/ui/br;)Z

    goto/16 :goto_0
.end method

.method protected a(Landroid/widget/ListView;Lx/B;)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p2, Lx/B;->x:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/J;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ae;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/ae;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-direct {v0, v1, p2, v2}, Lcom/google/googlenav/ui/view/android/J;-><init>(Landroid/content/Context;Lx/B;Lcom/google/googlenav/ui/view/android/e;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v0, p2, Lx/B;->z:I

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ae;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ae;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-static {v0, p2, v1, p1}, Lcom/google/googlenav/ui/view/android/bj;->a(Landroid/content/Context;Lx/B;Lcom/google/googlenav/ui/view/android/e;Landroid/widget/ListView;)V

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    goto :goto_0
.end method

.method protected a(Lx/B;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/ae;->j(Lx/B;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/ae;->k(Lx/B;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/ae;->i(Lx/B;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ae;->k()V

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/ae;->h(Lx/B;)V

    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    move-object v1, v0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/ae;->q()Lx/B;

    move-result-object v2

    iget-boolean v3, v2, Lx/B;->x:Z

    if-eqz v3, :cond_0

    iget v2, v2, Lx/B;->z:I

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/a;->b(Landroid/view/View;)V

    return-void
.end method

.method protected b(Lx/B;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/ae;->g(Lx/B;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/ae;->d(Lx/B;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/ae;->f(Lx/B;)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/ae;->e(Lx/B;)V

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/ae;->a(Lx/B;Z)V

    return-void
.end method

.method protected c(Lx/B;)V
    .locals 3

    const v0, 0x7f0f0004

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {p0, v0, p1}, Lcom/google/googlenav/ui/view/android/ae;->a(Landroid/widget/ListView;Lx/B;)V

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ae;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02016e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method public e()V
    .locals 1

    const v0, 0x7f0f0004

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->b(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/ae;->q()Lx/B;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->a(Lx/B;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->b(Lx/B;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bx;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ae;->a(Lcom/google/googlenav/ui/br;)Z

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ae;->b:Lcom/google/googlenav/ui/view/android/e;

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->b([Lcom/google/googlenav/ui/aI;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p3, v0}, Lcom/google/googlenav/ui/view/android/e;->a(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ae;->g()V

    goto :goto_0
.end method

.method protected p()I
    .locals 1

    const v0, 0x7f03013b

    return v0
.end method
