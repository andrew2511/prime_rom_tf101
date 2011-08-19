.class Lorg/apache/xml/serializer/CharInfo$CharKey;
.super Ljava/lang/Object;
.source "CharInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/CharInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharKey"
.end annotation


# instance fields
.field private m_char:C


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    return-void
.end method

.method public constructor <init>(C)V
    .registers 2
    .parameter "key"

    .prologue
    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    iput-char p1, p0, Lorg/apache/xml/serializer/CharInfo$CharKey;->m_char:C

    .line 760
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "obj"

    .prologue
    .line 802
    check-cast p1, Lorg/apache/xml/serializer/CharInfo$CharKey;

    .end local p1
    iget-char v0, p1, Lorg/apache/xml/serializer/CharInfo$CharKey;->m_char:C

    iget-char v1, p0, Lorg/apache/xml/serializer/CharInfo$CharKey;->m_char:C

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 790
    iget-char v0, p0, Lorg/apache/xml/serializer/CharInfo$CharKey;->m_char:C

    return v0
.end method

.method public final setChar(C)V
    .registers 2
    .parameter "c"

    .prologue
    .line 778
    iput-char p1, p0, Lorg/apache/xml/serializer/CharInfo$CharKey;->m_char:C

    .line 779
    return-void
.end method
