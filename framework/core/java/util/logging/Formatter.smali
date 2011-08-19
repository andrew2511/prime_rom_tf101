.class public abstract Ljava/util/logging/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public abstract format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
.end method

.method public formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .registers 7
    .parameter "r"

    .prologue
    .line 65
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, pattern:Ljava/lang/String;
    const/4 v3, 0x0

    .line 68
    .local v3, rb:Ljava/util/ResourceBundle;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundle()Ljava/util/ResourceBundle;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 70
    :try_start_b
    invoke-virtual {v3, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_27

    move-result-object v2

    .line 75
    :cond_f
    :goto_f
    if-eqz v2, :cond_26

    .line 76
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getParameters()[Ljava/lang/Object;

    move-result-object v1

    .line 81
    .local v1, params:[Ljava/lang/Object;
    const-string v4, "{0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_26

    if-eqz v1, :cond_26

    array-length v4, v1

    if-lez v4, :cond_26

    .line 83
    :try_start_22
    invoke-static {v2, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_25} :catch_2d

    move-result-object v2

    .line 89
    .end local v1           #params:[Ljava/lang/Object;
    :cond_26
    :goto_26
    return-object v2

    .line 71
    :catch_27
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    .line 84
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #params:[Ljava/lang/Object;
    :catch_2d
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_26
.end method

.method public getHead(Ljava/util/logging/Handler;)Ljava/lang/String;
    .registers 3
    .parameter "h"

    .prologue
    .line 102
    const-string v0, ""

    return-object v0
.end method

.method public getTail(Ljava/util/logging/Handler;)Ljava/lang/String;
    .registers 3
    .parameter "h"

    .prologue
    .line 115
    const-string v0, ""

    return-object v0
.end method
