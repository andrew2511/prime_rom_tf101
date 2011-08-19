.class public Lcom/ecareme/pixwe/media/ScaleGestureDetector$SimpleOnScaleGestureListener;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"

# interfaces
.implements Lcom/ecareme/pixwe/media/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/ScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimpleOnScaleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Lcom/ecareme/pixwe/media/ScaleGestureDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector$SimpleOnScaleGestureListener;->this$0:Lcom/ecareme/pixwe/media/ScaleGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Lcom/ecareme/pixwe/media/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Lcom/ecareme/pixwe/media/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Lcom/ecareme/pixwe/media/ScaleGestureDetector;Z)V
    .locals 0
    .parameter "detector"
    .parameter "cancel"

    .prologue
    .line 122
    return-void
.end method
