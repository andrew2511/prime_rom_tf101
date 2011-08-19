.class public Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;
.super Lcom/google/googlenav/ui/android/TemplateView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private b()Lcom/google/googlenav/ui/au;
    .locals 0

    iget-object p0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->h:Lcom/google/googlenav/ui/bx;

    check-cast p0, Lcom/google/googlenav/ui/au;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->b()Lcom/google/googlenav/ui/au;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/googlenav/ui/au;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->h:Lcom/google/googlenav/ui/bx;

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->m:Lcom/google/googlenav/ui/bi;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/google/googlenav/ui/bi;->d:Lcom/google/googlenav/ui/aj;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/googlenav/ui/bi;->d:Lcom/google/googlenav/ui/aj;

    iget-object v0, v0, Lcom/google/googlenav/ui/bi;->c:Lcom/google/googlenav/ui/aH;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/aj;->a(Lcom/google/googlenav/ui/aH;)Lk/l;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    check-cast v0, LaB/f;

    invoke-virtual {v0}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->h:Lcom/google/googlenav/ui/bx;

    iget v0, v0, Lcom/google/googlenav/ui/bx;->l:I

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->a(I)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/google/googlenav/ui/bi;->a:Lk/l;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/googlenav/ui/bi;->a:Lk/l;

    goto :goto_1
.end method

.method public b(Lcom/google/googlenav/ui/bx;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->h:Lcom/google/googlenav/ui/bx;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->a(Lcom/google/googlenav/ui/bx;)I

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->b()Lcom/google/googlenav/ui/au;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/googlenav/ui/au;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->m:Lcom/google/googlenav/ui/bi;

    iget v1, p1, Lcom/google/googlenav/ui/bx;->l:I

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->a(I)V

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/googlenav/ui/bi;->a:Lk/l;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/google/googlenav/ui/bi;->a:Lk/l;

    check-cast v0, LaB/f;

    invoke-virtual {v0}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->a()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/googlenav/ui/au;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/google/googlenav/ui/au;->a:Lu/e;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/c;->a(Landroid/content/Context;Lu/e;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v0, 0x11

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_1
.end method
