.class Lorg/json/JSON;
.super Ljava/lang/Object;
.source "JSON.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkDouble(D)D
    .registers 5
    .parameter "d"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 25
    :cond_c
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forbidden numeric value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_25
    return-wide p0
.end method

.method static toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 2
    .parameter "value"

    .prologue
    .line 31
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 32
    check-cast p0, Ljava/lang/Boolean;

    .end local p0
    move-object v0, p0

    .line 36
    :goto_7
    return-object v0

    .line 33
    .restart local p0
    :cond_8
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 34
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_7

    .line 36
    .restart local p0
    :cond_13
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static toDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .registers 3
    .parameter "value"

    .prologue
    .line 41
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_8

    .line 42
    check-cast p0, Ljava/lang/Double;

    .end local p0
    move-object v0, p0

    .line 51
    :goto_7
    return-object v0

    .line 43
    .restart local p0
    :cond_8
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_17

    .line 44
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_7

    .line 45
    .restart local p0
    :cond_17
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 47
    :try_start_1b
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_20} :catch_22

    move-result-object v0

    goto :goto_7

    .line 48
    :catch_22
    move-exception v0

    .line 51
    :cond_23
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static toInteger(Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 3
    .parameter "value"

    .prologue
    .line 55
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 56
    check-cast p0, Ljava/lang/Integer;

    .end local p0
    move-object v0, p0

    .line 65
    :goto_7
    return-object v0

    .line 57
    .restart local p0
    :cond_8
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_17

    .line 58
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_7

    .line 59
    .restart local p0
    :cond_17
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 61
    :try_start_1b
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_25} :catch_27

    move-result-object v0

    goto :goto_7

    .line 62
    :catch_27
    move-exception v0

    .line 65
    :cond_28
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static toLong(Ljava/lang/Object;)Ljava/lang/Long;
    .registers 3
    .parameter "value"

    .prologue
    .line 69
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_8

    .line 70
    check-cast p0, Ljava/lang/Long;

    .end local p0
    move-object v0, p0

    .line 79
    :goto_7
    return-object v0

    .line 71
    .restart local p0
    :cond_8
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_17

    .line 72
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_7

    .line 73
    .restart local p0
    :cond_17
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 75
    :try_start_1b
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_25} :catch_27

    move-result-object v0

    goto :goto_7

    .line 76
    :catch_27
    move-exception v0

    .line 79
    :cond_28
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 83
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 84
    check-cast p0, Ljava/lang/String;

    .end local p0
    move-object v0, p0

    .line 88
    :goto_7
    return-object v0

    .line 85
    .restart local p0
    :cond_8
    if-eqz p0, :cond_f

    .line 86
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 88
    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;
    .registers 6
    .parameter "indexOrName"
    .parameter "actual"
    .parameter "requiredType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 93
    if-nez p1, :cond_21

    .line 94
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_21
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be converted to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static typeMismatch(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;
    .registers 5
    .parameter "actual"
    .parameter "requiredType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 104
    if-nez p0, :cond_a

    .line 105
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Value is null."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_a
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be converted to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
