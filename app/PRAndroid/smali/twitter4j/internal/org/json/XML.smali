.class public Ltwitter4j/internal/org/json/XML;
.super Ljava/lang/Object;
.source "XML.java"


# static fields
.field public static final AMP:Ljava/lang/Character;

.field public static final APOS:Ljava/lang/Character;

.field public static final BANG:Ljava/lang/Character;

.field public static final EQ:Ljava/lang/Character;

.field public static final GT:Ljava/lang/Character;

.field public static final LT:Ljava/lang/Character;

.field public static final QUEST:Ljava/lang/Character;

.field public static final QUOT:Ljava/lang/Character;

.field public static final SLASH:Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x26

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Ltwitter4j/internal/org/json/XML;->AMP:Ljava/lang/Character;

    .line 42
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Ltwitter4j/internal/org/json/XML;->APOS:Ljava/lang/Character;

    .line 45
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Ltwitter4j/internal/org/json/XML;->BANG:Ljava/lang/Character;

    .line 48
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3d

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Ltwitter4j/internal/org/json/XML;->EQ:Ljava/lang/Character;

    .line 51
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3e

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Ltwitter4j/internal/org/json/XML;->GT:Ljava/lang/Character;

    .line 54
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Ltwitter4j/internal/org/json/XML;->LT:Ljava/lang/Character;

    .line 57
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3f

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Ltwitter4j/internal/org/json/XML;->QUEST:Ljava/lang/Character;

    .line 60
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Ltwitter4j/internal/org/json/XML;->QUOT:Ljava/lang/Character;

    .line 63
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Ltwitter4j/internal/org/json/XML;->SLASH:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "string"

    .prologue
    .line 77
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 78
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, length:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 79
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 80
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 94
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 78
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :sswitch_0
    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 85
    :sswitch_1
    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 88
    :sswitch_2
    const-string v4, "&gt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 91
    :sswitch_3
    const-string v4, "&quot;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 97
    .end local v0           #c:C
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 80
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public static noSpace(Ljava/lang/String;)V
    .locals 5
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 108
    .local v1, length:I
    if-nez v1, :cond_0

    .line 109
    new-instance v2, Ltwitter4j/internal/org/json/JSONException;

    const-string v3, "Empty string."

    invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 112
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    new-instance v2, Ltwitter4j/internal/org/json/JSONException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\' contains a space character."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_2
    return-void
.end method

