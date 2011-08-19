.class public Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
.super Ljava/lang/Exception;
.source "BoxException.java"


# static fields
.field private static final serialVersionUID:J = -0x78da9467dbc0e69L


# instance fields
.field private nestedException:Ljava/lang/Throwable;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "Error occurred when talk to box.net."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "nestedException"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 59
    iput-object p2, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->nestedException:Ljava/lang/Throwable;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "nestedException"

    .prologue
    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->nestedException:Ljava/lang/Throwable;

    .line 48
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->nestedException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " Nested exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->nestedException:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNestedException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->nestedException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->status:Ljava/lang/String;

    return-object v0
.end method

.method public printStackTrace()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->nestedException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Nested exception: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->nestedException:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    :cond_0
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 99
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 101
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->nestedException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "Nested exception: "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->nestedException:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 105
    :cond_0
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "writer"

    .prologue
    .line 112
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 114
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->nestedException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "Nested exception: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->nestedException:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 118
    :cond_0
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 132
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->status:Ljava/lang/String;

    .line 133
    return-void
.end method
