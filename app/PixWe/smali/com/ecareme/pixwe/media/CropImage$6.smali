.class Lcom/ecareme/pixwe/media/CropImage$6;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/CropImage;->onSaveClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/CropImage;

.field private final synthetic val$b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/CropImage$6;->this$0:Lcom/ecareme/pixwe/media/CropImage;

    iput-object p2, p0, Lcom/ecareme/pixwe/media/CropImage$6;->val$b:Landroid/graphics/Bitmap;

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage$6;->this$0:Lcom/ecareme/pixwe/media/CropImage;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/CropImage$6;->val$b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/CropImage;->access$11(Lcom/ecareme/pixwe/media/CropImage;Landroid/graphics/Bitmap;)V

    .line 442
    return-void
.end method