.method private static parse(Ltwitter4j/internal/org/json/XMLTokener;Ltwitter4j/internal/org/json/JSONObject;Ljava/lang/String;)Z
    .locals 12
    .parameter "x"
    .parameter "context"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x5b

    const/16 v8, 0x2d

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 131
    const/4 v3, 0x0

    .line 146
    .local v3, jsonobject:Ltwitter4j/internal/org/json/JSONObject;
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v6

    .line 150
    .local v6, token:Ljava/lang/Object;
    sget-object v7, Ltwitter4j/internal/org/json/XML;->BANG:Ljava/lang/Character;

    if-ne v6, v7, :cond_9

    .line 151
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->next()C

    move-result v1

    .line 152
    .local v1, c:C
    if-ne v1, v8, :cond_3

    .line 153
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->next()C

    move-result v7

    if-ne v7, v8, :cond_0

    .line 154
    const-string v7, "-->"

    invoke-virtual {p0, v7}, Ltwitter4j/internal/org/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    move v7, v9

    .line 279
    .end local v1           #c:C
    .end local v6           #token:Ljava/lang/Object;
    :goto_0
    return v7

    .line 157
    .restart local v1       #c:C
    .restart local v6       #token:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->back()V

    .line 171
    :cond_1
    const/4 v2, 0x1

    .line 173
    .local v2, i:I
    :cond_2
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextMeta()Ljava/lang/Object;

    move-result-object v6

    .line 174
    if-nez v6, :cond_6

    .line 175
    const-string v7, "Missing \'>\' after \'<!\'."

    invoke-virtual {p0, v7}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v7

    throw v7

    .line 158
    .end local v2           #i:I
    :cond_3
    if-ne v1, v11, :cond_1

    .line 159
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v6

    .line 160
    const-string v7, "CDATA"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 161
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->next()C

    move-result v7

    if-ne v7, v11, :cond_5

    .line 162
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextCDATA()Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, string:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 164
    const-string v7, "content"

    invoke-virtual {p1, v7, v4}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    :cond_4
    move v7, v9

    .line 166
    goto :goto_0

    .line 169
    .end local v4           #string:Ljava/lang/String;
    :cond_5
    const-string v7, "Expected \'CDATA[\'"

    invoke-virtual {p0, v7}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v7

    throw v7

    .line 176
    .restart local v2       #i:I
    :cond_6
    sget-object v7, Ltwitter4j/internal/org/json/XML;->LT:Ljava/lang/Character;

    if-ne v6, v7, :cond_8

    .line 177
    add-int/lit8 v2, v2, 0x1

    .line 181
    :cond_7
    :goto_1
    if-gtz v2, :cond_2

    move v7, v9

    .line 182
    goto :goto_0

    .line 178
    :cond_8
    sget-object v7, Ltwitter4j/internal/org/json/XML;->GT:Ljava/lang/Character;

    if-ne v6, v7, :cond_7

    .line 179
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 183
    .end local v1           #c:C
    .end local v2           #i:I
    :cond_9
    sget-object v7, Ltwitter4j/internal/org/json/XML;->QUEST:Ljava/lang/Character;

    if-ne v6, v7, :cond_a

    .line 187
    const-string v7, "?>"

    invoke-virtual {p0, v7}, Ltwitter4j/internal/org/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    move v7, v9

    .line 188
    goto :goto_0

    .line 189
    :cond_a
    sget-object v7, Ltwitter4j/internal/org/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v6, v7, :cond_e

    .line 193
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v6

    .line 194
    if-nez p2, :cond_b

    .line 195
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Mismatched close tag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v7

    throw v7

    .line 197
    :cond_b
    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 198
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Mismatched "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v7

    throw v7

    .line 200
    :cond_c
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ltwitter4j/internal/org/json/XML;->GT:Ljava/lang/Character;

    if-eq v7, v8, :cond_d

    .line 201
    const-string v7, "Misshaped close tag"

    invoke-virtual {p0, v7}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v7

    throw v7

    :cond_d
    move v7, v10

    .line 203
    goto/16 :goto_0

    .line 205
    :cond_e
    instance-of v7, v6, Ljava/lang/Character;

    if-eqz v7, :cond_f

    .line 206
    const-string v7, "Misshaped tag"

    invoke-virtual {p0, v7}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v7

    throw v7

    .line 211
    :cond_f
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 212
    .local v5, tagName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 213
    new-instance v3, Ltwitter4j/internal/org/json/JSONObject;

    .end local v3           #jsonobject:Ltwitter4j/internal/org/json/JSONObject;
    invoke-direct {v3}, Ltwitter4j/internal/org/json/JSONObject;-><init>()V

    .line 215
    .end local v6           #token:Ljava/lang/Object;
    .restart local v3       #jsonobject:Ltwitter4j/internal/org/json/JSONObject;
    :goto_2
    if-nez v6, :cond_1d

    .line 216
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v6

    .restart local v6       #token:Ljava/lang/Object;
    move-object v4, v6

    .line 221
    .end local v6           #token:Ljava/lang/Object;
    :goto_3
    instance-of v7, v4, Ljava/lang/String;

    if-eqz v7, :cond_12

    .line 222
    check-cast v4, Ljava/lang/String;

    .line 223
    .restart local v4       #string:Ljava/lang/String;
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v6

    .line 224
    .restart local v6       #token:Ljava/lang/Object;
    sget-object v7, Ltwitter4j/internal/org/json/XML;->EQ:Ljava/lang/Character;

    if-ne v6, v7, :cond_11

    .line 225
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v6

    .line 226
    instance-of v7, v6, Ljava/lang/String;

    if-nez v7, :cond_10

    .line 227
    const-string v7, "Missing value"

    invoke-virtual {p0, v7}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v7

    throw v7

    .line 229
    :cond_10
    check-cast v6, Ljava/lang/String;

    .end local v6           #token:Ljava/lang/Object;
    invoke-static {v6}, Ltwitter4j/internal/org/json/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 231
    const/4 v6, 0x0

    .restart local v6       #token:Ljava/lang/Object;
    goto :goto_2

    .line 233
    :cond_11
    const-string v7, ""

    invoke-virtual {v3, v4, v7}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    goto :goto_2

    .line 238
    .end local v4           #string:Ljava/lang/String;
    .end local v6           #token:Ljava/lang/Object;
    :cond_12
    sget-object v7, Ltwitter4j/internal/org/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v4, v7, :cond_15

    .line 239
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ltwitter4j/internal/org/json/XML;->GT:Ljava/lang/Character;

    if-eq v7, v8, :cond_13

    .line 240
    const-string v7, "Misshaped tag"

    invoke-virtual {p0, v7}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v7

    throw v7

    .line 242
    :cond_13
    invoke-virtual {v3}, Ltwitter4j/internal/org/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_14

    .line 243
    invoke-virtual {p1, v5, v3}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    :goto_4
    move v7, v9

    .line 247
    goto/16 :goto_0

    .line 245
    :cond_14
    const-string v7, ""

    invoke-virtual {p1, v5, v7}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    goto :goto_4

    .line 251
    :cond_15
    sget-object v7, Ltwitter4j/internal/org/json/XML;->GT:Ljava/lang/Character;

    if-ne v4, v7, :cond_1c

    .line 253
    :cond_16
    :goto_5
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextContent()Ljava/lang/Object;

    move-result-object v6

    .line 254
    .restart local v6       #token:Ljava/lang/Object;
    if-nez v6, :cond_18

    .line 255
    if-eqz v5, :cond_17

    .line 256
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Unclosed tag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v7

    throw v7

    :cond_17
    move v7, v9

    .line 258
    goto/16 :goto_0

    .line 259
    :cond_18
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_19

    .line 260
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 261
    .restart local v4       #string:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_16

    .line 262
    const-string v7, "content"

    invoke-static {v4}, Ltwitter4j/internal/org/json/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    goto :goto_5

    .line 268
    .end local v4           #string:Ljava/lang/String;
    :cond_19
    sget-object v7, Ltwitter4j/internal/org/json/XML;->LT:Ljava/lang/Character;

    if-ne v6, v7, :cond_16

    .line 269
    invoke-static {p0, v3, v5}, Ltwitter4j/internal/org/json/XML;->parse(Ltwitter4j/internal/org/json/XMLTokener;Ltwitter4j/internal/org/json/JSONObject;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 270
    invoke-virtual {v3}, Ltwitter4j/internal/org/json/JSONObject;->length()I

    move-result v7

    if-nez v7, :cond_1a

    .line 271
    const-string v7, ""

    invoke-virtual {p1, v5, v7}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    :goto_6
    move v7, v9

    .line 279
    goto/16 :goto_0

    .line 272
    :cond_1a
    invoke-virtual {v3}, Ltwitter4j/internal/org/json/JSONObject;->length()I

    move-result v7

    if-ne v7, v10, :cond_1b

    const-string v7, "content"

    invoke-virtual {v3, v7}, Ltwitter4j/internal/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1b

    .line 274
    const-string v7, "content"

    invoke-virtual {v3, v7}, Ltwitter4j/internal/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v5, v7}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    goto :goto_6

    .line 277
    :cond_1b
    invoke-virtual {p1, v5, v3}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    goto :goto_6

    .line 284
    .end local v6           #token:Ljava/lang/Object;
    :cond_1c
    const-string v7, "Misshaped tag"

    invoke-virtual {p0, v7}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v7

    throw v7

    :cond_1d
    move-object v4, v6

    goto/16 :goto_3
