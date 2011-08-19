.class Lcom/layar/data/layer/LayerCacheManager$LocationPair;
.super Ljava/lang/Object;
.source "LayerCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/data/layer/LayerCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationPair"
.end annotation


# instance fields
.field public lat:D

.field public lon:D

.field final synthetic this$0:Lcom/layar/data/layer/LayerCacheManager;


# direct methods
.method public constructor <init>(Lcom/layar/data/layer/LayerCacheManager;DD)V
    .locals 0
    .parameter
    .parameter "lat"
    .parameter "lon"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/layar/data/layer/LayerCacheManager$LocationPair;->this$0:Lcom/layar/data/layer/LayerCacheManager;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-wide p4, p0, Lcom/layar/data/layer/LayerCacheManager$LocationPair;->lon:D

    .line 275
    iput-wide p2, p0, Lcom/layar/data/layer/LayerCacheManager$LocationPair;->lat:D

    return-void
.end method
