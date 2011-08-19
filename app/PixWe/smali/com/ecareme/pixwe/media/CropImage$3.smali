.class Lcom/ecareme/pixwe/media/CropImage$3;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/CropImage;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/CropImage$3;->this$0:Lcom/ecareme/pixwe/media/CropImage;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage$3;->this$0:Lcom/ecareme/pixwe/media/CropImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/CropImage;->setResult(I)V

    .line 299
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage$3;->this$0:Lcom/ecareme/pixwe/media/CropImage;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/CropImage;->finish()V

    .line 300
    return-void
.end method
