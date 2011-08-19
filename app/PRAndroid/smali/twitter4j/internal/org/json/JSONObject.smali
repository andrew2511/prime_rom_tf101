.class public Ltwitter4j/internal/org/json/JSONObject;
.super Ljava/lang/Object;
.source "JSONObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/internal/org/json/JSONObject$1;,
        Ltwitter4j/internal/org/json/JSONObject$Null;
    }
.end annotation


# static fields
.field public static final NULL:Ljava/lang/Object;


# instance fields
.field private map:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ltwitter4j/internal/org/json/JSONObject$Null;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltwitter4j/internal/org/json/JSONObject$Null;-><init>(Ltwitter4j/internal/org/json/JSONObject$1;)V

    sput-object v0, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "bean"

    .prologue
    .line 272
    invoke-direct {p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>()V

    .line 273
    invoke-direct {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->populateMap(Ljava/lang/Object;)V

    .line 274
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 4
    .parameter "object"
    .parameter "names"

    .prologue
    .line 289
    invoke-direct {p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>()V

    .line 290
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 291
    .local v0, c:Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 292
    aget-object v2, p2, v1

    .line 294
    .local v2, name:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ltwitter4j/internal/org/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    return-void

    .line 295
    .restart local v2       #name:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1
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
    .line 311
    new-instance v0, Ltwitter4j/internal/org/json/JSONTokener;

    invoke-direct {v0, p1}, Ltwitter4j/internal/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ltwitter4j/internal/org/json/JSONTokener;)V

    .line 312
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 12
    .parameter "baseName"
    .parameter "locale"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-direct {p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>()V

    .line 323
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-static {p1, p2, v10}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v7

    .line 328
    .local v7, r:Ljava/util/ResourceBundle;
    invoke-virtual {v7}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v3

    .line 329
    .local v3, keys:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 330
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 331
    .local v2, key:Ljava/lang/Object;
    instance-of v10, v2, Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 337
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    const-string v11, "\\."

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 338
    .local v6, path:[Ljava/lang/String;
    array-length v10, v6

    const/4 v11, 0x1

    sub-int v4, v10, v11

    .line 339
    .local v4, last:I
    move-object v9, p0

    .line 340
    .local v9, target:Ltwitter4j/internal/org/json/JSONObject;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 341
    aget-object v8, v6, v1

    .line 342
    .local v8, segment:Ljava/lang/String;
    invoke-virtual {v9, v8}, Ltwitter4j/internal/org/json/JSONObject;->optJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v5

    .line 343
    .local v5, nextTarget:Ltwitter4j/internal/org/json/JSONObject;
    if-nez v5, :cond_1

    .line 344
    new-instance v5, Ltwitter4j/internal/org/json/JSONObject;

    .end local v5           #nextTarget:Ltwitter4j/internal/org/json/JSONObject;
    invoke-direct {v5}, Ltwitter4j/internal/org/json/JSONObject;-><init>()V

    .line 345
    .restart local v5       #nextTarget:Ltwitter4j/internal/org/json/JSONObject;
    invoke-virtual {v9, v8, v5}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 347
    :cond_1
    move-object v9, v5

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 349
    .end local v5           #nextTarget:Ltwitter4j/internal/org/json/JSONObject;
    .end local v8           #segment:Ljava/lang/String;
    :cond_2
    aget-object v10, v6, v4

    check-cast v2, Ljava/lang/String;

    .end local v2           #key:Ljava/lang/Object;
    invoke-virtual {v7, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    goto :goto_0

    .line 352
    .end local v1           #i:I
    .end local v4           #last:I
    .end local v6           #path:[Ljava/lang/String;
    .end local v9           #target:Ltwitter4j/internal/org/json/JSONObject;
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 6
    .parameter "map"

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    .line 239
    if-eqz p1, :cond_1

    .line 240
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 241
    .local v1, i:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 243
    .local v0, e:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 244
    .local v2, value:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 245
    iget-object v3, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2}, Ltwitter4j/internal/org/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 249
    .end local v0           #e:Ljava/util/Map$Entry;
    .end local v1           #i:Ljava/util/Iterator;
    .end local v2           #value:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public constructor <init>(Ltwitter4j/internal/org/json/JSONObject;[Ljava/lang/String;)V
    .locals 3
    .parameter "jo"
    .parameter "names"

    .prologue
    .line 163
    invoke-direct {p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>()V

    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 166
    :try_start_0
    aget-object v1, p2, v0

    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ltwitter4j/internal/org/json/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    return-void

    .line 167
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Ltwitter4j/internal/org/json/JSONTokener;)V
    .locals 4
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-direct {p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>()V

    .line 184
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C

    move-result v2

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_1

    .line 185
    const-string v2, "A JSONObject text must begin with \'{\'"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v2

    throw v2

    .line 219
    .local v0, c:C
    .local v1, key:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->back()V

    .line 188
    .end local v0           #c:C
    .end local v1           #key:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C

    move-result v0

    .line 189
    .restart local v0       #c:C
    sparse-switch v0, :sswitch_data_0

    .line 195
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->back()V

    .line 196
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    .restart local v1       #key:Ljava/lang/String;
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C

    move-result v0

    .line 202
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_3

    .line 203
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->next()C

    move-result v2

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_2

    .line 204
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->back()V

    .line 209
    :cond_2
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ltwitter4j/internal/org/json/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 213
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C

    move-result v2

    sparse-switch v2, :sswitch_data_1

    .line 224
    const-string v2, "Expected a \',\' or \'}\'"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v2

    throw v2

    .line 191
    .end local v1           #key:Ljava/lang/String;
    :sswitch_0
    const-string v2, "A JSONObject text must end with \'}\'"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v2

    throw v2

    .line 206
    .restart local v1       #key:Ljava/lang/String;
    :cond_3
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_2

    .line 207
    const-string v2, "Expected a \':\' after a key"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v2

    throw v2

    .line 216
    :sswitch_1
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C

    move-result v2

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_0

    .line 222
    .end local v1           #key:Ljava/lang/String;
    :sswitch_2
    return-void

    .line 189
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7d -> :sswitch_2
    .end sparse-switch

    .line 213
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_1
        0x3b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method public static doubleToString(D)Ljava/lang/String;
    .locals 4
    .parameter "d"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 416
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    :cond_0
    const-string v1, "null"

    .line 432
    :goto_0
    return-object v1

    .line 422
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, string:Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_3

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_3

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_3

    .line 425
    :goto_1
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 426
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 428
    :cond_2
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 429
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v1, v0

    .line 432
    goto :goto_0
.end method

.method public static getNames(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 6
    .parameter "object"

    .prologue
    const/4 v5, 0x0

    .line 605
    if-nez p0, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-object v5

    .line 608
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 609
    .local v2, klass:Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 610
    .local v0, fields:[Ljava/lang/reflect/Field;
    array-length v3, v0

    .line 611
    .local v3, length:I
    if-eqz v3, :cond_0

    .line 614
    new-array v4, v3, [Ljava/lang/String;

    .line 615
    .local v4, names:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 616
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v4

    .line 618
    goto :goto_0
.end method

.method public static getNames(Ltwitter4j/internal/org/json/JSONObject;)[Ljava/lang/String;
    .locals 5
    .parameter "jo"

    .prologue
    .line 584
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONObject;->length()I

    move-result v2

    .line 585
    .local v2, length:I
    if-nez v2, :cond_0

    .line 586
    const/4 v4, 0x0

    .line 595
    .end local p0
    :goto_0
    return-object v4

    .line 588
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 589
    .local v1, iterator:Ljava/util/Iterator;
    new-array v3, v2, [Ljava/lang/String;

    .line 590
    .local v3, names:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 591
    .end local p0
    .local v0, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 592
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v3, v0

    .line 593
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 595
    goto :goto_0
.end method

.method public static numberToString(Ljava/lang/Number;)Ljava/lang/String;
    .locals 4
    .parameter "number"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 728
    if-nez p0, :cond_0

    .line 729
    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    const-string v2, "Null pointer"

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 731
    :cond_0
    invoke-static {p0}, Ltwitter4j/internal/org/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 735
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, string:Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_2

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    .line 738
    :goto_0
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 739
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 741
    :cond_1
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 742
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 745
    :cond_2
    return-object v0
.end method

.method private populateMap(Ljava/lang/Object;)V
    .locals 12
    .parameter "bean"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    .line 945
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 949
    .local v3, klass:Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    if-eqz v8, :cond_4

    move v1, v11

    .line 951
    .local v1, includeSuperClass:Z
    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    move-object v5, v8

    .line 953
    .local v5, methods:[Ljava/lang/reflect/Method;
    :goto_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v8, v5

    if-ge v0, v8, :cond_9

    .line 955
    :try_start_0
    aget-object v4, v5, v0

    .line 956
    .local v4, method:Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 957
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 958
    .local v6, name:Ljava/lang/String;
    const-string v2, ""

    .line 959
    .local v2, key:Ljava/lang/String;
    const-string v8, "get"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 960
    const-string v8, "getClass"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "getDeclaringClass"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 962
    :cond_0
    const-string v2, ""

    .line 969
    :cond_1
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_3

    .line 972
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v11, :cond_8

    .line 973
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 979
    :cond_2
    :goto_4
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 980
    .local v7, result:Ljava/lang/Object;
    if-eqz v7, :cond_3

    .line 981
    iget-object v8, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-static {v7}, Ltwitter4j/internal/org/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #result:Ljava/lang/Object;
    :cond_3
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0           #i:I
    .end local v1           #includeSuperClass:Z
    .end local v5           #methods:[Ljava/lang/reflect/Method;
    :cond_4
    move v1, v9

    .line 949
    goto :goto_0

    .line 951
    .restart local v1       #includeSuperClass:Z
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    move-object v5, v8

    goto :goto_1

    .line 964
    .restart local v0       #i:I
    .restart local v2       #key:Ljava/lang/String;
    .restart local v4       #method:Ljava/lang/reflect/Method;
    .restart local v5       #methods:[Ljava/lang/reflect/Method;
    .restart local v6       #name:Ljava/lang/String;
    :cond_6
    const/4 v8, 0x3

    :try_start_1
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 966
    :cond_7
    const-string v8, "is"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 967
    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 974
    :cond_8
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-nez v8, :cond_2

    .line 975
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_4

    .line 988
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v6           #name:Ljava/lang/String;
    :cond_9
    return-void

    .line 985
    :catch_0
    move-exception v8

    goto :goto_5
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "string"

    .prologue
    const/16 v10, 0x5c

    const/16 v9, 0x22

    .line 1147
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 1148
    :cond_0
    const-string v6, "\"\""

    .line 1200
    :goto_0
    return-object v6

    .line 1152
    :cond_1
    const/4 v1, 0x0

    .line 1155
    .local v1, c:C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 1156
    .local v4, len:I
    new-instance v5, Ljava/lang/StringBuffer;

    add-int/lit8 v6, v4, 0x4

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1158
    .local v5, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1159
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_6

    .line 1160
    move v0, v1

    .line 1161
    .local v0, b:C
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1162
    sparse-switch v1, :sswitch_data_0

    .line 1190
    const/16 v6, 0x20

    if-lt v1, v6, :cond_3

    const/16 v6, 0x80

    if-lt v1, v6, :cond_2

    const/16 v6, 0xa0

    if-lt v1, v6, :cond_3

    :cond_2
    const/16 v6, 0x2000

    if-lt v1, v6, :cond_5

    const/16 v6, 0x2100

    if-ge v1, v6, :cond_5

    .line 1192
    :cond_3
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1193
    .local v2, hhhh:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "\\u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    sub-int/2addr v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1159
    .end local v2           #hhhh:Ljava/lang/String;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1165
    :sswitch_0
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1166
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1169
    :sswitch_1
    const/16 v6, 0x3c

    if-ne v0, v6, :cond_4

    .line 1170
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1172
    :cond_4
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1175
    :sswitch_2
    const-string v6, "\\b"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1178
    :sswitch_3
    const-string v6, "\\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1181
    :sswitch_4
    const-string v6, "\\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1184
    :sswitch_5
    const-string v6, "\\f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1187
    :sswitch_6
    const-string v6, "\\r"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1195
    :cond_5
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1199
    .end local v0           #b:C
    :cond_6
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1200
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1162
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xc -> :sswitch_5
        0xd -> :sswitch_6
        0x22 -> :sswitch_0
        0x2f -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public static stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .parameter "string"

    .prologue
    const/16 v7, 0x30

    const/16 v6, 0x2e

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 1230
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p0

    .line 1276
    :goto_0
    return-object v2

    .line 1233
    :cond_0
    const-string v2, "true"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1234
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1236
    :cond_1
    const-string v2, "false"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1237
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1239
    :cond_2
    const-string v2, "null"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1240
    sget-object v2, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_0

    .line 1252
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1253
    .local v0, b:C
    if-lt v0, v7, :cond_4

    const/16 v2, 0x39

    if-le v0, v2, :cond_5

    :cond_4
    if-eq v0, v6, :cond_5

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_5

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_a

    .line 1254
    :cond_5
    if-ne v0, v7, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_7

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x78

    if-eq v2, v3, :cond_6

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x58

    if-ne v2, v3, :cond_7

    .line 1257
    :cond_6
    :try_start_0
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1258
    :catch_0
    move-exception v2

    .line 1262
    :cond_7
    const/16 v2, 0x2e

    :try_start_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gt v2, v5, :cond_8

    const/16 v2, 0x65

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gt v2, v5, :cond_8

    const/16 v2, 0x45

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-le v2, v5, :cond_9

    .line 1264
    :cond_8
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    .line 1266
    :cond_9
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 1267
    .local v1, myLong:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    .line 1268
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1273
    .end local v1           #myLong:Ljava/lang/Long;
    :catch_1
    move-exception v2

    :cond_a
    move-object v2, p0

    .line 1276
    goto/16 :goto_0

    .restart local v1       #myLong:Ljava/lang/Long;
    :cond_b
    move-object v2, v1

    .line 1270
    goto/16 :goto_0
.end method

.method public static testValidity(Ljava/lang/Object;)V
    .locals 3
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1286
    if-eqz p0, :cond_3

    .line 1287
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 1288
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_0

    check-cast p0, Ljava/lang/Double;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1289
    :cond_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    const-string v2, "JSON does not allow non-finite numbers."

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1292
    .restart local p0
    :cond_1
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 1293
    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Float;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_2

    check-cast p0, Ljava/lang/Float;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Float;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1294
    :cond_2
    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    const-string v2, "JSON does not allow non-finite numbers."

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1299
    :cond_3
    return-void
.end method

.method public static valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1451
    if-eqz p0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1452
    :cond_0
    const-string v2, "null"

    .line 1482
    .end local p0
    :goto_0
    return-object v2

    .line 1454
    .restart local p0
    :cond_1
    instance-of v2, p0, Ltwitter4j/internal/org/json/JSONString;

    if-eqz v2, :cond_3

    .line 1457
    :try_start_0
    check-cast p0, Ltwitter4j/internal/org/json/JSONString;

    .end local p0
    invoke-interface {p0}, Ltwitter4j/internal/org/json/JSONString;->toJSONString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1461
    .local v1, object:Ljava/lang/String;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1462
    check-cast v1, Ljava/lang/String;

    .end local v1           #object:Ljava/lang/String;
    move-object v2, v1

    goto :goto_0

    .line 1458
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1459
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ltwitter4j/internal/org/json/JSONException;

    invoke-direct {v2, v0}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1464
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #object:Ljava/lang/String;
    :cond_2
    new-instance v2, Ltwitter4j/internal/org/json/JSONException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Bad value from toJSONString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1466
    .end local v1           #object:Ljava/lang/String;
    .restart local p0
    :cond_3
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_4

    .line 1467
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-static {p0}, Ltwitter4j/internal/org/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1469
    .restart local p0
    :cond_4
    instance-of v2, p0, Ljava/lang/Boolean;

    if-nez v2, :cond_5

    instance-of v2, p0, Ltwitter4j/internal/org/json/JSONObject;

    if-nez v2, :cond_5

    instance-of v2, p0, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v2, :cond_6

    .line 1471
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1473
    :cond_6
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_7

    .line 1474
    new-instance v2, Ltwitter4j/internal/org/json/JSONObject;

    check-cast p0, Ljava/util/Map;

    .end local p0
    invoke-direct {v2, p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1476
    .restart local p0
    :cond_7
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_8

    .line 1477
    new-instance v2, Ltwitter4j/internal/org/json/JSONArray;

    check-cast p0, Ljava/util/Collection;

    .end local p0
    invoke-direct {v2, p0}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1479
    .restart local p0
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1480
    new-instance v2, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v2, p0}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 1482
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method static valueToString(Ljava/lang/Object;II)Ljava/lang/String;
    .locals 3
    .parameter "value"
    .parameter "indentFactor"
    .parameter "indent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1502
    if-eqz p0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1503
    :cond_0
    const-string v2, "null"

    .line 1535
    .end local p0
    :goto_0
    return-object v2

    .line 1506
    .restart local p0
    :cond_1
    :try_start_0
    instance-of v2, p0, Ltwitter4j/internal/org/json/JSONString;

    if-eqz v2, :cond_2

    .line 1507
    move-object v0, p0

    check-cast v0, Ltwitter4j/internal/org/json/JSONString;

    move-object v2, v0

    invoke-interface {v2}, Ltwitter4j/internal/org/json/JSONString;->toJSONString()Ljava/lang/String;

    move-result-object v1

    .line 1508
    .local v1, o:Ljava/lang/String;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1509
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/String;
    move-object v2, v1

    goto :goto_0

    .line 1512
    :catch_0
    move-exception v2

    .line 1514
    :cond_2
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_3

    .line 1515
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-static {p0}, Ltwitter4j/internal/org/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1517
    .restart local p0
    :cond_3
    instance-of v2, p0, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    .line 1518
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1520
    :cond_4
    instance-of v2, p0, Ltwitter4j/internal/org/json/JSONObject;

    if-eqz v2, :cond_5

    .line 1521
    check-cast p0, Ltwitter4j/internal/org/json/JSONObject;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ltwitter4j/internal/org/json/JSONObject;->toString(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1523
    .restart local p0
    :cond_5
    instance-of v2, p0, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v2, :cond_6

    .line 1524
    check-cast p0, Ltwitter4j/internal/org/json/JSONArray;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ltwitter4j/internal/org/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1526
    .restart local p0
    :cond_6
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_7

    .line 1527
    new-instance v2, Ltwitter4j/internal/org/json/JSONObject;

    check-cast p0, Ljava/util/Map;

    .end local p0
    invoke-direct {v2, p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, p1, p2}, Ltwitter4j/internal/org/json/JSONObject;->toString(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1529
    .restart local p0
    :cond_7
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_8

    .line 1530
    new-instance v2, Ltwitter4j/internal/org/json/JSONArray;

    check-cast p0, Ljava/util/Collection;

    .end local p0
    invoke-direct {v2, p0}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, p1, p2}, Ltwitter4j/internal/org/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1532
    .restart local p0
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1533
    new-instance v2, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v2, p0}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, p2}, Ltwitter4j/internal/org/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1535
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static wrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "object"

    .prologue
    .line 1553
    if-nez p0, :cond_0

    .line 1554
    :try_start_0
    sget-object v3, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 1584
    .end local p0
    :goto_0
    return-object v3

    .line 1556
    .restart local p0
    :cond_0
    instance-of v3, p0, Ltwitter4j/internal/org/json/JSONObject;

    if-nez v3, :cond_1

    instance-of v3, p0, Ltwitter4j/internal/org/json/JSONArray;

    if-nez v3, :cond_1

    sget-object v3, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, p0, Ltwitter4j/internal/org/json/JSONString;

    if-nez v3, :cond_1

    instance-of v3, p0, Ljava/lang/Byte;

    if-nez v3, :cond_1

    instance-of v3, p0, Ljava/lang/Character;

    if-nez v3, :cond_1

    instance-of v3, p0, Ljava/lang/Short;

    if-nez v3, :cond_1

    instance-of v3, p0, Ljava/lang/Integer;

    if-nez v3, :cond_1

    instance-of v3, p0, Ljava/lang/Long;

    if-nez v3, :cond_1

    instance-of v3, p0, Ljava/lang/Boolean;

    if-nez v3, :cond_1

    instance-of v3, p0, Ljava/lang/Float;

    if-nez v3, :cond_1

    instance-of v3, p0, Ljava/lang/Double;

    if-nez v3, :cond_1

    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_2

    :cond_1
    move-object v3, p0

    .line 1563
    goto :goto_0

    .line 1566
    :cond_2
    instance-of v3, p0, Ljava/util/Collection;

    if-eqz v3, :cond_3

    .line 1567
    new-instance v3, Ltwitter4j/internal/org/json/JSONArray;

    check-cast p0, Ljava/util/Collection;

    .end local p0
    invoke-direct {v3, p0}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 1583
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1584
    .local v0, exception:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0

    .line 1569
    .end local v0           #exception:Ljava/lang/Exception;
    .restart local p0
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1570
    new-instance v3, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v3, p0}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 1572
    :cond_4
    instance-of v3, p0, Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 1573
    new-instance v3, Ltwitter4j/internal/org/json/JSONObject;

    check-cast p0, Ljava/util/Map;

    .end local p0
    invoke-direct {v3, p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 1575
    .restart local p0
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 1576
    .local v1, objectPackage:Ljava/lang/Package;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1577
    .local v2, objectPackageName:Ljava/lang/String;
    :goto_1
    const-string v3, "java."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "javax."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-nez v3, :cond_8

    .line 1580
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1576
    .end local v2           #objectPackageName:Ljava/lang/String;
    :cond_7
    const-string v3, ""

    move-object v2, v3

    goto :goto_1

    .line 1582
    .restart local v2       #objectPackageName:Ljava/lang/String;
    :cond_8
    new-instance v3, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v3, p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;
    .locals 2
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-static {p2}, Ltwitter4j/internal/org/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 370
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 371
    .local v0, object:Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 372
    instance-of v1, p2, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v1, :cond_0

    new-instance v1, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v1}, Ltwitter4j/internal/org/json/JSONArray;-><init>()V

    invoke-virtual {v1, p2}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, p1, v1}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 379
    .end local v0           #object:Ljava/lang/Object;
    :goto_1
    return-object p0

    .restart local v0       #object:Ljava/lang/Object;
    :cond_0
    move-object v1, p2

    .line 372
    goto :goto_0

    .line 374
    :cond_1
    instance-of v1, v0, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v1, :cond_2

    .line 375
    check-cast v0, Ltwitter4j/internal/org/json/JSONArray;

    .end local v0           #object:Ljava/lang/Object;
    invoke-virtual {v0, p2}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    goto :goto_1

    .line 377
    .restart local v0       #object:Ljava/lang/Object;
    :cond_2
    new-instance v1, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v1}, Ltwitter4j/internal/org/json/JSONArray;-><init>()V

    invoke-virtual {v1, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    goto :goto_1
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;
    .locals 4
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-static {p2}, Ltwitter4j/internal/org/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 396
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 397
    .local v0, object:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 398
    new-instance v1, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v1}, Ltwitter4j/internal/org/json/JSONArray;-><init>()V

    invoke-virtual {v1, p2}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 405
    .end local v0           #object:Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 399
    .restart local v0       #object:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v1, :cond_1

    .line 400
    check-cast v0, Ltwitter4j/internal/org/json/JSONArray;

    .end local v0           #object:Ljava/lang/Object;
    invoke-virtual {v0, p2}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    goto :goto_0

    .line 402
    .restart local v0       #object:Ljava/lang/Object;
    :cond_1
    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 444
    if-nez p1, :cond_0

    .line 445
    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    const-string v2, "Null key."

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 447
    :cond_0
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 448
    .local v0, object:Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 449
    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p1}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 452
    :cond_1
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 466
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

    .line 469
    :cond_0
    const/4 v2, 0x0

    .line 473
    .end local v1           #object:Ljava/lang/Object;
    :goto_0
    return v2

    .line 470
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

    .line 473
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 475
    :cond_3
    new-instance v2, Ltwitter4j/internal/org/json/JSONException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "JSONObject["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {p1}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] is not a Boolean."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 490
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

    .line 493
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 494
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ltwitter4j/internal/org/json/JSONException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "JSONObject["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {p1}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] is not a number."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 511
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

    .line 514
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 515
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ltwitter4j/internal/org/json/JSONException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "JSONObject["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {p1}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] is not an int."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 530
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 531
    .local v0, object:Ljava/lang/Object;
    instance-of v1, v0, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v1, :cond_0

    .line 532
    check-cast v0, Ltwitter4j/internal/org/json/JSONArray;

    .end local v0           #object:Ljava/lang/Object;
    return-object v0

    .line 534
    .restart local v0       #object:Ljava/lang/Object;
    :cond_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p1}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 548
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 549
    .local v0, object:Ljava/lang/Object;
    instance-of v1, v0, Ltwitter4j/internal/org/json/JSONObject;

    if-eqz v1, :cond_0

    .line 550
    check-cast v0, Ltwitter4j/internal/org/json/JSONObject;

    .end local v0           #object:Ljava/lang/Object;
    return-object v0

    .line 552
    .restart local v0       #object:Ljava/lang/Object;
    :cond_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p1}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] is not a JSONObject."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 566
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 568
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

    .line 571
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 572
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ltwitter4j/internal/org/json/JSONException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "JSONObject["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {p1}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] is not a long."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 630
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 631
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

