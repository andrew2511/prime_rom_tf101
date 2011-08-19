.class final Lcom/zinio/mobile/android/view/y;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/FAQActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/FAQActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/zinio/mobile/android/view/y;->a:Lcom/zinio/mobile/android/view/FAQActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgressChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/zinio/mobile/android/view/y;->a:Lcom/zinio/mobile/android/view/FAQActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/FAQActivity;->a(Lcom/zinio/mobile/android/view/FAQActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 77
    invoke-static {}, Lcom/zinio/mobile/android/view/FAQActivity;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/zinio/mobile/android/view/y;->a:Lcom/zinio/mobile/android/view/FAQActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/FAQActivity;->a(Lcom/zinio/mobile/android/view/FAQActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 79
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/zinio/mobile/android/view/FAQActivity;->a(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 80
    iget-object v0, p0, Lcom/zinio/mobile/android/view/y;->a:Lcom/zinio/mobile/android/view/FAQActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/FAQActivity;->b()V

    .line 82
    :cond_0
    return-void
.end method
