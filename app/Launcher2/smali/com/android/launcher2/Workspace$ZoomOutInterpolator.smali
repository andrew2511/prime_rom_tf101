.class Lcom/android/launcher2/Workspace$ZoomOutInterpolator;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZoomOutInterpolator"
.end annotation


# instance fields
.field private final decelerate:Landroid/view/animation/DecelerateInterpolator;

.field private final zInterpolator:Lcom/android/launcher2/Workspace$ZInterpolator;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 1704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1705
    new-instance v0, Lcom/android/launcher2/Workspace$ZInterpolator;

    const v1, 0x3e4ccccd

    invoke-direct {v0, v1}, Lcom/android/launcher2/Workspace$ZInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace$ZoomOutInterpolator;->zInterpolator:Lcom/android/launcher2/Workspace$ZInterpolator;

    .line 1706
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3fe66666

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace$ZoomOutInterpolator;->decelerate:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .parameter "input"

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/android/launcher2/Workspace$ZoomOutInterpolator;->decelerate:Landroid/view/animation/DecelerateInterpolator;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$ZoomOutInterpolator;->zInterpolator:Lcom/android/launcher2/Workspace$ZInterpolator;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Workspace$ZInterpolator;->getInterpolation(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
