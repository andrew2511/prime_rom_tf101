.class Lcom/android/browser/Tab$2$4;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Tab$2;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/Tab$2;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab$2;Landroid/webkit/SslErrorHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 775
    iput-object p1, p0, Lcom/android/browser/Tab$2$4;->this$1:Lcom/android/browser/Tab$2;

    iput-object p2, p0, Lcom/android/browser/Tab$2$4;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/browser/Tab$2$4;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 778
    iget-object v0, p0, Lcom/android/browser/Tab$2$4;->this$1:Lcom/android/browser/Tab$2;

    iget-object v0, v0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    sget-object v1, Lcom/android/browser/Tab$LockIcon;->LOCK_ICON_UNSECURE:Lcom/android/browser/Tab$LockIcon;

    invoke-static {v0, v1}, Lcom/android/browser/Tab;->access$1300(Lcom/android/browser/Tab;Lcom/android/browser/Tab$LockIcon;)V

    .line 779
    iget-object v0, p0, Lcom/android/browser/Tab$2$4;->this$1:Lcom/android/browser/Tab$2;

    iget-object v0, v0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/Tab$2$4;->this$1:Lcom/android/browser/Tab$2;

    iget-object v1, v1, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->onUserCanceledSsl(Lcom/android/browser/Tab;)V

    .line 780
    return-void
.end method