.end method

.method public static stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .parameter "string"

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x30

    .line 301
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p0

    .line 341
    :goto_0
    return-object v3

    .line 304
    :cond_0
    const-string v3, "true"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 305
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 307
    :cond_1
    const-string v3, "false"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 308
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 310
    :cond_2
    const-string v3, "null"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 311
    sget-object v3, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_0

    .line 318
    :cond_3
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 319
    .local v0, initial:C
    const/4 v2, 0x0

    .line 320
    .local v2, negative:Z
    const/16 v3, 0x2d

    if-ne v0, v3, :cond_4

    .line 321
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 322
    const/4 v2, 0x1

    .line 324
    :cond_4
    if-ne v0, v4, :cond_6

    if-eqz v2, :cond_5

    const/4 v3, 0x2

    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_6

    move-object v3, p0

    .line 325
    goto :goto_0

    :cond_5
    move v3, v5

    .line 324
    goto :goto_1

    .line 327
    :cond_6
    if-lt v0, v4, :cond_8

    const/16 v3, 0x39

    if-gt v0, v3, :cond_8

    .line 328
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_7

    .line 329
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    goto :goto_0

    .line 330
    :cond_7
    const/16 v3, 0x65

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_8

    const/16 v3, 0x45

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_8

    .line 331
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 332
    .local v1, myLong:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 333
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    .end local v0           #initial:C
    .end local v1           #myLong:Ljava/lang/Long;
    .end local v2           #negative:Z
    :catch_0
    move-exception v3

    :cond_8
    move-object v3, p0

    .line 341
    goto/16 :goto_0

    .restart local v0       #initial:C
    .restart local v1       #myLong:Ljava/lang/Long;
    .restart local v2       #negative:Z
    :cond_9
    move-object v3, v1

    .line 335
    goto/16 :goto_0
