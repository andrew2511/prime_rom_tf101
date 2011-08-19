.class Lcom/nuance/xt9/input/EditState;
.super Ljava/lang/Object;
.source "EditState.java"


# static fields
.field static final MAX_AUTO_ACCEPT_TIP_COUNT:I = 0x5

.field static final MAX_AUTO_ACCEPT_TIP_DISPLAY_COUNT:I = 0x4

.field static final MAX_TRACE_TIP_COUNT:I = 0xa

.field static final MAX_TRACE_TIP_DISPLAY_COUNT:I = 0x4

.field static final STATE_CAN_NOT_RECAPTURE:I = 0x3

.field static final STATE_COMPOSE:I = 0x1

.field static final STATE_END:I = 0x9

.field static final STATE_PUNC_OR_SYMBOL_AFTER_SELECTED_WORD:I = 0x7

.field static final STATE_RECAPTURE:I = 0x2

.field static final STATE_RESELECT_TO_REPLACE:I = 0x8

.field static final STATE_SELECT_DEFAULT_WORD:I = 0x4

.field static final STATE_SELECT_NONE_DEFAULT_WORD:I = 0x5

.field static final STATE_SPACE_AFTER_SELECTED_WORD:I = 0x6

.field static final STATE_START:I = 0x0

.field static final TAG:Ljava/lang/String; = "EditState"

.field static mAutoAcceptTipCount:I

.field static mAutoAcceptTipDisplayCount:I

.field private static mBackspaceCount:I

.field private static mCharacterTyped:Ljava/lang/StringBuilder;

.field private static mNumberActualWordTypedNotDefaultWords:I

.field private static mNumberOfDefaultSelectedWords:I

.field private static mNumberOfSelectedWords:I

.field private static mPunctuationOrSymbolCount:I

.field private static mSelectedWord:Ljava/lang/StringBuilder;

.field private static mSessionCount:I

.field private static mSpaceCount:I

.field private static mState:I

.field static mTraceTipCount:I

.field static mTraceTipDisplayCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput v0, Lcom/nuance/xt9/input/EditState;->mAutoAcceptTipCount:I

    .line 17
    sput v0, Lcom/nuance/xt9/input/EditState;->mTraceTipCount:I

    .line 18
    sput v0, Lcom/nuance/xt9/input/EditState;->mAutoAcceptTipDisplayCount:I

    .line 19
    sput v0, Lcom/nuance/xt9/input/EditState;->mTraceTipDisplayCount:I

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/nuance/xt9/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/nuance/xt9/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->start()V

    .line 90
    return-void
.end method

