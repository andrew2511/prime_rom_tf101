.class public Ljava/util/StringTokenizer;
.super Ljava/lang/Object;
.source "StringTokenizer.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private delimiters:Ljava/lang/String;

.field private position:I

.field private returnDelimiters:Z

.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "string"

    .prologue
    .line 123
    const-string v0, " \t\n\r\u000c"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "string"
    .parameter "delimiters"

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter "string"
    .parameter "delimiters"
    .parameter "returnDelimiters"

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    if-eqz p1, :cond_f

    .line 159
    iput-object p1, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    .line 160
    iput-object p2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    .line 161
    iput-boolean p3, p0, Ljava/util/StringTokenizer;->returnDelimiters:Z

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/StringTokenizer;->position:I

    .line 165
    return-void

    .line 164
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public countTokens()I
    .registers 8

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, count:I
    const/4 v2, 0x0

    .line 176
    .local v2, inToken:Z
    iget v1, p0, Ljava/util/StringTokenizer;->position:I

    .local v1, i:I
    iget-object v4, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, length:I
    :goto_a
    if-ge v1, v3, :cond_2b

    .line 177
    iget-object v4, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v5, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ltz v4, :cond_29

    .line 178
    iget-boolean v4, p0, Ljava/util/StringTokenizer;->returnDelimiters:Z

    if-eqz v4, :cond_21

    .line 179
    add-int/lit8 v0, v0, 0x1

    .line 180
    :cond_21
    if-eqz v2, :cond_26

    .line 181
    add-int/lit8 v0, v0, 0x1

    .line 182
    const/4 v2, 0x0

    .line 176
    :cond_26
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 185
    :cond_29
    const/4 v2, 0x1

    goto :goto_26

    .line 188
    :cond_2b
    if-eqz v2, :cond_2f

    .line 189
    add-int/lit8 v0, v0, 0x1

    .line 190
    :cond_2f
    return v0
.end method

.method public hasMoreElements()Z
    .registers 2

    .prologue
    .line 200
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    return v0
.end method

.method public hasMoreTokens()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 209
    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 210
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 212
    :cond_c
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 213
    .local v1, length:I
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    if-ge v2, v1, :cond_34

    .line 214
    iget-boolean v2, p0, Ljava/util/StringTokenizer;->returnDelimiters:Z

    if-eqz v2, :cond_1c

    move v2, v5

    .line 223
    :goto_1b
    return v2

    .line 219
    :cond_1c
    iget v0, p0, Ljava/util/StringTokenizer;->position:I

    .local v0, i:I
    :goto_1e
    if-ge v0, v1, :cond_34

    .line 220
    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_31

    move v2, v5

    .line 221
    goto :goto_1b

    .line 219
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .end local v0           #i:I
    :cond_34
    move v2, v4

    .line 223
    goto :goto_1b
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 235
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 246
    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 247
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 249
    :cond_b
    iget v0, p0, Ljava/util/StringTokenizer;->position:I

    .line 250
    .local v0, i:I
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 252
    .local v1, length:I
    if-ge v0, v1, :cond_b3

    .line 253
    iget-boolean v2, p0, Ljava/util/StringTokenizer;->returnDelimiters:Z

    if-eqz v2, :cond_6b

    .line 254
    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_3a

    .line 255
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljava/util/StringTokenizer;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 269
    :goto_39
    return-object v2

    .line 256
    :cond_3a
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/StringTokenizer;->position:I

    :goto_40
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    if-ge v2, v1, :cond_64

    .line 257
    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_5d

    .line 258
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    .line 256
    :cond_5d
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/StringTokenizer;->position:I

    goto :goto_40

    .line 259
    :cond_64
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    .line 262
    :cond_6b
    :goto_6b
    if-ge v0, v1, :cond_7e

    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_7e

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 264
    :cond_7e
    iput v0, p0, Ljava/util/StringTokenizer;->position:I

    .line 265
    if-ge v0, v1, :cond_b3

    .line 266
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/StringTokenizer;->position:I

    :goto_88
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    if-ge v2, v1, :cond_ac

    .line 267
    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_a5

    .line 268
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    .line 266
    :cond_a5
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/StringTokenizer;->position:I

    goto :goto_88

    .line 269
    :cond_ac
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    .line 272
    :cond_b3
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public nextToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "delims"

    .prologue
    .line 286
    iput-object p1, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    .line 287
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
