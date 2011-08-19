.class public Lcom/zinio/mobile/android/view/ShopActivity;
.super Lcom/zinio/mobile/android/view/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/a/a/b;
.implements Lcom/zinio/mobile/android/a/b/aa;


# static fields
.field private static h:Ljava/lang/String;


# instance fields
.field protected a:Landroid/widget/ProgressBar;

.field private b:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

.field private c:Ljava/lang/String;

.field private d:Landroid/webkit/WebView;

.field private e:Lcom/zinio/mobile/android/a/a/j;

.field private f:Lcom/zinio/mobile/android/a/a/q;

.field private g:Z

.field private i:Landroid/os/Handler;

.field private j:I

.field private k:Landroid/view/View$OnClickListener;

.field private l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/zinio/mobile/android/view/ShopActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/view/ShopActivity;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/BaseActivity;-><init>()V

    .line 58
    const-string v0, "read://reader.zinio.com"

    iput-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->c:Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/zinio/mobile/android/view/bg;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/bg;-><init>(Lcom/zinio/mobile/android/view/ShopActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->i:Landroid/os/Handler;

    .line 133
    const/4 v0, 0x1

    iput v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->j:I

    .line 273
    new-instance v0, Lcom/zinio/mobile/android/view/be;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/be;-><init>(Lcom/zinio/mobile/android/view/ShopActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->k:Landroid/view/View$OnClickListener;

    .line 455
    new-instance v0, Lcom/zinio/mobile/android/view/ba;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/ba;-><init>(Lcom/zinio/mobile/android/view/ShopActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->l:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/ShopActivity;)Lcom/zinio/mobile/android/a/a/j;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->e:Lcom/zinio/mobile/android/a/a/j;

    return-object v0
.end method

.method static synthetic b(Lcom/zinio/mobile/android/view/ShopActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic c(Lcom/zinio/mobile/android/view/ShopActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/ShopActivity;->h()V

    return-void
.end method

.method static synthetic d(Lcom/zinio/mobile/android/view/ShopActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    sget-object v0, Lcom/zinio/mobile/android/a;->k:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ShopActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic e(Lcom/zinio/mobile/android/view/ShopActivity;)Lcom/zinio/mobile/android/view/BottomToolbarActivity;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->b:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    return-object v0
.end method

.method static synthetic f(Lcom/zinio/mobile/android/view/ShopActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->i:Landroid/os/Handler;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/ShopActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shop_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/zinio/mobile/android/view/ShopActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method static synthetic g(Lcom/zinio/mobile/android/view/ShopActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->g:Z

    return v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/zinio/mobile/android/a;->i:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ShopActivity;->startActivity(Landroid/content/Intent;)V

    .line 323
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/ShopActivity;->finish()V

    .line 324
    return-void
.end method


# virtual methods
.method public final a(Lcom/zinio/mobile/android/a/b/s;)V
    .locals 3
    .parameter

    .prologue
    .line 402
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    .line 403
    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/b/l;->b(Ljava/lang/Object;)V

    .line 404
    iget-object v1, p0, Lcom/zinio/mobile/android/view/ShopActivity;->f:Lcom/zinio/mobile/android/a/a/q;

    invoke-virtual {p1, v1}, Lcom/zinio/mobile/android/a/b/s;->a(Lcom/zinio/mobile/android/a/a/q;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/view/ShopActivity;->e:Lcom/zinio/mobile/android/a/a/j;

    .line 405
    iget-object v1, p0, Lcom/zinio/mobile/android/view/ShopActivity;->e:Lcom/zinio/mobile/android/a/a/j;

    if-eqz v1, :cond_1

    .line 406
    iget-object v1, p0, Lcom/zinio/mobile/android/view/ShopActivity;->e:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1, p0}, Lcom/zinio/mobile/android/a/a/j;->a(Ljava/lang/Object;)V

    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/zinio/mobile/android/view/ShopActivity;->e:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;)V
    :try_end_0
    .catch Lcom/zinio/mobile/android/b/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 410
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zinio/mobile/android/b/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    invoke-static {v0}, Lcom/zinio/mobile/android/b/b;->a(Lcom/zinio/mobile/android/b/g;)V

    .line 412
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->e:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/a/j;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ShopActivity;->i:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ShopActivity;->i:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 340
    const-string v0, "pubId=(\\d*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 341
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 351
    const-string v1, "issueId=(\\d*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 352
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 354
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 355
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->start(I)I

    move-result v2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->end(I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 363
    new-instance v2, Lcom/zinio/mobile/android/a/a/q;

    invoke-direct {v2, v0, v1}, Lcom/zinio/mobile/android/a/a/q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/zinio/mobile/android/view/ShopActivity;->f:Lcom/zinio/mobile/android/a/a/q;

    .line 364
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/l;->d()Lcom/zinio/mobile/android/a/b/s;

    move-result-object v1

    iget-object v2, p0, Lcom/zinio/mobile/android/view/ShopActivity;->f:Lcom/zinio/mobile/android/a/a/q;

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/a/b/s;->a(Lcom/zinio/mobile/android/a/a/q;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v1

    .line 367
    if-eqz v1, :cond_3

    .line 368
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->L()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 369
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ShopActivity;->startActivity(Landroid/content/Intent;)V

    .line 399
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/ShopActivity;->h()V

    goto :goto_0

    .line 359
    :cond_1
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/ShopActivity;->h()V

    goto :goto_0

    .line 372
    :cond_2
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/ShopActivity;->b()V

    .line 373
    iput-object v1, p0, Lcom/zinio/mobile/android/view/ShopActivity;->e:Lcom/zinio/mobile/android/a/a/j;

    .line 374
    invoke-virtual {v1, p0}, Lcom/zinio/mobile/android/a/a/j;->a(Ljava/lang/Object;)V

    .line 375
    new-instance v2, Lcom/zinio/mobile/android/view/bb;

    invoke-direct {v2, p0, v0, v1}, Lcom/zinio/mobile/android/view/bb;-><init>(Lcom/zinio/mobile/android/view/ShopActivity;Lcom/zinio/mobile/android/a/b/l;Lcom/zinio/mobile/android/a/a/j;)V

    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/bb;->start()V

    goto :goto_0

    .line 395
    :cond_3
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/ShopActivity;->b()V

    .line 396
    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/b/l;->a(Ljava/lang/Object;)V

    .line 397
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/l;->c()V

    goto :goto_0
.end method

.method protected final b()V
    .locals 4

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/ShopActivity;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ShopActivity;->showDialog(I)V

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->g:Z

    .line 451
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ShopActivity;->l:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 453
    :cond_0
    return-void
.end method

.method protected final c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 478
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->g:Z

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p0, v1}, Lcom/zinio/mobile/android/view/ShopActivity;->removeDialog(I)V

    .line 480
    iput-boolean v1, p0, Lcom/zinio/mobile/android/view/ShopActivity;->g:Z

    .line 481
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ShopActivity;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 483
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ShopActivity;->i:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 426
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method public final e_()V
    .locals 2

    .prologue
    .line 436
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ShopActivity;->removeDialog(I)V

    .line 437
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->e:Lcom/zinio/mobile/android/a/a/j;

    .line 438
    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/a/j;->b(Ljava/lang/Object;)V

    .line 439
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/a/b/l;->c(Lcom/zinio/mobile/android/a/a/j;)V

    .line 440
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zinio/mobile/android/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ShopActivity;->startActivity(Landroid/content/Intent;)V

    .line 442
    return-void
.end method

.method public final g()V
    .locals 3

    .prologue
    .line 428
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ShopActivity;->i:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 429
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ShopActivity;->setContentView(I)V

    .line 182
    const v0, 0x7f0c0078

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->d:Landroid/webkit/WebView;

    .line 184
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/zinio/mobile/android/view/bd;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/bd;-><init>(Lcom/zinio/mobile/android/view/ShopActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/zinio/mobile/android/view/bc;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/bc;-><init>(Lcom/zinio/mobile/android/view/ShopActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 235
    const v0, 0x7f0c0079

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->a:Landroid/widget/ProgressBar;

    .line 236
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/zinio/mobile/android/view/bf;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/bf;-><init>(Lcom/zinio/mobile/android/view/ShopActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 250
    const/high16 v0, 0x7f0c

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->b:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->b:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setVisibility(I)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->b:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ShopActivity;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->b:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ShopActivity;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c007a

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ShopActivity;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c007b

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ShopActivity;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 252
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 253
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 254
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/ShopActivity;->f()V

    .line 255
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 318
    invoke-static {p0}, Lcom/zinio/mobile/android/view/dialogs/e;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 300
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 301
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 305
    const/4 v0, 0x1

    .line 313
    :goto_0
    return v0

    .line 308
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->b:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->d()V

    .line 313
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/zinio/mobile/android/view/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/view/ShopActivity;->setIntent(Landroid/content/Intent;)V

    .line 139
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/ShopActivity;->f()V

    .line 140
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 144
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onResume()V

    .line 145
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->b:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->c()V

    .line 146
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    iput v1, p0, Lcom/zinio/mobile/android/view/ShopActivity;->j:I

    .line 153
    :goto_0
    iget v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->j:I

    if-lez v0, :cond_0

    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->k()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->j:I

    if-lez v0, :cond_2

    .line 155
    :cond_1
    iget v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->j:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/zinio/mobile/android/view/ShopActivity;->j:I

    .line 156
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->i()V

    goto :goto_0

    .line 159
    :cond_2
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800a2

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 176
    :cond_3
    :goto_1
    return-void

    .line 167
    :cond_4
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->j()Lcom/zinio/mobile/android/c/g;

    move-result-object v0

    iget-object v0, v0, Lcom/zinio/mobile/android/c/g;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/zinio/mobile/android/a;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 170
    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ShopActivity;->setIntent(Landroid/content/Intent;)V

    .line 171
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/ShopActivity;->f()V

    goto :goto_1
.end method
