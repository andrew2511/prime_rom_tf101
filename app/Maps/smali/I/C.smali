.class public LI/C;
.super Ljava/lang/Object;

# interfaces
.implements LI/n;


# instance fields
.field private a:Law/e;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/google/googlenav/ui/wizard/android/f;


# direct methods
.method public constructor <init>(Law/e;Lcom/google/googlenav/ui/wizard/android/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI/C;->a:Law/e;

    iput-object p2, p0, LI/C;->h:Lcom/google/googlenav/ui/wizard/android/f;

    return-void
.end method

.method private static a(Law/e;)I
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Law/b;->e(Law/e;I)I

    move-result v0

    return v0
.end method

.method private static a(Law/e;I)I
    .locals 1

    invoke-static {p0, p1}, Law/b;->e(Law/e;I)I

    move-result v0

    div-int/lit16 v0, v0, 0xe10

    return v0
.end method

.method private a(Landroid/view/View;III)Landroid/widget/ImageView;
    .locals 5

    const/16 v4, 0xf

    const/16 v3, 0xe

    const/4 v2, 0x0

    const v0, 0x7f0f0024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    if-eq p4, v0, :cond_1

    const v0, 0x7f0f0137

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-ne p4, v4, :cond_3

    iput-object v0, p0, LI/C;->f:Landroid/widget/TextView;

    :cond_0
    :goto_0
    iget-object v1, p0, LI/C;->a:Law/e;

    invoke-static {v1, p4}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0f01af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-ne p4, v4, :cond_4

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v1, 0x128

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, LI/v;

    invoke-direct {v1, p0}, LI/v;-><init>(LI/C;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_1
    const v0, 0x7f0f01ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x125

    invoke-direct {p0, p3, v1}, LI/C;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f01b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0

    :cond_3
    if-ne p4, v3, :cond_0

    iput-object v0, p0, LI/C;->g:Landroid/widget/TextView;

    goto :goto_0

    :cond_4
    if-ne p4, v3, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v1, 0x126

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, LI/u;

    invoke-direct {v1, p0}, LI/u;-><init>(LI/C;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method static synthetic a(LI/C;)Lcom/google/googlenav/ui/wizard/android/f;
    .locals 1

    iget-object v0, p0, LI/C;->h:Lcom/google/googlenav/ui/wizard/android/f;

    return-object v0
.end method

.method private a(II)Ljava/lang/String;
    .locals 2

    invoke-static {p2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LI/C;->a:Law/e;

    invoke-static {v1, p1}, LI/C;->a(Law/e;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Law/e;)I
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Law/b;->e(Law/e;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f030060

    return v0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    const/16 v1, 0x138

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/a;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0198

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x129

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LI/C;->a:Law/e;

    invoke-static {v0}, LI/C;->b(Law/e;)I

    move-result v0

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/y;->a(II)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0f019a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x12a

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f019b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, LI/C;->a:Law/e;

    invoke-static {v1}, LI/C;->a(Law/e;)I

    move-result v1

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/y;->a(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12b

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f019d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x12d

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f01a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x6

    const/16 v2, 0x12e

    invoke-direct {p0, v1, v2}, LI/C;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f01a2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x4

    const/16 v2, 0x130

    invoke-direct {p0, v1, v2}, LI/C;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f01a4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    const/16 v2, 0x12f

    invoke-direct {p0, v1, v2}, LI/C;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f01a5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LI/C;->e:Landroid/widget/ImageView;

    const v0, 0x7f0f01a6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x134

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f01a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x135

    const/4 v2, 0x7

    const/16 v3, 0xe

    invoke-direct {p0, v0, v1, v2, v3}, LI/C;->a(Landroid/view/View;III)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, LI/C;->b:Landroid/widget/ImageView;

    const v0, 0x7f0f01a8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x137

    const/4 v2, 0x5

    const/16 v3, 0xf

    invoke-direct {p0, v0, v1, v2, v3}, LI/C;->a(Landroid/view/View;III)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, LI/C;->c:Landroid/widget/ImageView;

    const v0, 0x7f0f01a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x136

    const/16 v2, 0x9

    const/4 v3, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, LI/C;->a(Landroid/view/View;III)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, LI/C;->d:Landroid/widget/ImageView;

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0f01aa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/16 v0, 0x131

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/googlenav/ui/wizard/android/b;)V
    .locals 2

    sget-object v0, LI/w;->a:[I

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/android/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LI/C;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/android/b;->c()LaB/f;

    move-result-object v1

    invoke-virtual {v1}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, LI/C;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/android/b;->c()LaB/f;

    move-result-object v1

    invoke-virtual {v1}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, LI/C;->d:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/android/b;->c()LaB/f;

    move-result-object v1

    invoke-virtual {v1}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, LI/C;->e:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/android/b;->c()LaB/f;

    move-result-object v1

    invoke-virtual {v1}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, LI/C;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x103000c

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, LI/C;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
