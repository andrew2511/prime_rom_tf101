.class Lcom/google/android/opengl/carousel/CarouselView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "CarouselView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/carousel/CarouselView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/carousel/CarouselView;


# direct methods
.method private constructor <init>(Lcom/google/android/opengl/carousel/CarouselView;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselView$ScaleListener;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/opengl/carousel/CarouselView;Lcom/google/android/opengl/carousel/CarouselView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/google/android/opengl/carousel/CarouselView$ScaleListener;-><init>(Lcom/google/android/opengl/carousel/CarouselView;)V

    return-void
.end method


# virtual methods
.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 176
    const/4 v0, 0x1

    return v0
.end method
