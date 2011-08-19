.class Lcom/android/gallery3d/ui/ScrollView$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/ScrollView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/ScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/gallery3d/ui/ScrollView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/ScrollView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/ScrollView;Lcom/android/gallery3d/ui/ScrollView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/ScrollView$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/ScrollView;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/ui/ScrollView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/ScrollView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/ScrollView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/ScrollView;

    iget v1, v1, Lcom/android/gallery3d/ui/ScrollView;->mScrollY:I

    float-to-int v2, p4

    add-int/2addr v1, v2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/gallery3d/ui/ScrollView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/ScrollView;

    invoke-static {v3}, Lcom/android/gallery3d/ui/ScrollView;->access$100(Lcom/android/gallery3d/ui/ScrollView;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/util/Utils;->clamp(III)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/ScrollView;->mScrollY:I

    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/ui/ScrollView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/ScrollView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ScrollView;->invalidate()V

    .line 98
    const/4 v0, 0x1

    return v0
.end method
