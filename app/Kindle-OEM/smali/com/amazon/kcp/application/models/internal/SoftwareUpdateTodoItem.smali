.class public Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;
.super Lcom/amazon/kcp/application/models/internal/TodoItem;
.source "SoftwareUpdateTodoItem.java"


# static fields
.field public static final DEFAULT_UPDATE_DESCRIPTION:Ljava/lang/String; = "Software Update"


# instance fields
.field private description:Ljava/lang/String;

.field private forcedUpdate:Z

.field private softwareVersion:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/amazon/kcp/application/models/internal/TodoItem;-><init>()V

    .line 16
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->softwareVersion:J

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->forcedUpdate:Z

    .line 18
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v6, 0x0

    .line 25
    instance-of v2, p1, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;

    if-nez v2, :cond_0

    move v2, v6

    .line 32
    :goto_0
    return v2

    .line 30
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;

    move-object v1, v0

    .line 32
    .local v1, other:Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;
    invoke-super {p0, p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->description:Ljava/lang/String;

    iget-object v3, v1, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->description:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->forcedUpdate:Z

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->isForcedUpdate()Z

    move-result v3

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->softwareVersion:J

    iget-wide v4, v1, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->softwareVersion:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v6

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftwareVersion()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->softwareVersion:J

    return-wide v0
.end method

.method public hashcode()I
    .locals 5

    .prologue
    .line 44
    const/16 v0, 0x1f

    .line 45
    .local v0, prime:I
    invoke-super {p0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->hashCode()I

    move-result v1

    .line 46
    .local v1, result:I
    mul-int v2, v0, v1

    iget-object v3, p0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->description:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    add-int v1, v2, v3

    .line 47
    mul-int v2, v0, v1

    iget-boolean v3, p0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->forcedUpdate:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x4d1

    :goto_1
    add-int v1, v2, v3

    .line 48
    mul-int v2, v0, v1

    iget-wide v3, p0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->softwareVersion:J

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 49
    return v1

    .line 46
    :cond_0
    iget-object v3, p0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->description:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_0

    .line 47
    :cond_1
    const/16 v3, 0x4d9

    goto :goto_1
.end method

.method public isForcedUpdate()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->forcedUpdate:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .parameter "description"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->description:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->description:Ljava/lang/String;

    .line 93
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0

    .line 90
    :cond_1
    const-string v0, "Software Update"

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->description:Ljava/lang/String;

    goto :goto_1
.end method

.method public setForcedUpdate(Z)V
    .locals 1
    .parameter "forcedUpdate"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->forcedUpdate:Z

    if-ne v0, p1, :cond_0

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    iput-boolean p1, p0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->forcedUpdate:Z

    .line 124
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setSoftwareVersion(J)V
    .locals 2
    .parameter "softwareVersion"

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->softwareVersion:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    iput-wide p1, p0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->softwareVersion:J

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method
