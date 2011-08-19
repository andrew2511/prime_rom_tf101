.class public Lcom/amazon/topaz/LineElement;
.super Ljava/lang/Object;
.source "LineElement.java"


# instance fields
.field private isOpenMultilineLink:Z

.field private final itemID:I

.field private final pos:Lcom/amazon/system/drawing/Rectangle;

.field private final text:Ljava/lang/String;

.field private final unmodifiableCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/amazon/system/drawing/Rectangle;ZLjava/util/List;Ljava/lang/String;)V
    .locals 1
    .parameter "itemID"
    .parameter "pos"
    .parameter "isOpenMultilineLink"
    .parameter
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/amazon/system/drawing/Rectangle;",
            "Z",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p4, callbacks:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/amazon/topaz/LineElement;->itemID:I

    .line 33
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0, p2}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    iput-object v0, p0, Lcom/amazon/topaz/LineElement;->pos:Lcom/amazon/system/drawing/Rectangle;

    .line 34
    iput-boolean p3, p0, Lcom/amazon/topaz/LineElement;->isOpenMultilineLink:Z

    .line 35
    iput-object p5, p0, Lcom/amazon/topaz/LineElement;->text:Ljava/lang/String;

    .line 37
    if-eqz p4, :cond_0

    .line 39
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/LineElement;->unmodifiableCallbacks:Ljava/util/List;

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/LineElement;->unmodifiableCallbacks:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public getCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/amazon/topaz/LineElement;->unmodifiableCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public getItemID()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/amazon/topaz/LineElement;->itemID:I

    return v0
.end method

.method public getPos()Lcom/amazon/system/drawing/Rectangle;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/amazon/topaz/LineElement;->pos:Lcom/amazon/system/drawing/Rectangle;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/amazon/topaz/LineElement;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isOpenMultilineLink()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/amazon/topaz/LineElement;->isOpenMultilineLink:Z

    return v0
.end method
