.class Lcom/amazon/kcp/application/DynamicConfigParser;
.super Ljava/lang/Object;
.source "DynamicConfigParser.java"


# static fields
.field private static CONFIG_PAIR_DELIMETER:C

.field private static KEY_VALUE_DELIMITER:C

.field private static MULTI_VALUE_DELIMITER:C

.field private static MULTI_VALUE_END_DELIMETER:C

.field private static MULTI_VALUE_START_DELIMETER:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0xa

    sput-char v0, Lcom/amazon/kcp/application/DynamicConfigParser;->CONFIG_PAIR_DELIMETER:C

    .line 18
    const/16 v0, 0x3d

    sput-char v0, Lcom/amazon/kcp/application/DynamicConfigParser;->KEY_VALUE_DELIMITER:C

    .line 19
    const/16 v0, 0x7b

    sput-char v0, Lcom/amazon/kcp/application/DynamicConfigParser;->MULTI_VALUE_START_DELIMETER:C

    .line 20
    const/16 v0, 0x7d

    sput-char v0, Lcom/amazon/kcp/application/DynamicConfigParser;->MULTI_VALUE_END_DELIMETER:C

    .line 21
    const/16 v0, 0x3b

    sput-char v0, Lcom/amazon/kcp/application/DynamicConfigParser;->MULTI_VALUE_DELIMITER:C

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static internalParse(Ljava/util/Vector;Ljava/util/Map;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 61
    .line 62
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v7

    move-object v2, v0

    :goto_0
    move v3, v8

    .line 68
    :goto_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 71
    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-char v4, Lcom/amazon/kcp/application/DynamicConfigParser;->KEY_VALUE_DELIMITER:C

    invoke-static {v0, v4}, Lcom/amazon/kcp/util/Utils;->splitStringOnFirstOccurence(Ljava/lang/String;C)Ljava/util/Vector;

    move-result-object v4

    .line 74
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    .line 76
    invoke-virtual {v4, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 78
    if-eqz v1, :cond_4

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 83
    :goto_2
    invoke-virtual {v4, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-char v6, Lcom/amazon/kcp/application/DynamicConfigParser;->MULTI_VALUE_START_DELIMETER:C

    if-ne v4, v6, :cond_1

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-char v6, Lcom/amazon/kcp/application/DynamicConfigParser;->MULTI_VALUE_END_DELIMETER:C

    if-ne v4, v6, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 93
    sget-char v4, Lcom/amazon/kcp/application/DynamicConfigParser;->MULTI_VALUE_DELIMITER:C

    invoke-static {v0, v4}, Lcom/amazon/kcp/util/Utils;->splitString(Ljava/lang/String;C)Ljava/util/Vector;

    move-result-object v0

    .line 94
    invoke-static {v0, p1, v5}, Lcom/amazon/kcp/application/DynamicConfigParser;->internalParse(Ljava/util/Vector;Ljava/util/Map;Ljava/lang/String;)V

    .line 68
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Improperly formatted line in dynamic config in loadServerConfigOverrides: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    invoke-interface {p1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 108
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Improperly formatted line in dynamic config in loadServerConfigOverrides: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_3
    return-void

    :cond_4
    move-object v5, v0

    goto :goto_2

    :cond_5
    move v1, v8

    move-object v2, p2

    goto/16 :goto_0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter "configString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v1, configValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-char v2, Lcom/amazon/kcp/application/DynamicConfigParser;->CONFIG_PAIR_DELIMETER:C

    invoke-static {p0, v2}, Lcom/amazon/kcp/util/Utils;->splitString(Ljava/lang/String;C)Ljava/util/Vector;

    move-result-object v0

    .line 44
    .local v0, configEntries:Ljava/util/Vector;,"Ljava/util/Vector<*>;"
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/application/DynamicConfigParser;->internalParse(Ljava/util/Vector;Ljava/util/Map;Ljava/lang/String;)V

    .line 46
    return-object v1
.end method
