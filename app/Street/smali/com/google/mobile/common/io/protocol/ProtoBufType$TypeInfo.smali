.class Lcom/google/mobile/common/io/protocol/ProtoBufType$TypeInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mobile/common/io/protocol/ProtoBufType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TypeInfo"
.end annotation


# instance fields
.field private data:Ljava/lang/Object;

.field private type:I


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/mobile/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    iput-object p2, p0, Lcom/google/mobile/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/google/mobile/common/io/protocol/ProtoBufType$TypeInfo;)I
    .locals 1

    iget v0, p0, Lcom/google/mobile/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/mobile/common/io/protocol/ProtoBufType$TypeInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/mobile/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/google/mobile/common/io/protocol/ProtoBufType$TypeInfo;

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/mobile/common/io/protocol/ProtoBufType$TypeInfo;

    iget v0, p0, Lcom/google/mobile/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    iget v1, p1, Lcom/google/mobile/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/mobile/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/mobile/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/mobile/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/mobile/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/mobile/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/mobile/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TypeInfo{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/mobile/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mobile/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
