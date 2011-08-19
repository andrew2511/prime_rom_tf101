.class Lcom/asus/Viewer/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/Viewer/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/Viewer/ImageViewTouchBase;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$resetSupp:Z


# direct methods
.method constructor <init>(Lcom/asus/Viewer/ImageViewTouchBase;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/asus/Viewer/ImageViewTouchBase$1;->this$0:Lcom/asus/Viewer/ImageViewTouchBase;

    iput-object p2, p0, Lcom/asus/Viewer/ImageViewTouchBase$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/asus/Viewer/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 128
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 129
    iget-object v0, p0, Lcom/asus/Viewer/ImageViewTouchBase$1;->this$0:Lcom/asus/Viewer/ImageViewTouchBase;

    iget-object v1, p0, Lcom/asus/Viewer/ImageViewTouchBase$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Lcom/asus/Viewer/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-virtual {v0, v1, v2}, Lcom/asus/Viewer/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 130
    return-void
.end method
