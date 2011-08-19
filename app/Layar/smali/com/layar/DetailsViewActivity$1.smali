.class Lcom/layar/DetailsViewActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "DetailsViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/DetailsViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/DetailsViewActivity;


# direct methods
.method constructor <init>(Lcom/layar/DetailsViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/DetailsViewActivity$1;->this$0:Lcom/layar/DetailsViewActivity;

    .line 106
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/layar/DetailsViewActivity$1;->this$0:Lcom/layar/DetailsViewActivity;

    invoke-static {v0}, Lcom/layar/DetailsViewActivity;->access$2(Lcom/layar/DetailsViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 110
    iget-object v0, p0, Lcom/layar/DetailsViewActivity$1;->this$0:Lcom/layar/DetailsViewActivity;

    invoke-static {v0}, Lcom/layar/DetailsViewActivity;->access$3(Lcom/layar/DetailsViewActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x64

    if-ne p2, v1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    return-void

    .line 111
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
