.class public Ltwitter4j/internal/org/json/JSONArray;
.super Ljava/lang/Object;
.source "JSONArray.java"


# instance fields
.field private myArrayList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0}, Ltwitter4j/internal/org/json/JSONArray;-><init>()V

    .line 170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 172
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 173
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ltwitter4j/internal/org/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    .end local v0           #i:I
    .end local v1           #length:I
    :cond_0
    new-instance v2, Ltwitter4j/internal/org/json/JSONException;

    const-string v3, "JSONArray initial value should be a string or collection or array."

    invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    .restart local v0       #i:I
    .restart local v1       #length:I
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Ltwitter4j/internal/org/json/JSONTokener;

    invoke-direct {v0, p1}, Ltwitter4j/internal/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ltwitter4j/internal/org/json/JSONTokener;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 3
    .parameter "collection"

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    .line 155
    if-eqz p1, :cond_0

    .line 156
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 157
    .local v0, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ltwitter4j/internal/org/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    .end local v0           #iter:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ltwitter4j/internal/org/json/JSONTokener;)V
    .locals 3
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x5d

    .line 105
    invoke-direct {p0}, Ltwitter4j/internal/org/json/JSONArray;-><init>()V

    .line 106
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    .line 107
    const-string v0, "A JSONArray text must start with \'[\'"

    invoke-virtual {p1, v0}, Ltwitter4j/internal/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v0

    throw v0

    .line 109
    :cond_0
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C

    move-result v0

    if-eq v0, v2, :cond_2

    .line 110
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->back()V

    .line 112
    :goto_0
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_1

    .line 113
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->back()V

    .line 114
    iget-object v0, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    sget-object v1, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :goto_1
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 130
    const-string v0, "Expected a \',\' or \']\'"

    invoke-virtual {p1, v0}, Ltwitter4j/internal/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v0

    throw v0

    .line 116
    :cond_1
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->back()V

    .line 117
    iget-object v0, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    :sswitch_0
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C

    move-result v0

    if-ne v0, v2, :cond_3

    .line 134
    :cond_2
    :sswitch_1
    return-void

    .line 125
    :cond_3
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->back()V

    goto :goto_0

    .line 119
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x5d -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 4
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 191
    .local v0, object:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 192
    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_0
    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 209
    .local v1, object:Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    :cond_0
    const/4 v2, 0x0

    .line 216
    .end local v1           #object:Ljava/lang/Object;
    :goto_0
    return v2

    .line 213
    .restart local v1       #object:Ljava/lang/Object;
    :cond_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    check-cast v1, Ljava/lang/String;

    .end local v1           #object:Ljava/lang/Object;
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 216
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 218
    :cond_3
    new-instance v2, Ltwitter4j/internal/org/json/JSONException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "JSONArray["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] is not a boolean."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDouble(I)D
    .locals 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 233
    .local v1, object:Ljava/lang/Object;
    :try_start_0
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Number;

    .end local v1           #object:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    :goto_0
    return-wide v2

    .restart local v1       #object:Ljava/lang/Object;
    :cond_0
    check-cast v1, Ljava/lang/String;

    .end local v1           #object:Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 236
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 237
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ltwitter4j/internal/org/json/JSONException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "JSONArray["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] is not a number."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getInt(I)I
    .locals 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 253
    .local v1, object:Ljava/lang/Object;
    :try_start_0
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Number;

    .end local v1           #object:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    :goto_0
    return v2

    .restart local v1       #object:Ljava/lang/Object;
    :cond_0
    check-cast v1, Ljava/lang/String;

    .end local v1           #object:Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 256
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 257
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ltwitter4j/internal/org/json/JSONException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "JSONArray["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] is not a number."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getJSONArray(I)Ltwitter4j/internal/org/json/JSONArray;
    .locals 4
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 272
    .local v0, object:Ljava/lang/Object;
    instance-of v1, v0, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v1, :cond_0

    .line 273
    check-cast v0, Ltwitter4j/internal/org/json/JSONArray;

    .end local v0           #object:Ljava/lang/Object;
    return-object v0

    .line 275
    .restart local v0       #object:Ljava/lang/Object;
    :cond_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;
    .locals 4
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 289
    .local v0, object:Ljava/lang/Object;
    instance-of v1, v0, Ltwitter4j/internal/org/json/JSONObject;

    if-eqz v1, :cond_0

    .line 290
    check-cast v0, Ltwitter4j/internal/org/json/JSONObject;

    .end local v0           #object:Ljava/lang/Object;
    return-object v0

    .line 292
    .restart local v0       #object:Ljava/lang/Object;
    :cond_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] is not a JSONObject."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(I)J
    .locals 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 308
    .local v1, object:Ljava/lang/Object;
    :try_start_0
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Number;

    .end local v1           #object:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    .restart local v1       #object:Ljava/lang/Object;
    :cond_0
    check-cast v1, Ljava/lang/String;

    .end local v1           #object:Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 311
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 312
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ltwitter4j/internal/org/json/JSONException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "JSONArray["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] is not a number."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 326
    .local v0, object:Ljava/lang/Object;
    sget-object v1, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 336
    sget-object v0, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public join(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "separator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v1

    .line 350
    .local v1, len:I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 352
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 353
    if-lez v0, :cond_0

    .line 354
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    :cond_0
    iget-object v3, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ltwitter4j/internal/org/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public length()I
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public opt(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 379
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public optBoolean(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 393
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->optBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public optBoolean(IZ)Z
    .locals 2
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 408
    :try_start_0
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 410
    :goto_0
    return v1

    .line 409
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, p2

    .line 410
    goto :goto_0
.end method

.method public optDouble(I)D
    .locals 2
    .parameter "index"

    .prologue
    .line 424
    const-wide/high16 v0, 0x7ff8

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/internal/org/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(ID)D
    .locals 3
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 439
    :try_start_0
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->getDouble(I)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 441
    :goto_0
    return-wide v1

    .line 440
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-wide v1, p2

    .line 441
    goto :goto_0
.end method

.method public optInt(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 455
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->optInt(II)I

    move-result v0

    return v0
.end method

.method public optInt(II)I
    .locals 2
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 469
    :try_start_0
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 471
    :goto_0
    return v1

    .line 470
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, p2

    .line 471
    goto :goto_0
.end method

.method public optJSONArray(I)Ltwitter4j/internal/org/json/JSONArray;
    .locals 2
    .parameter "index"

    .prologue
    .line 483
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 484
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v1, :cond_0

    check-cast v0, Ltwitter4j/internal/org/json/JSONArray;

    .end local v0           #o:Ljava/lang/Object;
    move-object v1, v0

    :goto_0
    return-object v1

    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public optJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;
    .locals 2
    .parameter "index"

    .prologue
    .line 497
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 498
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Ltwitter4j/internal/org/json/JSONObject;

    if-eqz v1, :cond_0

    check-cast v0, Ltwitter4j/internal/org/json/JSONObject;

    .end local v0           #o:Ljava/lang/Object;
    move-object v1, v0

    :goto_0
    return-object v1

    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public optLong(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 511
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/internal/org/json/JSONArray;->optLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(IJ)J
    .locals 3
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 525
    :try_start_0
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 527
    :goto_0
    return-wide v1

    .line 526
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-wide v1, p2

    .line 527
    goto :goto_0
.end method

.method public optString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 541
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 554
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 555
    .local v0, object:Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public put(D)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 591
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    .line 592
    .local v0, d:Ljava/lang/Double;
    invoke-static {v0}, Ltwitter4j/internal/org/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 593
    invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 594
    return-object p0
.end method

.method public put(I)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .parameter "value"

    .prologue
    .line 605
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 606
    return-object p0
.end method

.method public put(ID)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 688
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 689
    return-object p0
.end method

.method public put(II)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 703
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 704
    return-object p0
.end method

.method public put(IJ)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 718
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 719
    return-object p0
.end method

.method public put(ILjava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;
    .locals 3
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 751
    invoke-static {p2}, Ltwitter4j/internal/org/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 752
    if-gez p1, :cond_0

    .line 753
    new-instance v0, Ltwitter4j/internal/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 755
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 756
    iget-object v0, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 763
    :goto_0
    return-object p0

    .line 758
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 759
    sget-object v0, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    goto :goto_1

    .line 761
    :cond_2
    invoke-virtual {p0, p2}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    goto :goto_0
.end method

.method public put(ILjava/util/Collection;)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 672
    new-instance v0, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v0, p2}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 673
    return-object p0
.end method

.method public put(ILjava/util/Map;)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 733
    new-instance v0, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v0, p2}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 734
    return-object p0
.end method

.method public put(IZ)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 657
    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 658
    return-object p0

    .line 657
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public put(J)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .parameter "value"

    .prologue
    .line 617
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 618
    return-object p0
.end method

.method public put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .parameter "value"

    .prologue
    .line 642
    iget-object v0, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    return-object p0
.end method

.method public put(Ljava/util/Collection;)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .parameter "value"

    .prologue
    .line 578
    new-instance v0, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v0, p1}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 579
    return-object p0
.end method

.method public put(Ljava/util/Map;)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .parameter "value"

    .prologue
    .line 629
    new-instance v0, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v0, p1}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 630
    return-object p0
.end method

.method public put(Z)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .parameter "value"

    .prologue
    .line 566
    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 567
    return-object p0

    .line 566
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 774
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 775
    .local v0, o:Ljava/lang/Object;
    iget-object v1, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 776
    return-object v0
.end method

.method public toJSONObject(Ltwitter4j/internal/org/json/JSONArray;)Ltwitter4j/internal/org/json/JSONObject;
    .locals 4
    .parameter "names"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 790
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 791
    :cond_0
    const/4 v2, 0x0

    .line 797
    :goto_0
    return-object v2

    .line 793
    :cond_1
    new-instance v1, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v1}, Ltwitter4j/internal/org/json/JSONObject;-><init>()V

    .line 794
    .local v1, jo:Ltwitter4j/internal/org/json/JSONObject;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 795
    invoke-virtual {p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 794
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 797
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 814
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 816
    :goto_0
    return-object v1

    .line 815
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 816
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .parameter "indentFactor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 833
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(II)Ljava/lang/String;
    .locals 8
    .parameter "indentFactor"
    .parameter "indent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x20

    const/16 v6, 0xa

    .line 848
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v2

    .line 849
    .local v2, len:I
    if-nez v2, :cond_0

    .line 850
    const-string v5, "[]"

    .line 876
    :goto_0
    return-object v5

    .line 853
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 854
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 855
    iget-object v5, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1, p2}, Ltwitter4j/internal/org/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 875
    :cond_1
    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 876
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 858
    :cond_2
    add-int v3, p2, p1

    .line 859
    .local v3, newindent:I
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 860
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_5

    .line 861
    if-lez v0, :cond_3

    .line 862
    const-string v5, ",\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 864
    :cond_3
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v3, :cond_4

    .line 865
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 864
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 867
    :cond_4
    iget-object v5, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1, v3}, Ltwitter4j/internal/org/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 860
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 870
    .end local v1           #j:I
    :cond_5
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 871
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p2, :cond_1

    .line 872
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 871
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public write(Ljava/io/Writer;)Ljava/io/Writer;
    .locals 6
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 891
    const/4 v0, 0x0

    .line 892
    .local v0, b:Z
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v3

    .line 894
    .local v3, len:I
    const/16 v5, 0x5b

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 896
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 897
    if-eqz v0, :cond_0

    .line 898
    const/16 v5, 0x2c

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 900
    :cond_0
    iget-object v5, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 901
    .local v4, v:Ljava/lang/Object;
    instance-of v5, v4, Ltwitter4j/internal/org/json/JSONObject;

    if-eqz v5, :cond_1

    .line 902
    check-cast v4, Ltwitter4j/internal/org/json/JSONObject;

    .end local v4           #v:Ljava/lang/Object;
    invoke-virtual {v4, p1}, Ltwitter4j/internal/org/json/JSONObject;->write(Ljava/io/Writer;)Ljava/io/Writer;

    .line 908
    :goto_1
    const/4 v0, 0x1

    .line 896
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 903
    .restart local v4       #v:Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v5, :cond_2

    .line 904
    check-cast v4, Ltwitter4j/internal/org/json/JSONArray;

    .end local v4           #v:Ljava/lang/Object;
    invoke-virtual {v4, p1}, Ltwitter4j/internal/org/json/JSONArray;->write(Ljava/io/Writer;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 912
    .end local v2           #i:I
    .end local v3           #len:I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 913
    .local v1, e:Ljava/io/IOException;
    new-instance v5, Ltwitter4j/internal/org/json/JSONException;

    invoke-direct {v5, v1}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 906
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #i:I
    .restart local v3       #len:I
    .restart local v4       #v:Ljava/lang/Object;
    :cond_2
    :try_start_1
    invoke-static {v4}, Ltwitter4j/internal/org/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 910
    .end local v4           #v:Ljava/lang/Object;
    :cond_3
    const/16 v5, 0x5d

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 911
    return-object p1
.end method
