.class Lcom/ecareme/pixwe/media/GridInputProcessor$1;
.super Ljava/lang/Object;
.source "GridInputProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/GridInputProcessor;->selectSlot(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/GridInputProcessor;

.field private final synthetic val$item:Lcom/ecareme/pixwe/media/MediaItem;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/GridInputProcessor;Lcom/ecareme/pixwe/media/MediaItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/GridInputProcessor$1;->this$0:Lcom/ecareme/pixwe/media/GridInputProcessor;

    iput-object p2, p0, Lcom/ecareme/pixwe/media/GridInputProcessor$1;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor$1;->this$0:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/GridInputProcessor;->access$0(Lcom/ecareme/pixwe/media/GridInputProcessor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridInputProcessor$1;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/CropImage;->launchCropperOrFinish(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 720
    return-void
.end method
