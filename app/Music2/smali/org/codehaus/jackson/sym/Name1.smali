.class public final Lorg/codehaus/jackson/sym/Name1;
.super Lorg/codehaus/jackson/sym/Name;
.source "Name1.java"


# static fields
.field static final sEmptyName:Lorg/codehaus/jackson/sym/Name1;


# instance fields
.field final mQuad:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15
    new-instance v0, Lorg/codehaus/jackson/sym/Name1;

    const-string v1, ""

    invoke-direct {v0, v1, v2, v2}, Lorg/codehaus/jackson/sym/Name1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/codehaus/jackson/sym/Name1;->sEmptyName:Lorg/codehaus/jackson/sym/Name1;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "name"
    .parameter "hash"
    .parameter "quad"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/sym/Name;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lorg/codehaus/jackson/sym/Name1;->mQuad:I

    .line 23
    return-void
.end method

.method static final getEmptyName()Lorg/codehaus/jackson/sym/Name1;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/codehaus/jackson/sym/Name1;->sEmptyName:Lorg/codehaus/jackson/sym/Name1;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .locals 1
    .parameter "quad"

    .prologue
    .line 29
    iget v0, p0, Lorg/codehaus/jackson/sym/Name1;->mQuad:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(II)Z
    .locals 1
    .parameter "quad1"
    .parameter "quad2"

    .prologue
    .line 34
    iget v0, p0, Lorg/codehaus/jackson/sym/Name1;->mQuad:I

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals([II)Z
    .locals 4
    .parameter "quads"
    .parameter "qlen"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    if-ne p2, v3, :cond_0

    aget v0, p1, v2

    iget v1, p0, Lorg/codehaus/jackson/sym/Name1;->mQuad:I

    if-ne v0, v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method
