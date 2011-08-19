.class Lcom/infraware/evengine/EvRotateObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_eRotateType:I

.field private m_nAngle:I


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;II)V
    .locals 0
    .parameter "a_Native"
    .parameter "a_eRotateType"
    .parameter "a_nAngle"

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 307
    iput p2, p0, Lcom/infraware/evengine/EvRotateObj;->m_eRotateType:I

    .line 308
    iput p3, p0, Lcom/infraware/evengine/EvRotateObj;->m_nAngle:I

    .line 309
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/infraware/evengine/EvRotateObj;->Native:Lcom/infraware/evengine/EvNative;

    iget v1, p0, Lcom/infraware/evengine/EvRotateObj;->m_eRotateType:I

    iget v2, p0, Lcom/infraware/evengine/EvRotateObj;->m_nAngle:I

    invoke-virtual {v0, v1, v2}, Lcom/infraware/evengine/EvNative;->IRotate(II)V

    .line 314
    return-void
.end method