.end method

.method public static toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;
    .locals 3
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 360
    new-instance v0, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v0}, Ltwitter4j/internal/org/json/JSONObject;-><init>()V

    .line 361
    .local v0, jo:Ltwitter4j/internal/org/json/JSONObject;
    new-instance v1, Ltwitter4j/internal/org/json/XMLTokener;

    invoke-direct {v1, p0}, Ltwitter4j/internal/org/json/XMLTokener;-><init>(Ljava/lang/String;)V

    .line 362
    .local v1, x:Ltwitter4j/internal/org/json/XMLTokener;
    :goto_0
    invoke-virtual {v1}, Ltwitter4j/internal/org/json/XMLTokener;->more()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ltwitter4j/internal/org/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ltwitter4j/internal/org/json/XML;->parse(Ltwitter4j/internal/org/json/XMLTokener;Ltwitter4j/internal/org/json/JSONObject;Ljava/lang/String;)Z

    goto :goto_0

    .line 365
    :cond_0
    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 376
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "object"
    .parameter "tagName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x3c

    const/16 v11, 0x3e

    .line 389
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 398
    .local v7, sb:Ljava/lang/StringBuffer;
    instance-of v10, p0, Ltwitter4j/internal/org/json/JSONObject;

    if-eqz v10, :cond_c

    .line 402
    if-eqz p1, :cond_0

    .line 403
    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 404
    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 410
    :cond_0
    move-object v0, p0

    check-cast v0, Ltwitter4j/internal/org/json/JSONObject;

    move-object v3, v0

    .line 411
    .local v3, jo:Ltwitter4j/internal/org/json/JSONObject;
    invoke-virtual {v3}, Ltwitter4j/internal/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 412
    .local v5, keys:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 413
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 414
    .local v4, key:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ltwitter4j/internal/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 415
    .local v9, value:Ljava/lang/Object;
    if-nez v9, :cond_2

    .line 416
    const-string v9, ""

    .line 418
    .end local v9           #value:Ljava/lang/Object;
    :cond_2
    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_4

    .line 419
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 426
    .local v8, string:Ljava/lang/String;
    :goto_1
    const-string v10, "content"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 427
    instance-of v10, v9, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v10, :cond_5

    .line 428
    move-object v0, v9

    check-cast v0, Ltwitter4j/internal/org/json/JSONArray;

    move-object v2, v0

    .line 429
    .local v2, ja:Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    .line 430
    .local v6, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v6, :cond_1

    .line 431
    if-lez v1, :cond_3

    .line 432
    const/16 v10, 0xa

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 434
    :cond_3
    invoke-virtual {v2, v1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ltwitter4j/internal/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 421
    .end local v1           #i:I
    .end local v2           #ja:Ltwitter4j/internal/org/json/JSONArray;
    .end local v6           #length:I
    .end local v8           #string:Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    .restart local v8       #string:Ljava/lang/String;
    goto :goto_1

    .line 437
    :cond_5
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ltwitter4j/internal/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 442
    :cond_6
    instance-of v10, v9, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v10, :cond_8

    .line 443
    move-object v0, v9

    check-cast v0, Ltwitter4j/internal/org/json/JSONArray;

    move-object v2, v0

    .line 444
    .restart local v2       #ja:Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    .line 445
    .restart local v6       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v6, :cond_1

    .line 446
    invoke-virtual {v2, v1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 447
    .restart local v9       #value:Ljava/lang/Object;
    instance-of v10, v9, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v10, :cond_7

    .line 448
    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 449
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 451
    invoke-static {v9}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    const-string v10, "</"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 445
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 456
    :cond_7
    invoke-static {v9, v4}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 459
    .end local v1           #i:I
    .end local v2           #ja:Ltwitter4j/internal/org/json/JSONArray;
    .end local v6           #length:I
    .end local v9           #value:Ljava/lang/Object;
    :cond_8
    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 460
    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 461
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 462
    const-string v10, "/>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 467
    :cond_9
    invoke-static {v9, v4}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 470
    .end local v4           #key:Ljava/lang/String;
    .end local v8           #string:Ljava/lang/String;
    :cond_a
    if-eqz p1, :cond_b

    .line 474
    const-string v10, "</"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 475
    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 476
    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 478
    :cond_b
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 492
    .end local v3           #jo:Ltwitter4j/internal/org/json/JSONObject;
    .end local v5           #keys:Ljava/util/Iterator;
    :goto_5
    return-object v10

    .line 483
    :cond_c
    instance-of v10, p0, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v10, :cond_f

    .line 484
    move-object v0, p0

    check-cast v0, Ltwitter4j/internal/org/json/JSONArray;

    move-object v2, v0

    .line 485
    .restart local v2       #ja:Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    .line 486
    .restart local v6       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_6
    if-ge v1, v6, :cond_e

    .line 487
    invoke-virtual {v2, v1}, Ltwitter4j/internal/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v10

    if-nez p1, :cond_d

    const-string v11, "array"

    :goto_7
    invoke-static {v10, v11}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 486
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    move-object v11, p1

    .line 487
    goto :goto_7

    .line 489
    :cond_e
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    .line 491
    .end local v1           #i:I
    .end local v2           #ja:Ltwitter4j/internal/org/json/JSONArray;
    .end local v6           #length:I
    :cond_f
    if-nez p0, :cond_10

    const-string v10, "null"

    move-object v8, v10

    .line 492
    .restart local v8       #string:Ljava/lang/String;
    :goto_8
    if-nez p1, :cond_11

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    .line 491
    .end local v8           #string:Ljava/lang/String;
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ltwitter4j/internal/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    goto :goto_8

    .line 492
    .restart local v8       #string:Ljava/lang/String;
    :cond_11
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_12

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "<"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "/>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_12
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "<"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "</"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_5
.end method
