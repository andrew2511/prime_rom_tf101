.class Lcom/amazon/kcp/library/LibraryActivity$10;
.super Ljava/lang/Object;
.source "LibraryActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryActivity;->populateContextMenuForDownloadingBook(Landroid/view/ContextMenu;Lcom/amazon/kcp/library/models/IDownloadBookItem;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryActivity;

.field final synthetic val$bookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryActivity;Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1321
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity$10;,"Lcom/amazon/kcp/library/LibraryActivity.10;"
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryActivity$10;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryActivity$10;->val$bookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity$10;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity$10;->val$bookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/CLibrary;->deleteBook(Lcom/amazon/kcp/library/models/IDownloadBookItem;)Z

    .line 1326
    const/4 v0, 0x1

    return v0
.end method
