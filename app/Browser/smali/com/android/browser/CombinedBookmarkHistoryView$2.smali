.class Lcom/android/browser/CombinedBookmarkHistoryView$2;
.super Ljava/lang/Object;
.source "CombinedBookmarkHistoryView.java"

# interfaces
.implements Lcom/android/browser/BookmarksPageCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/CombinedBookmarkHistoryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/CombinedBookmarkHistoryView;


# direct methods
.method constructor <init>(Lcom/android/browser/CombinedBookmarkHistoryView;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/browser/CombinedBookmarkHistoryView$2;->this$0:Lcom/android/browser/CombinedBookmarkHistoryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBookmarkSelected(Landroid/database/Cursor;Z)Z
    .locals 3
    .parameter "c"
    .parameter "isFolder"

    .prologue
    const/4 v2, 0x0

    .line 201
    if-eqz p2, :cond_0

    move v0, v2

    .line 205
    :goto_0
    return v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView$2;->this$0:Lcom/android/browser/CombinedBookmarkHistoryView;

    invoke-static {v0}, Lcom/android/browser/CombinedBookmarkHistoryView;->access$100(Lcom/android/browser/CombinedBookmarkHistoryView;)Lcom/android/browser/UiController;

    move-result-object v0

    invoke-static {p1}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/android/browser/UiController;->onUrlSelected(Ljava/lang/String;Z)V

    .line 205
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onFolderChanged(ILandroid/net/Uri;)V
    .locals 5
    .parameter "level"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x14

    .line 210
    const/16 v0, 0x14

    .line 213
    .local v0, toggleFlags:I
    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/browser/CombinedBookmarkHistoryView$2;->this$0:Lcom/android/browser/CombinedBookmarkHistoryView;

    invoke-static {v1}, Lcom/android/browser/CombinedBookmarkHistoryView;->access$200(Lcom/android/browser/CombinedBookmarkHistoryView;)Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 215
    iget-object v1, p0, Lcom/android/browser/CombinedBookmarkHistoryView$2;->this$0:Lcom/android/browser/CombinedBookmarkHistoryView;

    invoke-static {v1}, Lcom/android/browser/CombinedBookmarkHistoryView;->access$200(Lcom/android/browser/CombinedBookmarkHistoryView;)Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 220
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/android/browser/CombinedBookmarkHistoryView$2;->this$0:Lcom/android/browser/CombinedBookmarkHistoryView;

    invoke-static {v1}, Lcom/android/browser/CombinedBookmarkHistoryView;->access$200(Lcom/android/browser/CombinedBookmarkHistoryView;)Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 218
    iget-object v1, p0, Lcom/android/browser/CombinedBookmarkHistoryView$2;->this$0:Lcom/android/browser/CombinedBookmarkHistoryView;

    invoke-static {v1}, Lcom/android/browser/CombinedBookmarkHistoryView;->access$200(Lcom/android/browser/CombinedBookmarkHistoryView;)Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto :goto_0
.end method

.method public onOpenInNewWindow(Landroid/database/Cursor;)Z
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    .line 195
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView$2;->this$0:Lcom/android/browser/CombinedBookmarkHistoryView;

    invoke-static {v0}, Lcom/android/browser/CombinedBookmarkHistoryView;->access$100(Lcom/android/browser/CombinedBookmarkHistoryView;)Lcom/android/browser/UiController;

    move-result-object v0

    invoke-static {p1}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/android/browser/UiController;->onUrlSelected(Ljava/lang/String;Z)V

    .line 196
    return v2
.end method
