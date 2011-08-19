.class public Lcom/google/googlenav/ui/android/TemplateView;
.super Landroid/widget/LinearLayout;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final i:Ljava/lang/Object;

.field private static final j:Ljava/lang/Object;

.field private static final k:Ljava/lang/Object;


# instance fields
.field protected final b:Landroid/text/SpannableStringBuilder;

.field protected final c:Landroid/view/LayoutInflater;

.field protected final d:Landroid/graphics/Paint;

.field protected e:Landroid/view/ViewGroup;

.field protected f:Landroid/widget/ImageView;

.field protected g:Landroid/widget/ImageView;

.field protected h:Lcom/google/googlenav/ui/bx;

.field private final l:I

.field private m:Z

.field private final n:[Lcom/google/googlenav/ui/aI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/TemplateView;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/TemplateView;->i:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/TemplateView;->j:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/TemplateView;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/google/googlenav/ui/android/TemplateView;->m:Z

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlenav/ui/aI;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->n:[Lcom/google/googlenav/ui/aI;

    sget-object v0, Lcom/google/android/apps/maps/d;->b:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->l:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->c:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->d:Landroid/graphics/Paint;

    return-void
.end method

.method private static a(ILandroid/widget/ImageView;I)V
    .locals 1

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    if-nez p2, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void

    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_0
.end method

.method private a(Lcom/google/googlenav/ui/android/PieLineView;Ljava/lang/CharSequence;)V
    .locals 7

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-static {v0, v1}, LR/a;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_0

    const/16 v4, 0x2a3

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    new-instance v5, Lcom/google/googlenav/ui/android/aj;

    aget-object v6, v0, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6, v3, v4}, Lcom/google/googlenav/ui/android/aj;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0x281

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Lcom/google/googlenav/ui/android/PieLineView;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private static a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bi;I)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_2

    iget v0, p1, Lcom/google/googlenav/ui/bx;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p1, Lcom/google/googlenav/ui/bx;->l:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->y:Lx/U;

    iget-object v1, p2, Lcom/google/googlenav/ui/bi;->b:Lx/Q;

    invoke-static {p0, v0, v1}, Lcom/google/googlenav/ui/android/v;->a(Landroid/view/View;Lx/U;Lx/Q;)Lcom/google/googlenav/ui/android/v;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-nez v1, :cond_3

    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_3
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/google/googlenav/ui/bi;->a:Lk/l;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/google/googlenav/ui/bi;->a:Lk/l;

    check-cast v0, LaB/f;

    invoke-virtual {v0}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget v0, p1, Lcom/google/googlenav/ui/bx;->l:I

    iget v1, p1, Lcom/google/googlenav/ui/bx;->q:I

    invoke-static {v0, p0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->a(ILandroid/widget/ImageView;I)V

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p2, Lcom/google/googlenav/ui/bi;->c:Lcom/google/googlenav/ui/aH;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bx;

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->J:Lcom/google/googlenav/ui/z;

    new-instance v1, Lcom/google/googlenav/ui/android/am;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/android/am;-><init>(Lcom/google/googlenav/ui/android/TemplateView;)V

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/z;->a(Lcom/google/googlenav/ui/bj;)V

    return-void
.end method

.method private b(Landroid/widget/TextView;Lcom/google/googlenav/ui/aI;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/google/googlenav/ui/aI;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/google/googlenav/ui/aI;->c()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/googlenav/ui/aI;->e()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/googlenav/ui/aI;->d()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/googlenav/ui/aI;->f()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private static b(Lcom/google/googlenav/ui/av;)Z
    .locals 1

    sget-object v0, Lcom/google/googlenav/ui/av;->aJ:Lcom/google/googlenav/ui/av;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/google/googlenav/ui/av;->aK:Lcom/google/googlenav/ui/av;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/ui/bx;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bx;I)I

    move-result v0

    return v0
.end method

.method protected a(Lcom/google/googlenav/ui/bx;I)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bx;IZ)I

    move-result v0

    return v0
.end method

