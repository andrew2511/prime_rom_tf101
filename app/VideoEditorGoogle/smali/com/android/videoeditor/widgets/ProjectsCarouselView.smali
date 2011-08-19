.class public Lcom/android/videoeditor/widgets/ProjectsCarouselView;
.super Lcom/android/ex/carousel/CarouselView;
.source "ProjectsCarouselView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    new-instance v0, Lcom/android/ex/carousel/CarouselController;

    invoke-direct {v0}, Lcom/android/ex/carousel/CarouselController;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/ex/carousel/CarouselController;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/ex/carousel/CarouselController;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "controller"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ex/carousel/CarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/ex/carousel/CarouselController;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/ex/carousel/CarouselController;)V
    .locals 1
    .parameter "context"
    .parameter "controller"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/ex/carousel/CarouselController;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getRenderScriptInfo()Lcom/android/ex/carousel/CarouselView$Info;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/android/ex/carousel/CarouselView$Info;

    const/high16 v1, 0x7f05

    invoke-direct {v0, v1}, Lcom/android/ex/carousel/CarouselView$Info;-><init>(I)V

    return-object v0
.end method

.method public interpretLongPressEvents()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method
