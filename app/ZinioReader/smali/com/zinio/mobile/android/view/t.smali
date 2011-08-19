.class final Lcom/zinio/mobile/android/view/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/FAQActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/FAQActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/zinio/mobile/android/view/t;->a:Lcom/zinio/mobile/android/view/FAQActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/zinio/mobile/android/view/t;->a:Lcom/zinio/mobile/android/view/FAQActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/FAQActivity;->e(Lcom/zinio/mobile/android/view/FAQActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/zinio/mobile/android/view/t;->a:Lcom/zinio/mobile/android/view/FAQActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/FAQActivity;->e(Lcom/zinio/mobile/android/view/FAQActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFocus()V

    .line 238
    return-void
.end method
