.class public Lh/eP;
.super Ljava/lang/Object;

# interfaces
.implements LI/n;
.implements Lc/l;


# instance fields
.field final synthetic a:Lh/ar;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lh/ar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lh/eP;->a:Lh/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh/eP;->b:Ljava/lang/String;

    iput-object p3, p0, Lh/eP;->c:Ljava/lang/String;

    iput-object p4, p0, Lh/eP;->d:Ljava/lang/String;

    iput-object p5, p0, Lh/eP;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f0300bb

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

    const v0, 0x7f0f00b3

    iget-object v1, p0, Lh/eP;->b:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lh/ar;->a(ILjava/lang/String;Landroid/view/View;)Landroid/widget/TextView;

    const v0, 0x7f0f025b

    iget-object v1, p0, Lh/eP;->c:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lh/ar;->a(ILjava/lang/String;Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lh/bo;

    invoke-direct {v1, p0}, Lh/bo;-><init>(Lh/eP;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0f003f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lh/eP;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lh/bp;

    invoke-direct {v1, p0}, Lh/bp;-><init>(Lh/eP;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0f0040

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lh/eP;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lh/bq;

    invoke-direct {v1, p0}, Lh/bq;-><init>(Lh/eP;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0f0143

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f025a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lh/eP;->f:Landroid/widget/LinearLayout;

    return-void
.end method

.method public a(Ljava/lang/String;JLaD/q;)V
    .locals 3

    if-eqz p4, :cond_0

    invoke-virtual {p4}, LaD/q;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, LaD/q;->e()Lk/l;

    move-result-object v0

    check-cast v0, LaB/f;

    iget-object v1, p0, Lh/eP;->f:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0006

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    const v0, 0x7f0f0014

    iget-object v1, p0, Lh/eP;->f:Landroid/widget/LinearLayout;

    invoke-static {v0, p1, v1}, Lh/ar;->a(ILjava/lang/String;Landroid/view/View;)Landroid/widget/TextView;

    iget-object v0, p0, Lh/eP;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x103000b

    return v0
.end method
