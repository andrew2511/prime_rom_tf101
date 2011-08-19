.class public final enum Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;
.super Ljava/lang/Enum;
.source "BufferRecycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/util/BufferRecycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ByteBufferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

.field public static final enum READ_IO_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

.field public static final enum WRITE_IO_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;


# instance fields
.field private final size:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xfa0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    const-string v1, "READ_IO_BUFFER"

    invoke-direct {v0, v1, v2, v4}, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    .line 15
    new-instance v0, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    const-string v1, "WRITE_IO_BUFFER"

    invoke-direct {v0, v1, v3, v4}, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_IO_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_IO_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->$VALUES:[Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->size:I

    return-void
.end method

.method static synthetic access$000(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->size:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;
    .locals 1
    .parameter "name"

    .prologue
    .line 13
    const-class v0, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    return-object p0
.end method

.method public static values()[Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->$VALUES:[Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0}, [Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    return-object v0
.end method
