.class final enum Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;
.super Ljava/lang/Enum;
.source "UnsignedBytes.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/UnsignedBytes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LexicographicalComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;",
        ">;",
        "Ljava/util/Comparator",
        "<[B>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;

.field public static final enum INSTANCE:Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    new-instance v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;

    .line 169
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;

    sget-object v1, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;
    .locals 1
    .parameter "name"

    .prologue
    .line 169
    const-class v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;

    return-object p0
.end method

.method public static values()[Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;

    invoke-virtual {v0}, [Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    check-cast p1, [B

    .end local p1
    check-cast p2, [B

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;->compare([B[B)I

    move-result v0

    return v0
.end method

.method public compare([B[B)I
    .locals 5
    .parameter "left"
    .parameter "right"

    .prologue
    .line 173
    array-length v3, p1

    array-length v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 174
    .local v1, minLength:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 175
    aget-byte v3, p1, v0

    aget-byte v4, p2, v0

    invoke-static {v3, v4}, Lcom/google/common/primitives/UnsignedBytes;->compare(BB)I

    move-result v2

    .line 176
    .local v2, result:I
    if-eqz v2, :cond_0

    move v3, v2

    .line 180
    .end local v2           #result:I
    :goto_1
    return v3

    .line 174
    .restart local v2       #result:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    .end local v2           #result:I
    :cond_1
    array-length v3, p1

    array-length v4, p2

    sub-int/2addr v3, v4

    goto :goto_1
.end method