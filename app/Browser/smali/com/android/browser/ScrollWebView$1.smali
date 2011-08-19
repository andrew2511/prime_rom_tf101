.class Lcom/android/browser/ScrollWebView$1;
.super Ljava/lang/Object;
.source "ScrollWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ScrollWebView;->onDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ScrollWebView;


# direct methods
.method constructor <init>(Lcom/android/browser/ScrollWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/browser/ScrollWebView$1;->this$0:Lcom/android/browser/ScrollWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/browser/ScrollWebView$1;->this$0:Lcom/android/browser/ScrollWebView;

    invoke-virtual {v0}, Lcom/android/browser/ScrollWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    return-void
.end method
