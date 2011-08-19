.class Lcom/ecareme/pixwe/media/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/ecareme/pixwe/media/RotateBitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/ImageViewTouchBase;

.field private final synthetic val$bitmap:Lcom/ecareme/pixwe/media/RotateBitmap;

.field private final synthetic val$resetSupp:Z


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/ImageViewTouchBase;Lcom/ecareme/pixwe/media/RotateBitmap;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase$1;->this$0:Lcom/ecareme/pixwe/media/ImageViewTouchBase;

    iput-object p2, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase$1;->val$bitmap:Lcom/ecareme/pixwe/media/RotateBitmap;

    iput-boolean p3, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase$1;->val$resetSupp:Z

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase$1;->this$0:Lcom/ecareme/pixwe/media/ImageViewTouchBase;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase$1;->val$bitmap:Lcom/ecareme/pixwe/media/RotateBitmap;

    iget-boolean v2, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/ecareme/pixwe/media/RotateBitmap;Z)V

    .line 148
    return-void
.end method