.method public has(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 641
    iget-object v0, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public increment(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 655
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 656
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 657
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;I)Ltwitter4j/internal/org/json/JSONObject;

    .line 669
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 658
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 659
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;I)Ltwitter4j/internal/org/json/JSONObject;

    goto :goto_0

    .line 660
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 661
    check-cast v0, Ljava/lang/Long;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {p0, p1, v1, v2}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;J)Ltwitter4j/internal/org/json/JSONObject;

    goto :goto_0

    .line 662
    .restart local v0       #value:Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_3

    .line 663
    check-cast v0, Ljava/lang/Double;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0

    add-double/2addr v1, v3

    invoke-virtual {p0, p1, v1, v2}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;D)Ltwitter4j/internal/org/json/JSONObject;

    goto :goto_0

    .line 664
    .restart local v0       #value:Ljava/lang/Object;
    :cond_3
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 665
    check-cast v0, Ljava/lang/Float;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {p0, p1, v1, v2}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;D)Ltwitter4j/internal/org/json/JSONObject;

    goto :goto_0

    .line 667
    .restart local v0       #value:Ljava/lang/Object;
    :cond_4
    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unable to increment ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p1}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isNull(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 681
    sget-object v0, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public keys()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public names()Ltwitter4j/internal/org/json/JSONArray;
    .locals 3

    .prologue
    .line 712
    new-instance v0, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v0}, Ltwitter4j/internal/org/json/JSONArray;-><init>()V

    .line 713
    .local v0, ja:Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 714
    .local v1, keys:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 715
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    goto :goto_0

    .line 717
    :cond_0
    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    return-object v2

    :cond_1
    move-object v2, v0

    goto :goto_1