.method protected a(Lcom/google/googlenav/ui/bx;IZ)I
    .locals 12

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    const/4 v1, 0x0

    const/4 v4, 0x0

    if-eqz p3, :cond_6

    iget-object v2, p1, Lcom/google/googlenav/ui/bx;->w:Lcom/google/googlenav/ui/aI;

    if-eqz v2, :cond_6

    iget-object v7, p1, Lcom/google/googlenav/ui/bx;->w:Lcom/google/googlenav/ui/aI;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-static {v7, v0}, Lcom/google/googlenav/ui/android/S;->a(Lcom/google/googlenav/ui/aI;Landroid/text/SpannableStringBuilder;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x0

    iget-object v3, v7, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    add-int/lit8 v8, v4, 0x1

    iget-object v5, p1, Lcom/google/googlenav/ui/bx;->y:Lx/U;

    iget-object v6, v7, Lcom/google/googlenav/ui/aI;->e:Lx/Q;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/android/TemplateView;->a(Ljava/lang/CharSequence;ZLcom/google/googlenav/ui/av;ILx/U;Lx/Q;)Landroid/widget/TextView;

    iget-object v0, v7, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateView;->d:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    move-object v1, v7

    move v7, v0

    move v0, v8

    :goto_1
    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v2, p1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    array-length v8, v2

    move v9, p2

    move v4, v0

    move-object v0, v1

    :goto_2
    if-ge v9, v8, :cond_2

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    aget-object v10, v0, v9

    if-nez v10, :cond_1

    move v0, v4

    :goto_3
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    move v4, v0

    move-object v0, v10

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-static {v10, v0}, Lcom/google/googlenav/ui/android/S;->a(Lcom/google/googlenav/ui/aI;Landroid/text/SpannableStringBuilder;)V

    iget-boolean v0, v10, Lcom/google/googlenav/ui/aI;->c:Z

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    iget-boolean v2, p1, Lcom/google/googlenav/ui/bx;->v:Z

    iget-object v3, v10, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    add-int/lit8 v11, v4, 0x1

    iget-object v5, p1, Lcom/google/googlenav/ui/bx;->y:Lx/U;

    iget-object v6, v10, Lcom/google/googlenav/ui/aI;->e:Lx/Q;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/android/TemplateView;->a(Ljava/lang/CharSequence;ZLcom/google/googlenav/ui/av;ILx/U;Lx/Q;)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lcom/google/googlenav/ui/android/TemplateView;->b(Landroid/widget/TextView;Lcom/google/googlenav/ui/aI;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    move v0, v11

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    if-lez v8, :cond_3

    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    const/4 v2, 0x1

    sub-int v2, v8, v2

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    move-object v3, v1

    :goto_4
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    iget-boolean v2, p1, Lcom/google/googlenav/ui/bx;->v:Z

    add-int/lit8 v8, v4, 0x1

    iget-object v5, p1, Lcom/google/googlenav/ui/bx;->y:Lx/U;

    iget-object v6, v0, Lcom/google/googlenav/ui/aI;->e:Lx/Q;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/android/TemplateView;->a(Ljava/lang/CharSequence;ZLcom/google/googlenav/ui/av;ILx/U;Lx/Q;)Landroid/widget/TextView;

    move v0, v8

    :goto_5
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->removeViews(II)V

    move v0, v7

    goto/16 :goto_0

    :cond_3
    move-object v3, v1

    goto :goto_4

    :cond_4
    move v0, v4

    goto :goto_5

    :cond_5
    move v0, v4

    goto :goto_3

    :cond_6
    move v7, v1

    move-object v1, v0

    move v0, v4

    goto :goto_1
.end method

.method protected a(Ljava/lang/CharSequence;ZLcom/google/googlenav/ui/av;ILx/U;Lx/Q;)Landroid/widget/TextView;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p4, v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/google/googlenav/ui/av;->ab:Lcom/google/googlenav/ui/av;

    if-ne p3, v2, :cond_6

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/android/TemplateView;->i:Ljava/lang/Object;

    if-ne v2, v3, :cond_5

    move v2, v5

    :goto_0
    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, p4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_0
    move-object v1, v6

    :cond_1
    if-nez v1, :cond_12

    sget-object v1, Lcom/google/googlenav/ui/av;->ab:Lcom/google/googlenav/ui/av;

    if-ne p3, v1, :cond_c

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f0300bf

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/android/PieLineView;

    sget-object v2, Lcom/google/googlenav/ui/android/TemplateView;->i:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :goto_1
    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    move-object v2, v1

    :goto_2
    iget v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->l:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->l:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_2
    sget-object v1, Lcom/google/googlenav/ui/av;->ab:Lcom/google/googlenav/ui/av;

    if-ne p3, v1, :cond_10

    move-object v0, v2

    check-cast v0, Lcom/google/googlenav/ui/android/PieLineView;

    move-object v1, v0

    invoke-direct {p0, v1, p1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/android/PieLineView;Ljava/lang/CharSequence;)V

    :goto_3
    iget-boolean v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->m:Z

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_3
    invoke-virtual {p0, v2, p5, p6}, Lcom/google/googlenav/ui/android/TemplateView;->a(Landroid/widget/TextView;Lx/U;Lx/Q;)V

    sget-object v1, Lcom/google/googlenav/ui/av;->aX:Lcom/google/googlenav/ui/av;

    if-eq p3, v1, :cond_4

    sget-object v1, Lcom/google/googlenav/ui/av;->ba:Lcom/google/googlenav/ui/av;

    if-eq p3, v1, :cond_4

    sget-object v1, Lcom/google/googlenav/ui/av;->aS:Lcom/google/googlenav/ui/av;

    if-ne p3, v1, :cond_11

    :cond_4
    move v1, v4

    :goto_4
    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/ui/android/TemplateView;->a(ZLandroid/widget/TextView;)V

    return-object v2

    :cond_5
    move v2, v4

    goto :goto_0

    :cond_6
    invoke-static {p3}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/av;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/android/TemplateView;->j:Ljava/lang/Object;

    if-ne v2, v3, :cond_7

    move v2, v5

    goto :goto_0

    :cond_7
    move v2, v4

    goto :goto_0

    :cond_8
    invoke-virtual {p0, p3}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/av;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/android/TemplateView;->k:Ljava/lang/Object;

    if-ne v2, v3, :cond_9

    move v2, v5

    goto :goto_0

    :cond_9
    move v2, v4

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/android/TemplateView;->a:Ljava/lang/Object;

    if-ne v2, v3, :cond_b

    move v2, v5

    goto/16 :goto_0

    :cond_b
    move v2, v4

    goto/16 :goto_0

    :cond_c
    sget-object v1, Lcom/google/googlenav/ui/av;->bR:Lcom/google/googlenav/ui/av;

    if-ne p3, v1, :cond_d

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f03010e

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/google/googlenav/ui/android/TemplateView;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0, p3}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/av;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f030139

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/google/googlenav/ui/android/TemplateView;->k:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_e
    invoke-static {p3}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/av;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f03013a

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/google/googlenav/ui/android/TemplateView;->j:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_f
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f030138

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/google/googlenav/ui/android/TemplateView;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_11
    move v1, p2

    goto/16 :goto_4

    :cond_12
    move-object v2, v1

    goto/16 :goto_2
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bx;

    iget-object v1, v1, Lcom/google/googlenav/ui/bx;->m:Lcom/google/googlenav/ui/bi;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bi;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bx;

    iget-object v1, v1, Lcom/google/googlenav/ui/bx;->o:Lcom/google/googlenav/ui/bi;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bi;)V

    return-void
