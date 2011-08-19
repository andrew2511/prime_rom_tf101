.class Lcom/android/inputmethod/latin/Utils$RingCharBuffer;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RingCharBuffer"
.end annotation


# static fields
.field private static sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;


# instance fields
.field private mCharBuf:[C

.field private mContext:Landroid/inputmethodservice/InputMethodService;

.field private mEnabled:Z

.field private mEnd:I

.field mLength:I

.field private mUsabilityStudy:Z

.field private mXBuf:[I

.field private mYBuf:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    const/4 v0, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnabled:Z

    .line 158
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mUsabilityStudy:Z

    .line 159
    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    .line 160
    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    .line 161
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    .line 162
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mXBuf:[I

    .line 163
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mYBuf:[I

    .line 167
    return-void
.end method

.method public static getInstance()Lcom/android/inputmethod/latin/Utils$RingCharBuffer;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    return-object v0
.end method

.method public static init(Landroid/inputmethodservice/InputMethodService;ZZ)Lcom/android/inputmethod/latin/Utils$RingCharBuffer;
    .locals 2
    .parameter "context"
    .parameter "enabled"
    .parameter "usabilityStudy"

    .prologue
    .line 173
    sget-object v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    iput-object p0, v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mContext:Landroid/inputmethodservice/InputMethodService;

    .line 174
    sget-object v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnabled:Z

    .line 175
    sget-object v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    iput-boolean p2, v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mUsabilityStudy:Z

    .line 176
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->init(Landroid/inputmethodservice/InputMethodService;)V

    .line 177
    sget-object v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    return-object v0

    .line 174
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private normalize(I)I
    .locals 2
    .parameter "in"

    .prologue
    .line 180
    rem-int/lit8 v0, p1, 0x14

    .line 181
    .local v0, ret:I
    if-gez v0, :cond_0

    add-int/lit8 v1, v0, 0x14

    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public getLastChar()C
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 206
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    if-ge v0, v2, :cond_0

    .line 207
    const v0, 0xfffc

    .line 209
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v1

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method public getLastString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    if-ge v1, v3, :cond_0

    .line 233
    iget-object v3, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    iget v4, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v4

    aget-char v0, v3, v4

    .line 234
    .local v0, c:C
    iget-object v3, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mContext:Landroid/inputmethodservice/InputMethodService;

    check-cast v3, Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v3, v0}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 235
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    .end local v0           #c:C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getPreviousX(CI)I
    .locals 3
    .parameter "c"
    .parameter "back"

    .prologue
    .line 213
    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v0

    .line 214
    .local v0, index:I
    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    if-le v1, p2, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-eq v1, v2, :cond_1

    .line 216
    :cond_0
    const/4 v1, -0x2

    .line 218
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mXBuf:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method public getPreviousY(CI)I
    .locals 3
    .parameter "c"
    .parameter "back"

    .prologue
    .line 222
    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v0

    .line 223
    .local v0, index:I
    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    if-le v1, p2, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-eq v1, v2, :cond_1

    .line 225
    :cond_0
    const/4 v1, -0x2

    .line 227
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mYBuf:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method public pop()C
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 197
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    if-ge v0, v1, :cond_0

    .line 198
    const v0, 0xfffc

    .line 202
    :goto_0
    return v0

    .line 200
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    .line 201
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    .line 202
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method public push(CII)V
    .locals 2
    .parameter "c"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnabled:Z

    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mUsabilityStudy:Z

    if-eqz v0, :cond_2

    .line 186
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->writeChar(CII)V

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    aput-char p1, v0, v1

    .line 189
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mXBuf:[I

    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    aput p2, v0, v1

    .line 190
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mYBuf:[I

    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    aput p3, v0, v1

    .line 191
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    .line 192
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 193
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    goto :goto_0
.end method
