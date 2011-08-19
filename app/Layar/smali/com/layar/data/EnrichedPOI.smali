.class public Lcom/layar/data/EnrichedPOI;
.super Ljava/lang/Object;
.source "EnrichedPOI.java"


# instance fields
.field public layerCategory:Ljava/lang/String;

.field public layerName:Ljava/lang/String;

.field public poi:Lcom/layar/data/BasePOI;

.field public price:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public withLayerCategory(Ljava/lang/String;)Lcom/layar/data/EnrichedPOI;
    .locals 0
    .parameter "category"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/layar/data/EnrichedPOI;->layerCategory:Ljava/lang/String;

    .line 26
    return-object p0
.end method

.method public withLayerName(Ljava/lang/String;)Lcom/layar/data/EnrichedPOI;
    .locals 0
    .parameter "name"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/layar/data/EnrichedPOI;->layerName:Ljava/lang/String;

    .line 21
    return-object p0
.end method

.method public withPOI(Lcom/layar/data/BasePOI;)Lcom/layar/data/EnrichedPOI;
    .locals 0
    .parameter "poi"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/layar/data/EnrichedPOI;->poi:Lcom/layar/data/BasePOI;

    .line 16
    return-object p0
.end method

.method public withPrice(Ljava/lang/String;)Lcom/layar/data/EnrichedPOI;
    .locals 0
    .parameter "price"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/layar/data/EnrichedPOI;->price:Ljava/lang/String;

    .line 31
    return-object p0
.end method
