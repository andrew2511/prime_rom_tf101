.class public Lcom/layar/data/layer/LayerManager$LayerResponse;
.super Ljava/lang/Object;
.source "LayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/data/layer/LayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayerResponse"
.end annotation


# instance fields
.field public layer:Lcom/layar/data/layer/Layer20;

.field public responseCode:I


# direct methods
.method public constructor <init>(ILcom/layar/data/layer/Layer20;)V
    .locals 0
    .parameter "responseCode"
    .parameter "layer"

    .prologue
    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    iput p1, p0, Lcom/layar/data/layer/LayerManager$LayerResponse;->responseCode:I

    .line 1020
    iput-object p2, p0, Lcom/layar/data/layer/LayerManager$LayerResponse;->layer:Lcom/layar/data/layer/Layer20;

    .line 1021
    return-void
.end method


# virtual methods
.method public isSuccessful()Z
    .locals 1

    .prologue
    .line 1024
    iget v0, p0, Lcom/layar/data/layer/LayerManager$LayerResponse;->responseCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
