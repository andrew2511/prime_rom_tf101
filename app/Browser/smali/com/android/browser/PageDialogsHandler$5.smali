.class Lcom/android/browser/PageDialogsHandler$5;
.super Ljava/lang/Object;
.source "PageDialogsHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/PageDialogsHandler;->showPageInfo(Lcom/android/browser/Tab;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/PageDialogsHandler;

.field final synthetic val$fromShowSSLCertificateOnError:Z

.field final synthetic val$tab:Lcom/android/browser/Tab;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/android/browser/PageDialogsHandler;ZLandroid/webkit/WebView;Lcom/android/browser/Tab;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler$5;->this$0:Lcom/android/browser/PageDialogsHandler;

    iput-boolean p2, p0, Lcom/android/browser/PageDialogsHandler$5;->val$fromShowSSLCertificateOnError:Z

    iput-object p3, p0, Lcom/android/browser/PageDialogsHandler$5;->val$view:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/android/browser/PageDialogsHandler$5;->val$tab:Lcom/android/browser/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler$5;->this$0:Lcom/android/browser/PageDialogsHandler;

    invoke-static {v0, v1}, Lcom/android/browser/PageDialogsHandler;->access$202(Lcom/android/browser/PageDialogsHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 208
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler$5;->this$0:Lcom/android/browser/PageDialogsHandler;

    invoke-static {v0, v1}, Lcom/android/browser/PageDialogsHandler;->access$302(Lcom/android/browser/PageDialogsHandler;Lcom/android/browser/Tab;)Lcom/android/browser/Tab;

    .line 211
    iget-boolean v0, p0, Lcom/android/browser/PageDialogsHandler$5;->val$fromShowSSLCertificateOnError:Z

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler$5;->this$0:Lcom/android/browser/PageDialogsHandler;

    iget-object v1, p0, Lcom/android/browser/PageDialogsHandler$5;->this$0:Lcom/android/browser/PageDialogsHandler;

    invoke-static {v1}, Lcom/android/browser/PageDialogsHandler;->access$400(Lcom/android/browser/PageDialogsHandler;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/PageDialogsHandler$5;->this$0:Lcom/android/browser/PageDialogsHandler;

    invoke-static {v2}, Lcom/android/browser/PageDialogsHandler;->access$500(Lcom/android/browser/PageDialogsHandler;)Landroid/webkit/SslErrorHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/PageDialogsHandler$5;->this$0:Lcom/android/browser/PageDialogsHandler;

    invoke-static {v3}, Lcom/android/browser/PageDialogsHandler;->access$600(Lcom/android/browser/PageDialogsHandler;)Landroid/net/http/SslError;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/PageDialogsHandler;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler$5;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler$5;->this$0:Lcom/android/browser/PageDialogsHandler;

    iget-object v1, p0, Lcom/android/browser/PageDialogsHandler$5;->val$tab:Lcom/android/browser/Tab;

    invoke-static {v0, v1}, Lcom/android/browser/PageDialogsHandler;->access$700(Lcom/android/browser/PageDialogsHandler;Lcom/android/browser/Tab;)V

    goto :goto_0
.end method
