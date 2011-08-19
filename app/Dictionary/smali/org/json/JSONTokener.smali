.class public Lorg/json/JSONTokener;
.super Ljava/lang/Object;
.source "JSONTokener.java"


# instance fields
.field private character:I

.field private eof:Z

.field private index:I

.field private line:I

.field private previous:C

.field private reader:Ljava/io/Reader;

.field private usePrevious:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3
    .parameter "reader"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    .line 60
    iput-boolean v1, p0, Lorg/json/JSONTokener;->eof:Z

    .line 61
    iput-boolean v1, p0, Lorg/json/JSONTokener;->usePrevious:Z

    .line 62
    iput-char v1, p0, Lorg/json/JSONTokener;->previous:C

    .line 63
    iput v1, p0, Lorg/json/JSONTokener;->index:I

    .line 64
    iput v2, p0, Lorg/json/JSONTokener;->character:I

    .line 65
    iput v2, p0, Lorg/json/JSONTokener;->line:I

    .line 66
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 83
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    .line 84
    return-void
.end method

.method public static dehexchar(C)I
    .locals 2
    .parameter "c"

    .prologue
    const/16 v1, 0x30

    .line 110
    if-lt p0, v1, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 111
    sub-int v0, p0, v1

    .line 119
    :goto_0
    return v0

    .line 113
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 114
    const/16 v0, 0x37

    sub-int v0, p0, v0

    goto :goto_0

    .line 116
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 117
    const/16 v0, 0x57

    sub-int v0, p0, v0

    goto :goto_0

    .line 119
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public back()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 93
    iget-boolean v0, p0, Lorg/json/JSONTokener;->usePrevious:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/json/JSONTokener;->index:I

    if-gtz v0, :cond_1

    .line 94
    :cond_0
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Stepping back two steps is not supported"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    iget v0, p0, Lorg/json/JSONTokener;->index:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/json/JSONTokener;->index:I

    .line 97
    iget v0, p0, Lorg/json/JSONTokener;->character:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/json/JSONTokener;->character:I

    .line 98
    iput-boolean v1, p0, Lorg/json/JSONTokener;->usePrevious:Z

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/json/JSONTokener;->eof:Z

    .line 100
    return-void
.end method

