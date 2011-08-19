.class Lcom/android/browser/CombinedBookmarkHistoryView$1;
.super Landroid/os/AsyncTask;
.source "CombinedBookmarkHistoryView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/CombinedBookmarkHistoryView;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/android/browser/CombinedBookmarkHistoryView;


# direct methods
.method constructor <init>(Lcom/android/browser/CombinedBookmarkHistoryView;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/browser/CombinedBookmarkHistoryView$1;->this$0:Lcom/android/browser/CombinedBookmarkHistoryView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/CombinedBookmarkHistoryView$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "v"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView$1;->this$0:Lcom/android/browser/CombinedBookmarkHistoryView;

    invoke-static {v0}, Lcom/android/browser/CombinedBookmarkHistoryView;->access$000(Lcom/android/browser/CombinedBookmarkHistoryView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "favicon is NULL"

    invoke-static {}, Lcom/android/browser/CombinedBookmarkHistoryView;->getIconListenerSet()Lcom/android/browser/CombinedBookmarkHistoryView$IconListenerSet;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Browser;->requestAllIcons(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V

    .line 151
    const/4 v0, 0x0

    return-object v0
.end method
