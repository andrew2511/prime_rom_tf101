.class public final Ljavax/obex/ApplicationParameter;
.super Ljava/lang/Object;
.source "ApplicationParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/obex/ApplicationParameter$TRIPLET_LENGTH;,
        Ljavax/obex/ApplicationParameter$TRIPLET_VALUE;,
        Ljavax/obex/ApplicationParameter$TRIPLET_TAGID;
    }
.end annotation


# instance fields
.field private mArray:[B

.field private mLength:I

.field private mMaxLength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x3e8

    iput v0, p0, Ljavax/obex/ApplicationParameter;->mMaxLength:I

    .line 112
    iget v0, p0, Ljavax/obex/ApplicationParameter;->mMaxLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/obex/ApplicationParameter;->mArray:[B

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    .line 114
    return-void
.end method


# virtual methods
.method public addAPPHeader(BB[B)V
    .registers 9
    .parameter "tag"
    .parameter "len"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 117
    iget v1, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Ljavax/obex/ApplicationParameter;->mMaxLength:I

    if-le v1, v2, :cond_21

    .line 118
    iget v1, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 119
    .local v0, array_tmp:[B
    iget-object v1, p0, Ljavax/obex/ApplicationParameter;->mArray:[B

    iget v2, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    iput-object v0, p0, Ljavax/obex/ApplicationParameter;->mArray:[B

    .line 121
    iget v1, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    iput v1, p0, Ljavax/obex/ApplicationParameter;->mMaxLength:I

    .line 123
    .end local v0           #array_tmp:[B
    :cond_21
    iget-object v1, p0, Ljavax/obex/ApplicationParameter;->mArray:[B

    iget v2, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    aput-byte p1, v1, v2

    .line 124
    iget-object v1, p0, Ljavax/obex/ApplicationParameter;->mArray:[B

    iget v2, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    aput-byte p2, v1, v2

    .line 125
    iget-object v1, p0, Ljavax/obex/ApplicationParameter;->mArray:[B

    iget v2, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    invoke-static {p3, v4, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget v1, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    add-int/2addr v1, p2

    iput v1, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    .line 127
    return-void
.end method

.method public getAPPparam()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 130
    iget v1, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    new-array v0, v1, [B

    .line 131
    .local v0, para:[B
    iget-object v1, p0, Ljavax/obex/ApplicationParameter;->mArray:[B

    iget v2, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    return-object v0
.end method
