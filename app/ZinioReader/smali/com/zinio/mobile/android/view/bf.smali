.class final Lcom/zinio/mobile/android/view/bf;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/ShopActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/ShopActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/zinio/mobile/android/view/bf;->a:Lcom/zinio/mobile/android/view/ShopActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bf;->a:Lcom/zinio/mobile/android/view/ShopActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/ShopActivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 241
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bf;->a:Lcom/zinio/mobile/android/view/ShopActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/ShopActivity;->a:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bf;->a:Lcom/zinio/mobile/android/view/ShopActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/ShopActivity;->c()V

    .line 245
    :cond_0
    return-void
.end method
