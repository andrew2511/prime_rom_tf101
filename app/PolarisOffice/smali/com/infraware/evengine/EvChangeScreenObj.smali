.class Lcom/infraware/evengine/EvChangeScreenObj;
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
    .line 353
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 354
    iput p2, p0, Lcom/infraware/evengine/EvChangeScreenObj;->m_bLandScape:I

    .line 355
    iput p3, p0, Lcom/infraware/evengine/EvChangeScreenObj;->m_nWidth:I

    .line 356
    iput p4, p0, Lcom/infraware/evengine/EvChangeScreenObj;->m_nHeight:I

    .line 357
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 359
    iget-object v0, p0, Lcom/infraware/evengine/EvChangeScreenObj;->Native:Lcom/infraware/evengine/EvNative;

    iget v1, p0, Lcom/infraware/evengine/EvChangeScreenObj;->m_bLandScape:I

    iget v2, p0, Lcom/infraware/evengine/EvChangeScreenObj;->m_nWidth:I

    iget v3, p0, Lcom/infraware/evengine/EvChangeScreenObj;->m_nHeight:I

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/EvNative;->IChangeScreen(IIIII)V

    .line 360
    return-void
.end method
