.class Lcom/newspaperdirect/pressreader/android/ArticleView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ArticleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/ArticleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;


# direct methods
.method private constructor <init>(Lcom/newspaperdirect/pressreader/android/ArticleView;)V
    .locals 0
    .parameter

    .prologue
    .line 920
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/newspaperdirect/pressreader/android/ArticleView;Lcom/newspaperdirect/pressreader/android/ArticleView$GestureListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 920
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/ArticleView$GestureListener;-><init>(Lcom/newspaperdirect/pressreader/android/ArticleView;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x4348

    .line 922
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$5(Lcom/newspaperdirect/pressreader/android/ArticleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 928
    :goto_0
    return v0

    .line 924
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42c8

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    :cond_1
    move v0, v3

    .line 925
    goto :goto_0

    .line 926
    :cond_2
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$6(Lcom/newspaperdirect/pressreader/android/ArticleView;)V

    .line 928
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 927
    :cond_3
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$7(Lcom/newspaperdirect/pressreader/android/ArticleView;)V

    goto :goto_1
.end method
