.class public Lorg/apache/xml/utils/res/StringArrayWrapper;
.super Ljava/lang/Object;
.source "StringArrayWrapper.java"


# instance fields
.field private m_string:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 2
    .parameter "arg"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/xml/utils/res/StringArrayWrapper;->m_string:[Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/xml/utils/res/StringArrayWrapper;->m_string:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 36
    iget-object v0, p0, Lorg/apache/xml/utils/res/StringArrayWrapper;->m_string:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
