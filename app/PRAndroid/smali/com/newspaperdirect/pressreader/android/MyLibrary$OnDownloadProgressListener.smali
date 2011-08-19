.class Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;
.super Ljava/lang/Object;
.source "MyLibrary.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$OnDownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/MyLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDownloadProgressListener"
.end annotation


# instance fields
.field private mStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;


# direct methods
.method private constructor <init>(Lcom/newspaperdirect/pressreader/android/MyLibrary;)V
    .locals 1
    .parameter

    .prologue
    .line 687
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;->mStates:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/newspaperdirect/pressreader/android/MyLibrary;Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 687
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary;)V

    return-void
.end method


# virtual methods
.method public addDownloadState(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Landroid/view/View;)Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;
    .locals 5
    .parameter "item"
    .parameter "view"

    .prologue
    .line 692
    new-instance v1, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    invoke-direct {v1, v2, p1, p2}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Landroid/view/View;)V

    .line 693
    .local v1, result:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;->mStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    .line 694
    .local v0, old:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->getMyLibraryItemView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 695
    :cond_0
    return-object v1
.end method

.method public getDownloadState(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;
    .locals 3
    .parameter "item"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;->mStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    return-object p0
.end method

.method public onDownloadProgress(JI)V
    .locals 2
    .parameter "id"
    .parameter "progress"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;->mStates:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;->mStates:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    invoke-virtual {p0, p3}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->onDownloadProgress(I)V

    .line 708
    :cond_0
    return-void
.end method

.method public removeDownloadState(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;
    .locals 3
    .parameter "item"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;->mStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    return-object p0
.end method
