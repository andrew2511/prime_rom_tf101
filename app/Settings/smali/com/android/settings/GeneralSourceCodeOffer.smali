.class public Lcom/android/settings/GeneralSourceCodeOffer;
.super Lcom/android/internal/app/AlertActivity;
.source "GeneralSourceCodeOffer.java"


# instance fields
.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private showErrorAndFinish()V
    .locals 2

    .prologue
    .line 92
    const v0, 0x7f08032a

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/GeneralSourceCodeOffer;->finish()V

    .line 95
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 50
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/GeneralSourceCodeOffer;->requestWindowFeature(I)Z

    .line 53
    const v0, 0x7f040056

    invoke-virtual {p0, v0}, Lcom/android/settings/GeneralSourceCodeOffer;->setContentView(I)V

    .line 54
    const v0, 0x7f0f0100

    invoke-virtual {p0, v0}, Lcom/android/settings/GeneralSourceCodeOffer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/android/settings/GeneralSourceCodeOffer;->webView:Landroid/webkit/WebView;

    .line 56
    iget-object v0, p0, Lcom/android/settings/GeneralSourceCodeOffer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v12

    .line 57
    .local v12, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v12, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 58
    invoke-virtual {v12, v2}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 59
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 61
    const/4 v6, 0x0

    .line 62
    .local v6, data:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 64
    .local v9, mStream:Ljava/io/InputStream;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v0, 0x400

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    .end local v6           #data:Ljava/lang/StringBuilder;
    .local v7, data:Ljava/lang/StringBuilder;
    const/16 v0, 0x400

    :try_start_1
    new-array v11, v0, [B

    .line 67
    .local v11, tmp:[B
    invoke-virtual {p0}, Lcom/android/settings/GeneralSourceCodeOffer;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "general_sourcecode_offer.html"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 68
    :goto_0
    invoke-virtual {v9, v11}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .local v10, numRead:I
    if-lez v10, :cond_1

    .line 69
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v11, v2, v10}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 70
    .end local v10           #numRead:I
    .end local v11           #tmp:[B
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v6, v7

    .line 71
    .end local v7           #data:Ljava/lang/StringBuilder;
    .restart local v6       #data:Ljava/lang/StringBuilder;
    .local v8, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/settings/GeneralSourceCodeOffer;->showErrorAndFinish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    if-eqz v9, :cond_0

    .line 79
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 89
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    return-void

    .line 78
    .end local v6           #data:Ljava/lang/StringBuilder;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    .restart local v10       #numRead:I
    .restart local v11       #tmp:[B
    :cond_1
    if-eqz v9, :cond_2

    .line 79
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 84
    :cond_2
    :goto_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    invoke-direct {p0}, Lcom/android/settings/GeneralSourceCodeOffer;->showErrorAndFinish()V

    move-object v6, v7

    .line 86
    .end local v7           #data:Ljava/lang/StringBuilder;
    .restart local v6       #data:Ljava/lang/StringBuilder;
    goto :goto_2

    .line 73
    .end local v10           #numRead:I
    .end local v11           #tmp:[B
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 74
    .local v8, e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-direct {p0}, Lcom/android/settings/GeneralSourceCodeOffer;->showErrorAndFinish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 78
    if-eqz v9, :cond_0

    .line 79
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 80
    :catch_2
    move-exception v0

    goto :goto_2

    .line 77
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 78
    :goto_5
    if-eqz v9, :cond_3

    .line 79
    :try_start_7
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 81
    :cond_3
    :goto_6
    throw v0

    .line 88
    .end local v6           #data:Ljava/lang/StringBuilder;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    .restart local v10       #numRead:I
    .restart local v11       #tmp:[B
    :cond_4
    iget-object v0, p0, Lcom/android/settings/GeneralSourceCodeOffer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 89
    .end local v7           #data:Ljava/lang/StringBuilder;
    .restart local v6       #data:Ljava/lang/StringBuilder;
    goto :goto_2

    .line 80
    .end local v6           #data:Ljava/lang/StringBuilder;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    :catch_3
    move-exception v0

    goto :goto_3

    .end local v7           #data:Ljava/lang/StringBuilder;
    .end local v10           #numRead:I
    .end local v11           #tmp:[B
    .restart local v6       #data:Ljava/lang/StringBuilder;
    .local v8, e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v0

    goto :goto_2

    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v1

    goto :goto_6

    .line 77
    .end local v6           #data:Ljava/lang/StringBuilder;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v0

    move-object v6, v7

    .end local v7           #data:Ljava/lang/StringBuilder;
    .restart local v6       #data:Ljava/lang/StringBuilder;
    goto :goto_5

    .line 73
    .end local v6           #data:Ljava/lang/StringBuilder;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    :catch_6
    move-exception v0

    move-object v8, v0

    move-object v6, v7

    .end local v7           #data:Ljava/lang/StringBuilder;
    .restart local v6       #data:Ljava/lang/StringBuilder;
    goto :goto_4

    .line 70
    :catch_7
    move-exception v0

    move-object v8, v0

    goto :goto_1
.end method
