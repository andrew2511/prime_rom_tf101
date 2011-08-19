.class Lcom/google/android/apps/books/render/WebViewRenderer$1;
.super Landroid/webkit/WebView;
.source "WebViewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/render/WebViewRenderer;-><init>(Landroid/view/ViewGroup;Landroid/content/ContentResolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/render/WebViewRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/render/WebViewRenderer;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 90
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$1;,"Lcom/google/android/apps/books/render/WebViewRenderer.1;"
    iput-object p1, p0, Lcom/google/android/apps/books/render/WebViewRenderer$1;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 112
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$1;,"Lcom/google/android/apps/books/render/WebViewRenderer.1;"
    invoke-super {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer$1;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-static {v0}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$000(Lcom/google/android/apps/books/render/WebViewRenderer;)V

    .line 114
    return-void
.end method

.method public invalidate(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 106
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$1;,"Lcom/google/android/apps/books/render/WebViewRenderer.1;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->invalidate(IIII)V

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer$1;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-static {v0}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$000(Lcom/google/android/apps/books/render/WebViewRenderer;)V

    .line 108
    return-void
.end method

.method public postInvalidateDelayed(J)V
    .locals 1
    .parameter "delayMilliseconds"

    .prologue
    .line 100
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$1;,"Lcom/google/android/apps/books/render/WebViewRenderer.1;"
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->postInvalidateDelayed(J)V

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer$1;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-static {v0}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$000(Lcom/google/android/apps/books/render/WebViewRenderer;)V

    .line 102
    return-void
.end method

.method public postInvalidateDelayed(JIIII)V
    .locals 1
    .parameter "delayMilliseconds"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 94
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$1;,"Lcom/google/android/apps/books/render/WebViewRenderer.1;"
    invoke-super/range {p0 .. p6}, Landroid/webkit/WebView;->postInvalidateDelayed(JIIII)V

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer$1;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-static {v0}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$000(Lcom/google/android/apps/books/render/WebViewRenderer;)V

    .line 96
    return-void
.end method
