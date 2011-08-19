.class public Lcom/amazon/kcp/application/sync/internal/SyncParameters;
.super Ljava/lang/Object;
.source "SyncParameters.java"


# instance fields
.field private final bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

.field private command:Lcom/amazon/kcp/application/internal/commands/SyncCommand;

.field private final deadline:Ljava/util/Date;

.field private result:Lcom/amazon/kcp/application/sync/internal/SyncResult;

.field private final statusTracker:Lcom/amazon/foundation/IStatusTracker;

.field private final type:Lcom/amazon/kcp/application/sync/internal/SyncType;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iget-object v0, p1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->type:Lcom/amazon/kcp/application/sync/internal/SyncType;

    iput-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->type:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 55
    iget-object v0, p1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    iput-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    .line 56
    iget-object v0, p1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->deadline:Ljava/util/Date;

    iput-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->deadline:Ljava/util/Date;

    .line 57
    iget-object v0, p1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    iput-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    .line 58
    iget-object v0, p1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->command:Lcom/amazon/kcp/application/internal/commands/SyncCommand;

    iput-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->command:Lcom/amazon/kcp/application/internal/commands/SyncCommand;

    .line 59
    iget-object v0, p1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->result:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    iput-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->result:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kcp/library/models/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/foundation/IStatusTracker;)V
    .locals 1
    .parameter "type"
    .parameter "bookInfo"
    .parameter "deadline"
    .parameter "statusTracker"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->type:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 41
    iput-object p2, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    .line 42
    iput-object p3, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->deadline:Ljava/util/Date;

    .line 43
    iput-object p4, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    .line 44
    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncResult;->NOT_STARTED:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    iput-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->result:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .parameter "obj"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 171
    if-ne p0, p1, :cond_0

    move v4, v7

    .line 223
    :goto_0
    return v4

    .line 175
    :cond_0
    if-nez p1, :cond_1

    move v4, v6

    .line 177
    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_2

    move v4, v6

    .line 181
    goto :goto_0

    .line 184
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    move-object v2, v0

    .line 186
    .local v2, other:Lcom/amazon/kcp/application/sync/internal/SyncParameters;
    iget-object v4, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    invoke-interface {v4}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getAsin()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 187
    .local v1, asin:Ljava/lang/String;
    :goto_1
    iget-object v4, v2, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    invoke-interface {v4}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getAsin()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 188
    .local v3, otherAsin:Ljava/lang/String;
    :goto_2
    if-nez v1, :cond_5

    .line 190
    if-eqz v3, :cond_6

    move v4, v6

    .line 192
    goto :goto_0

    .end local v1           #asin:Ljava/lang/String;
    .end local v3           #otherAsin:Ljava/lang/String;
    :cond_3
    move-object v1, v8

    .line 186
    goto :goto_1

    .restart local v1       #asin:Ljava/lang/String;
    :cond_4
    move-object v3, v8

    .line 187
    goto :goto_2

    .line 195
    .restart local v3       #otherAsin:Ljava/lang/String;
    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    move v4, v6

    .line 197
    goto :goto_0

    .line 200
    :cond_6
    iget-object v4, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->deadline:Ljava/util/Date;

    if-nez v4, :cond_7

    .line 202
    iget-object v4, v2, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->deadline:Ljava/util/Date;

    if-eqz v4, :cond_8

    move v4, v6

    .line 204
    goto :goto_0

    .line 207
    :cond_7
    iget-object v4, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->deadline:Ljava/util/Date;

    iget-object v5, v2, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->deadline:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    move v4, v6

    .line 209
    goto :goto_0

    .line 212
    :cond_8
    iget-object v4, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->type:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-nez v4, :cond_9

    .line 214
    iget-object v4, v2, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->type:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-eqz v4, :cond_a

    move v4, v6

    .line 216
    goto :goto_0

    .line 219
    :cond_9
    iget-object v4, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->type:Lcom/amazon/kcp/application/sync/internal/SyncType;

    iget-object v5, v2, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->type:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    move v4, v6

    .line 221
    goto :goto_0

    :cond_a
    move v4, v7

    .line 223
    goto :goto_0
.end method

.method public getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    return-object v0
.end method

.method public getCommand()Lcom/amazon/kcp/application/internal/commands/SyncCommand;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->command:Lcom/amazon/kcp/application/internal/commands/SyncCommand;

    return-object v0
.end method

.method public getDeadline()Ljava/util/Date;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->deadline:Ljava/util/Date;

    return-object v0
.end method

.method public getResult()Lcom/amazon/kcp/application/sync/internal/SyncResult;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->result:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    return-object v0
.end method

.method public getStatusTracker()Lcom/amazon/foundation/IStatusTracker;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    return-object v0
.end method

.method public getType()Lcom/amazon/kcp/application/sync/internal/SyncType;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->type:Lcom/amazon/kcp/application/sync/internal/SyncType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    const/4 v0, 0x1

    .line 163
    mul-int/lit8 v0, v0, 0x1f

    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 164
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->deadline:Ljava/util/Date;

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    .line 165
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->type:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-nez v1, :cond_3

    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    .line 166
    return v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->deadline:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    goto :goto_1

    .line 165
    :cond_3
    iget-object v1, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->type:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public isDeadlineValid()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->deadline:Ljava/util/Date;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->type:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-nez v0, :cond_0

    move v0, v1

    .line 81
    :goto_0
    return v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->type:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SyncType;->isBookRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    if-nez v0, :cond_1

    move v0, v1

    .line 75
    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->isDeadlineValid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->type:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SyncType;->isUserCancelable()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 79
    goto :goto_0

    .line 81
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCommand(Lcom/amazon/kcp/application/internal/commands/SyncCommand;)V
    .locals 0
    .parameter "command"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->command:Lcom/amazon/kcp/application/internal/commands/SyncCommand;

    .line 141
    return-void
.end method

.method public setResult(Lcom/amazon/kcp/application/sync/internal/SyncResult;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->result:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    .line 157
    return-void
.end method
