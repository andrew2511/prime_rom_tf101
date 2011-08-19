.class public Lcom/android/browser/DownloadHandler;
.super Ljava/lang/Object;
.source "DownloadHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "path"

    .prologue
    const/16 v9, 0x5d

    const/16 v8, 0x5b

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 107
    .local v2, chars:[C
    const/4 v5, 0x0

    .line 108
    .local v5, needed:Z
    move-object v0, v2

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-char v1, v0, v3

    .line 109
    .local v1, c:C
    if-eq v1, v8, :cond_0

    if-ne v1, v9, :cond_2

    .line 110
    :cond_0
    const/4 v5, 0x1

    .line 114
    .end local v1           #c:C
    :cond_1
    if-nez v5, :cond_3

    move-object v7, p0

    .line 128
    :goto_1
    return-object v7

    .line 108
    .restart local v1       #c:C
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    .end local v1           #c:C
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .local v6, sb:Ljava/lang/StringBuilder;
    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_6

    aget-char v1, v0, v3

    .line 120
    .restart local v1       #c:C
    if-eq v1, v8, :cond_4

    if-ne v1, v9, :cond_5

    .line 121
    :cond_4
    const/16 v7, 0x25

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 124
    :cond_5
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 128
    .end local v1           #c:C
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public static onDownloadStart(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .parameter "activity"
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "privateBrowsing"

    .prologue
    const/4 v2, 0x0

    .line 63
    if-eqz p3, :cond_0

    const/4 v1, 0x1

    const-string v3, "attachment"

    const/16 v5, 0xa

    move-object v0, p3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v8, intent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x1

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 72
    .local v7, info:Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_2

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    .line 76
    .local v9, myName:Landroid/content/ComponentName;
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    :cond_1
    :try_start_0
    invoke-virtual {p0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v7           #info:Landroid/content/pm/ResolveInfo;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #myName:Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 85
    .restart local v7       #info:Landroid/content/pm/ResolveInfo;
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v9       #myName:Landroid/content/ComponentName;
    :catch_0
    move-exception v6

    .line 87
    .local v6, ex:Landroid/content/ActivityNotFoundException;
    const-string v0, "DLHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity not found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " over "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .end local v6           #ex:Landroid/content/ActivityNotFoundException;
    .end local v7           #info:Landroid/content/pm/ResolveInfo;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #myName:Landroid/content/ComponentName;
    :cond_2
    invoke-static/range {p0 .. p5}, Lcom/android/browser/DownloadHandler;->onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "activity"
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "privateBrowsing"

    .prologue
    .line 145
    invoke-static {p1, p3, p4}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 149
    .local p3, filename:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, status:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 155
    const-string p1, "shared"

    .end local p1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 156
    const p1, 0x7f090122

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 157
    .local p1, msg:Ljava/lang/String;
    const p2, 0x7f090121

    .line 163
    .end local p4
    .local p2, title:I
    :goto_0
    new-instance p3, Landroid/app/AlertDialog$Builder;

    .end local p3           #filename:Ljava/lang/String;
    invoke-direct {p3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .end local p0
    const p2, 0x1080027

    invoke-virtual {p0, p2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .end local p2           #title:I
    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f09001b

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .end local p1           #msg:Ljava/lang/String;
    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 227
    .end local v0           #status:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 159
    .restart local v0       #status:Ljava/lang/String;
    .restart local p0
    .local p2, userAgent:Ljava/lang/String;
    .restart local p3       #filename:Ljava/lang/String;
    .restart local p4
    :cond_1
    const p1, 0x7f090120

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .end local p2           #userAgent:Ljava/lang/String;
    const/4 p4, 0x0

    aput-object p3, p2, p4

    .end local p4
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 160
    .restart local p1       #msg:Ljava/lang/String;
    const p2, 0x7f09011f

    .local p2, title:I
    goto :goto_0

    .line 176
    .local p1, url:Ljava/lang/String;
    .local p2, userAgent:Ljava/lang/String;
    .restart local p4
    :cond_2
    :try_start_0
    new-instance v1, Landroid/net/WebAddress;

    invoke-direct {v1, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 177
    .local v1, webAddress:Landroid/net/WebAddress;
    invoke-virtual {v1}, Landroid/net/WebAddress;->getPath()Ljava/lang/String;

    move-result-object v0

    .end local v0           #status:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/browser/DownloadHandler;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/WebAddress;->setPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    invoke-virtual {v1}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, addressString:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 189
    .local v0, uri:Landroid/net/Uri;
    :try_start_1
    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-direct {v2, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    .local v2, request:Landroid/app/DownloadManager$Request;
    invoke-virtual {v2, p4}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 197
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .end local v0           #uri:Landroid/net/Uri;
    invoke-virtual {v2, v0, p3}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 200
    invoke-virtual {v2}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 201
    invoke-virtual {v1}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object p3

    .end local p3           #filename:Ljava/lang/String;
    invoke-virtual {v2, p3}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 204
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p3

    invoke-virtual {p3, p1, p5}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, cookies:Ljava/lang/String;
    const-string p1, "cookie"

    .end local p1           #url:Ljava/lang/String;
    invoke-virtual {v2, p1, v4}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 206
    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 208
    if-nez p4, :cond_3

    .line 209
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 214
    new-instance v0, Lcom/android/browser/FetchUrlMimeType;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/FetchUrlMimeType;-><init>(Landroid/app/Activity;Landroid/app/DownloadManager$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v1           #webAddress:Landroid/net/WebAddress;
    invoke-virtual {v0}, Lcom/android/browser/FetchUrlMimeType;->start()V

    .line 225
    .end local p2           #userAgent:Ljava/lang/String;
    :goto_2
    const p1, 0x7f09012a

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 178
    .end local v2           #request:Landroid/app/DownloadManager$Request;
    .end local v3           #addressString:Ljava/lang/String;
    .end local v4           #cookies:Ljava/lang/String;
    .restart local p0
    .restart local p1       #url:Ljava/lang/String;
    .restart local p2       #userAgent:Ljava/lang/String;
    .restart local p3       #filename:Ljava/lang/String;
    :catch_0
    move-exception p0

    .line 181
    .local p0, e:Ljava/lang/Exception;
    const-string p0, "DLHandler"

    .end local p0           #e:Ljava/lang/Exception;
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2           #userAgent:Ljava/lang/String;
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception trying to parse url:"

    .end local p3           #filename:Ljava/lang/String;
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #url:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 190
    .restart local v0       #uri:Landroid/net/Uri;
    .restart local v1       #webAddress:Landroid/net/WebAddress;
    .restart local v3       #addressString:Ljava/lang/String;
    .local p0, activity:Landroid/app/Activity;
    .restart local p1       #url:Ljava/lang/String;
    .restart local p2       #userAgent:Ljava/lang/String;
    .restart local p3       #filename:Ljava/lang/String;
    :catch_1
    move-exception p1

    .line 191
    .local p1, e:Ljava/lang/IllegalArgumentException;
    const p1, 0x7f090123

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .end local p1           #e:Ljava/lang/IllegalArgumentException;
    .end local p2           #userAgent:Ljava/lang/String;
    move-result-object p0

    .end local p0           #activity:Landroid/app/Activity;
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 217
    .end local v0           #uri:Landroid/net/Uri;
    .end local p3           #filename:Ljava/lang/String;
    .restart local v2       #request:Landroid/app/DownloadManager$Request;
    .restart local v4       #cookies:Ljava/lang/String;
    .restart local p0       #activity:Landroid/app/Activity;
    .restart local p2       #userAgent:Ljava/lang/String;
    :cond_3
    const-string p1, "download"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    .line 219
    .local p1, manager:Landroid/app/DownloadManager;
    new-instance p2, Lcom/android/browser/DownloadHandler$1;

    .end local p2           #userAgent:Ljava/lang/String;
    const-string p3, "Browser download"

    invoke-direct {p2, p3, p1, v2}, Lcom/android/browser/DownloadHandler$1;-><init>(Ljava/lang/String;Landroid/app/DownloadManager;Landroid/app/DownloadManager$Request;)V

    invoke-virtual {p2}, Lcom/android/browser/DownloadHandler$1;->start()V

    goto :goto_2
.end method
