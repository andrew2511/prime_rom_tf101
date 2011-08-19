.class public Lcom/google/android/maps/driveabout/vector/cD;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/nio/ByteBuffer;

.field private static b:Ljava/nio/ShortBuffer;

.field private static c:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/nio/ByteBuffer;
    .locals 3

    const/high16 v2, 0x3

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cD;->a:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cD;->a:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cD;->a:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_0
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cD;->a:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cD;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cD;->a:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static b()Ljava/nio/ShortBuffer;
    .locals 2

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cD;->b:Ljava/nio/ShortBuffer;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cD;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cD;->b:Ljava/nio/ShortBuffer;

    :cond_0
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cD;->b:Ljava/nio/ShortBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cD;->b:Ljava/nio/ShortBuffer;

    const v1, 0x18000

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cD;->b:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public static c()Ljava/nio/IntBuffer;
    .locals 2

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cD;->c:Ljava/nio/IntBuffer;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cD;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cD;->c:Ljava/nio/IntBuffer;

    :cond_0
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cD;->c:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cD;->c:Ljava/nio/IntBuffer;

    const v1, 0xc000

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cD;->c:Ljava/nio/IntBuffer;

    return-object v0
.end method
