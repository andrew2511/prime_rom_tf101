.class Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;
.super Ljava/lang/Object;
.source "ArticleView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/ArticleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchEventListener"
.end annotation


# instance fields
.field private d:F

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

.field private zooming:Z


# direct methods
.method private constructor <init>(Lcom/newspaperdirect/pressreader/android/ArticleView;)V
    .locals 1
    .parameter

    .prologue
    .line 879
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;->zooming:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/newspaperdirect/pressreader/android/ArticleView;Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 879
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;-><init>(Lcom/newspaperdirect/pressreader/android/ArticleView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v9, 0x32

    const/high16 v8, 0x4200

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 885
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 886
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    sub-float v2, v4, v5

    .line 887
    .local v2, x:F
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float v3, v4, v5

    .line 888
    .local v3, y:F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;->d:F

    .line 889
    iget v4, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;->d:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_0

    .line 890
    iput-boolean v7, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;->zooming:Z

    :cond_0
    move v4, v7

    .line 916
    .end local v2           #x:F
    .end local v3           #y:F
    :goto_0
    return v4

    .line 893
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    iget-boolean v4, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;->zooming:Z

    if-eqz v4, :cond_5

    .line 894
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    sub-float v2, v4, v5

    .line 895
    .restart local v2       #x:F
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float v3, v4, v5

    .line 896
    .restart local v3       #y:F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 897
    .local v1, newd:F
    cmpl-float v4, v1, v8

    if-lez v4, :cond_4

    iget v4, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;->d:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v8

    if-lez v4, :cond_4

    .line 898
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView;)I

    move-result v4

    iget v5, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;->d:F

    sub-float v5, v1, v5

    const/high16 v6, 0x42c8

    div-float/2addr v5, v6

    float-to-int v5, v5

    add-int v0, v4, v5

    .line 899
    .local v0, newSizePercent:I
    if-ge v0, v9, :cond_2

    const/16 v0, 0x32

    .line 900
    :cond_2
    const/16 v4, 0x12c

    if-le v0, v4, :cond_3

    const/16 v0, 0x12c

    .line 901
    :cond_3
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView;)I

    move-result v4

    if-eq v4, v0, :cond_4

    .line 902
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v4, v0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$1(Lcom/newspaperdirect/pressreader/android/ArticleView;I)V

    .line 904
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$2(Lcom/newspaperdirect/pressreader/android/ArticleView;)Landroid/widget/SeekBar;

    move-result-object v4

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v5}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView;)I

    move-result v5

    sub-int/2addr v5, v9

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 905
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$3(Lcom/newspaperdirect/pressreader/android/ArticleView;)V

    .end local v0           #newSizePercent:I
    :cond_4
    move v4, v7

    .line 908
    goto :goto_0

    .line 910
    .end local v1           #newd:F
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    iget-boolean v4, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;->zooming:Z

    if-eqz v4, :cond_6

    .line 911
    iput-boolean v6, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;->zooming:Z

    .line 912
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "article_view_text_size"

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v6}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView;)I

    move-result v6

    sub-int/2addr v6, v9

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v4, v7

    .line 913
    goto/16 :goto_0

    .line 915
    :cond_6
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$4(Lcom/newspaperdirect/pressreader/android/ArticleView;)Landroid/view/GestureDetector;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$4(Lcom/newspaperdirect/pressreader/android/ArticleView;)Landroid/view/GestureDetector;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v7

    goto/16 :goto_0

    :cond_7
    move v4, v6

    .line 916
    goto/16 :goto_0
.end method
