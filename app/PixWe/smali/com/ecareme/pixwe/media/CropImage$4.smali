.class Lcom/ecareme/pixwe/media/CropImage$4;
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
    iput-object p1, p0, Lcom/ecareme/pixwe/media/CropImage$4;->this$0:Lcom/ecareme/pixwe/media/CropImage;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage$4;->this$0:Lcom/ecareme/pixwe/media/CropImage;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/CropImage;->access$9(Lcom/ecareme/pixwe/media/CropImage;)V

    .line 306
    return-void
.end method
