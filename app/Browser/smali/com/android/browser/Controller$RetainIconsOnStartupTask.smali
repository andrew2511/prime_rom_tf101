.class Lcom/android/browser/Controller$RetainIconsOnStartupTask;
.super Landroid/os/AsyncTask;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetainIconsOnStartupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mDb:Landroid/webkit/WebIconDatabase;

.field final synthetic this$0:Lcom/android/browser/Controller;


# direct methods
.method public constructor <init>(Lcom/android/browser/Controller;Landroid/webkit/WebIconDatabase;)V
    .locals 0
    .parameter
    .parameter "db"

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/browser/Controller$RetainIconsOnStartupTask;->this$0:Lcom/android/browser/Controller;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 432
    iput-object p2, p0, Lcom/android/browser/Controller$RetainIconsOnStartupTask;->mDb:Landroid/webkit/WebIconDatabase;

    .line 433
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 428
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller$RetainIconsOnStartupTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .parameter "unused"

    .prologue
    .line 437
    iget-object v4, p0, Lcom/android/browser/Controller$RetainIconsOnStartupTask;->mDb:Landroid/webkit/WebIconDatabase;

    iget-object v5, p0, Lcom/android/browser/Controller$RetainIconsOnStartupTask;->this$0:Lcom/android/browser/Controller;

    invoke-static {v5}, Lcom/android/browser/Controller;->access$300(Lcom/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v5

    const-string v6, "icons"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebIconDatabase;->open(Ljava/lang/String;)V

    .line 438
    const/4 v0, 0x0

    .line 440
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/android/browser/Controller$RetainIconsOnStartupTask;->this$0:Lcom/android/browser/Controller;

    invoke-static {v4}, Lcom/android/browser/Controller;->access$300(Lcom/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/Browser;->getAllBookmarks(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    .line 441
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 442
    const-string v4, "url"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 444
    .local v3, urlIndex:I
    :cond_0
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, url:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/browser/Controller$RetainIconsOnStartupTask;->mDb:Landroid/webkit/WebIconDatabase;

    invoke-virtual {v4, v2}, Landroid/webkit/WebIconDatabase;->retainIconForPageUrl(Ljava/lang/String;)V

    .line 446
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 451
    .end local v2           #url:Ljava/lang/String;
    .end local v3           #urlIndex:I
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 454
    :cond_2
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 448
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 449
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v4, "Controller"

    const-string v5, "retainIconsOnStartup"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4
.end method
