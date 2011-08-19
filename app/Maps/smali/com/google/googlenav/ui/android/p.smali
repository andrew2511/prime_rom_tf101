.class Lcom/google/googlenav/ui/android/p;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/OfferView;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/android/OfferView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/p;->a:Lcom/google/googlenav/ui/android/OfferView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/android/OfferView;Lcom/google/googlenav/ui/android/K;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/p;-><init>(Lcom/google/googlenav/ui/android/OfferView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->a:Lcom/google/googlenav/ui/android/OfferView;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/OfferView;->b:Landroid/widget/ViewSwitcher;

    invoke-static {}, Lcom/google/googlenav/ui/android/OfferView;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ae()Lcom/google/googlenav/g;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/googlenav/g;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
