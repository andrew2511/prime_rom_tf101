.class Lcom/android/browser/PageDialogsHandler$9;
.super Ljava/lang/Object;
.source "PageDialogsHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/PageDialogsHandler;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/PageDialogsHandler;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler$9;->this$0:Lcom/android/browser/PageDialogsHandler;

    iput-object p2, p0, Lcom/android/browser/PageDialogsHandler$9;->val$view:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler$9;->this$0:Lcom/android/browser/PageDialogsHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/browser/PageDialogsHandler;->access$1002(Lcom/android/browser/PageDialogsHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 362
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler$9;->this$0:Lcom/android/browser/PageDialogsHandler;

    iget-object v1, p0, Lcom/android/browser/PageDialogsHandler$9;->this$0:Lcom/android/browser/PageDialogsHandler;

    invoke-static {v1}, Lcom/android/browser/PageDialogsHandler;->access$100(Lcom/android/browser/PageDialogsHandler;)Lcom/android/browser/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/PageDialogsHandler$9;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lcom/android/browser/TabControl;->getTabFromView(Landroid/webkit/WebView;)Lcom/android/browser/Tab;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/PageDialogsHandler;->showPageInfo(Lcom/android/browser/Tab;Z)V

    .line 365
    return-void
.end method
