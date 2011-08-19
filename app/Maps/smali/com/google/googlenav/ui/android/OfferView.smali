.class public Lcom/google/googlenav/ui/android/OfferView;
.super Landroid/widget/FrameLayout;


# static fields
.field private static c:I

.field private static d:I


# instance fields
.field protected a:Landroid/webkit/WebView;

.field protected b:Landroid/widget/ViewSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/google/googlenav/ui/android/OfferView;->c:I

    const/4 v0, 0x1

    sput v0, Lcom/google/googlenav/ui/android/OfferView;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/android/OfferView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/android/OfferView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/OfferView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lcom/google/googlenav/ui/android/OfferView;->d:I

    return v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0300ba

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0f0259

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/OfferView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/OfferView;->a:Landroid/webkit/WebView;

    const v0, 0x7f0f0257

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/OfferView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/OfferView;->b:Landroid/widget/ViewSwitcher;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/OfferView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/OfferView;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/googlenav/ui/android/p;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/android/p;-><init>(Lcom/google/googlenav/ui/android/OfferView;Lcom/google/googlenav/ui/android/K;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://google.com/coupons/page?cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&ui=mobile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/OfferView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/OfferView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/OfferView;->b(Ljava/lang/String;)V

    return-void
.end method
