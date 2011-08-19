.class Lcom/splashtop/remote/OOBEForAsusActivity$2;
.super Landroid/webkit/WebViewClient;
.source "OOBEForAsusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/splashtop/remote/OOBEForAsusActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/OOBEForAsusActivity;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/OOBEForAsusActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/splashtop/remote/OOBEForAsusActivity$2;->this$0:Lcom/splashtop/remote/OOBEForAsusActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/splashtop/remote/OOBEForAsusActivity$2;->this$0:Lcom/splashtop/remote/OOBEForAsusActivity;

    invoke-static {v0}, Lcom/splashtop/remote/OOBEForAsusActivity;->access$000(Lcom/splashtop/remote/OOBEForAsusActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 89
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/splashtop/remote/OOBEForAsusActivity$2;->this$0:Lcom/splashtop/remote/OOBEForAsusActivity;

    invoke-static {v0}, Lcom/splashtop/remote/OOBEForAsusActivity;->access$000(Lcom/splashtop/remote/OOBEForAsusActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 84
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 85
    return-void
.end method
