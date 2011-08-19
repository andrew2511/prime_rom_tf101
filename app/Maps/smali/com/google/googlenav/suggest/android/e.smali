.class Lcom/google/googlenav/suggest/android/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/suggest/android/SuggestView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/suggest/android/SuggestView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/suggest/android/e;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/e;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->b(Lcom/google/googlenav/suggest/android/SuggestView;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/e;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->a(Lcom/google/googlenav/suggest/android/SuggestView;Z)V

    :cond_0
    return-void
.end method
