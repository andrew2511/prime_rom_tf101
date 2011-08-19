.class Lcom/android/browser/BrowserHistoryPage$3;
.super Ljava/lang/Object;
.source "BrowserHistoryPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserHistoryPage;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserHistoryPage;

.field final synthetic val$clear:Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserHistoryPage;Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/browser/BrowserHistoryPage$3;->this$0:Lcom/android/browser/BrowserHistoryPage;

    iput-object p2, p0, Lcom/android/browser/BrowserHistoryPage$3;->val$clear:Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 308
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$3;->val$clear:Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 311
    :cond_0
    return-void
.end method
