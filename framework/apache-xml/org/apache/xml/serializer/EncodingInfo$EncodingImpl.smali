.class Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;
.super Ljava/lang/Object;
.source "EncodingInfo.java"

# interfaces
.implements Lorg/apache/xml/serializer/EncodingInfo$InEncoding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/EncodingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncodingImpl"
.end annotation


# static fields
.field private static final RANGE:I = 0x80


# instance fields
.field private m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

.field private final m_alreadyKnown:[Z

.field private m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

.field private final m_encoding:Ljava/lang/String;

.field private final m_explFirst:I

.field private final m_explLast:I

.field private final m_first:I

.field private final m_isInEncoding:[Z

.field private final m_last:I

.field final synthetic this$0:Lorg/apache/xml/serializer/EncodingInfo;


# direct methods
.method private constructor <init>(Lorg/apache/xml/serializer/EncodingInfo;)V
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 340
    iget-object v2, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    const v4, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Ljava/lang/String;III)V

    .line 341
    return-void
.end method

.method private constructor <init>(Lorg/apache/xml/serializer/EncodingInfo;Ljava/lang/String;III)V
    .registers 13
    .parameter
    .parameter "encoding"
    .parameter "first"
    .parameter "last"
    .parameter "codePoint"

    .prologue
    const/16 v6, 0x7f

    const/16 v5, 0x80

    const/4 v4, 0x1

    .line 343
    iput-object p1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->this$0:Lorg/apache/xml/serializer/EncodingInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    new-array v2, v5, [Z

    iput-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    .line 335
    new-array v2, v5, [Z

    iput-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    .line 346
    iput p3, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_first:I

    .line 347
    iput p4, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_last:I

    .line 351
    iput p5, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    .line 352
    add-int/lit8 v2, p5, 0x7f

    iput v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explLast:I

    .line 354
    iput-object p2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    .line 356
    iget-object v2, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    if-eqz v2, :cond_9b

    .line 359
    iget v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    if-ltz v2, :cond_86

    iget v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    if-gt v2, v6, :cond_86

    .line 362
    const-string v2, "UTF8"

    iget-object v3, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    const-string v2, "UTF-16"

    iget-object v3, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    const-string v2, "ASCII"

    iget-object v3, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    const-string v2, "US-ASCII"

    iget-object v3, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    const-string v2, "Unicode"

    iget-object v3, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    const-string v2, "UNICODE"

    iget-object v3, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    iget-object v2, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    const-string v3, "ISO8859"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 381
    :cond_70
    const/4 v1, 0x1

    .local v1, unicode:I
    :goto_71
    if-ge v1, v6, :cond_86

    .line 382
    iget v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    sub-int v0, v1, v2

    .line 383
    .local v0, idx:I
    if-ltz v0, :cond_83

    if-ge v0, v5, :cond_83

    .line 384
    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    aput-boolean v4, v2, v0

    .line 385
    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    aput-boolean v4, v2, v0

    .line 381
    :cond_83
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 401
    .end local v0           #idx:I
    .end local v1           #unicode:I
    :cond_86
    iget-object v2, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    if-nez v2, :cond_9b

    .line 402
    const/4 v0, 0x0

    .restart local v0       #idx:I
    :goto_8b
    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_9b

    .line 403
    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    aput-boolean v4, v2, v0

    .line 404
    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    aput-boolean v4, v2, v0

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_8b

    .line 408
    .end local v0           #idx:I
    :cond_9b
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/serializer/EncodingInfo;Lorg/apache/xml/serializer/EncodingInfo$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;)V

    return-void
.end method


# virtual methods
.method public isInEncoding(C)Z
    .registers 11
    .parameter "ch1"

    .prologue
    const/4 v8, 0x1

    .line 189
    invoke-static {p1}, Lorg/apache/xml/serializer/Encodings;->toCodePoint(C)I

    move-result v5

    .line 190
    .local v5, codePoint:I
    iget v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    if-ge v5, v0, :cond_24

    .line 195
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    if-nez v0, :cond_1d

    .line 196
    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;

    iget-object v1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->this$0:Lorg/apache/xml/serializer/EncodingInfo;

    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    iget v3, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_first:I

    iget v4, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    sub-int/2addr v4, v8

    invoke-direct/range {v0 .. v5}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Ljava/lang/String;III)V

    iput-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    .line 202
    :cond_1d
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/EncodingInfo$InEncoding;->isInEncoding(C)Z

    move-result v7

    .line 231
    .local v7, ret:Z
    :goto_23
    return v7

    .line 203
    .end local v7           #ret:Z
    :cond_24
    iget v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explLast:I

    if-ge v0, v5, :cond_44

    .line 208
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    if-nez v0, :cond_3d

    .line 209
    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;

    iget-object v1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->this$0:Lorg/apache/xml/serializer/EncodingInfo;

    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    iget v3, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explLast:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_last:I

    invoke-direct/range {v0 .. v5}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Ljava/lang/String;III)V

    iput-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    .line 215
    :cond_3d
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/EncodingInfo$InEncoding;->isInEncoding(C)Z

    move-result v7

    .restart local v7       #ret:Z
    goto :goto_23

    .line 218
    .end local v7           #ret:Z
    :cond_44
    iget v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    sub-int v6, v5, v0

    .line 221
    .local v6, idx:I
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_53

    .line 222
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    aget-boolean v7, v0, v6

    .restart local v7       #ret:Z
    goto :goto_23

    .line 226
    .end local v7           #ret:Z
    :cond_53
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    #calls: Lorg/apache/xml/serializer/EncodingInfo;->inEncoding(CLjava/lang/String;)Z
    invoke-static {p1, v0}, Lorg/apache/xml/serializer/EncodingInfo;->access$100(CLjava/lang/String;)Z

    move-result v7

    .line 227
    .restart local v7       #ret:Z
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    aput-boolean v8, v0, v6

    .line 228
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    aput-boolean v7, v0, v6

    goto :goto_23
