.class Lcom/google/googlenav/ui/view/android/aM;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/al;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/al;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aM;->b:Lcom/google/googlenav/ui/view/android/al;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/aM;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aM;->a:Landroid/widget/Button;

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
