.class Lcom/google/googlenav/suggest/android/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/suggest/android/SuggestView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/suggest/android/SuggestView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/suggest/android/b;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    const/4 v3, 0x0

    const-string v1, ""

    if-eqz p2, :cond_2

    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v1, v0

    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x1020015

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-static {}, LJ/h;->a()LJ/h;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "d"

    invoke-virtual {v1, v0, v2}, LJ/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/b;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v0, v3}, Lcom/google/googlenav/suggest/android/SuggestView;->b(Lcom/google/googlenav/suggest/android/SuggestView;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/b;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v0, v3}, Lcom/google/googlenav/suggest/android/SuggestView;->a(Lcom/google/googlenav/suggest/android/SuggestView;Z)V

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
