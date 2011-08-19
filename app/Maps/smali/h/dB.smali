.class Lh/dB;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Lh/cL;


# direct methods
.method constructor <init>(Lh/cL;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lh/dB;->e:Lh/cL;

    iput-object p2, p0, Lh/dB;->a:Landroid/view/View;

    iput-object p3, p0, Lh/dB;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lh/dB;->c:Landroid/widget/TextView;

    iput-object p5, p0, Lh/dB;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lh/dB;->e:Lh/cL;

    iget-object v1, p0, Lh/dB;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lh/cL;->a(Lh/cL;Landroid/view/View;)V

    iget-object v0, p0, Lh/dB;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lh/dB;->e:Lh/cL;

    invoke-static {v2}, Lh/cL;->a(Lh/cL;)[Lcom/google/googlenav/bu;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh/dB;->e:Lh/cL;

    invoke-static {v0}, Lh/cL;->a(Lh/cL;)[Lcom/google/googlenav/bu;

    move-result-object v0

    aget-object v0, v0, p3

    iget-object v0, v0, Lcom/google/googlenav/bu;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dB;->e:Lh/cL;

    invoke-static {v0}, Lh/cL;->a(Lh/cL;)[Lcom/google/googlenav/bu;

    move-result-object v0

    aget-object v0, v0, p3

    iget-object v0, v0, Lcom/google/googlenav/bu;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lh/dB;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lh/dB;->e:Lh/cL;

    invoke-static {v1}, Lh/cL;->a(Lh/cL;)[Lcom/google/googlenav/bu;

    move-result-object v1

    aget-object v1, v1, p3

    iget-object v1, v1, Lcom/google/googlenav/bu;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh/dB;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lh/dB;->e:Lh/cL;

    invoke-static {v1}, Lh/cL;->a(Lh/cL;)[Lcom/google/googlenav/bu;

    move-result-object v1

    aget-object v1, v1, p3

    iget-object v1, v1, Lcom/google/googlenav/bu;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lh/dB;->b:Landroid/widget/TextView;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lh/dB;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lh/dB;->e:Lh/cL;

    invoke-static {v1}, Lh/cL;->a(Lh/cL;)[Lcom/google/googlenav/bu;

    move-result-object v1

    aget-object v1, v1, p3

    iget-object v1, v1, Lcom/google/googlenav/bu;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh/dB;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lh/dB;->e:Lh/cL;

    invoke-static {v1}, Lh/cL;->a(Lh/cL;)[Lcom/google/googlenav/bu;

    move-result-object v1

    aget-object v1, v1, p3

    iget-object v1, v1, Lcom/google/googlenav/bu;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2

    iget-object v0, p0, Lh/dB;->d:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