.end method

.method protected a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bi;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bx;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lcom/google/googlenav/ui/bi;->d:Lcom/google/googlenav/ui/aj;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/google/googlenav/ui/bi;->d:Lcom/google/googlenav/ui/aj;

    iget-object v1, p2, Lcom/google/googlenav/ui/bi;->c:Lcom/google/googlenav/ui/aH;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/aj;->a(Lcom/google/googlenav/ui/aH;)Lk/l;

    move-result-object v0

    :goto_1
    check-cast v0, LaB/f;

    invoke-virtual {v0}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bx;

    iget v0, v0, Lcom/google/googlenav/ui/bx;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bx;

    iget v0, v0, Lcom/google/googlenav/ui/bx;->l:I

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bx;

    iget v1, v1, Lcom/google/googlenav/ui/bx;->q:I

    invoke-static {v0, p1, v1}, Lcom/google/googlenav/ui/android/TemplateView;->a(ILandroid/widget/ImageView;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p2, Lcom/google/googlenav/ui/bi;->a:Lk/l;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/googlenav/ui/bi;->a:Lk/l;

    goto :goto_1
.end method

.method protected a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aI;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->n:[Lcom/google/googlenav/ui/aI;

    aput-object p2, v0, v2

    iget v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->l:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->n:[Lcom/google/googlenav/ui/aI;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aI;Lx/U;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aI;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/aI;->e:Lx/Q;

    invoke-virtual {p0, p1, p3, v0}, Lcom/google/googlenav/ui/android/TemplateView;->a(Landroid/widget/TextView;Lx/U;Lx/Q;)V

    goto :goto_0
.end method

.method protected a(Landroid/widget/TextView;Ljava/util/List;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_0
    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aI;

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/android/S;->a(Lcom/google/googlenav/ui/aI;Landroid/text/SpannableStringBuilder;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->l:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void

    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method protected a(Landroid/widget/TextView;Lx/U;Lx/Q;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    invoke-static {p1, p2, p3}, Lcom/google/googlenav/ui/android/v;->a(Landroid/view/View;Lx/U;Lx/Q;)Lcom/google/googlenav/ui/android/v;

    const v0, 0x7f02025c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bx;->g()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method protected a(ZLandroid/widget/TextView;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method a(Lcom/google/googlenav/ui/av;)Z
    .locals 1

    sget-object v0, Lcom/google/googlenav/ui/av;->q:Lcom/google/googlenav/ui/av;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/google/googlenav/ui/av;->bf:Lcom/google/googlenav/ui/av;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/google/googlenav/ui/av;->bh:Lcom/google/googlenav/ui/av;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/google/googlenav/ui/av;->bi:Lcom/google/googlenav/ui/av;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/google/googlenav/ui/bx;)V
    .locals 5

    const/16 v1, 0x35

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bx;

    if-eqz p1, :cond_3

    iget v0, p1, Lcom/google/googlenav/ui/bx;->r:I

    if-eq v0, v1, :cond_3

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->J:Lcom/google/googlenav/ui/z;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/TemplateView;->b()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bx;

    if-eq v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bx;)I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateView;->f:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/google/googlenav/ui/bx;->m:Lcom/google/googlenav/ui/bi;

    invoke-static {v1, p1, v2, v0}, Lcom/google/googlenav/ui/android/TemplateView;->a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bi;I)Z

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateView;->g:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/google/googlenav/ui/bx;->o:Lcom/google/googlenav/ui/bi;

    invoke-static {v2, p1, v3, v0}, Lcom/google/googlenav/ui/android/TemplateView;->a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bi;I)Z

    move-result v0

    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateView;->a()V

    :cond_1
    invoke-virtual {p1}, Lcom/google/googlenav/ui/bx;->g()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateView;->setEnabled(Z)V

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->H:[Lcom/google/googlenav/ui/bx;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->H:[Lcom/google/googlenav/ui/bx;

    array-length v0, v0

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Lcom/google/googlenav/ui/view/android/aO;->a(Landroid/view/View;Lcom/google/googlenav/ui/bx;)V

    :cond_2
    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    iget v0, p1, Lcom/google/googlenav/ui/bx;->r:I

    if-ne v0, v1, :cond_4

    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/android/TemplateView;->setMinimumHeight(I)V

    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/ui/android/TemplateView;->m:Z

    return-void
.end method

.method public f()Lcom/google/googlenav/ui/bx;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bx;

    return-object v0
.end method

.method protected g()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected h()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0f0007

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    const v0, 0x7f0f002f

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->f:Landroid/widget/ImageView;

    const v0, 0x7f0f0033

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->g:Landroid/widget/ImageView;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bx;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bx;

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->z:Lx/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bx;

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->z:Lx/x;

    new-instance v1, Lx/q;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bx;->k()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateView;->h:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bx;->l()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lx/q;-><init>(II)V

    invoke-interface {v0, v1}, Lx/x;->a(Lx/Q;)Z

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v6

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v6

    move v7, v4

    move v4, v3

    move v3, v7

    :goto_1
    if-ltz v3, :cond_1

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    float-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v6

    move v1, v0

    :goto_2
    if-ltz v1, :cond_5

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_4

    check-cast v0, Landroid/widget/TextView;

    iget v2, p0, Lcom/google/googlenav/ui/android/TemplateView;->l:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_5
    return-void
.end method
