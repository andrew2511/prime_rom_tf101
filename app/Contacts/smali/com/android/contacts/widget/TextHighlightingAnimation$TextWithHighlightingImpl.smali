.class public Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;
.super Ljava/lang/Object;
.source "TextHighlightingAnimation.java"

# interfaces
.implements Lcom/android/contacts/widget/TextWithHighlighting;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/widget/TextHighlightingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextWithHighlightingImpl"
.end annotation


# instance fields
.field private mDimmingEnabled:Z

.field private mDimmingSpanEnd:I

.field private mDimmingSpanStart:I

.field private final mSpans:[Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;

.field private mString:Ljava/lang/String;

.field private mText:Landroid/database/CharArrayBuffer;

.field final synthetic this$0:Lcom/android/contacts/widget/TextHighlightingAnimation;


# direct methods
.method public constructor <init>(Lcom/android/contacts/widget/TextHighlightingAnimation;)V
    .locals 3
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->this$0:Lcom/android/contacts/widget/TextHighlightingAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/contacts/widget/TextHighlightingAnimation;->access$000(Lcom/android/contacts/widget/TextHighlightingAnimation;)Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->mSpans:[Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;

    .line 67
    return-void
.end method

.method private indexOf(Landroid/database/CharArrayBuffer;Landroid/database/CharArrayBuffer;)I
    .locals 10
    .parameter "buffer1"
    .parameter "buffer2"

    .prologue
    const/4 v9, 0x1

    .line 91
    iget-object v5, p1, Landroid/database/CharArrayBuffer;->data:[C

    .line 92
    .local v5, string1:[C
    iget-object v6, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 93
    .local v6, string2:[C
    iget v0, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 94
    .local v0, count1:I
    iget v1, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 97
    .local v1, count2:I
    :goto_0
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    sub-int v7, v0, v9

    aget-char v7, v5, v7

    sub-int v8, v1, v9

    aget-char v8, v6, v8

    if-ne v7, v8, :cond_0

    .line 98
    add-int/lit8 v0, v0, -0x1

    .line 99
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 102
    :cond_0
    move v4, v1

    .line 103
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 104
    add-int v7, v2, v4

    if-le v7, v0, :cond_1

    .line 105
    sub-int v4, v0, v2

    .line 108
    :cond_1
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    if-ge v3, v4, :cond_2

    .line 109
    add-int v7, v2, v3

    aget-char v7, v5, v7

    aget-char v8, v6, v3

    if-eq v7, v8, :cond_3

    .line 113
    :cond_2
    if-ne v3, v4, :cond_4

    move v7, v2

    .line 118
    .end local v3           #j:I
    :goto_3
    return v7

    .line 108
    .restart local v3       #j:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 103
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 118
    .end local v3           #j:I
    :cond_5
    const/4 v7, -0x1

    goto :goto_3
.end method


# virtual methods
.method public charAt(I)C
    .locals 1
    .parameter "index"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->mText:Landroid/database/CharArrayBuffer;

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"

    .prologue
    .line 138
    iget v0, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->mDimmingSpanEnd:I

    return v0
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"

    .prologue
    .line 133
    iget v0, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->mDimmingSpanStart:I

    return v0
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 124
    .local p3, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->mDimmingEnabled:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object p0, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->mSpans:[Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    .line 127
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    invoke-static {}, Lcom/android/contacts/widget/TextHighlightingAnimation;->access$100()[Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->mText:Landroid/database/CharArrayBuffer;

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 1
    .parameter "start"
    .parameter "limit"
    .parameter "type"

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public setText(Landroid/database/CharArrayBuffer;Landroid/database/CharArrayBuffer;)V
    .locals 5
    .parameter "baseText"
    .parameter "highlightedText"

    .prologue
    const/4 v4, 0x0

    .line 70
    iput-object p1, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->mText:Landroid/database/CharArrayBuffer;

    .line 73
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->mText:Landroid/database/CharArrayBuffer;

    iget-object v2, v2, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v3, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->mText:Landroid/database/CharArrayBuffer;

    iget v3, v3, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->mString:Ljava/lang/String;

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->indexOf(Landroid/database/CharArrayBuffer;Landroid/database/CharArrayBuffer;)I

    move-result v0

    .line 77
    .local v0, index:I
    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 78
    :cond_0
    iput-boolean v4, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->mDimmingEnabled:Z

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->mDimmingEnabled:Z

    .line 81
    iput v4, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->mDimmingSpanStart:I

    .line 82
    iput v0, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->mDimmingSpanEnd:I

    goto :goto_0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 161
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->mText:Landroid/database/CharArrayBuffer;

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;->mString:Ljava/lang/String;

    return-object v0
.end method
