.class public Lcom/google/googlenav/ui/view/android/N;
.super Lcom/google/googlenav/ui/view/android/a;


# instance fields
.field private f:Lx/o;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 1

    const v0, 0x103000b

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/a;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;I)V

    return-void
.end method

.method private static a(Landroid/view/View;II)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {p2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;Lcom/google/googlenav/ui/view/android/E;Landroid/content/Context;)V
    .locals 10

    const v9, 0x7f0f030f

    const v8, 0x7f0f030e

    const v4, 0x7f0f030d

    const v0, 0x7f0f026c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v0, 0x7f0f0309

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    const/16 v0, 0x311

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0306

    const/16 v1, 0x2fd

    invoke-static {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/N;->a(Landroid/view/View;II)V

    const v0, 0x7f0f0307

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x301

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/ad;

    invoke-direct {v1, p3}, Lcom/google/googlenav/ui/view/android/ad;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0308

    const/16 v1, 0x2fe

    invoke-static {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/N;->a(Landroid/view/View;II)V

    const/16 v0, 0x300

    invoke-static {p0, v4, v0}, Lcom/google/googlenav/ui/view/android/N;->a(Landroid/view/View;II)V

    const/16 v0, 0x2f9

    invoke-static {p0, v8, v0}, Lcom/google/googlenav/ui/view/android/N;->a(Landroid/view/View;II)V

    const v0, 0x7f0f030b

    const/16 v1, 0x2ff

    invoke-static {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/N;->a(Landroid/view/View;II)V

    const v0, 0x7f0f030c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x2fc

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "google.com/places"

    invoke-static {v1, v4}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x2fa

    invoke-static {p0, v9, v0}, Lcom/google/googlenav/ui/view/android/N;->a(Landroid/view/View;II)V

    if-eqz p1, :cond_0

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/ac;

    invoke-direct {v0, v2, v5}, Lcom/google/googlenav/ui/view/android/ac;-><init>(Landroid/widget/TextView;Landroid/widget/Button;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0f0305

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f0f030a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v0, Lcom/google/googlenav/ui/view/android/ab;

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/ui/view/android/ab;-><init>(Lcom/google/googlenav/ui/view/android/E;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/aa;

    invoke-direct {v0, p2}, Lcom/google/googlenav/ui/view/android/aa;-><init>(Lcom/google/googlenav/ui/view/android/E;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/Y;

    invoke-direct {v0, p2, v2}, Lcom/google/googlenav/ui/view/android/Y;-><init>(Lcom/google/googlenav/ui/view/android/E;Landroid/widget/TextView;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/N;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/N;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020174

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/N;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v0

    check-cast v0, Lx/o;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/N;->f:Lx/o;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/N;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/N;->setContentView(Landroid/view/View;)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/Z;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/Z;-><init>(Lcom/google/googlenav/ui/view/android/N;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/N;->f:Lx/o;

    iget-object v2, v2, Lx/o;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/N;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-static {v0, v2, v1, v3}, Lcom/google/googlenav/ui/view/android/N;->a(Landroid/view/View;Ljava/lang/String;Lcom/google/googlenav/ui/view/android/E;Landroid/content/Context;)V

    return-void
.end method
