.class final Lcom/flurry/android/g;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/flurry/android/CatalogActivity;


# direct methods
.method synthetic constructor <init>(Lcom/flurry/android/CatalogActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/android/g;-><init>(Lcom/flurry/android/CatalogActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/flurry/android/CatalogActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/flurry/android/g;->a:Lcom/flurry/android/CatalogActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/g;->a:Lcom/flurry/android/CatalogActivity;

    invoke-static {v0}, Lcom/flurry/android/CatalogActivity;->a(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/y;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/i;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/flurry/android/g;->a:Lcom/flurry/android/CatalogActivity;

    invoke-static {v3}, Lcom/flurry/android/CatalogActivity;->b(Lcom/flurry/android/CatalogActivity;)J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/flurry/android/i;-><init>(BJ)V

    iget-object v2, p0, Lcom/flurry/android/g;->a:Lcom/flurry/android/CatalogActivity;

    invoke-static {v2}, Lcom/flurry/android/CatalogActivity;->a(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/y;

    move-result-object v2

    iget-wide v2, v2, Lcom/flurry/android/y;->c:J

    iget-object v4, v0, Lcom/flurry/android/y;->d:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-wide v2, v0, Lcom/flurry/android/y;->c:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v0, "Cannot find Android Market information. <p>Please check your network"

    .line 148
    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-virtual {p1, v0, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 129
    if-nez p2, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 139
    :goto_0
    return v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/g;->a:Lcom/flurry/android/CatalogActivity;

    invoke-static {v0}, Lcom/flurry/android/CatalogActivity;->a(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/y;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/flurry/android/g;->a:Lcom/flurry/android/CatalogActivity;

    invoke-static {v0}, Lcom/flurry/android/CatalogActivity;->a(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/y;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/i;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/flurry/android/g;->a:Lcom/flurry/android/CatalogActivity;

    invoke-static {v3}, Lcom/flurry/android/CatalogActivity;->b(Lcom/flurry/android/CatalogActivity;)J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/flurry/android/i;-><init>(BJ)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/y;->a(Lcom/flurry/android/i;)V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/g;->a:Lcom/flurry/android/CatalogActivity;

    invoke-static {v0}, Lcom/flurry/android/CatalogActivity;->c(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/n;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/g;->a:Lcom/flurry/android/CatalogActivity;

    invoke-static {v2}, Lcom/flurry/android/CatalogActivity;->a(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/y;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/flurry/android/n;->a(Landroid/content/Context;Lcom/flurry/android/y;Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x1

    goto :goto_0
.end method
