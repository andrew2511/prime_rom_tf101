.class public Lcom/flurry/android/CatalogActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Lcom/flurry/android/p;

.field private c:Ljava/util/List;

.field private d:Lcom/flurry/android/n;

.field private e:Lcom/flurry/android/y;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/CatalogActivity;->c:Ljava/util/List;

    .line 420
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/y;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->e:Lcom/flurry/android/y;

    return-object v0
.end method

.method private a(Lcom/flurry/android/q;)V
    .locals 3
    .parameter

    .prologue
    .line 387
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/flurry/android/q;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->a:Landroid/webkit/WebView;

    iget-object v1, p1, Lcom/flurry/android/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->b:Lcom/flurry/android/p;

    iget-object v1, p1, Lcom/flurry/android/q;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/flurry/android/p;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v0

    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/flurry/android/q;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/flurry/android/CatalogActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->d:Lcom/flurry/android/n;

    invoke-virtual {v0}, Lcom/flurry/android/n;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic c(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/n;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->d:Lcom/flurry/android/n;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    .line 334
    instance-of v1, p1, Lcom/flurry/android/r;

    if-eqz v1, :cond_1

    .line 338
    new-instance v1, Lcom/flurry/android/q;

    invoke-direct {v1}, Lcom/flurry/android/q;-><init>()V

    .line 339
    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->e:Lcom/flurry/android/y;

    iput-object v2, v1, Lcom/flurry/android/q;->a:Lcom/flurry/android/y;

    .line 340
    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/flurry/android/q;->b:Ljava/lang/String;

    .line 341
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/flurry/android/CatalogActivity;->b:Lcom/flurry/android/p;

    invoke-virtual {v3}, Lcom/flurry/android/p;->b()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Lcom/flurry/android/q;->c:Ljava/util/List;

    .line 342
    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v1, p0, Lcom/flurry/android/CatalogActivity;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 346
    iget-object v1, p0, Lcom/flurry/android/CatalogActivity;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 349
    :cond_0
    new-instance v2, Lcom/flurry/android/q;

    invoke-direct {v2}, Lcom/flurry/android/q;-><init>()V

    .line 350
    move-object v0, p1

    check-cast v0, Lcom/flurry/android/r;

    move-object v1, v0

    .line 351
    iget-object v3, p0, Lcom/flurry/android/CatalogActivity;->d:Lcom/flurry/android/n;

    invoke-virtual {v3}, Lcom/flurry/android/n;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/flurry/android/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 352
    invoke-virtual {v1}, Lcom/flurry/android/r;->a()Lcom/flurry/android/y;

    move-result-object v4

    iput-object v4, p0, Lcom/flurry/android/CatalogActivity;->e:Lcom/flurry/android/y;

    .line 353
    invoke-virtual {v1}, Lcom/flurry/android/r;->a()Lcom/flurry/android/y;

    move-result-object v1

    iput-object v1, v2, Lcom/flurry/android/q;->a:Lcom/flurry/android/y;

    .line 355
    iget-object v1, v2, Lcom/flurry/android/q;->a:Lcom/flurry/android/y;

    new-instance v4, Lcom/flurry/android/i;

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/flurry/android/CatalogActivity;->d:Lcom/flurry/android/n;

    invoke-virtual {v6}, Lcom/flurry/android/n;->i()J

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7}, Lcom/flurry/android/i;-><init>(BJ)V

    invoke-virtual {v1, v4}, Lcom/flurry/android/y;->a(Lcom/flurry/android/i;)V

    .line 356
    iput-object v3, v2, Lcom/flurry/android/q;->b:Ljava/lang/String;

    .line 357
    iget-object v1, p0, Lcom/flurry/android/CatalogActivity;->b:Lcom/flurry/android/p;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/flurry/android/p;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v2, Lcom/flurry/android/q;->c:Ljava/util/List;

    .line 359
    invoke-direct {p0, v2}, Lcom/flurry/android/CatalogActivity;->a(Lcom/flurry/android/q;)V

    .line 383
    :goto_0
    return-void

    .line 361
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/16 v2, 0x2710

    if-ne v1, v2, :cond_2

    .line 364
    invoke-virtual {p0}, Lcom/flurry/android/CatalogActivity;->finish()V

    goto :goto_0

    .line 366
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/16 v2, 0x2712

    if-ne v1, v2, :cond_3

    .line 368
    iget-object v1, p0, Lcom/flurry/android/CatalogActivity;->b:Lcom/flurry/android/p;

    invoke-virtual {v1}, Lcom/flurry/android/p;->a()V

    goto :goto_0

    .line 373
    :cond_3
    iget-object v1, p0, Lcom/flurry/android/CatalogActivity;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 375
    invoke-virtual {p0}, Lcom/flurry/android/CatalogActivity;->finish()V

    goto :goto_0

    .line 379
    :cond_4
    iget-object v1, p0, Lcom/flurry/android/CatalogActivity;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/q;

    .line 380
    invoke-direct {p0, v1}, Lcom/flurry/android/CatalogActivity;->a(Lcom/flurry/android/q;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v6, -0x2

    const/4 v5, -0x1

    .line 52
    const v0, 0x103000f

    invoke-virtual {p0, v0}, Lcom/flurry/android/CatalogActivity;->setTheme(I)V

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->b()Lcom/flurry/android/n;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/CatalogActivity;->d:Lcom/flurry/android/n;

    .line 58
    invoke-virtual {p0}, Lcom/flurry/android/CatalogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "o"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/flurry/android/CatalogActivity;->d:Lcom/flurry/android/n;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/flurry/android/n;->b(J)Lcom/flurry/android/y;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/CatalogActivity;->e:Lcom/flurry/android/y;

    .line 64
    :cond_0
    new-instance v0, Lcom/flurry/android/v;

    invoke-direct {v0, p0, p0}, Lcom/flurry/android/v;-><init>(Lcom/flurry/android/CatalogActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lcom/flurry/android/v;->setId(I)V

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/flurry/android/v;->setBackgroundColor(I)V

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/android/CatalogActivity;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/flurry/android/CatalogActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v7}, Landroid/webkit/WebView;->setId(I)V

    iget-object v1, p0, Lcom/flurry/android/CatalogActivity;->a:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v1, p0, Lcom/flurry/android/CatalogActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/flurry/android/CatalogActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/flurry/android/g;

    invoke-direct {v2, p0}, Lcom/flurry/android/g;-><init>(Lcom/flurry/android/CatalogActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/flurry/android/CatalogActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v1, Lcom/flurry/android/p;

    invoke-direct {v1, p0, p0}, Lcom/flurry/android/p;-><init>(Lcom/flurry/android/CatalogActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/android/CatalogActivity;->b:Lcom/flurry/android/p;

    iget-object v1, p0, Lcom/flurry/android/CatalogActivity;->b:Lcom/flurry/android/p;

    invoke-virtual {v1, v8}, Lcom/flurry/android/p;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v0}, Lcom/flurry/android/v;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0}, Lcom/flurry/android/v;->getId()I

    move-result v3

    invoke-virtual {v2, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/flurry/android/CatalogActivity;->b:Lcom/flurry/android/p;

    invoke-virtual {v3}, Lcom/flurry/android/p;->getId()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/flurry/android/CatalogActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-virtual {v0}, Lcom/flurry/android/v;->getId()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->b:Lcom/flurry/android/p;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/flurry/android/CatalogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "u"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/flurry/android/CatalogActivity;->setContentView(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->d:Lcom/flurry/android/n;

    invoke-virtual {v0}, Lcom/flurry/android/n;->f()V

    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 120
    return-void
.end method
