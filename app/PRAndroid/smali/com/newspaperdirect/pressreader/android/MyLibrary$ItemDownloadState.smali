.class Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;
.super Ljava/lang/Object;
.source "MyLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/MyLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemDownloadState"
.end annotation


# instance fields
.field private mMyLibraryItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

.field private mMyLibraryItemHasThumbnail:Z

.field private mMyLibraryItemIsSemiReady:Z

.field private mMyLibraryItemView:Landroid/view/View;

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;


# direct methods
.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/MyLibrary;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "myLibraryItem"
    .parameter "myLibraryItemView"

    .prologue
    .line 657
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->mMyLibraryItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 654
    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->mMyLibraryItemView:Landroid/view/View;

    .line 655
    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->hasThumbnail()Z

    move-result v0

    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->mMyLibraryItemHasThumbnail:Z

    .line 656
    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isSemiReady()Z

    move-result v0

    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->mMyLibraryItemIsSemiReady:Z

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 647
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->mMyLibraryItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .locals 1
    .parameter

    .prologue
    .line 643
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->mMyLibraryItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    return-object v0
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;)Z
    .locals 1
    .parameter

    .prologue
    .line 644
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->mMyLibraryItemHasThumbnail:Z

    return v0
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 644
    iput-boolean p1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->mMyLibraryItemHasThumbnail:Z

    return-void
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;)Z
    .locals 1
    .parameter

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->mMyLibraryItemIsSemiReady:Z

    return v0
.end method

.method static synthetic access$5(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 645
    iput-boolean p1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->mMyLibraryItemIsSemiReady:Z

    return-void
.end method


# virtual methods
.method public getMyLibraryItemView()Landroid/view/View;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->mMyLibraryItemView:Landroid/view/View;

    return-object v0
.end method

.method public onDownloadProgress(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;

    invoke-direct {v1, p0, p1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;I)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 684
    return-void
.end method
