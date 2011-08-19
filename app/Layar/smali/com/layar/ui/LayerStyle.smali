.class public Lcom/layar/ui/LayerStyle;
.super Ljava/lang/Object;
.source "LayerStyle.java"


# instance fields
.field public bannerBackgroundColor:I

.field public bannerTextColor:I

.field public biwBackgroundColor:I

.field public textColor:I

.field public titleColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromLayer(Lcom/layar/data/layer/Layer20;)Lcom/layar/ui/LayerStyle;
    .locals 2
    .parameter "layer"

    .prologue
    .line 13
    new-instance v0, Lcom/layar/ui/LayerStyle;

    invoke-direct {v0}, Lcom/layar/ui/LayerStyle;-><init>()V

    .line 14
    .local v0, style:Lcom/layar/ui/LayerStyle;
    iget v1, p0, Lcom/layar/data/layer/Layer20;->bannerBgColor:I

    iput v1, v0, Lcom/layar/ui/LayerStyle;->bannerBackgroundColor:I

    .line 15
    iget v1, p0, Lcom/layar/data/layer/Layer20;->bannerTxtColor:I

    iput v1, v0, Lcom/layar/ui/LayerStyle;->bannerTextColor:I

    .line 16
    iget v1, p0, Lcom/layar/data/layer/Layer20;->biwBgColor:I

    iput v1, v0, Lcom/layar/ui/LayerStyle;->biwBackgroundColor:I

    .line 17
    iget v1, p0, Lcom/layar/data/layer/Layer20;->textColor:I

    iput v1, v0, Lcom/layar/ui/LayerStyle;->textColor:I

    .line 18
    iget v1, p0, Lcom/layar/data/layer/Layer20;->titleColor:I

    iput v1, v0, Lcom/layar/ui/LayerStyle;->titleColor:I

    .line 19
    return-object v0
.end method
