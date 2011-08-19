.class public Lcom/google/mobile/googlenav/datarequest/ClientPropertiesRequest;
.super Lcom/google/mobile/googlenav/datarequest/BaseDataRequest;


# instance fields
.field private final properties:Lcom/google/mobile/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/mobile/common/io/protocol/ProtoBuf;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/mobile/googlenav/datarequest/BaseDataRequest;-><init>()V

    iput-object p1, p0, Lcom/google/mobile/googlenav/datarequest/ClientPropertiesRequest;->properties:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    invoke-virtual {p1, v1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/mobile/googlenav/datarequest/ClientPropertiesRequest;->readCohortFromFlash()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1, v0}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private readCohortFromFlash()Ljava/lang/String;
    .locals 1

    const-string v0, "Cohort"

    invoke-static {v0}, Lcom/google/mobile/common/StaticUtil;->readPreferenceAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getRequestType()I
    .locals 1

    const/16 v0, 0x3e

    return v0
.end method

.method public isForeground()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isImmediate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readResponseData(Ljava/io/DataInput;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    sget-object v0, Lcom/google/mobile/googlenav/proto/GmmMessageTypes;->CLIENT_PROPERTIES_RESPONSE_PROTO:Lcom/google/mobile/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/mobile/common/io/protocol/ProtoBufUtil;->readProtoBufResponse(Lcom/google/mobile/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/mobile/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mobile/googlenav/datarequest/ClientPropertiesRequest;->properties:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2, v0}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    const-string v1, "Cohort"

    invoke-static {v1, v0}, Lcom/google/mobile/common/StaticUtil;->savePreferenceAsString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v2
.end method

.method public retryOnFailure()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeRequestData(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/ClientPropertiesRequest;->properties:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    invoke-static {p1, v0}, Lcom/google/mobile/common/io/protocol/ProtoBufUtil;->writeProtoBufToOutput(Ljava/io/DataOutput;Lcom/google/mobile/common/io/protocol/ProtoBuf;)V

    return-void
.end method
