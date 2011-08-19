.class Lcom/google/googlenav/ui/view/android/aS;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/V;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/V;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/android/V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/android/V;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/V;->d(Lcom/google/googlenav/ui/view/android/V;)Lcom/google/googlenav/suggest/android/SuggestView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/android/V;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/V;->d(Lcom/google/googlenav/ui/view/android/V;)Lcom/google/googlenav/suggest/android/SuggestView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/android/V;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/V;->c(Lcom/google/googlenav/ui/view/android/V;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
