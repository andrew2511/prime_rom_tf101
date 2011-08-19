.class Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;
.super Ljava/lang/Object;
.source "AddBookmarkPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/AddBookmarkPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveBookmarkRunnable"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessage:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/browser/AddBookmarkPage;


# direct methods
.method public constructor <init>(Lcom/android/browser/AddBookmarkPage;Landroid/content/Context;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "ctx"
    .parameter "msg"

    .prologue
    .line 862
    iput-object p1, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->this$0:Lcom/android/browser/AddBookmarkPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 863
    iput-object p2, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mContext:Landroid/content/Context;

    .line 864
    iput-object p3, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    .line 865
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 868
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    .line 869
    .local v8, bundle:Landroid/os/Bundle;
    const-string v0, "title"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 870
    .local v3, title:Ljava/lang/String;
    const-string v0, "url"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 871
    .local v2, url:Ljava/lang/String;
    const-string v0, "remove_thumbnail"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 872
    .local v11, invalidateThumbnail:Z
    if-eqz v11, :cond_1

    const/4 v0, 0x0

    move-object v4, v0

    .line 874
    .local v4, thumbnail:Landroid/graphics/Bitmap;
    :goto_0
    const-string v0, "touch_icon_url"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 878
    .local v12, touchIconUrl:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->this$0:Lcom/android/browser/AddBookmarkPage;

    invoke-virtual {v0}, Lcom/android/browser/AddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 879
    .local v9, cr:Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->this$0:Lcom/android/browser/AddBookmarkPage;

    const/4 v1, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->this$0:Lcom/android/browser/AddBookmarkPage;

    invoke-static {v6}, Lcom/android/browser/AddBookmarkPage;->access$100(Lcom/android/browser/AddBookmarkPage;)J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/android/browser/Bookmarks;->addBookmark(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZJ)V

    .line 881
    if-eqz v12, :cond_0

    .line 882
    new-instance v0, Lcom/android/browser/DownloadTouchIcon;

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v9, v2}, Lcom/android/browser/DownloadTouchIcon;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->this$0:Lcom/android/browser/AddBookmarkPage;

    invoke-static {v6}, Lcom/android/browser/AddBookmarkPage;->access$200(Lcom/android/browser/AddBookmarkPage;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-virtual {v0, v1}, Lcom/android/browser/DownloadTouchIcon;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    .end local v9           #cr:Landroid/content/ContentResolver;
    :goto_1
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 889
    return-void

    .line 872
    .end local v4           #thumbnail:Landroid/graphics/Bitmap;
    .end local v12           #touchIconUrl:Ljava/lang/String;
    :cond_1
    const-string v0, "thumbnail"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v4, v0

    goto :goto_0

    .line 885
    .restart local v4       #thumbnail:Landroid/graphics/Bitmap;
    .restart local v12       #touchIconUrl:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 886
    .local v10, e:Ljava/lang/IllegalStateException;
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    iput v13, v0, Landroid/os/Message;->arg1:I

    goto :goto_1
.end method
