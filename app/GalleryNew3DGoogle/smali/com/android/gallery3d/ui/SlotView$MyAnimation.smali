.class public Lcom/android/gallery3d/ui/SlotView$MyAnimation;
.super Lcom/android/gallery3d/anim/Animation;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyAnimation"
.end annotation


# instance fields
.field public value:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/android/gallery3d/anim/Animation;-><init>()V

    .line 335
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4080

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SlotView$MyAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 336
    const/16 v0, 0x5dc

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SlotView$MyAnimation;->setDuration(I)V

    .line 337
    return-void
.end method


# virtual methods
.method protected onCalculate(F)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 341
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$MyAnimation;->value:F

    .line 342
    return-void
.end method
