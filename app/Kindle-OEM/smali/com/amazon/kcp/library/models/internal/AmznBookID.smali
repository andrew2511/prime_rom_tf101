.class public Lcom/amazon/kcp/library/models/internal/AmznBookID;
.super Ljava/lang/Object;
.source "AmznBookID.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/IBookID;


# static fields
.field private static final SERIALIZED_PREFIX:Ljava/lang/String; = "AMZNID0"


# instance fields
.field private final asin:Ljava/lang/String;

.field private final guid:Ljava/lang/String;

.field private final hashString:Ljava/lang/String;

.field private final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "asin"
    .parameter "guid"
    .parameter "type"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->asin:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->guid:Ljava/lang/String;

    .line 34
    iput p3, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->type:I

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AMZNID0/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->hashString:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "that"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 82
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 95
    :goto_0
    return v2

    .line 86
    :cond_0
    instance-of v2, p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    if-nez v2, :cond_1

    move v2, v4

    .line 88
    goto :goto_0

    .line 92
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-object v1, v0

    .line 95
    .local v1, thatID:Lcom/amazon/kcp/library/models/internal/AmznBookID;
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->asin:Ljava/lang/String;

    iget-object v3, v1, Lcom/amazon/kcp/library/models/internal/AmznBookID;->asin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->type:I

    iget v3, v1, Lcom/amazon/kcp/library/models/internal/AmznBookID;->type:I

    if-ne v2, v3, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedForm()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AMZNID0/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->asin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->guid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->guid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_0
    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->hashString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->hashString:Ljava/lang/String;

    return-object v0
.end method
