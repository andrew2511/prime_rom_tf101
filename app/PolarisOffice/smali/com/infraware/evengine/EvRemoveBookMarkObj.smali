.class Lcom/infraware/evengine/EvRemoveBookMarkObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_sFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;Ljava/lang/String;)V
    .locals 0
    .parameter "a_Native"
    .parameter "a_sFilePath"

    .prologue
    .line 515
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 516
    iput-object p2, p0, Lcom/infraware/evengine/EvRemoveBookMarkObj;->m_sFilePath:Ljava/lang/String;

    .line 517
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/infraware/evengine/EvRemoveBookMarkObj;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvRemoveBookMarkObj;->m_sFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IRemoveBookMark(Ljava/lang/String;)V

    .line 522
    return-void
.end method
