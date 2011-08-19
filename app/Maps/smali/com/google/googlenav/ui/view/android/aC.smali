.class Lcom/google/googlenav/ui/view/android/aC;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lx/B;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/google/googlenav/ui/view/android/ae;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/ae;Lx/B;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aC;->c:Lcom/google/googlenav/ui/view/android/ae;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/aC;->a:Lx/B;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/aC;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aC;->c:Lcom/google/googlenav/ui/view/android/ae;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/ae;->a(Lcom/google/googlenav/ui/view/android/ae;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aC;->a:Lx/B;

    iget-object v0, v0, Lx/B;->h:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aC;->a:Lx/B;

    iget-object v0, v0, Lx/B;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aC;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_1
    return-void
.end method
