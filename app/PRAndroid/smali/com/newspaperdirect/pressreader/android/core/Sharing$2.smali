.class Lcom/newspaperdirect/pressreader/android/core/Sharing$2;
.super Ljava/lang/Object;
.source "Sharing.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/Sharing;->sendText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

.field private final synthetic val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

.field private final synthetic val$mProgressDialog:Landroid/app/ProgressDialog;

.field private final synthetic val$task:Landroid/os/AsyncTask;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/Sharing;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;Landroid/os/AsyncTask;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$2;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$2;->val$task:Landroid/os/AsyncTask;

    iput-object p4, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$2;->val$mProgressDialog:Landroid/app/ProgressDialog;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x1

    .line 150
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$2;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$2;->val$task:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$2;->val$task:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$2;->val$mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$2;->val$mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 156
    :cond_1
    return-void
.end method
