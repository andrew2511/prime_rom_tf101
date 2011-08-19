.class public Lcom/google/android/opengl/glview/Spacer;
.super Lcom/google/android/opengl/glview/GLView;
.source "Spacer.java"


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLView;-><init>()V

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/google/android/opengl/glview/Spacer;->internalSetExtent(FF)V

    .line 11
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLView;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
