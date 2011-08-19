.class Lh/ao;
.super Ljava/lang/Object;

# interfaces
.implements LI/n;


# instance fields
.field final synthetic a:Lh/dW;


# direct methods
.method constructor <init>(Lh/dW;)V
    .locals 0

    iput-object p1, p0, Lh/ao;->a:Lh/dW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lh/ao;->a:Lh/dW;

    invoke-static {v0}, Lh/dW;->b(Lh/dW;)Lcom/google/googlenav/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/c;->ag()Lcom/google/googlenav/bH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bH;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/googlenav/bH;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/bH;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/s;

    const v1, 0x7f0f01bb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/google/googlenav/s;->a()Lk/l;

    move-result-object v0

    check-cast v0, LaB/f;

    invoke-virtual {v0}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0x7f0f01bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lh/ao;->a:Lh/dW;

    invoke-static {v1}, Lh/dW;->b(Lh/dW;)Lcom/google/googlenav/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f01be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x2bd

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0f01bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x108009a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    const v0, 0x7f0f01bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0x2c0

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lh/s;

    invoke-direct {v1, p0}, Lh/s;-><init>(Lh/ao;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f030065

    return v0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/u;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/u;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020174

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    invoke-direct {p0, p2}, Lh/ao;->a(Landroid/view/View;)V

    return-void
.end method

.method public b()I
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x103000b

    :goto_0
    return v0

    :cond_0
    const v0, 0x103000d

    goto :goto_0
.end method