.method public end()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lorg/json/JSONTokener;->eof:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/json/JSONTokener;->usePrevious:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public more()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    .line 134
    invoke-virtual {p0}, Lorg/json/JSONTokener;->end()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 138
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 149
    iget-boolean v2, p0, Lorg/json/JSONTokener;->usePrevious:Z

    if-eqz v2, :cond_1

    .line 150
    iput-boolean v4, p0, Lorg/json/JSONTokener;->usePrevious:Z

    .line 151
    iget-char v0, p0, Lorg/json/JSONTokener;->previous:C

    .line 164
    .local v0, c:I
    :cond_0
    :goto_0
    iget v2, p0, Lorg/json/JSONTokener;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/json/JSONTokener;->index:I

    .line 165
    iget-char v2, p0, Lorg/json/JSONTokener;->previous:C

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    .line 166
    iget v2, p0, Lorg/json/JSONTokener;->line:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/json/JSONTokener;->line:I

    .line 167
    if-ne v0, v6, :cond_2

    move v2, v4

    :goto_1
    iput v2, p0, Lorg/json/JSONTokener;->character:I

    .line 174
    :goto_2
    int-to-char v2, v0

    iput-char v2, p0, Lorg/json/JSONTokener;->previous:C

    .line 175
    iget-char v2, p0, Lorg/json/JSONTokener;->previous:C

    return v2

    .line 154
    .end local v0           #c:I
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 159
    .restart local v0       #c:I
    if-gtz v0, :cond_0

    .line 160
    iput-boolean v5, p0, Lorg/json/JSONTokener;->eof:Z

    .line 161
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    .end local v0           #c:I
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 156
    .local v1, exception:Ljava/io/IOException;
    new-instance v2, Lorg/json/JSONException;

    invoke-direct {v2, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v1           #exception:Ljava/io/IOException;
    .restart local v0       #c:I
    :cond_2
    move v2, v5

    .line 167
    goto :goto_1

    .line 168
    :cond_3
    if-ne v0, v6, :cond_4

    .line 169
    iget v2, p0, Lorg/json/JSONTokener;->line:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/json/JSONTokener;->line:I

    .line 170
    iput v4, p0, Lorg/json/JSONTokener;->character:I

    goto :goto_2

    .line 172
    :cond_4
    iget v2, p0, Lorg/json/JSONTokener;->character:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/json/JSONTokener;->character:I

    goto :goto_2
.end method

.method public next(C)C
    .locals 3
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 188
    .local v0, n:C
    if-eq v0, p1, :cond_0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and instead saw \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1

    .line 192
    :cond_0
    return v0
.end method

.method public next(I)Ljava/lang/String;
    .locals 3
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 206
    if-nez p1, :cond_0

    .line 207
    const-string v2, ""

    .line 220
    :goto_0
    return-object v2

    .line 210
    :cond_0
    new-array v0, p1, [C

    .line 211
    .local v0, chars:[C
    const/4 v1, 0x0

    .line 213
    .local v1, pos:I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 214
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v2

    aput-char v2, v0, v1

    .line 215
    invoke-virtual {p0}, Lorg/json/JSONTokener;->end()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    const-string v2, "Substring bounds error"

    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    .line 218
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 220
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public nextClean()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 231
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 232
    .local v0, c:C
    if-eqz v0, :cond_1

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    .line 233
    :cond_1
    return v0
.end method

.method public nextString(C)Ljava/lang/String;
    .locals 4
    .parameter "quote"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 252
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 254
    .local v1, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 255
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 292
    if-ne v0, p1, :cond_0

    .line 293
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 259
    :sswitch_0
    const-string v2, "Unterminated string"

    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    .line 261
    :sswitch_1
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 262
    sparse-switch v0, :sswitch_data_1

    .line 288
    const-string v2, "Illegal escape."

    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    .line 264
    :sswitch_2
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 267
    :sswitch_3
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 270
    :sswitch_4
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 273
    :sswitch_5
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 276
    :sswitch_6
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 279
    :sswitch_7
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 285
    :sswitch_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 255
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch

    .line 262
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_8
        0x27 -> :sswitch_8
        0x2f -> :sswitch_8
        0x5c -> :sswitch_8
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_4
        0x72 -> :sswitch_6
        0x74 -> :sswitch_3
        0x75 -> :sswitch_7
    .end sparse-switch
.end method

.method public nextTo(C)Ljava/lang/String;
    .locals 3
    .parameter "delimiter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 308
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 310
    .local v1, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 311
    .local v0, c:C
    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    .line 312
    :cond_0
    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 315
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 317
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public nextTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "delimiters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 330
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 332
    .local v1, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 333
    .local v0, c:C
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    if-eqz v0, :cond_0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    .line 335
    :cond_0
    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 338
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 340
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public nextValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextClean()C

    move-result v0

    .line 356
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 377
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 378
    .local v1, sb:Ljava/lang/StringBuffer;
    :goto_0
    const/16 v3, 0x20

    if-lt v0, v3, :cond_0

    const-string v3, ",:]}/\\\"[{;=#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 379
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 380
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    goto :goto_0

    .line 359
    .end local v1           #sb:Ljava/lang/StringBuffer;
    :sswitch_0
    invoke-virtual {p0, v0}, Lorg/json/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v3

    .line 388
    :goto_1
    return-object v3

    .line 361
    :sswitch_1
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 362
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    goto :goto_1

    .line 364
    :sswitch_2
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 365
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Lorg/json/JSONTokener;)V

    goto :goto_1

    .line 382
    .restart local v1       #sb:Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 384
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, string:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 386
    const-string v3, "Missing value"

    invoke-virtual {p0, v3}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v3

    throw v3

    .line 388
    :cond_1
    invoke-static {v2}, Lorg/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 356
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x5b -> :sswitch_2
        0x7b -> :sswitch_1
    .end sparse-switch
.end method

.method public skipTo(C)C
    .locals 7
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 402
    :try_start_0
    iget v3, p0, Lorg/json/JSONTokener;->index:I

    .line 403
    .local v3, startIndex:I
    iget v2, p0, Lorg/json/JSONTokener;->character:I

    .line 404
    .local v2, startCharacter:I
    iget v4, p0, Lorg/json/JSONTokener;->line:I

    .line 405
    .local v4, startLine:I
    iget-object v5, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    const v6, 0x7fffffff

    invoke-virtual {v5, v6}, Ljava/io/Reader;->mark(I)V

    .line 407
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 408
    .local v0, c:C
    if-nez v0, :cond_1

    .line 409
    iget-object v5, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v5}, Ljava/io/Reader;->reset()V

    .line 410
    iput v3, p0, Lorg/json/JSONTokener;->index:I

    .line 411
    iput v2, p0, Lorg/json/JSONTokener;->character:I

    .line 412
    iput v4, p0, Lorg/json/JSONTokener;->line:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_0
    return v0

    .line 415
    :cond_1
    if-ne v0, p1, :cond_0

    .line 420
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    goto :goto_0

    .line 416
    .end local v0           #c:C
    .end local v2           #startCharacter:I
    .end local v3           #startIndex:I
    .end local v4           #startLine:I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 417
    .local v1, exc:Ljava/io/IOException;
    new-instance v5, Lorg/json/JSONException;

    invoke-direct {v5, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public syntaxError(Ljava/lang/String;)Lorg/json/JSONException;
    .locals 3
    .parameter "message"

    .prologue
    .line 432
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/JSONTokener;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/json/JSONTokener;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/json/JSONTokener;->character:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/json/JSONTokener;->line:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
