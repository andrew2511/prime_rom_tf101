.class Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;
.super Landroid/text/style/CharacterStyle;
.source "TextHighlightingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/widget/TextHighlightingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DimmingSpan"
.end annotation


# instance fields
.field private mAlpha:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/widget/TextHighlightingAnimation$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 177
    iput p1, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;->mAlpha:I

    .line 178
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 8
    .parameter "ds"

    .prologue
    .line 184
    iget-object v3, p1, Landroid/text/TextPaint;->drawableState:[I

    .line 185
    .local v3, states:[I
    if-eqz v3, :cond_0

    .line 186
    array-length v1, v3

    .line 187
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 188
    aget v4, v3, v2

    sparse-switch v4, :sswitch_data_0

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_0
    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    .line 200
    .local v0, color:I
    iget v4, p0, Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;->mAlpha:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 201
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 202
    .end local v0           #color:I
    :sswitch_0
    return-void

    .line 188
    :sswitch_data_0
    .sparse-switch
        0x101009c -> :sswitch_0
        0x10100a1 -> :sswitch_0
        0x10100a7 -> :sswitch_0
    .end sparse-switch
.end method
