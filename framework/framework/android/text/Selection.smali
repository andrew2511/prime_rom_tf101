.class public Landroid/text/Selection;
.super Ljava/lang/Object;
.source "Selection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Selection$1;,
        Landroid/text/Selection$END;,
        Landroid/text/Selection$START;
    }
.end annotation


# static fields
.field public static final SELECTION_END:Ljava/lang/Object;

.field public static final SELECTION_START:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 427
    new-instance v0, Landroid/text/Selection$START;

    invoke-direct {v0, v1}, Landroid/text/Selection$START;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    .line 428
    new-instance v0, Landroid/text/Selection$END;

    invoke-direct {v0, v1}, Landroid/text/Selection$END;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static chooseHorizontal(Landroid/text/Layout;III)I
    .registers 11
    .parameter "layout"
    .parameter "direction"
    .parameter "off1"
    .parameter "off2"

    .prologue
    .line 379
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 380
    .local v3, line1:I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 382
    .local v4, line2:I
    if-ne v3, v4, :cond_24

    .line 385
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 386
    .local v0, h1:F
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 388
    .local v1, h2:F
    if-gez p1, :cond_1c

    .line 391
    cmpg-float v6, v0, v1

    if-gez v6, :cond_1a

    move v6, p2

    .line 416
    .end local v0           #h1:F
    .end local v1           #h2:F
    :goto_19
    return v6

    .restart local v0       #h1:F
    .restart local v1       #h2:F
    :cond_1a
    move v6, p3

    .line 394
    goto :goto_19

    .line 398
    :cond_1c
    cmpl-float v6, v0, v1

    if-lez v6, :cond_22

    move v6, p2

    .line 399
    goto :goto_19

    :cond_22
    move v6, p3

    .line 401
    goto :goto_19

    .line 410
    .end local v0           #h1:F
    .end local v1           #h2:F
    :cond_24
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 411
    .local v2, line:I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 413
    .local v5, textdir:I
    if-ne v5, p1, :cond_33

    .line 414
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_19

    .line 416
    :cond_33
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_19
.end method

