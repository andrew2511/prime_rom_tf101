.class public Lcom/amazon/topaz/Line;
.super Ljava/lang/Object;
.source "Line.java"


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field private final endID:I

.field private open_multiline_link:Z

.field private final pos:Lcom/amazon/system/drawing/Rectangle;

.field private final startID:I

.field private final unmodifiableCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILcom/amazon/system/drawing/Rectangle;Ljava/util/List;ZLjava/util/List;)V
    .locals 1
    .parameter "startID"
    .parameter "endID"
    .parameter "pos"
    .parameter
    .parameter "openLink"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/amazon/system/drawing/Rectangle;",
            "Ljava/util/List",
            "<*>;Z",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p4, elements:Ljava/util/List;,"Ljava/util/List<*>;"
    .local p6, callbacks:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/amazon/topaz/Line;->startID:I

    .line 34
    iput p2, p0, Lcom/amazon/topaz/Line;->endID:I

    .line 35
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0, p3}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    iput-object v0, p0, Lcom/amazon/topaz/Line;->pos:Lcom/amazon/system/drawing/Rectangle;

    .line 36
    if-eqz p4, :cond_0

    .line 38
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/Line;->elements:Ljava/util/List;

    .line 45
    :goto_0
    iput-boolean p5, p0, Lcom/amazon/topaz/Line;->open_multiline_link:Z

    .line 46
    if-eqz p6, :cond_1

    .line 48
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/Line;->unmodifiableCallbacks:Ljava/util/List;

    .line 54
    :goto_1
    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/Line;->elements:Ljava/util/List;

    goto :goto_0

    .line 52
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/Line;->unmodifiableCallbacks:Ljava/util/List;

    goto :goto_1
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
    .line 99
    iget-object v0, p0, Lcom/amazon/topaz/Line;->unmodifiableCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amazon/topaz/Line;->elements:Ljava/util/List;

    return-object v0
.end method

.method public getEndID()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/amazon/topaz/Line;->endID:I

    return v0
.end method

.method public getPos()Lcom/amazon/system/drawing/Rectangle;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    iget-object v1, p0, Lcom/amazon/topaz/Line;->pos:Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0, v1}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    return-object v0
.end method

.method public getStartID()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/amazon/topaz/Line;->startID:I

    return v0
.end method

.method public isOpenMultilineLink()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/amazon/topaz/Line;->open_multiline_link:Z

    return v0
.end method
