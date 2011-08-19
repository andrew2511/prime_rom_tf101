.class Lcom/splashtop/remote/OOBEForAsusActivity$1;
.super Landroid/webkit/WebChromeClient;
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
    .line 73
    iput-object p1, p0, Lcom/splashtop/remote/OOBEForAsusActivity$1;->this$0:Lcom/splashtop/remote/OOBEForAsusActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/splashtop/remote/OOBEForAsusActivity$1;->this$0:Lcom/splashtop/remote/OOBEForAsusActivity;

    invoke-static {v0}, Lcom/splashtop/remote/OOBEForAsusActivity;->access$000(Lcom/splashtop/remote/OOBEForAsusActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 77
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 78
    return-void
.end method