.method public static extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 9
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v6, 0x1

    .line 280
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 281
    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 283
    .local v2, line:I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v6

    if-ge v2, v4, :cond_32

    .line 286
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v4, v5, :cond_2b

    .line 288
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 289
    .local v1, h:F
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 294
    .end local v1           #h:F
    .local v3, move:I
    :goto_26
    invoke-static {p0, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v4, v6

    .line 301
    .end local v3           #move:I
    :goto_2a
    return v4

    .line 291
    :cond_2b
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .restart local v3       #move:I
    goto :goto_26

    .line 296
    .end local v3           #move:I
    :cond_32
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-eq v0, v4, :cond_41

    .line 297
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-static {p0, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v4, v6

    .line 298
    goto :goto_2a

    :cond_41
    move v4, v6

    .line 301
    goto :goto_2a
.end method

.method public static extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 5
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v2, 0x1

    .line 309
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 310
    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v1

    .line 312
    .local v1, to:I
    if-eq v1, v0, :cond_e

    .line 313
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 317
    :cond_e
    return v2
.end method

.method public static extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 5
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v2, 0x1

    .line 325
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 326
    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v1

    .line 328
    .local v1, to:I
    if-eq v1, v0, :cond_e

    .line 329
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 333
    :cond_e
    return v2
.end method

.method public static final extendSelection(Landroid/text/Spannable;I)V
    .registers 4
    .parameter "text"
    .parameter "index"

    .prologue
    .line 99
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, p1, :cond_f

    .line 100
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v1, 0x22

    invoke-interface {p0, v0, p1, p1, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 101
    :cond_f
    return-void
.end method

.method public static extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 4
    .parameter "text"
    .parameter "layout"

    .prologue
    .line 337
    const/4 v1, -0x1

    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 338
    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 339
    const/4 v1, 0x1

    return v1
.end method

.method public static extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 4
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v1, 0x1

    .line 343
    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 344
    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 345
    return v1
.end method

.method public static extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 9
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v6, 0x1

    .line 251
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 252
    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 254
    .local v2, line:I
    if-lez v2, :cond_2d

    .line 257
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    sub-int v5, v2, v6

    invoke-virtual {p1, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v4, v5, :cond_26

    .line 259
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 260
    .local v1, h:F
    sub-int v4, v2, v6

    invoke-virtual {p1, v4, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 265
    .end local v1           #h:F
    .local v3, move:I
    :goto_21
    invoke-static {p0, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v4, v6

    .line 272
    .end local v3           #move:I
    :goto_25
    return v4

    .line 262
    :cond_26
    sub-int v4, v2, v6

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .restart local v3       #move:I
    goto :goto_21

    .line 267
    .end local v3           #move:I
    :cond_2d
    if-eqz v0, :cond_35

    .line 268
    const/4 v4, 0x0

    invoke-static {p0, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v4, v6

    .line 269
    goto :goto_25

    :cond_35
    move v4, v6

    .line 272
    goto :goto_25
.end method

.method private static findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I
    .registers 9
    .parameter "text"
    .parameter "layout"
    .parameter "dir"

    .prologue
    const/4 v5, 0x1

    .line 361
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 362
    .local v3, pt:I
    invoke-virtual {p1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 363
    .local v1, line:I
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    .line 365
    .local v2, pdir:I
    mul-int v4, p2, v2

    if-gez v4, :cond_16

    .line 366
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 373
    :goto_15
    return v4

    .line 368
    :cond_16
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 370
    .local v0, end:I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-ne v1, v4, :cond_23

    move v4, v0

    .line 371
    goto :goto_15

    .line 373
    :cond_23
    sub-int v4, v0, v5

    goto :goto_15
.end method

.method public static final getSelectionEnd(Ljava/lang/CharSequence;)I
    .registers 2
    .parameter "text"

    .prologue
    .line 47
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_d

    .line 48
    check-cast p0, Landroid/text/Spanned;

    .end local p0
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 50
    :goto_c
    return v0

    .restart local p0
    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public static final getSelectionStart(Ljava/lang/CharSequence;)I
    .registers 2
    .parameter "text"

    .prologue
    .line 36
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_d

    .line 37
    check-cast p0, Landroid/text/Spanned;

    .end local p0
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 39
    :goto_c
    return v0

    .restart local p0
    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public static moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 12
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 161
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 162
    .local v6, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 164
    .local v0, end:I
    if-eq v6, v0, :cond_23

    .line 165
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 166
    .local v4, min:I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 168
    .local v3, max:I
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 170
    if-nez v4, :cond_21

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v7

    if-ne v3, v7, :cond_21

    move v7, v8

    .line 194
    .end local v3           #max:I
    .end local v4           #min:I
    :goto_20
    return v7

    .restart local v3       #max:I
    .restart local v4       #min:I
    :cond_21
    move v7, v9

    .line 174
    goto :goto_20

    .line 176
    .end local v3           #max:I
    .end local v4           #min:I
    :cond_23
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 178
    .local v2, line:I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v7

    sub-int/2addr v7, v9

    if-ge v2, v7, :cond_50

    .line 181
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    if-ne v7, v8, :cond_49

    .line 183
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 184
    .local v1, h:F
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 189
    .end local v1           #h:F
    .local v5, move:I
    :goto_44
    invoke-static {p0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v7, v9

    .line 190
    goto :goto_20

    .line 186
    .end local v5           #move:I
    :cond_49
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .restart local v5       #move:I
    goto :goto_44

    .end local v5           #move:I
    :cond_50
    move v7, v8

    .line 194
    goto :goto_20
.end method

.method public static moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 7
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v4, 0x1

    .line 203
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 204
    .local v1, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 206
    .local v0, end:I
    if-eq v1, v0, :cond_15

    .line 207
    const/4 v3, -0x1

    invoke-static {p1, v3, v1, v0}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v3

    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v3, v4

    .line 218
    :goto_14
    return v3

    .line 210
    :cond_15
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v2

    .line 212
    .local v2, to:I
    if-eq v2, v0, :cond_20

    .line 213
    invoke-static {p0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v3, v4

    .line 214
    goto :goto_14

    .line 218
    :cond_20
    const/4 v3, 0x0

    goto :goto_14
.end method

.method public static moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 7
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v4, 0x1

    .line 228
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 229
    .local v1, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 231
    .local v0, end:I
    if-eq v1, v0, :cond_14

    .line 232
    invoke-static {p1, v4, v1, v0}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v3

    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v3, v4

    .line 243
    :goto_13
    return v3

    .line 235
    :cond_14
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v2

    .line 237
    .local v2, to:I
    if-eq v2, v0, :cond_1f

    .line 238
    invoke-static {p0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v3, v4

    .line 239
    goto :goto_13

    .line 243
    :cond_1f
    const/4 v3, 0x0

    goto :goto_13
.end method

.method public static moveToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 4
    .parameter "text"
    .parameter "layout"

    .prologue
    .line 349
    const/4 v1, -0x1

    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 350
    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 351
    const/4 v1, 0x1

    return v1
.end method

.method public static moveToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 4
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v1, 0x1

    .line 355
    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 356
    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 357
    return v1
.end method

.method public static moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 12
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 120
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 121
    .local v6, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 123
    .local v0, end:I
    if-eq v6, v0, :cond_23

    .line 124
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 125
    .local v4, min:I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 127
    .local v3, max:I
    invoke-static {p0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 129
    if-nez v4, :cond_21

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v7

    if-ne v3, v7, :cond_21

    move v7, v8

    .line 153
    .end local v3           #max:I
    .end local v4           #min:I
    :goto_20
    return v7

    .restart local v3       #max:I
    .restart local v4       #min:I
    :cond_21
    move v7, v9

    .line 133
    goto :goto_20

    .line 135
    .end local v3           #max:I
    .end local v4           #min:I
    :cond_23
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 137
    .local v2, line:I
    if-lez v2, :cond_4b

    .line 140
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    sub-int v8, v2, v9

    invoke-virtual {p1, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    if-ne v7, v8, :cond_44

    .line 142
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 143
    .local v1, h:F
    sub-int v7, v2, v9

    invoke-virtual {p1, v7, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 148
    .end local v1           #h:F
    .local v5, move:I
    :goto_3f
    invoke-static {p0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v7, v9

    .line 149
    goto :goto_20

    .line 145
    .end local v5           #move:I
    :cond_44
    sub-int v7, v2, v9

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .restart local v5       #move:I
    goto :goto_3f

    .end local v5           #move:I
    :cond_4b
    move v7, v8

    .line 153
    goto :goto_20
.end method

.method public static final removeSelection(Landroid/text/Spannable;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 107
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 108
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public static final selectAll(Landroid/text/Spannable;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 93
    return-void
.end method

.method public static final setSelection(Landroid/text/Spannable;I)V
    .registers 2
    .parameter "text"
    .parameter "index"

    .prologue
    .line 85
    invoke-static {p0, p1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 86
    return-void
.end method

.method public static setSelection(Landroid/text/Spannable;II)V
    .registers 7
    .parameter "text"
    .parameter "start"
    .parameter "stop"

    .prologue
    .line 70
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 71
    .local v1, ostart:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 73
    .local v0, oend:I
    if-ne v1, p1, :cond_c

    if-eq v0, p2, :cond_1a

    .line 74
    :cond_c
    sget-object v2, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v3, 0x222

    invoke-interface {p0, v2, p1, p1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 76
    sget-object v2, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v3, 0x22

    invoke-interface {p0, v2, p2, p2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 79
    :cond_1a
    return-void
.end method
