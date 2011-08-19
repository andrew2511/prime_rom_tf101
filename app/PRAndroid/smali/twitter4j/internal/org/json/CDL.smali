.class public Ltwitter4j/internal/org/json/CDL;
.super Ljava/lang/Object;
.source "CDL.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getValue(Ltwitter4j/internal/org/json/JSONTokener;)Ljava/lang/String;
    .locals 5
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 60
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONTokener;->next()C

    move-result v0

    .line 61
    .local v0, c:C
    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    .line 62
    sparse-switch v0, :sswitch_data_0

    .line 84
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONTokener;->back()V

    .line 85
    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ltwitter4j/internal/org/json/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    .line 64
    :sswitch_0
    const/4 v3, 0x0

    goto :goto_0

    .line 67
    :sswitch_1
    move v1, v0

    .line 68
    .local v1, q:C
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    .local v2, sb:Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONTokener;->next()C

    move-result v0

    .line 71
    if-ne v0, v1, :cond_1

    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 74
    :cond_1
    if-eqz v0, :cond_2

    const/16 v3, 0xa

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd

    if-ne v0, v3, :cond_3

    .line 75
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Missing close quote \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ltwitter4j/internal/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v3

    throw v3

    .line 77
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 81
    .end local v1           #q:C
    .end local v2           #sb:Ljava/lang/StringBuffer;
    :sswitch_2
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONTokener;->back()V

    .line 82
    const-string v3, ""

    goto :goto_0

    .line 62
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x22 -> :sswitch_1
        0x27 -> :sswitch_1
        0x2c -> :sswitch_2
    .end sparse-switch
.end method

