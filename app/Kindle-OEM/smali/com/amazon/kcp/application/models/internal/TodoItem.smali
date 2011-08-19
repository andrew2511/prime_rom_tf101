.class public Lcom/amazon/kcp/application/models/internal/TodoItem;
.super Lcom/amazon/kcp/internal/webservices/WebServiceModel;
.source "TodoItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/models/internal/TodoItem$Type;,
        Lcom/amazon/kcp/application/models/internal/TodoItem$Action;
    }
.end annotation


# instance fields
.field protected action:Ljava/lang/String;

.field protected failureCode:Ljava/lang/String;

.field protected incremental:Z

.field protected key:Ljava/lang/String;

.field protected priority:I

.field protected removeUrl:Ljava/lang/String;

.field protected sequence:I

.field protected title:Ljava/lang/String;

.field protected type:Ljava/lang/String;

.field protected url:Ljava/lang/String;

.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/amazon/kcp/internal/webservices/WebServiceModel;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->title:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->key:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->action:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->type:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->value:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->url:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->removeUrl:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->incremental:Z

    .line 92
    return-void
.end method


# virtual methods
.method public coreValuesEqual(Lcom/amazon/kcp/application/models/internal/TodoItem;)Z
    .locals 3
    .parameter "src"

    .prologue
    const/4 v2, 0x0

    .line 316
    invoke-virtual {p0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 329
    :goto_0
    return v0

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 322
    goto :goto_0

    .line 324
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getAction()Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getAction()Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 326
    goto :goto_0

    .line 329
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 264
    instance-of v2, p1, Lcom/amazon/kcp/application/models/internal/TodoItem;

    if-nez v2, :cond_0

    move v2, v4

    .line 271
    :goto_0
    return v2

    .line 269
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-object v1, v0

    .line 271
    .local v1, other:Lcom/amazon/kcp/application/models/internal/TodoItem;
    invoke-virtual {p0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getAction()Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getAction()Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getServerFailureCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getServerFailureCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->sequence:I

    iget v3, v1, Lcom/amazon/kcp/application/models/internal/TodoItem;->sequence:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->priority:I

    iget v3, v1, Lcom/amazon/kcp/application/models/internal/TodoItem;->priority:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->incremental:Z

    iget-boolean v3, v1, Lcom/amazon/kcp/application/models/internal/TodoItem;->incremental:Z

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->value:Ljava/lang/String;

    iget-object v3, v1, Lcom/amazon/kcp/application/models/internal/TodoItem;->value:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->url:Ljava/lang/String;

    iget-object v3, v1, Lcom/amazon/kcp/application/models/internal/TodoItem;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->removeUrl:Ljava/lang/String;

    iget-object v3, v1, Lcom/amazon/kcp/application/models/internal/TodoItem;->removeUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_1
    move v2, v4

    goto/16 :goto_0
.end method

.method public getAction()Lcom/amazon/kcp/application/models/internal/TodoItem$Action;
    .locals 3

    .prologue
    .line 374
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UNKNOWN:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 376
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->action:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 409
    :cond_0
    :goto_0
    return-object v0

    .line 380
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->action:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->DOWNLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 382
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->DOWNLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    goto :goto_0

    .line 384
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->action:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPDATE_ANNOTATION:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 386
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPDATE_ANNOTATION:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    goto :goto_0

    .line 388
    :cond_3
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->action:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPDATE_LAST_PAGE_READ:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 390
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPDATE_LAST_PAGE_READ:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    goto :goto_0

    .line 392
    :cond_4
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->action:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->DELETE:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 394
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->DELETE:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    goto :goto_0

    .line 396
    :cond_5
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->action:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->SEND:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 398
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->SEND:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    goto :goto_0

    .line 400
    :cond_6
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->action:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->SET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 402
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->SET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    goto :goto_0

    .line 404
    :cond_7
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->action:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    goto :goto_0
.end method

.method public getActionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->priority:I

    return v0
.end method

.method public getRemoveBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->removeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->sequence:I

    return v0
.end method

.method public getServerFailureCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->failureCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->getType(Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v0

    return-object v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 291
    const/4 v0, 0x1

    .line 293
    mul-int/lit8 v0, v0, 0x1f

    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->action:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 294
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->type:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    .line 296
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->incremental:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    :goto_2
    add-int/2addr v0, v1

    .line 297
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->key:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    .line 298
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->priority:I

    add-int/2addr v0, v1

    .line 299
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->sequence:I

    add-int/2addr v0, v1

    .line 300
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->title:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    .line 301
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->value:Ljava/lang/String;

    if-nez v1, :cond_5

    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    .line 302
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->failureCode:Ljava/lang/String;

    if-nez v1, :cond_6

    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    .line 303
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->url:Ljava/lang/String;

    if-nez v1, :cond_7

    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    .line 304
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->removeUrl:Ljava/lang/String;

    if-nez v1, :cond_8

    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    .line 306
    return v0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->action:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 296
    :cond_2
    const/16 v1, 0x4d5

    goto :goto_2

    .line 297
    :cond_3
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    .line 300
    :cond_4
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    .line 301
    :cond_5
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    .line 302
    :cond_6
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->failureCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    .line 303
    :cond_7
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    .line 304
    :cond_8
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->removeUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_8
.end method

.method public isIncremental()Z
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->incremental:Z

    return v0
.end method

.method public setAction(Lcom/amazon/kcp/application/models/internal/TodoItem$Action;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 420
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne p1, v0, :cond_1

    .line 422
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->action:Ljava/lang/String;

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->DOWNLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne p1, v0, :cond_2

    .line 426
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->DOWNLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->action:Ljava/lang/String;

    goto :goto_0

    .line 428
    :cond_2
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPDATE_ANNOTATION:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne p1, v0, :cond_3

    .line 430
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPDATE_ANNOTATION:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->action:Ljava/lang/String;

    goto :goto_0

    .line 432
    :cond_3
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPDATE_LAST_PAGE_READ:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne p1, v0, :cond_4

    .line 434
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPDATE_LAST_PAGE_READ:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->action:Ljava/lang/String;

    goto :goto_0

    .line 436
    :cond_4
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->DELETE:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne p1, v0, :cond_5

    .line 438
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->DELETE:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->action:Ljava/lang/String;

    goto :goto_0

    .line 440
    :cond_5
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->SEND:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne p1, v0, :cond_6

    .line 442
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->SEND:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->action:Ljava/lang/String;

    goto :goto_0

    .line 444
    :cond_6
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne p1, v0, :cond_0

    .line 446
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->action:Ljava/lang/String;

    goto :goto_0
.end method

.method public setActionString(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 355
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->action:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setIncremental(Z)V
    .locals 1
    .parameter "incremental"

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->incremental:Z

    if-ne v0, p1, :cond_0

    .line 604
    :goto_0
    return-void

    .line 601
    :cond_0
    iput-boolean p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->incremental:Z

    .line 603
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 346
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->key:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setPriority(I)V
    .locals 1
    .parameter "priority"

    .prologue
    .line 572
    iget v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->priority:I

    if-ne v0, p1, :cond_0

    .line 580
    :goto_0
    return-void

    .line 577
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->priority:I

    .line 579
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setRemoveBaseURL(Ljava/lang/String;)V
    .locals 1
    .parameter "removeUrl"

    .prologue
    .line 646
    if-nez p1, :cond_0

    .line 648
    const-string p1, ""

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->removeUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    :goto_0
    return-void

    .line 655
    :cond_1
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->removeUrl:Ljava/lang/String;

    .line 657
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setSequence(I)V
    .locals 1
    .parameter "sequence"

    .prologue
    .line 548
    iget v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->sequence:I

    if-ne v0, p1, :cond_0

    .line 556
    :goto_0
    return-void

    .line 553
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->sequence:I

    .line 555
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setServerFailureCode(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 720
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->failureCode:Ljava/lang/String;

    .line 721
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 674
    if-nez p1, :cond_0

    .line 676
    const-string p1, ""

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 686
    :goto_0
    return-void

    .line 683
    :cond_1
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->title:Ljava/lang/String;

    .line 685
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setType(Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)V
    .locals 1
    .parameter

    .prologue
    .line 484
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne p1, v0, :cond_1

    .line 486
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->type:Ljava/lang/String;

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne p1, v0, :cond_2

    .line 490
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->type:Ljava/lang/String;

    goto :goto_0

    .line 492
    :cond_2
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->NEWSPAPER:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne p1, v0, :cond_3

    .line 494
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->NEWSPAPER:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->type:Ljava/lang/String;

    goto :goto_0

    .line 496
    :cond_3
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->MAGAZINE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne p1, v0, :cond_4

    .line 498
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->MAGAZINE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->type:Ljava/lang/String;

    goto :goto_0

    .line 500
    :cond_4
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->PERSONAL:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne p1, v0, :cond_5

    .line 502
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->PERSONAL:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->type:Ljava/lang/String;

    goto :goto_0

    .line 504
    :cond_5
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->NAME_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne p1, v0, :cond_6

    .line 506
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->NAME_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->type:Ljava/lang/String;

    goto :goto_0

    .line 508
    :cond_6
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->CRED_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne p1, v0, :cond_7

    .line 510
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->CRED_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->type:Ljava/lang/String;

    goto :goto_0

    .line 512
    :cond_7
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->REMOTE_COMMAND:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne p1, v0, :cond_8

    .line 514
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->REMOTE_COMMAND:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->type:Ljava/lang/String;

    goto :goto_0

    .line 516
    :cond_8
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->WATERMARKS_SNAPSHOT:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne p1, v0, :cond_9

    .line 518
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->WATERMARKS_SNAPSHOT:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->type:Ljava/lang/String;

    goto :goto_0

    .line 520
    :cond_9
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->SOFTWARE_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne p1, v0, :cond_a

    .line 522
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->SOFTWARE_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->type:Ljava/lang/String;

    goto :goto_0

    .line 524
    :cond_a
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->SCFG:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne p1, v0, :cond_0

    .line 526
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->SCFG:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->type:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setTypeString(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 456
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->type:Ljava/lang/String;

    .line 457
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 619
    if-nez p1, :cond_0

    .line 621
    const-string p1, ""

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 631
    :goto_0
    return-void

    .line 628
    :cond_1
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->url:Ljava/lang/String;

    .line 630
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 693
    if-nez p1, :cond_0

    .line 695
    const-string p1, ""

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 705
    :goto_0
    return-void

    .line 702
    :cond_1
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->value:Ljava/lang/String;

    .line 704
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method
