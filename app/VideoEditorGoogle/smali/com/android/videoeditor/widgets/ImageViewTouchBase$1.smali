.class Lcom/android/videoeditor/widgets/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$resetSupp:Z


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/ImageViewTouchBase;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase$1;->this$0:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    iput-object p2, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase$1;->this$0:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 188
    return-void
.end method
