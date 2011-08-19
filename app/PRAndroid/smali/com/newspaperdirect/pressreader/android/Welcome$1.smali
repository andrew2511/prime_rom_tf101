.class Lcom/newspaperdirect/pressreader/android/Welcome$1;
.super Landroid/webkit/WebViewClient;
.source "Welcome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/Welcome;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/Welcome;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/Welcome;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Welcome$1;->this$0:Lcom/newspaperdirect/pressreader/android/Welcome;

    .line 29
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Welcome$1;->this$0:Lcom/newspaperdirect/pressreader/android/Welcome;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/Welcome;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Welcome$1;->this$0:Lcom/newspaperdirect/pressreader/android/Welcome;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Welcome;->access$0(Lcom/newspaperdirect/pressreader/android/Welcome;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Welcome$1;->this$0:Lcom/newspaperdirect/pressreader/android/Welcome;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Welcome;->access$0(Lcom/newspaperdirect/pressreader/android/Welcome;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Welcome$1;->this$0:Lcom/newspaperdirect/pressreader/android/Welcome;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Welcome;->access$0(Lcom/newspaperdirect/pressreader/android/Welcome;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 33
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Welcome$1;->this$0:Lcom/newspaperdirect/pressreader/android/Welcome;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/Welcome;->finish()V

    .line 36
    return-void
.end method