.end method

.method public isInEncoding(CC)Z
    .registers 12
    .parameter "high"
    .parameter "low"

    .prologue
    const/4 v8, 0x1

    .line 236
    invoke-static {p1, p2}, Lorg/apache/xml/serializer/Encodings;->toCodePoint(CC)I

    move-result v5

    .line 237
    .local v5, codePoint:I
    iget v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    if-ge v5, v0, :cond_24

    .line 242
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    if-nez v0, :cond_1d

    .line 243
    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;

    iget-object v1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->this$0:Lorg/apache/xml/serializer/EncodingInfo;

    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    iget v3, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_first:I

    iget v4, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    sub-int/2addr v4, v8

    invoke-direct/range {v0 .. v5}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Ljava/lang/String;III)V

    iput-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    .line 249
    :cond_1d
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    invoke-interface {v0, p1, p2}, Lorg/apache/xml/serializer/EncodingInfo$InEncoding;->isInEncoding(CC)Z

    move-result v7

    .line 278
    .local v7, ret:Z
    :goto_23
    return v7

    .line 250
    .end local v7           #ret:Z
    :cond_24
    iget v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explLast:I

    if-ge v0, v5, :cond_44

    .line 255
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    if-nez v0, :cond_3d

    .line 256
    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;

    iget-object v1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->this$0:Lorg/apache/xml/serializer/EncodingInfo;

    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    iget v3, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explLast:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_last:I

    invoke-direct/range {v0 .. v5}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Ljava/lang/String;III)V

    iput-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    .line 262
    :cond_3d
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    invoke-interface {v0, p1, p2}, Lorg/apache/xml/serializer/EncodingInfo$InEncoding;->isInEncoding(CC)Z

    move-result v7

    .restart local v7       #ret:Z
    goto :goto_23

    .line 265
    .end local v7           #ret:Z
    :cond_44
    iget v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    sub-int v6, v5, v0

    .line 268
    .local v6, idx:I
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_53

    .line 269
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    aget-boolean v7, v0, v6

    .restart local v7       #ret:Z
    goto :goto_23

    .line 273
    .end local v7           #ret:Z
    :cond_53
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    #calls: Lorg/apache/xml/serializer/EncodingInfo;->inEncoding(CCLjava/lang/String;)Z
    invoke-static {p1, p2, v0}, Lorg/apache/xml/serializer/EncodingInfo;->access$200(CCLjava/lang/String;)Z

    move-result v7

    .line 274
    .restart local v7       #ret:Z
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    aput-boolean v8, v0, v6

    .line 275
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    aput-boolean v7, v0, v6

    goto :goto_23
.end method
