.class Lcom/android/browser/TitleBarXLarge$1;
.super Ljava/lang/Object;
.source "TitleBarXLarge.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/TitleBarXLarge;->hideAutoLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/TitleBarXLarge;


# direct methods
.method constructor <init>(Lcom/android/browser/TitleBarXLarge;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/browser/TitleBarXLarge$1;->this$0:Lcom/android/browser/TitleBarXLarge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge$1;->this$0:Lcom/android/browser/TitleBarXLarge;

    invoke-static {v0}, Lcom/android/browser/TitleBarXLarge;->access$000(Lcom/android/browser/TitleBarXLarge;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge$1;->this$0:Lcom/android/browser/TitleBarXLarge;

    invoke-static {v0}, Lcom/android/browser/TitleBarXLarge;->access$100(Lcom/android/browser/TitleBarXLarge;)Lcom/android/browser/XLargeUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/XLargeUi;->refreshWebView()V

    .line 362
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 364
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 363
    return-void
.end method
