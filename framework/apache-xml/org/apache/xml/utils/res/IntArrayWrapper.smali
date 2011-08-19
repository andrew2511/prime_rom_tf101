.class public Lorg/apache/xml/utils/res/IntArrayWrapper;
.super Ljava/lang/Object;
.source "IntArrayWrapper.java"


# instance fields
.field private m_int:[I


# direct methods
.method public constructor <init>([I)V
    .registers 2
    .parameter "arg"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/xml/utils/res/IntArrayWrapper;->m_int:[I

    .line 33
    return-void
.end method


# virtual methods
.method public getInt(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 36
    iget-object v0, p0, Lorg/apache/xml/utils/res/IntArrayWrapper;->m_int:[I

    aget v0, v0, p1

    return v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/xml/utils/res/IntArrayWrapper;->m_int:[I

    array-length v0, v0

    return v0
.end method
