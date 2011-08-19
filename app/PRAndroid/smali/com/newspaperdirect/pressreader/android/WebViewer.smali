.class public Lcom/newspaperdirect/pressreader/android/WebViewer;
.super Landroid/app/Activity;
.source "WebViewer.java"


# static fields
.field public static final EXTRA_RESOURCE_ID:Ljava/lang/String; = "WEB_RESOURCE_ID"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "WEB_VIEW_TITLE"


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->init(Landroid/content/Context;)V

    .line 28
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->init(Landroid/content/Context;)Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    .line 29
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->create(Landroid/content/Context;)V

    .line 30
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/HandlerHolder;->init()V

    .line 31
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    .line 32
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/WebViewer;->mWebView:Landroid/webkit/WebView;

    .line 33
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/WebViewer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 35
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/WebViewer;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/WebViewer$1;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/WebViewer$1;-><init>(Lcom/newspaperdirect/pressreader/android/WebViewer;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/WebViewer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/WebViewer;->setContentView(Landroid/view/View;)V

    .line 41
    return-void
.end method

.method protected onResume()V
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 47
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/WebViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "WEB_VIEW_TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 48
    .local v13, title:Ljava/lang/String;
    if-eqz v13, :cond_0

    invoke-virtual {p0, v13}, Lcom/newspaperdirect/pressreader/android/WebViewer;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/WebViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "WEB_RESOURCE_ID"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 51
    .local v12, resourceId:I
    if-nez v12, :cond_1

    .line 73
    :goto_0
    return-void

    .line 53
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v7, builder:Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 56
    .local v10, reader:Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/WebViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 57
    .end local v10           #reader:Ljava/io/InputStreamReader;
    .local v11, reader:Ljava/io/InputStreamReader;
    const v0, 0x8000

    :try_start_1
    new-array v6, v0, [C

    .line 59
    .local v6, buffer:[C
    :goto_1
    invoke-virtual {v11, v6}, Ljava/io/InputStreamReader;->read([C)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .local v8, count:I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_4

    .line 67
    if-eqz v11, :cond_6

    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v10, v11

    .line 70
    .end local v6           #buffer:[C
    .end local v8           #count:I
    .end local v11           #reader:Ljava/io/InputStreamReader;
    .restart local v10       #reader:Ljava/io/InputStreamReader;
    :cond_2
    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PressReader"

    const v3, 0x7f09004a

    invoke-virtual {p0, v3}, Lcom/newspaperdirect/pressreader/android/WebViewer;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, res:Ljava/lang/String;
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->isSmartEdition()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "PressDisplay.com"

    const v1, 0x7f09004c

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/WebViewer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/WebViewer;->mWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v2           #res:Ljava/lang/String;
    .end local v10           #reader:Ljava/io/InputStreamReader;
    .restart local v6       #buffer:[C
    .restart local v8       #count:I
    .restart local v11       #reader:Ljava/io/InputStreamReader;
    :cond_4
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {v7, v6, v0, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 63
    .end local v6           #buffer:[C
    .end local v8           #count:I
    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v10, v11

    .line 64
    .end local v11           #reader:Ljava/io/InputStreamReader;
    .local v9, e:Ljava/lang/Exception;
    .restart local v10       #reader:Ljava/io/InputStreamReader;
    :goto_3
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 67
    if-eqz v10, :cond_2

    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    .line 66
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 67
    :goto_4
    if-eqz v10, :cond_5

    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 68
    :cond_5
    :goto_5
    throw v0

    .line 67
    .end local v10           #reader:Ljava/io/InputStreamReader;
    .restart local v6       #buffer:[C
    .restart local v8       #count:I
    .restart local v11       #reader:Ljava/io/InputStreamReader;
    :catch_2
    move-exception v0

    move-object v10, v11

    .end local v11           #reader:Ljava/io/InputStreamReader;
    .restart local v10       #reader:Ljava/io/InputStreamReader;
    goto :goto_2

    .end local v6           #buffer:[C
    .end local v8           #count:I
    :catch_3
    move-exception v1

    goto :goto_5

    .line 66
    .end local v10           #reader:Ljava/io/InputStreamReader;
    .restart local v11       #reader:Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v0

    move-object v10, v11

    .end local v11           #reader:Ljava/io/InputStreamReader;
    .restart local v10       #reader:Ljava/io/InputStreamReader;
    goto :goto_4

    .line 63
    :catch_4
    move-exception v0

    move-object v9, v0

    goto :goto_3

    .end local v10           #reader:Ljava/io/InputStreamReader;
    .restart local v6       #buffer:[C
    .restart local v8       #count:I
    .restart local v11       #reader:Ljava/io/InputStreamReader;
    :cond_6
    move-object v10, v11

    .end local v11           #reader:Ljava/io/InputStreamReader;
    .restart local v10       #reader:Ljava/io/InputStreamReader;
    goto :goto_2
.end method
