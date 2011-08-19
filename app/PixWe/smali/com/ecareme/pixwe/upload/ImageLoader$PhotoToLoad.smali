.class Lcom/ecareme/pixwe/upload/ImageLoader$PhotoToLoad;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/upload/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoToLoad"
.end annotation


# instance fields
.field public imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/ecareme/pixwe/upload/ImageLoader;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ecareme/pixwe/upload/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter "u"
    .parameter "i"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/ecareme/pixwe/upload/ImageLoader$PhotoToLoad;->this$0:Lcom/ecareme/pixwe/upload/ImageLoader;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p2, p0, Lcom/ecareme/pixwe/upload/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    .line 143
    iput-object p3, p0, Lcom/ecareme/pixwe/upload/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    return-void
.end method
