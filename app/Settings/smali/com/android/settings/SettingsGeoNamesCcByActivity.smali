.class public Lcom/android/settings/SettingsGeoNamesCcByActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SettingsGeoNamesCcByActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsGeoNamesCcByActivity;)Lcom/android/internal/app/AlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/SettingsGeoNamesCcByActivity;->mAlert:Lcom/android/internal/app/AlertController;

    return-object v0
.end method

.method private showErrorAndFinish()V
    .locals 2

    .prologue
    .line 95
    const v0, 0x7f08032a

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/SettingsGeoNamesCcByActivity;->finish()V

    .line 98
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v6, 0x0

    .line 49
    .local v6, data:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 51
    .local v9, geonamesInStream:Ljava/io/InputStream;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v2, 0x400

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    .end local v6           #data:Ljava/lang/StringBuilder;
    .local v7, data:Ljava/lang/StringBuilder;
    const/16 v2, 0x400

    :try_start_1
    new-array v12, v2, [B

    .line 54
    .local v12, tmp:[B
    invoke-virtual {p0}, Lcom/android/settings/SettingsGeoNamesCcByActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "geonames_cc_by.html"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 55
    :goto_0
    invoke-virtual {v9, v12}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .local v10, numRead:I
    if-lez v10, :cond_1

    .line 56
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v12, v3, v10}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 57
    .end local v10           #numRead:I
    .end local v12           #tmp:[B
    :catch_0
    move-exception v1

    move-object v8, v1

    move-object v6, v7

    .line 58
    .end local v7           #data:Ljava/lang/StringBuilder;
    .restart local v6       #data:Ljava/lang/StringBuilder;
    .local v8, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/settings/SettingsGeoNamesCcByActivity;->showErrorAndFinish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    if-eqz v9, :cond_0

    .line 66
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 92
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    return-void

    .line 65
    .end local v6           #data:Ljava/lang/StringBuilder;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    .restart local v10       #numRead:I
    .restart local v12       #tmp:[B
    :cond_1
    if-eqz v9, :cond_2

    .line 66
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 71
    :cond_2
    :goto_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 72
    invoke-direct {p0}, Lcom/android/settings/SettingsGeoNamesCcByActivity;->showErrorAndFinish()V

    move-object v6, v7

    .line 73
    .end local v7           #data:Ljava/lang/StringBuilder;
    .restart local v6       #data:Ljava/lang/StringBuilder;
    goto :goto_2

    .line 60
    .end local v10           #numRead:I
    .end local v12           #tmp:[B
    :catch_1
    move-exception v1

    move-object v8, v1

    .line 61
    .local v8, e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-direct {p0}, Lcom/android/settings/SettingsGeoNamesCcByActivity;->showErrorAndFinish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 65
    if-eqz v9, :cond_0

    .line 66
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 67
    :catch_2
    move-exception v1

    goto :goto_2

    .line 64
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 65
    :goto_5
    if-eqz v9, :cond_3

    .line 66
    :try_start_7
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 68
    :cond_3
    :goto_6
    throw v1

    .line 76
    .end local v6           #data:Ljava/lang/StringBuilder;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    .restart local v10       #numRead:I
    .restart local v12       #tmp:[B
    :cond_4
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, webView:Landroid/webkit/WebView;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v1, Lcom/android/settings/SettingsGeoNamesCcByActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsGeoNamesCcByActivity$1;-><init>(Lcom/android/settings/SettingsGeoNamesCcByActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 87
    iget-object v11, p0, Lcom/android/settings/SettingsGeoNamesCcByActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 88
    .local v11, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f08032b

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsGeoNamesCcByActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 89
    iput-object v0, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/SettingsGeoNamesCcByActivity;->setupAlert()V

    move-object v6, v7

    .line 92
    .end local v7           #data:Ljava/lang/StringBuilder;
    .restart local v6       #data:Ljava/lang/StringBuilder;
    goto :goto_2

    .line 67
    .end local v0           #webView:Landroid/webkit/WebView;
    .end local v6           #data:Ljava/lang/StringBuilder;
    .end local v11           #p:Lcom/android/internal/app/AlertController$AlertParams;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    :catch_3
    move-exception v2

    goto :goto_3

    .end local v7           #data:Ljava/lang/StringBuilder;
    .end local v10           #numRead:I
    .end local v12           #tmp:[B
    .restart local v6       #data:Ljava/lang/StringBuilder;
    .local v8, e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v1

    goto :goto_2

    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v2

    goto :goto_6

    .line 64
    .end local v6           #data:Ljava/lang/StringBuilder;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v1

    move-object v6, v7

    .end local v7           #data:Ljava/lang/StringBuilder;
    .restart local v6       #data:Ljava/lang/StringBuilder;
    goto :goto_5

    .line 60
    .end local v6           #data:Ljava/lang/StringBuilder;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    :catch_6
    move-exception v1

    move-object v8, v1

    move-object v6, v7

    .end local v7           #data:Ljava/lang/StringBuilder;
    .restart local v6       #data:Ljava/lang/StringBuilder;
    goto :goto_4

    .line 57
    :catch_7
    move-exception v1

    move-object v8, v1

    goto :goto_1
.end method
