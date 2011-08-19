.class public Lcom/google/android/testing/mocking/GeneratedClassFile;
.super Ljava/lang/Object;
.source "GeneratedClassFile.java"


# instance fields
.field private final className:Ljava/lang/String;

.field private final contents:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/testing/mocking/GeneratedClassFile;->className:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/google/android/testing/mocking/GeneratedClassFile;->contents:[B

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 51
    instance-of v0, p1, Lcom/google/android/testing/mocking/GeneratedClassFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/testing/mocking/GeneratedClassFile;->className:Ljava/lang/String;

    check-cast p1, Lcom/google/android/testing/mocking/GeneratedClassFile;

    invoke-virtual {p1}, Lcom/google/android/testing/mocking/GeneratedClassFile;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/testing/mocking/GeneratedClassFile;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getContents()[B
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/testing/mocking/GeneratedClassFile;->contents:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/testing/mocking/GeneratedClassFile;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
