.class public Lorg/codehaus/jackson/JsonProcessingException;
.super Ljava/io/IOException;
.source "JsonProcessingException.java"


# static fields
.field static final serialVersionUID:J = 0x7bL


# instance fields
.field protected mLocation:Lorg/codehaus/jackson/JsonLocation;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "msg"
    .parameter "rootCause"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V
    .locals 1
    .parameter "msg"
    .parameter "loc"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "msg"
    .parameter "loc"
    .parameter "rootCause"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 23
    if-eqz p3, :cond_0

    .line 24
    invoke-virtual {p0, p3}, Lorg/codehaus/jackson/JsonProcessingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 26
    :cond_0
    iput-object p2, p0, Lorg/codehaus/jackson/JsonProcessingException;->mLocation:Lorg/codehaus/jackson/JsonLocation;

    .line 27
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "rootCause"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0, v0, p1}, Lorg/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getLocation()Lorg/codehaus/jackson/JsonLocation;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/codehaus/jackson/JsonProcessingException;->mLocation:Lorg/codehaus/jackson/JsonLocation;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    invoke-super {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, msg:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 62
    const-string v1, "N/A"

    .line 64
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonProcessingException;->getLocation()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v0

    .line 65
    .local v0, loc:Lorg/codehaus/jackson/JsonLocation;
    if-eqz v0, :cond_1

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonLocation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :goto_0
    return-object v3

    :cond_1
    move-object v3, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
