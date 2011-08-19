.class public Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;
.super Ljava/lang/Object;
.source "LayerCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/data/layer/LayerCommunicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetLayerCountResponse"
.end annotation


# instance fields
.field public count:I

.field public responseCode:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "responseCode"
    .parameter "count"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput p1, p0, Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;->responseCode:I

    .line 117
    iput p2, p0, Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;->count:I

    .line 118
    return-void
.end method
