.class public Lcom/layar/data/variants/VariantsManager;
.super Ljava/lang/Object;
.source "VariantsManager.java"


# instance fields
.field private final mCommunicator:Lcom/layar/data/variants/VariantCommunicator;

.field private mVariants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/variants/Variant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/data/variants/VariantsManager;->mVariants:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Lcom/layar/data/variants/VariantCommunicator;

    invoke-direct {v0}, Lcom/layar/data/variants/VariantCommunicator;-><init>()V

    iput-object v0, p0, Lcom/layar/data/variants/VariantsManager;->mCommunicator:Lcom/layar/data/variants/VariantCommunicator;

    .line 15
    return-void
.end method


# virtual methods
.method public getVariantDetails(Ljava/lang/String;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;
    .locals 1
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/layar/data/variants/VariantsManager;->mCommunicator:Lcom/layar/data/variants/VariantCommunicator;

    invoke-virtual {v0, p1, p2}, Lcom/layar/data/variants/VariantCommunicator;->getVariantDetails(Ljava/lang/String;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v0

    return-object v0
.end method

.method public getVariants()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/variants/Variant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/layar/data/variants/VariantsManager;->mVariants:Ljava/util/ArrayList;

    return-object v0
.end method

.method public loadVariants()Lcom/layar/data/variants/VariantsResponse;
    .locals 2

    .prologue
    .line 27
    iget-object v1, p0, Lcom/layar/data/variants/VariantsManager;->mCommunicator:Lcom/layar/data/variants/VariantCommunicator;

    invoke-virtual {v1}, Lcom/layar/data/variants/VariantCommunicator;->getVariants()Lcom/layar/data/variants/VariantsResponse;

    move-result-object v0

    .line 28
    .local v0, response:Lcom/layar/data/variants/VariantsResponse;
    invoke-virtual {v0}, Lcom/layar/data/variants/VariantsResponse;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, v0, Lcom/layar/data/variants/VariantsResponse;->items:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/layar/data/variants/VariantsManager;->mVariants:Ljava/util/ArrayList;

    .line 31
    :cond_0
    return-object v0
.end method