.method public static rowToJSONArray(Ltwitter4j/internal/org/json/JSONTokener;)Ltwitter4j/internal/org/json/JSONArray;
    .locals 5
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2c

    .line 96
    new-instance v1, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v1}, Ltwitter4j/internal/org/json/JSONArray;-><init>()V

    .line 98
    .local v1, ja:Ltwitter4j/internal/org/json/JSONArray;
    :cond_0
    invoke-static {p0}, Ltwitter4j/internal/org/json/CDL;->getValue(Ltwitter4j/internal/org/json/JSONTokener;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, value:Ljava/lang/String;
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONTokener;->next()C

    move-result v0

    .line 100
    .local v0, c:C
    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    if-eq v0, v4, :cond_2

    .line 102
    :cond_1
    const/4 v3, 0x0

    .line 111
    :goto_0
    return-object v3

    .line 104
    :cond_2
    invoke-virtual {v1, v2}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 106
    :goto_1
    if-eq v0, v4, :cond_0

    .line 109
    const/16 v3, 0x20

    if-eq v0, v3, :cond_5

    .line 110
    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    const/16 v3, 0xd

    if-eq v0, v3, :cond_3

    if-nez v0, :cond_4

    :cond_3
    move-object v3, v1

    .line 111
    goto :goto_0

    .line 113
    :cond_4
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Bad character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\' ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ltwitter4j/internal/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v3

    throw v3

    .line 116
    :cond_5
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONTokener;->next()C

    move-result v0

    goto :goto_1
.end method

.method public static rowToJSONObject(Ltwitter4j/internal/org/json/JSONArray;Ltwitter4j/internal/org/json/JSONTokener;)Ltwitter4j/internal/org/json/JSONObject;
    .locals 2
    .parameter "names"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {p1}, Ltwitter4j/internal/org/json/CDL;->rowToJSONArray(Ltwitter4j/internal/org/json/JSONTokener;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    .line 134
    .local v0, ja:Ltwitter4j/internal/org/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ltwitter4j/internal/org/json/JSONArray;->toJSONObject(Ltwitter4j/internal/org/json/JSONArray;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static rowToString(Ltwitter4j/internal/org/json/JSONArray;)Ljava/lang/String;
    .locals 12
    .parameter "ja"

    .prologue
    const/16 v11, 0x2c

    const/16 v10, 0xa

    const/4 v9, 0x0

    const/16 v8, 0x22

    .line 145
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 146
    .local v5, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_6

    .line 147
    if-lez v1, :cond_0

    .line 148
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 150
    :cond_0
    invoke-virtual {p0, v1}, Ltwitter4j/internal/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    .line 151
    .local v4, object:Ljava/lang/Object;
    if-eqz v4, :cond_4

    .line 152
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, string:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_1

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_1

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_1

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_1

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_5

    .line 156
    :cond_1
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 158
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 159
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 160
    .local v0, c:C
    const/16 v7, 0x20

    if-lt v0, v7, :cond_2

    if-eq v0, v8, :cond_2

    .line 161
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 158
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 164
    .end local v0           #c:C
    :cond_3
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    .end local v2           #j:I
    .end local v3           #length:I
    .end local v6           #string:Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .restart local v6       #string:Ljava/lang/String;
    :cond_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 170
    .end local v4           #object:Ljava/lang/Object;
    .end local v6           #string:Ljava/lang/String;
    :cond_6
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 171
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static toJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Ltwitter4j/internal/org/json/JSONTokener;

    invoke-direct {v0, p0}, Ltwitter4j/internal/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ltwitter4j/internal/org/json/CDL;->toJSONArray(Ltwitter4j/internal/org/json/JSONTokener;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONArray(Ltwitter4j/internal/org/json/JSONArray;Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .parameter "names"
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Ltwitter4j/internal/org/json/JSONTokener;

    invoke-direct {v0, p1}, Ltwitter4j/internal/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Ltwitter4j/internal/org/json/CDL;->toJSONArray(Ltwitter4j/internal/org/json/JSONArray;Ltwitter4j/internal/org/json/JSONTokener;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONArray(Ltwitter4j/internal/org/json/JSONArray;Ltwitter4j/internal/org/json/JSONTokener;)Ltwitter4j/internal/org/json/JSONArray;
    .locals 4
    .parameter "names"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 219
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v3

    .line 233
    :goto_0
    return-object v2

    .line 222
    :cond_1
    new-instance v0, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v0}, Ltwitter4j/internal/org/json/JSONArray;-><init>()V

    .line 224
    .local v0, ja:Ltwitter4j/internal/org/json/JSONArray;
    :goto_1
    invoke-static {p0, p1}, Ltwitter4j/internal/org/json/CDL;->rowToJSONObject(Ltwitter4j/internal/org/json/JSONArray;Ltwitter4j/internal/org/json/JSONTokener;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    .line 225
    .local v1, jo:Ltwitter4j/internal/org/json/JSONObject;
    if-nez v1, :cond_2

    .line 230
    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_3

    move-object v2, v3

    .line 231
    goto :goto_0

    .line 228
    :cond_2
    invoke-virtual {v0, v1}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    goto :goto_1

    :cond_3
    move-object v2, v0

    .line 233
    goto :goto_0
.end method

.method public static toJSONArray(Ltwitter4j/internal/org/json/JSONTokener;)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-static {p0}, Ltwitter4j/internal/org/json/CDL;->rowToJSONArray(Ltwitter4j/internal/org/json/JSONTokener;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/internal/org/json/CDL;->toJSONArray(Ltwitter4j/internal/org/json/JSONArray;Ltwitter4j/internal/org/json/JSONTokener;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ltwitter4j/internal/org/json/JSONArray;)Ljava/lang/String;
    .locals 4
    .parameter "ja"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 246
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONArray;->optJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    .line 247
    .local v0, jo:Ltwitter4j/internal/org/json/JSONObject;
    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONObject;->names()Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v1

    .line 249
    .local v1, names:Ltwitter4j/internal/org/json/JSONArray;
    if-eqz v1, :cond_0

    .line 250
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v1}, Ltwitter4j/internal/org/json/CDL;->rowToString(Ltwitter4j/internal/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v1, p0}, Ltwitter4j/internal/org/json/CDL;->toString(Ltwitter4j/internal/org/json/JSONArray;Ltwitter4j/internal/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 253
    .end local v1           #names:Ltwitter4j/internal/org/json/JSONArray;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static toString(Ltwitter4j/internal/org/json/JSONArray;Ltwitter4j/internal/org/json/JSONArray;)Ljava/lang/String;
    .locals 4
    .parameter "names"
    .parameter "ja"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 267
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 268
    :cond_0
    const/4 v3, 0x0

    .line 277
    :goto_0
    return-object v3

    .line 270
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 271
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 272
    invoke-virtual {p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->optJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    .line 273
    .local v1, jo:Ltwitter4j/internal/org/json/JSONObject;
    if-eqz v1, :cond_2

    .line 274
    invoke-virtual {v1, p0}, Ltwitter4j/internal/org/json/JSONObject;->toJSONArray(Ltwitter4j/internal/org/json/JSONArray;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Ltwitter4j/internal/org/json/CDL;->rowToString(Ltwitter4j/internal/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 277
    .end local v1           #jo:Ltwitter4j/internal/org/json/JSONObject;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