.method public static appendCharacterTyped(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "seq"

    .prologue
    .line 179
    sget-object v0, Lcom/nuance/xt9/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 180
    return-void
.end method

.method public static backSpace()V
    .locals 3

    .prologue
    .line 127
    sget v0, Lcom/nuance/xt9/input/EditState;->mBackspaceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/xt9/input/EditState;->mBackspaceCount:I

    .line 129
    sget-object v0, Lcom/nuance/xt9/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 130
    sget-object v0, Lcom/nuance/xt9/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nuance/xt9/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 133
    :cond_0
    sget v0, Lcom/nuance/xt9/input/EditState;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 144
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->start()V

    .line 148
    :pswitch_0
    return-void

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static breakContextState()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 268
    sget v0, Lcom/nuance/xt9/input/EditState;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    sget v0, Lcom/nuance/xt9/input/EditState;->mState:I

    if-eqz v0, :cond_0

    sget v0, Lcom/nuance/xt9/input/EditState;->mState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    sget v0, Lcom/nuance/xt9/input/EditState;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    sget v0, Lcom/nuance/xt9/input/EditState;->mState:I

    if-eq v0, v2, :cond_0

    move v0, v2

    .line 277
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canDoRecapture()Z
    .locals 2

    .prologue
    .line 172
    sget v0, Lcom/nuance/xt9/input/EditState;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget v0, Lcom/nuance/xt9/input/EditState;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canNotRecapture()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/nuance/xt9/input/EditState;->set(I)V

    .line 169
    return-void
.end method

.method public static characterTyped(C)V
    .locals 1
    .parameter "ch"

    .prologue
    .line 176
    sget-object v0, Lcom/nuance/xt9/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    return-void
.end method

.method public static compose()V
    .locals 2

    .prologue
    .line 202
    sget-object v0, Lcom/nuance/xt9/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 203
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/nuance/xt9/input/EditState;->set(I)V

    .line 204
    return-void
.end method

.method public static current()I
    .locals 1

    .prologue
    .line 260
    sget v0, Lcom/nuance/xt9/input/EditState;->mState:I

    return v0
.end method

.method public static cursorChanged(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "charBeforeCusor"

    .prologue
    .line 114
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 115
    :cond_0
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->start()V

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 117
    :cond_2
    sget v0, Lcom/nuance/xt9/input/EditState;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    sget v0, Lcom/nuance/xt9/input/EditState;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_3
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/nuance/xt9/input/EditState;->isWhiteSpace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->start()V

    goto :goto_0
.end method

.method public static end()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    sget-object v0, Lcom/nuance/xt9/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 198
    sget-object v0, Lcom/nuance/xt9/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 199
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/nuance/xt9/input/EditState;->set(I)V

    .line 200
    return-void
.end method

.method public static endSession()V
    .locals 0

    .prologue
    .line 82
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->resetCounts()V

    .line 83
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->end()V

    .line 86
    return-void
.end method

.method public static isWhiteSpace(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 251
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static punctuationOrSymbols()V
    .locals 1

    .prologue
    .line 151
    sget v0, Lcom/nuance/xt9/input/EditState;->mPunctuationOrSymbolCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/xt9/input/EditState;->mPunctuationOrSymbolCount:I

    .line 153
    sget v0, Lcom/nuance/xt9/input/EditState;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 161
    :pswitch_0
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->start()V

    .line 165
    :goto_0
    return-void

    .line 157
    :pswitch_1
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/nuance/xt9/input/EditState;->set(I)V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static recapture()V
    .locals 2

    .prologue
    .line 207
    sget-object v0, Lcom/nuance/xt9/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 208
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/nuance/xt9/input/EditState;->set(I)V

    .line 209
    return-void
.end method

.method public static reselectToReplace()V
    .locals 2

    .prologue
    .line 212
    sget-object v0, Lcom/nuance/xt9/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 213
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/nuance/xt9/input/EditState;->set(I)V

    .line 214
    return-void
.end method

.method private static resetCounts()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 183
    sput v0, Lcom/nuance/xt9/input/EditState;->mPunctuationOrSymbolCount:I

    .line 184
    sput v0, Lcom/nuance/xt9/input/EditState;->mBackspaceCount:I

    .line 185
    sput v0, Lcom/nuance/xt9/input/EditState;->mSpaceCount:I

    .line 186
    sput v0, Lcom/nuance/xt9/input/EditState;->mNumberOfDefaultSelectedWords:I

    .line 187
    sput v0, Lcom/nuance/xt9/input/EditState;->mNumberOfSelectedWords:I

    .line 188
    return-void
.end method

.method public static resetToolTipState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    sput v0, Lcom/nuance/xt9/input/EditState;->mAutoAcceptTipCount:I

    .line 68
    sput v0, Lcom/nuance/xt9/input/EditState;->mTraceTipCount:I

    .line 69
    sput v0, Lcom/nuance/xt9/input/EditState;->mAutoAcceptTipDisplayCount:I

    .line 70
    sput v0, Lcom/nuance/xt9/input/EditState;->mTraceTipDisplayCount:I

    .line 71
    return-void
.end method

.method public static selectDefaultWord(Ljava/lang/String;)V
    .locals 2
    .parameter "wordSelected"

    .prologue
    const/4 v1, 0x0

    .line 217
    sget v0, Lcom/nuance/xt9/input/EditState;->mNumberOfSelectedWords:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/xt9/input/EditState;->mNumberOfSelectedWords:I

    .line 218
    sget v0, Lcom/nuance/xt9/input/EditState;->mNumberOfDefaultSelectedWords:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/xt9/input/EditState;->mNumberOfDefaultSelectedWords:I

    .line 220
    sget-object v0, Lcom/nuance/xt9/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    sget v0, Lcom/nuance/xt9/input/EditState;->mNumberActualWordTypedNotDefaultWords:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/xt9/input/EditState;->mNumberActualWordTypedNotDefaultWords:I

    .line 224
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/nuance/xt9/input/EditState;->set(I)V

    .line 225
    sget-object v0, Lcom/nuance/xt9/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    sget-object v0, Lcom/nuance/xt9/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 230
    return-void
.end method

.method public static selectWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "wordSelected"
    .parameter "defaultWord"

    .prologue
    const/4 v1, 0x0

    .line 233
    sget v0, Lcom/nuance/xt9/input/EditState;->mNumberOfSelectedWords:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/xt9/input/EditState;->mNumberOfSelectedWords:I

    .line 235
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/nuance/xt9/input/EditState;->set(I)V

    .line 237
    sget v0, Lcom/nuance/xt9/input/EditState;->mNumberOfDefaultSelectedWords:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/xt9/input/EditState;->mNumberOfDefaultSelectedWords:I

    .line 243
    :goto_0
    sget-object v0, Lcom/nuance/xt9/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 244
    sget-object v0, Lcom/nuance/xt9/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 248
    return-void

    .line 240
    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/nuance/xt9/input/EditState;->set(I)V

    goto :goto_0
.end method

.method public static selectedWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lcom/nuance/xt9/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static set(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 256
    sput p0, Lcom/nuance/xt9/input/EditState;->mState:I

    .line 257
    return-void
.end method

.method public static spaceKey()V
    .locals 1

    .prologue
    .line 93
    sget v0, Lcom/nuance/xt9/input/EditState;->mSpaceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/xt9/input/EditState;->mSpaceCount:I

    .line 95
    sget v0, Lcom/nuance/xt9/input/EditState;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 104
    :pswitch_0
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->start()V

    .line 108
    :goto_0
    return-void

    .line 100
    :pswitch_1
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/nuance/xt9/input/EditState;->set(I)V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static start()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    sget-object v0, Lcom/nuance/xt9/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 192
    sget-object v0, Lcom/nuance/xt9/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 193
    invoke-static {v1}, Lcom/nuance/xt9/input/EditState;->set(I)V

    .line 194
    return-void
.end method

.method public static startSession()V
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/nuance/xt9/input/EditState;->mSessionCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/xt9/input/EditState;->mSessionCount:I

    .line 75
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->resetCounts()V

    .line 76
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->start()V

    .line 79
    return-void
.end method
