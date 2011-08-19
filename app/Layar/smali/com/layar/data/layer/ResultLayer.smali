.class public Lcom/layar/data/layer/ResultLayer;
.super Ljava/lang/Object;
.source "ResultLayer.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public icon:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public initialized:Z

.field public layer:Lcom/layar/data/layer/Layer20;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/layar/data/layer/ResultLayer;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/layer/ResultLayer;->TAG:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/layar/data/layer/Layer20;)V
    .locals 4
    .parameter "layer"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v1, Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/layar/data/layer/ResultLayer;->icon:Ljava/lang/ref/SoftReference;

    .line 20
    iput-object p1, p0, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    .line 22
    if-nez p1, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    iget-object v1, p1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    const-string v2, "icon"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/layar/data/ImageCache;->readLayerImage(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 28
    .local v0, icon:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 29
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/layar/data/layer/ResultLayer;->icon:Ljava/lang/ref/SoftReference;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v0, v0, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    return-object v0
.end method
