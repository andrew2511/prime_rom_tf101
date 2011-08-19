.class public Lcom/amazon/kcp/library/models/internal/SideloadBookID;
.super Ljava/lang/Object;
.source "SideloadBookID.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/IBookID;


# static fields
.field private static final SERIALIZED_PREFIX:Ljava/lang/String; = "SDLDID0"


# instance fields
.field private final absoluteFilePath:Ljava/lang/String;

.field private final lastModifiedTime:J

.field private final serializedForm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 3
    .parameter "absoluteFilePath"
    .parameter "lastModifiedTime"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "absoluteFilePath can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/SideloadBookID;->absoluteFilePath:Ljava/lang/String;

    .line 35
    iput-wide p2, p0, Lcom/amazon/kcp/library/models/internal/SideloadBookID;->lastModifiedTime:J

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDLDID0>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/SideloadBookID;->absoluteFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/amazon/kcp/library/models/internal/SideloadBookID;->lastModifiedTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/SideloadBookID;->serializedForm:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "that"

    .prologue
    .line 68
    if-ne p0, p1, :cond_0

    .line 70
    const/4 v2, 0x1

    .line 81
    :goto_0
    return v2

    .line 72
    :cond_0
    instance-of v2, p1, Lcom/amazon/kcp/library/models/internal/SideloadBookID;

    if-nez v2, :cond_1

    .line 74
    const/4 v2, 0x0

    goto :goto_0

    .line 78
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/library/models/internal/SideloadBookID;

    move-object v1, v0

    .line 81
    .local v1, thatID:Lcom/amazon/kcp/library/models/internal/SideloadBookID;
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/SideloadBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/internal/SideloadBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public getAbsoluteFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SideloadBookID;->absoluteFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/amazon/kcp/library/models/internal/SideloadBookID;->lastModifiedTime:J

    return-wide v0
.end method

.method public getSerializedForm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SideloadBookID;->serializedForm:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/SideloadBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
