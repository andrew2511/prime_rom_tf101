.class public Lcom/google/googlenav/ui/TabRow;
.super Landroid/widget/HorizontalScrollView;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/LinearLayout;

.field private c:Lcom/google/googlenav/ui/C;

.field private d:Lcom/google/googlenav/ui/bq;

.field private e:I

.field private f:Z

.field private final g:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/googlenav/ui/TabRow;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/TabRow;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x2

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/google/googlenav/ui/TabRow;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/TabRow;->f:Z

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/TabRow;->b:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/google/googlenav/ui/TabRow;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/TabRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/TabRow;->setHorizontalScrollBarEnabled(Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/TabRow;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/TabRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/google/googlenav/ui/TabRow;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public a(IZ)V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/TabRow;->f:Z

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/google/googlenav/ui/TabRow;->e:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/TabRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    move v2, v5

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/TabRow;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-eqz p2, :cond_4

    invoke-virtual {p0, v0, v5}, Lcom/google/googlenav/ui/TabRow;->smoothScrollTo(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0, v5}, Lcom/google/googlenav/ui/TabRow;->scrollTo(II)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlenav/ui/TabRow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03011d

    iget-object v2, p0, Lcom/google/googlenav/ui/TabRow;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object v0, p0, Lcom/google/googlenav/ui/TabRow;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v3

    iget-object v1, p0, Lcom/google/googlenav/ui/TabRow;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f0f0347

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/TabRow;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/google/googlenav/ui/TabRow;->f:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/TabRow;->c:Lcom/google/googlenav/ui/C;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/TabRow;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/TabRow;->c:Lcom/google/googlenav/ui/C;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/C;->a(I)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/TabRow;->f:Z

    iget v0, p0, Lcom/google/googlenav/ui/TabRow;->e:I

    if-ltz v0, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/googlenav/ui/TabRow;->e:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/TabRow;->a(IZ)V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/TabRow;->d:Lcom/google/googlenav/ui/bq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/TabRow;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/TabRow;->d:Lcom/google/googlenav/ui/bq;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/bq;->a(I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
