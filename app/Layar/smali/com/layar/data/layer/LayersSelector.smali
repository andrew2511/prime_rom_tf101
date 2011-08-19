.class public Lcom/layar/data/layer/LayersSelector;
.super Ljava/lang/Object;
.source "LayersSelector.java"


# instance fields
.field public category:Ljava/lang/String;

.field public order:I

.field public subsection:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public useOrder:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lcom/layar/data/layer/LayersSelector;->useOrder:Z

    .line 13
    iput v0, p0, Lcom/layar/data/layer/LayersSelector;->order:I

    .line 3
    return-void
.end method

.method public static getSelector(Ljava/lang/String;Ljava/lang/String;)Lcom/layar/data/layer/LayersSelector;
    .locals 1
    .parameter "type"
    .parameter "subsection"

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/layar/data/layer/LayersSelector;->getSelector(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/layar/data/layer/LayersSelector;

    move-result-object v0

    return-object v0
.end method

.method public static getSelector(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/layar/data/layer/LayersSelector;
    .locals 1
    .parameter "type"
    .parameter "subsection"
    .parameter "category"

    .prologue
    .line 20
    new-instance v0, Lcom/layar/data/layer/LayersSelector;

    invoke-direct {v0}, Lcom/layar/data/layer/LayersSelector;-><init>()V

    .line 21
    .local v0, result:Lcom/layar/data/layer/LayersSelector;
    iput-object p0, v0, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    .line 22
    iput-object p1, v0, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    .line 23
    iput-object p2, v0, Lcom/layar/data/layer/LayersSelector;->category:Ljava/lang/String;

    .line 24
    return-object v0
.end method

.method public static getSelector(Ljava/lang/String;Ljava/lang/String;Z)Lcom/layar/data/layer/LayersSelector;
    .locals 1
    .parameter "type"
    .parameter "subsection"
    .parameter "useOrder"

    .prologue
    .line 28
    new-instance v0, Lcom/layar/data/layer/LayersSelector;

    invoke-direct {v0}, Lcom/layar/data/layer/LayersSelector;-><init>()V

    .line 29
    .local v0, result:Lcom/layar/data/layer/LayersSelector;
    iput-object p0, v0, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    .line 30
    iput-object p1, v0, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    .line 31
    iput-boolean p2, v0, Lcom/layar/data/layer/LayersSelector;->useOrder:Z

    .line 32
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subsection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/layar/data/layer/LayersSelector;->category:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", category="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layar/data/layer/LayersSelector;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
