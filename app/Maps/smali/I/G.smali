.class public LI/G;
.super Ljava/lang/Object;

# interfaces
.implements LI/n;


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/android/f;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/android/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI/G;->a:Lcom/google/googlenav/ui/wizard/android/f;

    return-void
.end method

.method static synthetic a(LI/G;)Lcom/google/googlenav/ui/wizard/android/f;
    .locals 1

    iget-object v0, p0, LI/G;->a:Lcom/google/googlenav/ui/wizard/android/f;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f030061

    return v0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0f01ab

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x12c

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f01ac

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x133

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f01ad

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x124

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, LI/P;

    invoke-direct {v1, p0}, LI/P;-><init>(LI/G;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x103000c

    return v0
.end method
