.class Lcom/layar/Main$TermsLoader;
.super Landroid/os/AsyncTask;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TermsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/Main;


# direct methods
.method private constructor <init>(Lcom/layar/Main;)V
    .locals 0
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/layar/Main$TermsLoader;->this$0:Lcom/layar/Main;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/Main;Lcom/layar/Main$TermsLoader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 541
    invoke-direct {p0, p1}, Lcom/layar/Main$TermsLoader;-><init>(Lcom/layar/Main;)V

    return-void
.end method

.method static synthetic access$3(Lcom/layar/Main$TermsLoader;)Lcom/layar/Main;
    .locals 1
    .parameter

    .prologue
    .line 541
    iget-object v0, p0, Lcom/layar/Main$TermsLoader;->this$0:Lcom/layar/Main;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/layar/Main$TermsLoader;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "params"

    .prologue
    const/4 v11, 0x0

    .line 544
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 545
    .local v0, builder:Landroid/net/Uri$Builder;
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {v0, v8}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 547
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 548
    .local v5, locale:Ljava/util/Locale;
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 553
    .local v4, lang:Ljava/lang/String;
    const-string v8, "ZH"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 554
    sget-object v8, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v8, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 555
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "-CN"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 561
    :cond_0
    :goto_0
    const-string v8, "lang"

    invoke-virtual {v0, v8, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 563
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 565
    .local v7, url:Ljava/lang/String;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 566
    .local v2, get:Lorg/apache/http/client/methods/HttpGet;
    new-instance v3, Lorg/apache/http/HttpHost;

    const-string v8, "dev.layar.com"

    const/16 v9, 0x50

    const-string v10, "http"

    invoke-direct {v3, v8, v9, v10}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 572
    .local v3, host:Lorg/apache/http/HttpHost;
    :try_start_0
    invoke-static {}, Lcom/layar/App;->isOnline()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_2

    move-object v8, v11

    .line 584
    :goto_1
    return-object v8

    .line 557
    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #host:Lorg/apache/http/HttpHost;
    .end local v7           #url:Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "-TW"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 574
    .restart local v2       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #host:Lorg/apache/http/HttpHost;
    .restart local v7       #url:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v3, v2}, Lcom/layar/util/HttpManager;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 575
    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_3

    .line 576
    invoke-static {v7, v6}, Lcom/layar/util/HttpManager;->responseAsString(Ljava/lang/String;Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 578
    :cond_3
    invoke-static {}, Lcom/layar/Main;->access$11()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "bad status: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v6           #response:Lorg/apache/http/HttpResponse;
    :goto_2
    move-object v8, v11

    .line 584
    goto :goto_1

    .line 580
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 581
    .local v1, e:Ljava/io/IOException;
    invoke-static {}, Lcom/layar/Main;->access$11()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Error while loading terms/privacy"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/layar/Main$TermsLoader;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    .line 589
    iget-object v2, p0, Lcom/layar/Main$TermsLoader;->this$0:Lcom/layar/Main;

    invoke-virtual {v2}, Lcom/layar/Main;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    if-eqz p1, :cond_2

    .line 592
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/layar/Main$TermsLoader;->this$0:Lcom/layar/Main;

    const-class v3, Lcom/layar/TermsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 593
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "terms"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    iget-object v2, p0, Lcom/layar/Main$TermsLoader;->this$0:Lcom/layar/Main;

    invoke-virtual {v2}, Lcom/layar/Main;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 595
    iget-object v2, p0, Lcom/layar/Main$TermsLoader;->this$0:Lcom/layar/Main;

    invoke-virtual {v2, v1}, Lcom/layar/Main;->startActivity(Landroid/content/Intent;)V

    .line 596
    iget-object v2, p0, Lcom/layar/Main$TermsLoader;->this$0:Lcom/layar/Main;

    invoke-virtual {v2}, Lcom/layar/Main;->finish()V

    goto :goto_0

    .line 598
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v2, Lcom/layar/ui/SmartDialog$Builder;

    iget-object v3, p0, Lcom/layar/Main$TermsLoader;->this$0:Lcom/layar/Main;

    const v4, 0x7f090036

    invoke-direct {v2, v3, v4}, Lcom/layar/ui/SmartDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 599
    invoke-virtual {v2, v5}, Lcom/layar/ui/SmartDialog$Builder;->setRotation(I)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v2

    .line 600
    const v3, 0x7f090018

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/layar/ui/SmartDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v2

    .line 601
    invoke-virtual {v2}, Lcom/layar/ui/SmartDialog$Builder;->build()Lcom/layar/ui/SmartDialog;

    move-result-object v0

    .line 602
    .local v0, dialog:Lcom/layar/ui/SmartDialog;
    invoke-virtual {v0, v5}, Lcom/layar/ui/SmartDialog;->setCancelable(Z)V

    .line 603
    new-instance v2, Lcom/layar/Main$TermsLoader$1;

    invoke-direct {v2, p0}, Lcom/layar/Main$TermsLoader$1;-><init>(Lcom/layar/Main$TermsLoader;)V

    invoke-virtual {v0, v2}, Lcom/layar/ui/SmartDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 609
    iget-object v2, p0, Lcom/layar/Main$TermsLoader;->this$0:Lcom/layar/Main;

    invoke-virtual {v2}, Lcom/layar/Main;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/layar/ui/SmartDialog;->show()V

    goto :goto_0
.end method
