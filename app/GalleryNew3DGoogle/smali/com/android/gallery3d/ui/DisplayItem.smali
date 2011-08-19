.class public abstract Lcom/android/gallery3d/ui/DisplayItem;
.super Ljava/lang/Object;
.source "DisplayItem.java"


# instance fields
.field protected mHeight:I

.field protected mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/gallery3d/ui/DisplayItem;->mHeight:I

    return v0
.end method

.method public abstract getIdentity()J
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public abstract render(Lcom/android/gallery3d/ui/GLCanvas;I)Z
.end method

.method protected setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 25
    iput p1, p0, Lcom/android/gallery3d/ui/DisplayItem;->mWidth:I

    .line 26
    iput p2, p0, Lcom/android/gallery3d/ui/DisplayItem;->mHeight:I

    .line 27
    return-void
.end method
