.class Lcom/infraware/evengine/EvZoomInOutObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_bI:I

.field private m_eKey:I


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;II)V
    .locals 0
    .parameter "a_Native"
    .parameter "a_bI"
    .parameter "a_eKey"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 190
    iput p2, p0, Lcom/infraware/evengine/EvZoomInOutObj;->m_bI:I

    .line 191
    iput p3, p0, Lcom/infraware/evengine/EvZoomInOutObj;->m_eKey:I

    .line 192
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/infraware/evengine/EvZoomInOutObj;->Native:Lcom/infraware/evengine/EvNative;

    iget v1, p0, Lcom/infraware/evengine/EvZoomInOutObj;->m_bI:I

    iget v2, p0, Lcom/infraware/evengine/EvZoomInOutObj;->m_eKey:I

    invoke-virtual {v0, v1, v2}, Lcom/infraware/evengine/EvNative;->IZoomInOut(II)V

    .line 197
    return-void
.end method
