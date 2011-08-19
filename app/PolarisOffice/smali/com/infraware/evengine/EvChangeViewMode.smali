.class Lcom/infraware/evengine/EvChangeViewMode;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field EEV_VIEW_MODE:I

.field bDraw:I

.field nHeight:I

.field nWidth:I


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;IIII)V
    .locals 0
    .parameter "a_Native"
    .parameter "a_EEV_VIEW_MODE"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_bDraw"

    .prologue
    .line 840
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 841
    iput p2, p0, Lcom/infraware/evengine/EvChangeViewMode;->EEV_VIEW_MODE:I

    .line 842
    iput p3, p0, Lcom/infraware/evengine/EvChangeViewMode;->nWidth:I

    .line 843
    iput p4, p0, Lcom/infraware/evengine/EvChangeViewMode;->nHeight:I

    .line 844
    iput p5, p0, Lcom/infraware/evengine/EvChangeViewMode;->bDraw:I

    .line 845
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 5

    .prologue
    .line 849
    iget-object v0, p0, Lcom/infraware/evengine/EvChangeViewMode;->Native:Lcom/infraware/evengine/EvNative;

    iget v1, p0, Lcom/infraware/evengine/EvChangeViewMode;->EEV_VIEW_MODE:I

    iget v2, p0, Lcom/infraware/evengine/EvChangeViewMode;->nWidth:I

    iget v3, p0, Lcom/infraware/evengine/EvChangeViewMode;->nHeight:I

    iget v4, p0, Lcom/infraware/evengine/EvChangeViewMode;->bDraw:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/infraware/evengine/EvNative;->IChangeViewMode(IIII)V

    .line 850
    return-void
.end method
