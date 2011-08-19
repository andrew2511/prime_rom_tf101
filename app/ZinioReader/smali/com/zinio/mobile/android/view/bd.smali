.class final Lcom/zinio/mobile/android/view/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/ShopActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/ShopActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/zinio/mobile/android/view/bd;->a:Lcom/zinio/mobile/android/view/ShopActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 189
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bd;->a:Lcom/zinio/mobile/android/view/ShopActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/ShopActivity;->b(Lcom/zinio/mobile/android/view/ShopActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->showContextMenu()Z

    .line 190
    const/4 v0, 0x0

    return v0
.end method
