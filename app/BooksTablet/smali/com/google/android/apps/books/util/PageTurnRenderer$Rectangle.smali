.class Lcom/google/android/apps/books/util/PageTurnRenderer$Rectangle;
.super Ljava/lang/Object;
.source "PageTurnRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/PageTurnRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rectangle"
.end annotation


# static fields
.field private static final VERTS:I = 0x5


# instance fields
.field private mFVertexBuffer:Ljava/nio/FloatBuffer;

.field private mIndexBuffer:Ljava/nio/ShortBuffer;

.field private mTexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x5

    const/4 v9, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/16 v6, 0x3c

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 166
    .local v5, vbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 167
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/books/util/PageTurnRenderer$Rectangle;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    .line 169
    const/16 v6, 0x28

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 170
    .local v4, tbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 171
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/books/util/PageTurnRenderer$Rectangle;->mTexBuffer:Ljava/nio/FloatBuffer;

    .line 173
    const/16 v6, 0xa

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 174
    .local v2, ibb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 175
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/books/util/PageTurnRenderer$Rectangle;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 178
    const/16 v6, 0xf

    new-array v0, v6, [F

    fill-array-data v0, :array_0

    .line 187
    .local v0, coords:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v10, :cond_1

    .line 188
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    const/4 v6, 0x3

    if-ge v3, v6, :cond_0

    .line 189
    iget-object v6, p0, Lcom/google/android/apps/books/util/PageTurnRenderer$Rectangle;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v7, v1, 0x3

    add-int/2addr v7, v3

    aget v7, v0, v7

    mul-float/2addr v7, v11

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 188
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 187
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v3           #j:I
    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v10, :cond_3

    .line 194
    const/4 v3, 0x0

    .restart local v3       #j:I
    :goto_3
    const/4 v6, 0x2

    if-ge v3, v6, :cond_2

    .line 195
    iget-object v6, p0, Lcom/google/android/apps/books/util/PageTurnRenderer$Rectangle;->mTexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v7, v1, 0x3

    add-int/2addr v7, v3

    aget v7, v0, v7

    mul-float/2addr v7, v11

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 193
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 199
    .end local v3           #j:I
    :cond_3
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v10, :cond_4

    .line 200
    iget-object v6, p0, Lcom/google/android/apps/books/util/PageTurnRenderer$Rectangle;->mIndexBuffer:Ljava/nio/ShortBuffer;

    int-to-short v7, v1

    invoke-virtual {v6, v7}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 203
    :cond_4
    iget-object v6, p0, Lcom/google/android/apps/books/util/PageTurnRenderer$Rectangle;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 204
    iget-object v6, p0, Lcom/google/android/apps/books/util/PageTurnRenderer$Rectangle;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 205
    iget-object v6, p0, Lcom/google/android/apps/books/util/PageTurnRenderer$Rectangle;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v6, v9}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 206
    return-void

    .line 178
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "gl"

    .prologue
    const/16 v4, 0x1406

    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 209
    const/16 v0, 0x901

    invoke-static {v0}, Landroid/opengl/GLES10;->glFrontFace(I)V

    .line 210
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/apps/books/util/PageTurnRenderer$Rectangle;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v0, v4, v2, v1}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 211
    const/16 v0, 0xde1

    invoke-static {v0}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 212
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/books/util/PageTurnRenderer$Rectangle;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v0, v4, v2, v1}, Landroid/opengl/GLES10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 213
    const/16 v0, 0x1403

    iget-object v1, p0, Lcom/google/android/apps/books/util/PageTurnRenderer$Rectangle;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 214
    return-void
.end method
