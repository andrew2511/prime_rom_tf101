.class Lcom/google/googlenav/suggest/android/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/suggest/android/SuggestView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/suggest/android/SuggestView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/suggest/android/d;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/d;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/d;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->onFilterComplete(I)V

    :cond_0
    return-void
.end method
