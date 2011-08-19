.class public Lorg/apache/harmony/text/BidiRun;
.super Ljava/lang/Object;
.source "BidiRun.java"


# instance fields
.field private final level:I

.field private final limit:I

.field private final start:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .parameter "start"
    .parameter "limit"
    .parameter "level"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lorg/apache/harmony/text/BidiRun;->start:I

    .line 32
    iput p2, p0, Lorg/apache/harmony/text/BidiRun;->limit:I

    .line 33
    iput p3, p0, Lorg/apache/harmony/text/BidiRun;->level:I

    .line 34
    return-void
.end method


# virtual methods
.method public getLevel()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lorg/apache/harmony/text/BidiRun;->level:I

    return v0
.end method

.method public getLimit()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lorg/apache/harmony/text/BidiRun;->limit:I

    return v0
.end method

.method public getStart()I
    .registers 2

    .prologue
    .line 45
    iget v0, p0, Lorg/apache/harmony/text/BidiRun;->start:I

    return v0
.end method
