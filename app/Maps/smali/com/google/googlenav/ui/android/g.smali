.class Lcom/google/googlenav/ui/android/g;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/TemplateViewForHtml;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/TemplateViewForHtml;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/g;->a:Lcom/google/googlenav/ui/android/TemplateViewForHtml;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/google/googlenav/android/c;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/g;->a:Lcom/google/googlenav/ui/android/TemplateViewForHtml;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/android/AndroidGmmApplication;

    invoke-virtual {p0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/P;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/android/c;

    return-object p0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/g;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/g;->a:Lcom/google/googlenav/ui/android/TemplateViewForHtml;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->a(Lcom/google/googlenav/ui/android/TemplateViewForHtml;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/g;->a:Lcom/google/googlenav/ui/android/TemplateViewForHtml;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->a(Lcom/google/googlenav/ui/android/TemplateViewForHtml;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/g;->a:Lcom/google/googlenav/ui/android/TemplateViewForHtml;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->b(Lcom/google/googlenav/ui/android/TemplateViewForHtml;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/g;->b:Z

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/g;->a()Lcom/google/googlenav/android/c;

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
