.class Lcom/google/googlenav/ui/view/android/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/RadioGroup;

.field final synthetic c:I

.field final synthetic d:Lcom/google/googlenav/ui/view/android/bs;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bs;Ljava/lang/String;Landroid/widget/RadioGroup;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aw;->d:Lcom/google/googlenav/ui/view/android/bs;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/aw;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/aw;->b:Landroid/widget/RadioGroup;

    iput p4, p0, Lcom/google/googlenav/ui/view/android/aw;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/16 v3, 0x6a6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aw;->d:Lcom/google/googlenav/ui/view/android/bs;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/bs;->g(Lcom/google/googlenav/ui/view/android/bs;)Lx/t;

    move-result-object v0

    iget-object v0, v0, Lx/t;->a:Lcom/google/googlenav/c;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/c;->i(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aw;->d:Lcom/google/googlenav/ui/view/android/bs;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/bs;->f(Lcom/google/googlenav/ui/view/android/bs;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aw;->b:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aw;->b:Landroid/widget/RadioGroup;

    if-lez v0, :cond_1

    const v0, 0x7f0f02f8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0f02f7

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/google/googlenav/ui/view/android/aw;->c:I

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aw;->b:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aw;->d:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/bs;->b:Lcom/google/googlenav/ui/view/android/e;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aw;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aw;->d:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/bs;->b:Lcom/google/googlenav/ui/view/android/e;

    iget v1, p0, Lcom/google/googlenav/ui/view/android/aw;->c:I

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aw;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    goto :goto_0
.end method
