.class public Lcom/android/inputmethod/latin/TextEntryState;
.super Ljava/lang/Object;
.source "TextEntryState.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sPreviousState:I

.field private static sState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    const-class v0, Lcom/android/inputmethod/latin/TextEntryState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/TextEntryState;->TAG:Ljava/lang/String;

    .line 38
    sput v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    .line 39
    sput v1, Lcom/android/inputmethod/latin/TextEntryState;->sPreviousState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acceptedDefault(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "typedWord"
    .parameter "actualWord"

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnAutoSuggestion(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "typedWord"
    .parameter "actualWord"

    .prologue
    const/16 v2, 0xb

    .line 77
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    if-ne v0, v2, :cond_1

    .line 78
    :cond_0
    invoke-static {v2}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_1
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_0
.end method

.method public static acceptedTyped(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "typedWord"

    .prologue
    .line 72
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    .line 74
    return-void
.end method

.method public static backToAcceptedDefault(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "typedWord"

    .prologue
    .line 58
    if-nez p0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 59
    :cond_0
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 63
    :pswitch_1
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static backspace()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 156
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 157
    invoke-static {v2}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    .line 158
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnAutoSuggestionCanceled()V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    if-ne v0, v2, :cond_0

    .line 160
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_0
.end method

.method public static getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->stateName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAcceptedDefault()Z
    .locals 2

    .prologue
    .line 171
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPunctuationAfterAccepted()Z
    .locals 2

    .prologue
    .line 183
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRecorrecting()Z
    .locals 2

    .prologue
    .line 187
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSpaceAfterPicked()Z
    .locals 2

    .prologue
    .line 175
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUndoCommit()Z
    .locals 2

    .prologue
    .line 179
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onAbortRecorrection()V
    .locals 2

    .prologue
    .line 92
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    .line 96
    :cond_1
    return-void
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    .line 168
    return-void
.end method

.method public static selectedForRecorrection()V
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    .line 89
    return-void
.end method

.method private static setState(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 42
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sPreviousState:I

    .line 43
    sput p0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    .line 44
    return-void
.end method

.method private static stateName(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 195
    packed-switch p0, :pswitch_data_0

    .line 207
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 196
    :pswitch_0
    const-string v0, "START"

    goto :goto_0

    .line 197
    :pswitch_1
    const-string v0, "IN_WORD"

    goto :goto_0

    .line 198
    :pswitch_2
    const-string v0, "ACCEPTED_DEFAULT"

    goto :goto_0

    .line 199
    :pswitch_3
    const-string v0, "PICKED_SUGGESTION"

    goto :goto_0

    .line 200
    :pswitch_4
    const-string v0, "PUNCTUATION_AFTER_WORD"

    goto :goto_0

    .line 201
    :pswitch_5
    const-string v0, "PUNCTUATION_AFTER_ACCEPTED"

    goto :goto_0

    .line 202
    :pswitch_6
    const-string v0, "SPACE_AFTER_ACCEPTED"

    goto :goto_0

    .line 203
    :pswitch_7
    const-string v0, "SPACE_AFTER_PICKED"

    goto :goto_0

    .line 204
    :pswitch_8
    const-string v0, "UNDO_COMMIT"

    goto :goto_0

    .line 205
    :pswitch_9
    const-string v0, "RECORRECTING"

    goto :goto_0

    .line 206
    :pswitch_a
    const-string v0, "PICKED_RECORRECTION"

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static typedCharacter(CZ)V
    .locals 5
    .parameter "c"
    .parameter "isSeparator"

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 99
    const/16 v1, 0x20

    if-ne p0, v1, :cond_1

    move v0, v2

    .line 100
    .local v0, isSpace:Z
    :goto_0
    sget v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    packed-switch v1, :pswitch_data_0

    .line 153
    :cond_0
    :goto_1
    return-void

    .line 99
    .end local v0           #isSpace:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 102
    .restart local v0       #isSpace:Z
    :pswitch_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    .line 103
    :cond_2
    invoke-static {v2}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_1

    .line 111
    :pswitch_1
    if-eqz v0, :cond_3

    .line 112
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_1

    .line 113
    :cond_3
    if-eqz p1, :cond_4

    .line 115
    invoke-static {v4}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_1

    .line 117
    :cond_4
    invoke-static {v3}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_1

    .line 122
    :pswitch_2
    if-eqz v0, :cond_5

    .line 123
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_1

    .line 124
    :cond_5
    if-eqz p1, :cond_6

    .line 126
    invoke-static {v4}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_1

    .line 128
    :cond_6
    invoke-static {v3}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_1

    .line 135
    :pswitch_3
    if-nez v0, :cond_7

    if-nez p1, :cond_7

    .line 136
    invoke-static {v3}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_1

    .line 138
    :cond_7
    invoke-static {v2}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_1

    .line 142
    :pswitch_4
    if-nez v0, :cond_8

    if-eqz p1, :cond_9

    .line 143
    :cond_8
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_1

    .line 145
    :cond_9
    invoke-static {v3}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_1

    .line 149
    :pswitch_5
    invoke-static {v2}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_1

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method
