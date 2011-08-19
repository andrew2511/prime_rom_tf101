.class Lh/ai;
.super Ljava/lang/Object;

# interfaces
.implements LI/n;


# instance fields
.field final synthetic a:Lh/fo;


# direct methods
.method constructor <init>(Lh/fo;)V
    .locals 0

    iput-object p1, p0, Lh/ai;->a:Lh/fo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f03001f

    return v0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020174

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/a;->requestWindowFeature(I)Z

    :cond_0
    const v0, 0x7f0f00b3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lh/ai;->a:Lh/fo;

    iget-object v1, v1, Lh/fo;->a:Lh/bN;

    iget-object v1, v1, Lh/bN;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0f0082

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lh/ai;->a:Lh/fo;

    iget-object v1, v1, Lh/fo;->a:Lh/bN;

    iget-object v1, v1, Lh/bN;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lh/ai;->a:Lh/fo;

    iget-object v1, v1, Lh/fo;->a:Lh/bN;

    iget-boolean v1, v1, Lh/bN;->g:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    :cond_1
    iget-object v0, p0, Lh/ai;->a:Lh/fo;

    invoke-static {v0, p2}, Lh/fo;->a(Lh/fo;Landroid/view/View;)V

    iget-object v0, p0, Lh/ai;->a:Lh/fo;

    invoke-static {v0, p2}, Lh/fo;->b(Lh/fo;Landroid/view/View;)V

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x103000b

    return v0
.end method
