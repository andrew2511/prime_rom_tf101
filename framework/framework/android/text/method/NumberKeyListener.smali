.class public abstract Landroid/text/method/NumberKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "NumberKeyListener.java"

# interfaces
.implements Landroid/text/InputFilter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    return-void
.end method

.method protected static ok([CC)Z
    .registers 5
    .parameter "accept"
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    .line 82
    array-length v1, p0

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_4
    if-ltz v0, :cond_f

    .line 83
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_c

    move v1, v2

    .line 88
    :goto_b
    return v1

    .line 82
    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 88
    :cond_f
    const/4 v1, 0x0

    goto :goto_b
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 15
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v7, 0x1

    .line 45
    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    move-result-object v0

    .line 46
    .local v0, accept:[C
    const/4 v1, 0x0

    .line 49
    .local v1, filter:Z
    move v3, p2

    .local v3, i:I
    :goto_7
    if-ge v3, p3, :cond_13

    .line 50
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v0, v6}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    move-result v6

    if-nez v6, :cond_17

    .line 55
    :cond_13
    if-ne v3, p3, :cond_1a

    .line 57
    const/4 v6, 0x0

    .line 78
    :goto_16
    return-object v6

    .line 49
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 60
    :cond_1a
    sub-int v6, p3, p2

    if-ne v6, v7, :cond_21

    .line 62
    const-string v6, ""

    goto :goto_16

    .line 65
    :cond_21
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 67
    .local v2, filtered:Landroid/text/SpannableStringBuilder;
    sub-int/2addr v3, p2

    .line 68
    sub-int/2addr p3, p2

    .line 70
    sub-int v5, p3, p2

    .line 72
    .local v5, len:I
    sub-int v4, p3, v7

    .local v4, j:I
    :goto_2c
    if-lt v4, v3, :cond_40

    .line 73
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v0, v6}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 74
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v4, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 72
    :cond_3d
    add-int/lit8 v4, v4, -0x1

    goto :goto_2c

    :cond_40
    move-object v6, v2

    .line 78
    goto :goto_16
.end method

.method protected abstract getAcceptedChars()[C
.end method

.method protected lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I
    .registers 6
    .parameter "event"
    .parameter "content"

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 15
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v9, 0x30

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 97
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 98
    .local v0, a:I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 100
    .local v1, b:I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 101
    .local v5, selStart:I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 104
    .local v4, selEnd:I
    if-ltz v5, :cond_18

    if-gez v4, :cond_1d

    .line 105
    :cond_18
    const/4 v4, 0x0

    move v5, v4

    .line 106
    invoke-static {p2, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 109
    :cond_1d
    if-eqz p4, :cond_41

    invoke-virtual {p0, p4, p2}, Landroid/text/method/NumberKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v6

    move v2, v6

    .line 110
    .local v2, i:I
    :goto_24
    if-eqz p4, :cond_43

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    move v3, v6

    .line 111
    .local v3, repeatCount:I
    :goto_2b
    if-nez v3, :cond_45

    .line 112
    if-eqz v2, :cond_65

    .line 113
    if-eq v5, v4, :cond_34

    .line 114
    invoke-static {p2, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 117
    :cond_34
    int-to-char v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v5, v4, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 119
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    move v6, v8

    .line 134
    :goto_40
    return v6

    .end local v2           #i:I
    .end local v3           #repeatCount:I
    :cond_41
    move v2, v7

    .line 109
    goto :goto_24

    .restart local v2       #i:I
    :cond_43
    move v3, v7

    .line 110
    goto :goto_2b

    .line 122
    .restart local v3       #repeatCount:I
    :cond_45
    if-ne v2, v9, :cond_65

    if-ne v3, v8, :cond_65

    .line 125
    if-ne v5, v4, :cond_65

    if-lez v4, :cond_65

    sub-int v6, v5, v8

    invoke-interface {p2, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_65

    .line 127
    sub-int v6, v5, v8

    const/16 v7, 0x2b

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v6, v4, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 128
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    move v6, v8

    .line 129
    goto :goto_40

    .line 133
    :cond_65
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v6

    goto :goto_40
.end method
