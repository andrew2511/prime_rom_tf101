.class abstract Lcom/android/browser/BrowserSettings$AutoFillProfileDbTask;
.super Landroid/os/AsyncTask;
.source "BrowserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AutoFillProfileDbTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TT;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mAutoFillProfileDb:Lcom/android/browser/AutoFillProfileDatabase;

.field mCompleteMessage:Landroid/os/Message;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/browser/BrowserSettings;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserSettings;Landroid/content/Context;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "ctx"
    .parameter "msg"

    .prologue
    .line 934
    .local p0, this:Lcom/android/browser/BrowserSettings$AutoFillProfileDbTask;,"Lcom/android/browser/BrowserSettings$AutoFillProfileDbTask<TT;>;"
    iput-object p1, p0, Lcom/android/browser/BrowserSettings$AutoFillProfileDbTask;->this$0:Lcom/android/browser/BrowserSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 935
    iput-object p2, p0, Lcom/android/browser/BrowserSettings$AutoFillProfileDbTask;->mContext:Landroid/content/Context;

    .line 936
    iput-object p3, p0, Lcom/android/browser/BrowserSettings$AutoFillProfileDbTask;->mCompleteMessage:Landroid/os/Message;

    .line 937
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 929
    .local p0, this:Lcom/android/browser/BrowserSettings$AutoFillProfileDbTask;,"Lcom/android/browser/BrowserSettings$AutoFillProfileDbTask<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserSettings$AutoFillProfileDbTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Ljava/lang/Void;"
        }
    .end annotation
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 929
    .local p0, this:Lcom/android/browser/BrowserSettings$AutoFillProfileDbTask;,"Lcom/android/browser/BrowserSettings$AutoFillProfileDbTask<TT;>;"
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserSettings$AutoFillProfileDbTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 940
    .local p0, this:Lcom/android/browser/BrowserSettings$AutoFillProfileDbTask;,"Lcom/android/browser/BrowserSettings$AutoFillProfileDbTask<TT;>;"
    iget-object v0, p0, Lcom/android/browser/BrowserSettings$AutoFillProfileDbTask;->mCompleteMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/browser/BrowserSettings$AutoFillProfileDbTask;->mCompleteMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserSettings$AutoFillProfileDbTask;->mAutoFillProfileDb:Lcom/android/browser/AutoFillProfileDatabase;

    invoke-virtual {v0}, Lcom/android/browser/AutoFillProfileDatabase;->close()V

    .line 944
    return-void
.end method
