.class public Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;
.super Ljava/lang/Object;
.source "ProtoBufType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;
    }
.end annotation


# static fields
.field private static final NULL_DATA_TYPEINFOS:[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;


# instance fields
.field private final typeName:Ljava/lang/String;

.field private final types:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    .line 63
    const/16 v4, 0xa8

    new-array v4, v4, [Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;

    sput-object v4, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->NULL_DATA_TYPEINFOS:[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;

    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    const/4 v4, 0x7

    if-gt v0, v4, :cond_29

    .line 69
    const/16 v3, 0x10

    .local v3, j:I
    move v2, v1

    .end local v1           #index:I
    .local v2, index:I
    :goto_e
    const/16 v4, 0x25

    if-ge v3, v4, :cond_25

    .line 70
    sget-object v4, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->NULL_DATA_TYPEINFOS:[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    new-instance v5, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;

    shl-int/lit8 v6, v0, 0x8

    add-int/2addr v6, v3

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;-><init>(ILjava/lang/Object;)V

    aput-object v5, v4, v2

    .line 69
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_e

    .line 68
    :cond_25
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_8

    .line 73
    .end local v3           #j:I
    :cond_29
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->types:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->typeName:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "typeName"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->types:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    .line 123
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->typeName:Ljava/lang/String;

    .line 124
    return-void
.end method

.method private static getCacheTypeInfoForNullData(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;
    .registers 6
    .parameter "optionsAndType"

    .prologue
    .line 133
    const v3, 0xff00

    and-int/2addr v3, p0

    shr-int/lit8 v3, v3, 0x8

    mul-int/lit8 v0, v3, 0x15

    .line 136
    .local v0, higher:I
    and-int/lit16 v3, p0, 0xff

    const/16 v4, 0x10

    sub-int v2, v3, v4

    .line 139
    .local v2, lower:I
    add-int v1, v0, v2

    .line 140
    .local v1, index:I
    sget-object v3, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->NULL_DATA_TYPEINFOS:[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;

    aget-object v3, v3, v1

    return-object v3
.end method


# virtual methods
.method public addElement(IILjava/lang/Object;)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;
    .registers 6
    .parameter "optionsAndType"
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 156
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->types:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    if-nez p3, :cond_c

    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->getCacheTypeInfoForNullData(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;

    move-result-object v1

    :goto_8
    invoke-virtual {v0, p2, v1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->put(ILjava/lang/Object;)V

    .line 159
    return-object p0

    .line 156
    :cond_c
    new-instance v1, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;

    invoke-direct {v1, p1, p3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;-><init>(ILjava/lang/Object;)V

    goto :goto_8
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "object"

    .prologue
    const/4 v4, 0x0

    .line 242
    if-nez p1, :cond_5

    move v2, v4

    .line 254
    :goto_4
    return v2

    .line 245
    :cond_5
    if-ne p0, p1, :cond_9

    .line 247
    const/4 v2, 0x1

    goto :goto_4

    .line 248
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v2, v4

    .line 250
    goto :goto_4

    .line 252
    :cond_15
    move-object v0, p1

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    move-object v1, v0

    .line 254
    .local v1, other:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->types:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    iget-object v3, v1, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->types:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4
.end method

.method public getData(I)Ljava/lang/Object;
    .registers 4
    .parameter "tag"

    .prologue
    .line 196
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->types:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;

    .line 197
    .local v0, typeInfo:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;
    if-nez v0, :cond_c

    move-object v1, v0

    :goto_b
    return-object v1

    :cond_c
    #getter for: Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->access$100(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_b
.end method

.method public getType(I)I
    .registers 4
    .parameter "tag"

    .prologue
    .line 176
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->types:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;

    .line 177
    .local v0, typeInfo:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;
    if-nez v0, :cond_d

    const/16 v1, 0x10

    :goto_c
    return v1

    :cond_d
    #getter for: Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->type:I
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->access$000(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    goto :goto_c
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->types:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    if-eqz v0, :cond_b

    .line 262
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->types:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->hashCode()I

    move-result v0

    .line 264
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtoBufType Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
