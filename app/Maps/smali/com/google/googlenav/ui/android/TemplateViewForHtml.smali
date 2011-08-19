.class public Lcom/google/googlenav/ui/android/TemplateViewForHtml;
.super Lcom/google/googlenav/ui/android/TemplateView;


# static fields
.field private static m:I


# instance fields
.field private a:Landroid/webkit/WebView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/ViewGroup;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1f4

    sput v0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/TemplateViewForHtml;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->j:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->a:Landroid/webkit/WebView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/googlenav/ui/android/g;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/android/g;-><init>(Lcom/google/googlenav/ui/android/TemplateViewForHtml;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->a:Landroid/webkit/WebView;

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    const-string v3, "charset=utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/android/TemplateViewForHtml;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->k:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/ui/bx;)I
    .locals 3

    const/16 v0, 0x453

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x270

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->A:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->l:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bx;)I

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/googlenav/ui/android/TemplateView;->onFinishInflate()V

    const v0, 0x7f0f021c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->a:Landroid/webkit/WebView;

    const v0, 0x7f0f021b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->i:Landroid/widget/TextView;

    const v0, 0x7f0f021a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->j:Landroid/view/ViewGroup;

    const v0, 0x7f0f021d

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->k:Landroid/widget/TextView;

    const v0, 0x7f0f01eb

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->l:Landroid/widget/TextView;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->m:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;->onMeasure(II)V

    return-void
.end method
