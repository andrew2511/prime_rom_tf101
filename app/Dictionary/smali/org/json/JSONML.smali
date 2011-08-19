.class public Lorg/json/JSONML;
.super Ljava/lang/Object;
.source "JSONML.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;)Ljava/lang/Object;
    .locals 13
    .parameter "x"
    .parameter "arrayForm"
    .parameter "ja"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x5b

    const/16 v11, 0x2d

    .line 52
    const/4 v3, 0x0

    .line 54
    .local v3, closeTag:Ljava/lang/String;
    const/4 v5, 0x0

    .line 55
    .local v5, newja:Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 57
    .local v6, newjo:Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 66
    .local v7, tagName:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextContent()Ljava/lang/Object;

    move-result-object v8

    .line 67
    .local v8, token:Ljava/lang/Object;
    sget-object v9, Lorg/json/XML;->LT:Ljava/lang/Character;

    if-ne v8, v9, :cond_20

    .line 68
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v8

    .line 69
    instance-of v9, v8, Ljava/lang/Character;

    if-eqz v9, :cond_e

    .line 70
    sget-object v9, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v8, v9, :cond_3

    .line 74
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v8

    .line 75
    instance-of v9, v8, Ljava/lang/String;

    if-nez v9, :cond_1

    .line 76
    new-instance v9, Lorg/json/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Expected a closing name instead of \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 80
    :cond_1
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-eq v9, v10, :cond_2

    .line 81
    const-string v9, "Misshaped close tag"

    invoke-virtual {p0, v9}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v9

    throw v9

    :cond_2
    move-object v9, v8

    .line 213
    .end local v8           #token:Ljava/lang/Object;
    :goto_1
    return-object v9

    .line 84
    .restart local v8       #token:Ljava/lang/Object;
    :cond_3
    sget-object v9, Lorg/json/XML;->BANG:Ljava/lang/Character;

    if-ne v8, v9, :cond_c

    .line 88
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v2

    .line 89
    .local v2, c:C
    if-ne v2, v11, :cond_5

    .line 90
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v9

    if-ne v9, v11, :cond_4

    .line 91
    const-string v9, "-->"

    invoke-virtual {p0, v9}, Lorg/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    .line 93
    :cond_4
    invoke-virtual {p0}, Lorg/json/XMLTokener;->back()V

    goto :goto_0

    .line 94
    :cond_5
    if-ne v2, v12, :cond_7

    .line 95
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v8

    .line 96
    const-string v9, "CDATA"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v9

    if-ne v9, v12, :cond_6

    .line 97
    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextCDATA()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 101
    :cond_6
    const-string v9, "Expected \'CDATA[\'"

    invoke-virtual {p0, v9}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v9

    throw v9

    .line 104
    :cond_7
    const/4 v4, 0x1

    .line 106
    .local v4, i:I
    :cond_8
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextMeta()Ljava/lang/Object;

    move-result-object v8

    .line 107
    if-nez v8, :cond_9

    .line 108
    const-string v9, "Missing \'>\' after \'<!\'."

    invoke-virtual {p0, v9}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v9

    throw v9

    .line 109
    :cond_9
    sget-object v9, Lorg/json/XML;->LT:Ljava/lang/Character;

    if-ne v8, v9, :cond_b

    .line 110
    add-int/lit8 v4, v4, 0x1

    .line 114
    :cond_a
    :goto_2
    if-gtz v4, :cond_8

    goto/16 :goto_0

    .line 111
    :cond_b
    sget-object v9, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-ne v8, v9, :cond_a

    .line 112
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 116
    .end local v2           #c:C
    .end local v4           #i:I
    :cond_c
    sget-object v9, Lorg/json/XML;->QUEST:Ljava/lang/Character;

    if-ne v8, v9, :cond_d

    .line 120
    const-string v9, "?>"

    invoke-virtual {p0, v9}, Lorg/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 122
    :cond_d
    const-string v9, "Misshaped tag"

    invoke-virtual {p0, v9}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v9

    throw v9

    .line 128
    :cond_e
    instance-of v9, v8, Ljava/lang/String;

    if-nez v9, :cond_f

    .line 129
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad tagName \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v9

    throw v9

    .line 131
    :cond_f
    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 132
    new-instance v5, Lorg/json/JSONArray;

    .end local v5           #newja:Lorg/json/JSONArray;
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 133
    .restart local v5       #newja:Lorg/json/JSONArray;
    new-instance v6, Lorg/json/JSONObject;

    .end local v6           #newjo:Lorg/json/JSONObject;
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 134
    .restart local v6       #newjo:Lorg/json/JSONObject;
    if-eqz p1, :cond_11

    .line 135
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 136
    if-eqz p2, :cond_10

    .line 137
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 145
    :cond_10
    :goto_3
    const/4 v8, 0x0

    .line 147
    .end local v8           #token:Ljava/lang/Object;
    :goto_4
    if-nez v8, :cond_22

    .line 148
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v8

    .restart local v8       #token:Ljava/lang/Object;
    move-object v1, v8

    .line 150
    .end local v8           #token:Ljava/lang/Object;
    :goto_5
    if-nez v1, :cond_12

    .line 151
    const-string v9, "Misshaped tag"

    invoke-virtual {p0, v9}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v9

    throw v9

    .line 140
    .restart local v8       #token:Ljava/lang/Object;
    :cond_11
    const-string v9, "tagName"

    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    if-eqz p2, :cond_10

    .line 142
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 153
    .end local v8           #token:Ljava/lang/Object;
    :cond_12
    instance-of v9, v1, Ljava/lang/String;

    if-nez v9, :cond_14

    .line 175
    if-eqz p1, :cond_13

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v9

    if-lez v9, :cond_13

    .line 176
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 181
    :cond_13
    sget-object v9, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v1, v9, :cond_1b

    .line 182
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-eq v9, v10, :cond_19

    .line 183
    const-string v9, "Misshaped tag"

    invoke-virtual {p0, v9}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v9

    throw v9

    .line 159
    :cond_14
    check-cast v1, Ljava/lang/String;

    .line 160
    .local v1, attribute:Ljava/lang/String;
    if-nez p1, :cond_16

    const-string v9, "tagName"

    if-eq v1, v9, :cond_15

    const-string v9, "childNode"

    if-ne v1, v9, :cond_16

    .line 161
    :cond_15
    const-string v9, "Reserved attribute."

    invoke-virtual {p0, v9}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v9

    throw v9

    .line 163
    :cond_16
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v8

    .line 164
    .restart local v8       #token:Ljava/lang/Object;
    sget-object v9, Lorg/json/XML;->EQ:Ljava/lang/Character;

    if-ne v8, v9, :cond_18

    .line 165
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v8

    .line 166
    instance-of v9, v8, Ljava/lang/String;

    if-nez v9, :cond_17

    .line 167
    const-string v9, "Missing value"

    invoke-virtual {p0, v9}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v9

    throw v9

    .line 169
    :cond_17
    check-cast v8, Ljava/lang/String;

    .end local v8           #token:Ljava/lang/Object;
    invoke-static {v8}, Lorg/json/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v1, v9}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const/4 v8, 0x0

    .restart local v8       #token:Ljava/lang/Object;
    goto :goto_4

    .line 172
    :cond_18
    const-string v9, ""

    invoke-virtual {v6, v1, v9}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 185
    .end local v1           #attribute:Ljava/lang/String;
    .end local v8           #token:Ljava/lang/Object;
    :cond_19
    if-nez p2, :cond_0

    .line 186
    if-eqz p1, :cond_1a

    move-object v9, v5

    .line 187
    goto/16 :goto_1

    :cond_1a
    move-object v9, v6

    .line 189
    goto/16 :goto_1

    .line 196
    :cond_1b
    sget-object v9, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-eq v1, v9, :cond_1c

    .line 197
    const-string v9, "Misshaped tag"

    invoke-virtual {p0, v9}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v9

    throw v9

    .line 199
    :cond_1c
    invoke-static {p0, p1, v5}, Lorg/json/JSONML;->parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #closeTag:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 200
    .restart local v3       #closeTag:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 201
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1d

    .line 202
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Mismatched \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' and \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v9

    throw v9

    .line 205
    :cond_1d
    const/4 v7, 0x0

    .line 206
    if-nez p1, :cond_1e

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_1e

    .line 207
    const-string v9, "childNodes"

    invoke-virtual {v6, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    :cond_1e
    if-nez p2, :cond_0

    .line 210
    if-eqz p1, :cond_1f

    move-object v9, v5

    .line 211
    goto/16 :goto_1

    :cond_1f
    move-object v9, v6

    .line 213
    goto/16 :goto_1

    .line 220
    .restart local v8       #token:Ljava/lang/Object;
    :cond_20
    if-eqz p2, :cond_0

    .line 221
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_21

    check-cast v8, Ljava/lang/String;

    .end local v8           #token:Ljava/lang/Object;
    invoke-static {v8}, Lorg/json/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    :goto_6
    invoke-virtual {p2, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .restart local v8       #token:Ljava/lang/Object;
    :cond_21
    move-object v9, v8

    goto :goto_6

    .end local v8           #token:Ljava/lang/Object;
    :cond_22
    move-object v1, v8

    goto/16 :goto_5
.end method

.method public static toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Lorg/json/XMLTokener;

    invoke-direct {v0, p0}, Lorg/json/XMLTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/json/JSONML;->toJSONArray(Lorg/json/XMLTokener;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONArray(Lorg/json/XMLTokener;)Lorg/json/JSONArray;
    .locals 2
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 259
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/json/JSONML;->parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/json/JSONArray;

    return-object p0
.end method

.method public static toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 295
    new-instance v0, Lorg/json/XMLTokener;

    invoke-direct {v0, p0}, Lorg/json/XMLTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/json/JSONML;->toJSONObject(Lorg/json/XMLTokener;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONObject(Lorg/json/XMLTokener;)Lorg/json/JSONObject;
    .locals 2
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 277
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/json/JSONML;->parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/json/JSONObject;

    return-object p0
.end method

.method public static toString(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 15
    .parameter "ja"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v14, 0x3c

    const/16 v13, 0x2f

    const/16 v12, 0x22

    const/16 v11, 0x3e

    .line 312
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 318
    .local v7, sb:Ljava/lang/StringBuffer;
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 319
    .local v8, tagName:Ljava/lang/String;
    invoke-static {v8}, Lorg/json/XML;->noSpace(Ljava/lang/String;)V

    .line 320
    invoke-static {v8}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 321
    invoke-virtual {v7, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 322
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v6

    .line 325
    .local v6, object:Ljava/lang/Object;
    instance-of v10, v6, Lorg/json/JSONObject;

    if-eqz v10, :cond_1

    .line 326
    const/4 v1, 0x2

    .line 327
    .local v1, i:I
    move-object v0, v6

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    .line 331
    .local v2, jo:Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 332
    .local v4, keys:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 333
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, key:Ljava/lang/String;
    invoke-static {v3}, Lorg/json/XML;->noSpace(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 336
    .local v9, value:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 337
    const/16 v10, 0x20

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 338
    invoke-static {v3}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    const/16 v10, 0x3d

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 340
    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 341
    invoke-static {v9}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 346
    .end local v1           #i:I
    .end local v2           #jo:Lorg/json/JSONObject;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #keys:Ljava/util/Iterator;
    .end local v9           #value:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    .line 351
    .restart local v1       #i:I
    :cond_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 352
    .local v5, length:I
    if-lt v1, v5, :cond_3

    .line 353
    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 354
    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 375
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 356
    :cond_3
    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 358
    :cond_4
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 359
    add-int/lit8 v1, v1, 0x1

    .line 360
    if-eqz v6, :cond_5

    .line 361
    instance-of v10, v6, Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 362
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    :cond_5
    :goto_2
    if-lt v1, v5, :cond_4

    .line 370
    invoke-virtual {v7, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 371
    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 372
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 363
    :cond_6
    instance-of v10, v6, Lorg/json/JSONObject;

    if-eqz v10, :cond_7

    .line 364
    move-object v0, v6

    check-cast v0, Lorg/json/JSONObject;

    move-object v10, v0

    invoke-static {v10}, Lorg/json/JSONML;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 365
    :cond_7
    instance-of v10, v6, Lorg/json/JSONArray;

    if-eqz v10, :cond_5

    .line 366
    move-object v0, v6

    check-cast v0, Lorg/json/JSONArray;

    move-object v10, v0

    invoke-static {v10}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public static toString(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 14
    .parameter "jo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x3c

    const/16 v12, 0x2f

    const/16 v11, 0x22

    const/16 v10, 0x3e

    .line 388
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 400
    .local v6, sb:Ljava/lang/StringBuffer;
    const-string v9, "tagName"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 401
    .local v7, tagName:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 402
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 454
    :goto_0
    return-object v9

    .line 404
    :cond_0
    invoke-static {v7}, Lorg/json/XML;->noSpace(Ljava/lang/String;)V

    .line 405
    invoke-static {v7}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 406
    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 407
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 412
    .local v3, keys:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 413
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, key:Ljava/lang/String;
    const-string v9, "tagName"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "childNodes"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 415
    invoke-static {v2}, Lorg/json/XML;->noSpace(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 417
    .local v8, value:Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 418
    const/16 v9, 0x20

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 419
    invoke-static {v2}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    const/16 v9, 0x3d

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 421
    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 422
    invoke-static {v8}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 430
    .end local v2           #key:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_2
    const-string v9, "childNodes"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 431
    .local v1, ja:Lorg/json/JSONArray;
    if-nez v1, :cond_3

    .line 432
    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 433
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 454
    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 435
    :cond_3
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 436
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 437
    .local v4, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-ge v0, v4, :cond_7

    .line 438
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 439
    .local v5, object:Ljava/lang/Object;
    if-eqz v5, :cond_4

    .line 440
    instance-of v9, v5, Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 441
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    .end local v5           #object:Ljava/lang/Object;
    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 442
    .restart local v5       #object:Ljava/lang/Object;
    :cond_5
    instance-of v9, v5, Lorg/json/JSONObject;

    if-eqz v9, :cond_6

    .line 443
    check-cast v5, Lorg/json/JSONObject;

    .end local v5           #object:Ljava/lang/Object;
    invoke-static {v5}, Lorg/json/JSONML;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 444
    .restart local v5       #object:Ljava/lang/Object;
    :cond_6
    instance-of v9, v5, Lorg/json/JSONArray;

    if-eqz v9, :cond_4

    .line 445
    check-cast v5, Lorg/json/JSONArray;

    .end local v5           #object:Ljava/lang/Object;
    invoke-static {v5}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 449
    :cond_7
    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 450
    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 451
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
