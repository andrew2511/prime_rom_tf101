.class Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;
.super Landroid/os/AsyncTask;
.source "BrowserHistoryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserHistoryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClearHistoryTask"
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
.field mCallbacks:Lcom/android/browser/BookmarksHistoryCallbacks;

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/browser/BookmarksHistoryCallbacks;)V
    .locals 0
    .parameter "resolver"
    .parameter "callbacks"

    .prologue
    .line 328
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 329
    iput-object p1, p0, Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;->mResolver:Landroid/content/ContentResolver;

    .line 330
    iput-object p2, p0, Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;->mCallbacks:Lcom/android/browser/BookmarksHistoryCallbacks;

    .line 331
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 323
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Landroid/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 335
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 323
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;->mCallbacks:Lcom/android/browser/BookmarksHistoryCallbacks;

    invoke-interface {v0}, Lcom/android/browser/BookmarksHistoryCallbacks;->onRemoveParentChildRelationships()V

    .line 341
    return-void
.end method
