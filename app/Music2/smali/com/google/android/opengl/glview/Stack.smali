.class public Lcom/google/android/opengl/glview/Stack;
.super Lcom/google/android/opengl/glview/GLViewGroup;
.source "Stack.java"


# instance fields
.field protected mGravity:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "id"
    .parameter "gravity"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLViewGroup;-><init>(I)V

    .line 15
    iput p2, p0, Lcom/google/android/opengl/glview/Stack;->mGravity:I

    .line 16
    return-void
.end method


# virtual methods
.method public getMinLength(Z)F
    .locals 5
    .parameter "horizontal"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Stack;->getChildCount()I

    move-result v0

    .line 32
    .local v0, childCount:I
    const/4 v2, 0x0

    .line 33
    .local v2, length:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 34
    invoke-virtual {p0, v1}, Lcom/google/android/opengl/glview/Stack;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v3

    .line 35
    .local v3, v:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {v3, p1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v3           #v:Lcom/google/android/opengl/glview/GLView;
    :cond_0
    return v2
.end method

.method public layout(ZFF)V
    .locals 8
    .parameter "horizontal"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/Stack;->internalLayout(ZFF)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Stack;->getChildCount()I

    move-result v6

    .line 23
    .local v6, childCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 24
    invoke-virtual {p0, v7}, Lcom/google/android/opengl/glview/Stack;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 25
    .local v0, child:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v4

    iget v5, p0, Lcom/google/android/opengl/glview/Stack;->mGravity:I

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/opengl/glview/GLView;->layout(ZFFFI)V

    .line 23
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 27
    .end local v0           #child:Lcom/google/android/opengl/glview/GLView;
    :cond_0
    return-void
.end method
