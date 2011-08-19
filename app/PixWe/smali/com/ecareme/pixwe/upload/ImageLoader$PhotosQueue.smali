.class Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/upload/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotosQueue"
.end annotation


# instance fields
.field private photosToLoad:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/ecareme/pixwe/upload/ImageLoader$PhotoToLoad;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ecareme/pixwe/upload/ImageLoader;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/upload/ImageLoader;)V
    .locals 1
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;->this$0:Lcom/ecareme/pixwe/upload/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;)Ljava/util/Stack;
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    return-object v0
.end method


# virtual methods
.method public Clean(Landroid/widget/ImageView;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 160
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    iget-object v1, p0, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 166
    return-void

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecareme/pixwe/upload/ImageLoader$PhotoToLoad;

    iget-object v1, v1, Lcom/ecareme/pixwe/upload/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    if-ne v1, p1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 164
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
