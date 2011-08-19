.class Lcom/infraware/evengine/EvFindWordStartObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_nXpos:I

.field private m_nYpos:I


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;II)V
    .locals 0
    .parameter "a_Native"
    .parameter "a_nXpos"
    .parameter "a_nYpos"

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 616
    iput p2, p0, Lcom/infraware/evengine/EvFindWordStartObj;->m_nXpos:I

    .line 617
    iput p3, p0, Lcom/infraware/evengine/EvFindWordStartObj;->m_nYpos:I

    .line 618
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 3

    .prologue
    .line 622
    iget-object v0, p0, Lcom/infraware/evengine/EvFindWordStartObj;->Native:Lcom/infraware/evengine/EvNative;

    iget v1, p0, Lcom/infraware/evengine/EvFindWordStartObj;->m_nXpos:I

    iget v2, p0, Lcom/infraware/evengine/EvFindWordStartObj;->m_nYpos:I

    invoke-virtual {v0, v1, v2}, Lcom/infraware/evengine/EvNative;->IFindWordStart(II)V

    .line 623
    return-void
.end method
