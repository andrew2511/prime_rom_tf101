.class public abstract Lorg/codehaus/jackson/sym/Name;
.super Ljava/lang/Object;
.source "Name.java"


# instance fields
.field protected final mHashCode:I

.field protected final mName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "hashCode"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/codehaus/jackson/sym/Name;->mName:Ljava/lang/String;

    .line 18
    iput p2, p0, Lorg/codehaus/jackson/sym/Name;->mHashCode:I

    .line 19
    return-void
.end method


# virtual methods
.method public abstract equals(I)Z
.end method

.method public abstract equals(II)Z
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 51
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract equals([II)Z
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lorg/codehaus/jackson/sym/Name;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lorg/codehaus/jackson/sym/Name;->mHashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/codehaus/jackson/sym/Name;->mName:Ljava/lang/String;

    return-object v0
.end method
