.class Lcom/android/i18n/addressinput/FormatInterpreter;
.super Ljava/lang/Object;
.source "FormatInterpreter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/addressinput/FormatInterpreter$2;
    }
.end annotation


# instance fields
.field private final mDefaultFormat:Ljava/lang/String;

.field private final mFormOptions:Lcom/android/i18n/addressinput/FormOptions;


# direct methods
.method constructor <init>(Lcom/android/i18n/addressinput/FormOptions;)V
    .locals 2
    .parameter "options"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/android/i18n/addressinput/RegionDataConstants;->getCountryFormatMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "null country name map not allowed"

    invoke-static {v0, v1}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {p1}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;)V

    .line 50
    iput-object p1, p0, Lcom/android/i18n/addressinput/FormatInterpreter;->mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

    .line 51
    const-string v0, "ZZ"

    sget-object v1, Lcom/android/i18n/addressinput/AddressDataKey;->FMT:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-direct {p0, v0, v1}, Lcom/android/i18n/addressinput/FormatInterpreter;->getJsonValue(Ljava/lang/String;Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/FormatInterpreter;->mDefaultFormat:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/android/i18n/addressinput/FormatInterpreter;->mDefaultFormat:Ljava/lang/String;

    const-string v1, "null default format not allowed"

    invoke-static {v0, v1}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private getFormatString(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "scriptType"
    .parameter "regionCode"

    .prologue
    .line 256
    sget-object v1, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/android/i18n/addressinput/AddressDataKey;->FMT:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-direct {p0, p2, v1}, Lcom/android/i18n/addressinput/FormatInterpreter;->getJsonValue(Ljava/lang/String;Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 259
    .local v0, format:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 256
    .end local v0           #format:Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/android/i18n/addressinput/AddressDataKey;->LFMT:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-direct {p0, p2, v1}, Lcom/android/i18n/addressinput/FormatInterpreter;->getJsonValue(Ljava/lang/String;Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private getFormatSubStrings(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "scriptType"
    .parameter "regionCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/addressinput/LookupKey$ScriptType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/addressinput/FormatInterpreter;->getFormatString(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, formatString:Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v6, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 230
    .local v2, escaped:Z
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-char v1, v0, v4

    .line 231
    .local v1, c:C
    if-eqz v2, :cond_1

    .line 232
    const/4 v2, 0x0

    .line 233
    const-string v7, "%n"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 234
    const-string v7, "%n"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 236
    :cond_0
    invoke-static {v1}, Lcom/android/i18n/addressinput/AddressField;->of(C)Lcom/android/i18n/addressinput/AddressField;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized character \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' in format pattern: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 240
    :cond_1
    const/16 v7, 0x25

    if-ne v1, v7, :cond_2

    .line 241
    const/4 v2, 0x1

    goto :goto_1

    .line 243
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 246
    .end local v1           #c:C
    :cond_3
    return-object v6
.end method

.method private getJsonValue(Ljava/lang/String;Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;
    .locals 7
    .parameter "regionCode"
    .parameter "key"

    .prologue
    .line 263
    invoke-static {p1}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;)V

    .line 264
    invoke-static {}, Lcom/android/i18n/addressinput/RegionDataConstants;->getCountryFormatMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 265
    .local v2, jsonString:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 267
    iget-object v4, p0, Lcom/android/i18n/addressinput/FormatInterpreter;->mDefaultFormat:Ljava/lang/String;

    .line 278
    :goto_0
    return-object v4

    .line 271
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONTokener;

    invoke-direct {v4, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 272
    .local v1, jsonObj:Lorg/json/JSONObject;
    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressDataKey;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 274
    iget-object v4, p0, Lcom/android/i18n/addressinput/FormatInterpreter;->mDefaultFormat:Ljava/lang/String;

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressDataKey;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, parsedJsonString:Ljava/lang/String;
    move-object v4, v3

    .line 278
    goto :goto_0

    .line 279
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    .end local v3           #parsedJsonString:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 280
    .local v0, e:Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid json for region code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private overrideFieldOrder(Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .parameter "regionCode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p2, fieldOrder:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/addressinput/AddressField;>;"
    iget-object v9, p0, Lcom/android/i18n/addressinput/FormatInterpreter;->mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

    invoke-virtual {v9, p1}, Lcom/android/i18n/addressinput/FormOptions;->getCustomFieldOrder(Ljava/lang/String;)[Lcom/android/i18n/addressinput/AddressField;

    move-result-object v9

    if-nez v9, :cond_1

    .line 135
    .end local p0
    :cond_0
    return-void

    .line 105
    .restart local p0
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 106
    .local v2, fieldPriority:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/i18n/addressinput/AddressField;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 107
    .local v3, i:I
    iget-object v9, p0, Lcom/android/i18n/addressinput/FormatInterpreter;->mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

    invoke-virtual {v9, p1}, Lcom/android/i18n/addressinput/FormOptions;->getCustomFieldOrder(Ljava/lang/String;)[Lcom/android/i18n/addressinput/AddressField;

    move-result-object v0

    .local v0, arr$:[Lcom/android/i18n/addressinput/AddressField;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v0, v4

    .line 108
    .local v1, field:Lcom/android/i18n/addressinput/AddressField;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    add-int/lit8 v3, v3, 0x1

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 113
    .end local v1           #field:Lcom/android/i18n/addressinput/AddressField;
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v8, union:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/addressinput/AddressField;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v7, slots:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 116
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/addressinput/AddressField;

    .line 117
    .restart local v1       #field:Lcom/android/i18n/addressinput/AddressField;
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 118
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 125
    .end local v1           #field:Lcom/android/i18n/addressinput/AddressField;
    :cond_4
    new-instance v9, Lcom/android/i18n/addressinput/FormatInterpreter$1;

    invoke-direct {v9, p0, v2}, Lcom/android/i18n/addressinput/FormatInterpreter$1;-><init>(Lcom/android/i18n/addressinput/FormatInterpreter;Ljava/util/Map;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 132
    const/4 v5, 0x0

    .end local p0
    .local v5, j:I
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_0

    .line 133
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private removeAllRedundantSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 251
    const-string v0, " +"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 252
    return-object p1
.end method


# virtual methods
.method getAddressFieldOrder(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "scriptType"
    .parameter "regionCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/addressinput/LookupKey$ScriptType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p1}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;)V

    .line 63
    invoke-static {p2}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v1, fieldOrder:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/addressinput/AddressField;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/addressinput/FormatInterpreter;->getFormatSubStrings(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 67
    .local v4, substring:Ljava/lang/String;
    const-string v5, "%."

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "%n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 71
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/i18n/addressinput/AddressField;->of(C)Lcom/android/i18n/addressinput/AddressField;

    move-result-object v0

    .line 72
    .local v0, field:Lcom/android/i18n/addressinput/AddressField;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    .end local v0           #field:Lcom/android/i18n/addressinput/AddressField;
    .end local v4           #substring:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p2, v1}, Lcom/android/i18n/addressinput/FormatInterpreter;->overrideFieldOrder(Ljava/lang/String;Ljava/util/List;)V

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v2, finalFieldOrder:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/addressinput/AddressField;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressField;

    .line 80
    .restart local v0       #field:Lcom/android/i18n/addressinput/AddressField;
    sget-object v5, Lcom/android/i18n/addressinput/AddressField;->STREET_ADDRESS:Lcom/android/i18n/addressinput/AddressField;

    if-ne v0, v5, :cond_2

    .line 81
    sget-object v5, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v5, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 87
    .end local v0           #field:Lcom/android/i18n/addressinput/AddressField;
    :cond_3
    return-object v2
.end method

.method getEnvelopeAddress(Lcom/android/i18n/addressinput/AddressData;Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .parameter "address"
    .parameter "defaultCountry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/addressinput/AddressData;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    const-string v14, "null input address not allowed"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v10

    .line 150
    .local v10, regionCode:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/i18n/addressinput/AddressWidget;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 151
    move-object/from16 v10, p2

    .line 154
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/addressinput/AddressData;->getLanguageCode()Ljava/lang/String;

    move-result-object v7

    .line 155
    .local v7, lc:Ljava/lang/String;
    sget-object v11, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    .line 156
    .local v11, scriptType:Lcom/android/i18n/addressinput/LookupKey$ScriptType;
    if-eqz v7, :cond_1

    .line 157
    invoke-static {v7}, Lcom/android/i18n/addressinput/Util;->isExplicitLatinScript(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    sget-object v14, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LATIN:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    move-object v11, v14

    .line 160
    :cond_1
    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v8, lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v4, currentLine:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/addressinput/FormatInterpreter;->getFormatSubStrings(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 163
    .local v12, substr:Ljava/lang/String;
    const-string v14, "%n"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 164
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/i18n/addressinput/FormatInterpreter;->removeAllRedundantSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 165
    .local v9, normalizedStr:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_2

    .line 166
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 157
    .end local v4           #currentLine:Ljava/lang/StringBuilder;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #normalizedStr:Ljava/lang/String;
    .end local v12           #substr:Ljava/lang/String;
    :cond_3
    sget-object v14, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    move-object v11, v14

    goto :goto_0

    .line 169
    .restart local v4       #currentLine:Ljava/lang/StringBuilder;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v8       #lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12       #substr:Ljava/lang/String;
    :cond_4
    const-string v14, "%"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 170
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 171
    .local v3, c:C
    invoke-static {v3}, Lcom/android/i18n/addressinput/AddressField;->of(C)Lcom/android/i18n/addressinput/AddressField;

    move-result-object v5

    .line 172
    .local v5, field:Lcom/android/i18n/addressinput/AddressField;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "null address field for character "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    const/4 v13, 0x0

    .line 175
    .local v13, value:Ljava/lang/String;
    sget-object v14, Lcom/android/i18n/addressinput/FormatInterpreter$2;->$SwitchMap$com$android$i18n$addressinput$AddressField:[I

    invoke-virtual {v5}, Lcom/android/i18n/addressinput/AddressField;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 206
    :goto_2
    :pswitch_0
    if-eqz v13, :cond_2

    .line 207
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 177
    :pswitch_1
    const-string v14, "\n"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine1()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine2()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/android/i18n/addressinput/Util;->joinAndSkipNulls(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 180
    goto :goto_2

    .line 185
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v13

    .line 186
    goto :goto_2

    .line 188
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v13

    .line 189
    goto :goto_2

    .line 191
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/addressinput/AddressData;->getDependentLocality()Ljava/lang/String;

    move-result-object v13

    .line 192
    goto :goto_2

    .line 194
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/addressinput/AddressData;->getRecipient()Ljava/lang/String;

    move-result-object v13

    .line 195
    goto :goto_2

    .line 197
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/addressinput/AddressData;->getOrganization()Ljava/lang/String;

    move-result-object v13

    .line 198
    goto :goto_2

    .line 200
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/addressinput/AddressData;->getPostalCode()Ljava/lang/String;

    move-result-object v13

    .line 201
    goto :goto_2

    .line 210
    .end local v3           #c:C
    .end local v5           #field:Lcom/android/i18n/addressinput/AddressField;
    .end local v13           #value:Ljava/lang/String;
    :cond_5
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 213
    .end local v12           #substr:Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/i18n/addressinput/FormatInterpreter;->removeAllRedundantSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 214
    .restart local v9       #normalizedStr:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_7

    .line 215
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_7
    return-object v8

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
