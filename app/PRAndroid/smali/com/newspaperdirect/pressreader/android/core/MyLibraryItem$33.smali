.class Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$33;
.super Ljava/lang/Object;
.source "MyLibraryItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->startItemsDownloading(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnDownloadRetryListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1184
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1188
    return-void

    .line 1184
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 1185
    .local v0, item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isDownloading()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1186
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->download()V

    goto :goto_0
.end method
