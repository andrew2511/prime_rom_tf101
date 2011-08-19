.class Lcom/google/googlenav/ui/view/android/bw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/bg;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bw;->a:Lcom/google/googlenav/ui/view/android/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bw;->a:Lcom/google/googlenav/ui/view/android/bg;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/bg;->a(Lcom/google/googlenav/ui/view/android/bg;)Lcom/google/googlenav/suggest/android/SuggestView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bw;->a:Lcom/google/googlenav/ui/view/android/bg;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/bg;->b:Lcom/google/googlenav/ui/view/android/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bw;->a:Lcom/google/googlenav/ui/view/android/bg;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/bg;->b(Lcom/google/googlenav/ui/view/android/bg;)Lx/V;

    move-result-object v1

    iget v1, v1, Lx/V;->c:I

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bw;->a:Lcom/google/googlenav/ui/view/android/bg;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/android/bg;->a(Lcom/google/googlenav/ui/view/android/bg;)Lcom/google/googlenav/suggest/android/SuggestView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/suggest/android/SuggestView;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v3

    goto :goto_0
.end method