.end method

.method public opt(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 755
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public optBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 768
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public optBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 783
    :try_start_0
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 785
    :goto_0
    return v1

    .line 784
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, p2

    .line 785
    goto :goto_0
.end method

.method public optDouble(Ljava/lang/String;)D
    .locals 2
    .parameter "key"

    .prologue
    .line 800
    const-wide/high16 v0, 0x7ff8

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(Ljava/lang/String;D)D
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 816
    :try_start_0
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 818
    :goto_0
    return-wide v1

    .line 817
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-wide v1, p2

    .line 818
    goto :goto_0
.end method

.method public optInt(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 833
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public optInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 849
    :try_start_0
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 851
    :goto_0
    return v1

    .line 850
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, p2

    .line 851
    goto :goto_0
.end method

.method public optJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;
    .locals 2
    .parameter "key"

    .prologue
    .line 865
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 866
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

.method public optJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;
    .locals 2
    .parameter "key"

    .prologue
    .line 879
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 880
    .local v0, object:Ljava/lang/Object;
    instance-of v1, v0, Ltwitter4j/internal/org/json/JSONObject;

    if-eqz v1, :cond_0

    check-cast v0, Ltwitter4j/internal/org/json/JSONObject;

    .end local v0           #object:Ljava/lang/Object;
    move-object v1, v0

    :goto_0
    return-object v1

    .restart local v0       #object:Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public optLong(Ljava/lang/String;)J
    .locals 2
    .parameter "key"

    .prologue
    .line 894
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(Ljava/lang/String;J)J
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 910
    :try_start_0
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 912
    :goto_0
    return-wide v1

    .line 911
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-wide v1, p2

    .line 912
    goto :goto_0
.end method

.method public optString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 926
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 939
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 940
    .local v0, object:Ljava/lang/Object;
    sget-object v1, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p2

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public put(Ljava/lang/String;D)Ltwitter4j/internal/org/json/JSONObject;
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1028
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 1029
    return-object p0
.end method

.method public put(Ljava/lang/String;I)Ltwitter4j/internal/org/json/JSONObject;
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1042
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 1043
    return-object p0
.end method

.method public put(Ljava/lang/String;J)Ltwitter4j/internal/org/json/JSONObject;
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1056
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 1057
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;
    .locals 2
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1087
    if-nez p1, :cond_0

    .line 1088
    new-instance v0, Ltwitter4j/internal/org/json/JSONException;

    const-string v1, "Null key."

    invoke-direct {v0, v1}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1090
    :cond_0
    if-eqz p2, :cond_1

    .line 1091
    invoke-static {p2}, Ltwitter4j/internal/org/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 1092
    iget-object v0, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    :goto_0
    return-object p0

    .line 1094
    :cond_1
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/util/Collection;)Ltwitter4j/internal/org/json/JSONObject;
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1014
    new-instance v0, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v0, p2}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 1015
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;)Ltwitter4j/internal/org/json/JSONObject;
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1070
    new-instance v0, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v0, p2}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 1071
    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Ltwitter4j/internal/org/json/JSONObject;
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1000
    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 1001
    return-object p0

    .line 1000
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public putOnce(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;
    .locals 3
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1110
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1111
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1112
    new-instance v0, Ltwitter4j/internal/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Duplicate key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1114
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 1116
    :cond_1
    return-object p0
.end method

.method public putOpt(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;
    .locals 0
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1131
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1132
    invoke-virtual {p0, p1, p2}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 1134
    :cond_0
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 1210
    iget-object v0, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sortedKeys()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1220
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toJSONArray(Ltwitter4j/internal/org/json/JSONArray;)Ltwitter4j/internal/org/json/JSONArray;
    .locals 3
    .parameter "names"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1311
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1312
    :cond_0
    const/4 v2, 0x0

    .line 1318
    :goto_0
    return-object v2

    .line 1314
    :cond_1
    new-instance v1, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v1}, Ltwitter4j/internal/org/json/JSONArray;-><init>()V

    .line 1315
    .local v1, ja:Ltwitter4j/internal/org/json/JSONArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1316
    invoke-virtual {p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 1315
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 1318
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1335
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1336
    .local v1, keys:Ljava/util/Iterator;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1338
    .local v3, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1339
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 1340
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1342
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1343
    .local v2, o:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1344
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1345
    iget-object v4, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ltwitter4j/internal/org/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1349
    .end local v1           #keys:Ljava/util/Iterator;
    .end local v2           #o:Ljava/lang/Object;
    .end local v3           #sb:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1350
    .local v0, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    return-object v4

    .line 1347
    .restart local v1       #keys:Ljava/util/Iterator;
    .restart local v3       #sb:Ljava/lang/StringBuffer;
    :cond_1
    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1348
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1
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
    .line 1368
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(II)Ljava/lang/String;
    .locals 10
    .parameter "indentFactor"
    .parameter "indent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0xa

    const/4 v7, 0x1

    .line 1387
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONObject;->length()I

    move-result v2

    .line 1388
    .local v2, length:I
    if-nez v2, :cond_0

    .line 1389
    const-string v6, "{}"

    .line 1425
    :goto_0
    return-object v6

    .line 1391
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONObject;->sortedKeys()Ljava/util/Iterator;

    move-result-object v1

    .line 1392
    .local v1, keys:Ljava/util/Iterator;
    add-int v3, p2, p1

    .line 1394
    .local v3, newindent:I
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "{"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1395
    .local v5, sb:Ljava/lang/StringBuffer;
    if-ne v2, v7, :cond_3

    .line 1396
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1397
    .local v4, object:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1398
    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1399
    iget-object v6, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p1, p2}, Ltwitter4j/internal/org/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1424
    .end local v4           #object:Ljava/lang/Object;
    :cond_1
    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1425
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1412
    .local v0, i:I
    .restart local v4       #object:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1413
    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1414
    iget-object v6, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p1, v3}, Ltwitter4j/internal/org/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1402
    .end local v0           #i:I
    .end local v4           #object:Ljava/lang/Object;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1403
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1404
    .restart local v4       #object:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-le v6, v7, :cond_4

    .line 1405
    const-string v6, ",\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1409
    :goto_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v3, :cond_2

    .line 1410
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1409
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1407
    .end local v0           #i:I
    :cond_4
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1417
    .end local v4           #object:Ljava/lang/Object;
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-le v6, v7, :cond_1

    .line 1418
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1419
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    if-ge v0, p2, :cond_1

    .line 1420
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1419
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
    .line 1600
    const/4 v0, 0x0

    .line 1601
    .local v0, commanate:Z
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1602
    .local v3, keys:Ljava/util/Iterator;
    const/16 v5, 0x7b

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 1604
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1605
    if-eqz v0, :cond_0

    .line 1606
    const/16 v5, 0x2c

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 1608
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1609
    .local v2, key:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1610
    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 1611
    iget-object v5, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1612
    .local v4, value:Ljava/lang/Object;
    instance-of v5, v4, Ltwitter4j/internal/org/json/JSONObject;

    if-eqz v5, :cond_1

    .line 1613
    check-cast v4, Ltwitter4j/internal/org/json/JSONObject;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v4, p1}, Ltwitter4j/internal/org/json/JSONObject;->write(Ljava/io/Writer;)Ljava/io/Writer;

    .line 1619
    :goto_1
    const/4 v0, 0x1

    .line 1620
    goto :goto_0

    .line 1614
    .restart local v4       #value:Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v5, :cond_2

    .line 1615
    check-cast v4, Ltwitter4j/internal/org/json/JSONArray;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v4, p1}, Ltwitter4j/internal/org/json/JSONArray;->write(Ljava/io/Writer;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1623
    .end local v2           #key:Ljava/lang/Object;
    .end local v3           #keys:Ljava/util/Iterator;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 1624
    .local v1, exception:Ljava/io/IOException;
    new-instance v5, Ltwitter4j/internal/org/json/JSONException;

    invoke-direct {v5, v1}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1617
    .end local v1           #exception:Ljava/io/IOException;
    .restart local v2       #key:Ljava/lang/Object;
    .restart local v3       #keys:Ljava/util/Iterator;
    .restart local v4       #value:Ljava/lang/Object;
    :cond_2
    :try_start_1
    invoke-static {v4}, Ltwitter4j/internal/org/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 1621
    .end local v2           #key:Ljava/lang/Object;
    .end local v4           #value:Ljava/lang/Object;
    :cond_3
    const/16 v5, 0x7d

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1622
    return-object p1
.end method
