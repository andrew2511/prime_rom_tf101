.class final Lorg/apache/xml/serializer/dom3/DOMErrorHandlerImpl;
.super Ljava/lang/Object;
.source "DOMErrorHandlerImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMErrorHandler;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public handleError(Lorg/w3c/dom/DOMError;)Z
    .registers 7
    .parameter "error"

    .prologue
    .line 48
    const/4 v0, 0x1

    .line 49
    .local v0, fail:Z
    const/4 v1, 0x0

    .line 50
    .local v1, severity:Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getSeverity()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_77

    .line 51
    const/4 v0, 0x0

    .line 52
    const-string v1, "[Warning]"

    .line 59
    :cond_c
    :goto_c
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Related Data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getRelatedData()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Related Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getRelatedException()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    return v0

    .line 53
    :cond_77
    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getSeverity()S

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_81

    .line 54
    const-string v1, "[Error]"

    goto :goto_c

    .line 55
    :cond_81
    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getSeverity()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_c

    .line 56
    const-string v1, "[Fatal Error]"

    goto :goto_c
.end method
