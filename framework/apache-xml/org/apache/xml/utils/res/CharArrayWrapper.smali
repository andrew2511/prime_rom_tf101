.class public Lorg/apache/xml/utils/res/CharArrayWrapper;
.super Ljava/lang/Object;
.source "CharArrayWrapper.java"


# instance fields
.field private m_char:[C


# direct methods
.method public constructor <init>([C)V
    .registers 2
    .parameter "arg"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/xml/utils/res/CharArrayWrapper;->m_char:[C

    .line 33
    return-void
.end method


# virtual methods
.method public getChar(I)C
    .registers 3
    .parameter "index"

    .prologue
    .line 36
    iget-object v0, p0, Lorg/apache/xml/utils/res/CharArrayWrapper;->m_char:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/xml/utils/res/CharArrayWrapper;->m_char:[C

    array-length v0, v0

    return v0
.end method
