.class Lcom/layar/SocialActionActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "SocialActionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/SocialActionActivity;->setupProgressBar(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/SocialActionActivity;


# direct methods
.method constructor <init>(Lcom/layar/SocialActionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/SocialActionActivity$2;->this$0:Lcom/layar/SocialActionActivity;

    .line 224
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/layar/SocialActionActivity$2;->this$0:Lcom/layar/SocialActionActivity;

    invoke-static {v0}, Lcom/layar/SocialActionActivity;->access$4(Lcom/layar/SocialActionActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 228
    iget-object v0, p0, Lcom/layar/SocialActionActivity$2;->this$0:Lcom/layar/SocialActionActivity;

    invoke-static {v0}, Lcom/layar/SocialActionActivity;->access$5(Lcom/layar/SocialActionActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x64

    if-ne p2, v1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    return-void

    .line 229
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
