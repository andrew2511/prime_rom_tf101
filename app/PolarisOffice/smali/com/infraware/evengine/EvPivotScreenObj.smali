.class Lcom/infraware/evengine/EvPivotScreenObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_bLandScape:I

.field private m_nHeight:I

.field private m_nWidth:I


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;III)V
    .locals 0
    .parameter "a_Native"
    .parameter "bLandScape"
    .parameter "a_nWidth"
    .parameter "a_nHeight"

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 385
    iput p2, p0, Lcom/infraware/evengine/EvPivotScreenObj;->m_bLandScape:I

    .line 386
    iput p3, p0, Lcom/infraware/evengine/EvPivotScreenObj;->m_nWidth:I

    .line 387
    iput p4, p0, Lcom/infraware/evengine/EvPivotScreenObj;->m_nHeight:I

    .line 388
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 4

    .prologue
    .line 392
    iget-object v0, p0, Lcom/infraware/evengine/EvPivotScreenObj;->Native:Lcom/infraware/evengine/EvNative;

    iget v1, p0, Lcom/infraware/evengine/EvPivotScreenObj;->m_bLandScape:I

    iget v2, p0, Lcom/infraware/evengine/EvPivotScreenObj;->m_nWidth:I

    iget v3, p0, Lcom/infraware/evengine/EvPivotScreenObj;->m_nHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/evengine/EvNative;->IPivotScreen(III)V

    .line 393
    return-void
.end method
