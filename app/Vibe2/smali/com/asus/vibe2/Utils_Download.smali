.class public Lcom/asus/vibe2/Utils_Download;
.super Ljava/lang/Object;
.source "Utils_Download.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadItem(Landroid/content/Context;Lcom/asus/vibe/item/VibeParam;)V
    .locals 6
    .parameter "context"
    .parameter "param"

    .prologue
    .line 20
    const/4 v3, 0x0

    .line 21
    .local v3, url:Ljava/lang/String;
    const/4 v1, 0x0

    .line 22
    .local v1, mimeType:Ljava/lang/String;
    iget-object v0, p1, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/vibe/item/VibeUri;

    .line 23
    .local v2, uri:Lcom/asus/vibe/item/VibeUri;
    iget-object v4, v2, Lcom/asus/vibe/item/VibeUri;->uriType:Ljava/lang/String;

    const-string v5, "download"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 24
    iget-object v1, v2, Lcom/asus/vibe/item/VibeUri;->uri:Ljava/lang/String;

    .line 25
    .end local v3           #url:Ljava/lang/String;
    .local v1, url:Ljava/lang/String;
    iget-object v0, v2, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    .local v0, mimeType:Ljava/lang/String;
    move-object v2, v0

    .end local v0           #mimeType:Ljava/lang/String;
    .local v2, mimeType:Ljava/lang/String;
    move-object v3, v1

    .line 29
    .end local v1           #url:Ljava/lang/String;
    .restart local v3       #url:Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    .end local v2           #mimeType:Ljava/lang/String;
    .end local v3           #url:Ljava/lang/String;
    .end local p0
    .end local p1
    :goto_1
    return-void

    .line 32
    .restart local v2       #mimeType:Ljava/lang/String;
    .restart local v3       #url:Ljava/lang/String;
    .restart local p0
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    invoke-static {v3, v0, v2}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, filename:Ljava/lang/String;
    const-string v1, "http://www.inmusic.com.tw"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #filename:Ljava/lang/String;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Cont;->mContentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #filename:Ljava/lang/String;
    move-object v1, v0

    .line 37
    .end local v0           #filename:Ljava/lang/String;
    .local v1, filename:Ljava/lang/String;
    :goto_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, status:Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 42
    const-string p1, "shared"

    .end local p1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 43
    const p1, 0x7f040020

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 44
    .local p1, msg:Ljava/lang/String;
    const v0, 0x7f04001f

    .line 49
    .end local v2           #mimeType:Ljava/lang/String;
    .local v0, title:I
    :goto_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .end local v1           #filename:Ljava/lang/String;
    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .end local p0
    const v0, 0x1080027

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .end local v0           #title:I
    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x104000a

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .end local p1           #msg:Ljava/lang/String;
    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 46
    .local v0, status:Ljava/lang/String;
    .restart local v1       #filename:Ljava/lang/String;
    .restart local v2       #mimeType:Ljava/lang/String;
    .restart local p0
    :cond_2
    const p1, 0x7f04001e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .end local v0           #status:Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v1, v0, v2

    .end local v2           #mimeType:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 47
    .restart local p1       #msg:Ljava/lang/String;
    const v0, 0x7f04001d

    .local v0, title:I
    goto :goto_3

    .line 58
    .local v0, status:Ljava/lang/String;
    .restart local v2       #mimeType:Ljava/lang/String;
    .local p1, param:Lcom/asus/vibe/item/VibeParam;
    :cond_3
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 59
    .local v0, downloadUri:Landroid/net/Uri;
    new-instance v3, Landroid/app/DownloadManager$Request;

    .end local v3           #url:Ljava/lang/String;
    invoke-direct {v3, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 60
    .local v3, request:Landroid/app/DownloadManager$Request;
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .end local v0           #downloadUri:Landroid/net/Uri;
    invoke-virtual {v3, v0, v1}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 61
    if-eqz v2, :cond_4

    .line 62
    invoke-virtual {v3, v2}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 64
    :cond_4
    invoke-virtual {v3}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 67
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 69
    iget-object v0, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeItem_Cont;->mContentName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 70
    iget-object p1, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    .end local p1           #param:Lcom/asus/vibe/item/VibeParam;
    iget-object p1, p1, Lcom/asus/vibe/item/VibeItem_Sub;->mSPName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 72
    const-string p1, "download"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    .line 73
    .local p1, manager:Landroid/app/DownloadManager;
    new-instance v0, Lcom/asus/vibe2/Utils_Download$1;

    const-string v1, "@Vibe download"

    .end local v1           #filename:Ljava/lang/String;
    invoke-direct {v0, v1, p1, v3}, Lcom/asus/vibe2/Utils_Download$1;-><init>(Ljava/lang/String;Landroid/app/DownloadManager;Landroid/app/DownloadManager$Request;)V

    invoke-virtual {v0}, Lcom/asus/vibe2/Utils_Download$1;->start()V

    .line 78
    const p1, 0x7f040021

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .end local p1           #manager:Landroid/app/DownloadManager;
    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .local v0, filename:Ljava/lang/String;
    .local v3, url:Ljava/lang/String;
    .restart local p0
    .local p1, param:Lcom/asus/vibe/item/VibeParam;
    :cond_5
    move-object v1, v0

    .end local v0           #filename:Ljava/lang/String;
    .restart local v1       #filename:Ljava/lang/String;
    goto/16 :goto_2

    .end local v2           #mimeType:Ljava/lang/String;
    .local v0, i$:Ljava/util/Iterator;
    .local v1, mimeType:Ljava/lang/String;
    :cond_6
    move-object v2, v1

    .end local v1           #mimeType:Ljava/lang/String;
    .restart local v2       #mimeType:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static isInDownloadQueue(Landroid/content/Context;Lcom/asus/vibe/item/VibeParam;)Z
    .locals 5
    .parameter "context"
    .parameter "param"

    .prologue
    .line 82
    const-string v4, "download"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    .line 83
    .local v1, dm:Landroid/app/DownloadManager;
    new-instance v4, Landroid/app/DownloadManager$Query;

    invoke-direct {v4}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v1, v4}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 84
    .local v0, dlList:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 85
    const-string v4, "title"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 86
    .local v3, titleColumnId:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 88
    :cond_0
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, title:Ljava/lang/String;
    iget-object v4, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v4, v4, Lcom/asus/vibe/item/VibeItem_Cont;->mContentName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    const/4 v4, 0x1

    .line 94
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #titleColumnId:I
    :goto_0
    return v4

    .line 92
    .restart local v2       #title:Ljava/lang/String;
    .restart local v3       #titleColumnId:I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 94
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #titleColumnId:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static openDownloadsPage(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    const-class v1, Lcom/asus/vibe2/Act_DownloadPage;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 104
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 106
    return-void
.end method
