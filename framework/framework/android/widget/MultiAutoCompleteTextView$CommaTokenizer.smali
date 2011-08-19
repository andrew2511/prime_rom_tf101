.class public Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;
.super Ljava/lang/Object;
.source "MultiAutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommaTokenizer"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .registers 7
    .parameter "text"
    .parameter "cursor"

    .prologue
    .line 238
    move v0, p2

    .line 239
    .local v0, i:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 241
    .local v1, len:I
    :goto_5
    if-ge v0, v1, :cond_14

    .line 242
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_11

    move v2, v0

    .line 249
    :goto_10
    return v2

    .line 245
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_14
    move v2, v1

    .line 249
    goto :goto_10
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .registers 6
    .parameter "text"
    .parameter "cursor"

    .prologue
    .line 225
    move v0, p2

    .line 227
    .local v0, i:I
    :goto_1
    if-lez v0, :cond_11

    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_11

    .line 228
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 230
    :cond_11
    :goto_11
    if-ge v0, p2, :cond_1e

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1e

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 234
    :cond_1e
    return v0
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 10
    .parameter "text"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 253
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 255
    .local v7, i:I
    :goto_6
    if-lez v7, :cond_15

    sub-int v1, v7, v4

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_15

    .line 256
    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    .line 259
    :cond_15
    if-lez v7, :cond_23

    sub-int v1, v7, v4

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_23

    move-object v1, p1

    .line 268
    :goto_22
    return-object v1

    .line 262
    :cond_23
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_4f

    .line 263
    new-instance v5, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 264
    .local v5, sp:Landroid/text/SpannableString;
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v1, v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Ljava/lang/Object;

    move v6, v2

    invoke-static/range {v1 .. v6}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    move-object v1, v5

    .line 266
    goto :goto_22

    .line 268
    .end local v5           #sp:Landroid/text/SpannableString;
    :cond_4f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_22
.end method
