.class public Lcom/nuance/xt9/input/KoreanInput;
.super Ljava/lang/Object;
.source "KoreanInput.java"


# static fields
.field public static final HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray; = null

.field public static final JAMO_SHIFT_LIST:Landroid/util/SparseIntArray; = null

.field public static final LOCKED:I = 0x2

.field public static final MAXWORDLEN:I = 0x40

.field public static final MAXWORDLIST:I = 0x20

.field public static final SHIFTED:I = 0x1

.field public static final UNSHIFTED:I = 0x0

.field private static final WORDCOMPLETIONLEN_INDEX:I = 0x1

.field private static final WORDLEN_INDEX:I

.field private static mInstance:Lcom/nuance/xt9/input/KoreanInput;

.field private static mNativeLibLoaded:Z

.field private static mRefCount:I


# instance fields
.field private mContext:I

.field private mDatabaseConfigFile:Ljava/lang/String;

.field private final mSymbolCounts:[S

.field private final mWord:[C

.field private final mWordCompletionLen:Lcom/nuance/xt9/input/Int;

.field private final mWordLen:Lcom/nuance/xt9/input/Int;

.field private final mWordLenResutls:[I

.field private final mWordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mWordPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x1168

    const/16 v6, 0x1166

    const/16 v5, 0x1164

    const/16 v4, 0x1162

    .line 19
    const/4 v1, 0x0

    sput-boolean v1, Lcom/nuance/xt9/input/KoreanInput;->mNativeLibLoaded:Z

    .line 23
    :try_start_0
    sget-boolean v1, Lcom/nuance/xt9/input/KoreanInput;->mNativeLibLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    .line 25
    :try_start_1
    const-string v1, "/data/data/com.nuance.xt9.input/lib/libjni_xt9korean.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 26
    const/4 v1, 0x1

    sput-boolean v1, Lcom/nuance/xt9/input/KoreanInput;->mNativeLibLoaded:Z
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    :cond_0
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/nuance/xt9/input/KoreanInput;->mInstance:Lcom/nuance/xt9/input/KoreanInput;

    .line 326
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    .line 327
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/nuance/xt9/input/KoreanInput;->JAMO_SHIFT_LIST:Landroid/util/SparseIntArray;

    .line 330
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x1161

    const/16 v3, 0x314f

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 331
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x3150

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 332
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x1163

    const/16 v3, 0x3151

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 333
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x3152

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 334
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x1165

    const/16 v3, 0x3153

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 335
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x3154

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 336
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x1167

    const/16 v3, 0x3155

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 337
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x3156

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 338
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x1169

    const/16 v3, 0x3157

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 339
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x116a

    const/16 v3, 0x3158

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 340
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x116b

    const/16 v3, 0x3159

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 341
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x116c

    const/16 v3, 0x315a

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 342
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x116d

    const/16 v3, 0x315b

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 343
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x116e

    const/16 v3, 0x315c

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 344
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x116f

    const/16 v3, 0x315d

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 345
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x1170

    const/16 v3, 0x315e

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 346
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x1171

    const/16 v3, 0x315f

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 347
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x1172

    const/16 v3, 0x3160

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 348
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x1173

    const/16 v3, 0x3161

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 349
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x1174

    const/16 v3, 0x3162

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 350
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x1175

    const/16 v3, 0x3163

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 351
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x1184

    const/16 v3, 0x3187

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 352
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x1185

    const/16 v3, 0x3188

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 353
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x1188

    const/16 v3, 0x3189

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 354
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x1191

    const/16 v3, 0x318a

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 355
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x1192

    const/16 v3, 0x318b

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 356
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x1194

    const/16 v3, 0x318c

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 357
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x119e

    const/16 v3, 0x318d

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 358
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x11a1

    const/16 v3, 0x318e

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 360
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->JAMO_SHIFT_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x1107

    const/16 v3, 0x1108

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 361
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->JAMO_SHIFT_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x110c

    const/16 v3, 0x110d

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 362
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->JAMO_SHIFT_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x1103

    const/16 v3, 0x1104

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 363
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->JAMO_SHIFT_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x1100

    const/16 v3, 0x1101

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 364
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->JAMO_SHIFT_LIST:Landroid/util/SparseIntArray;

    const/16 v2, 0x1109

    const/16 v3, 0x110a

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 365
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->JAMO_SHIFT_LIST:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 366
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->JAMO_SHIFT_LIST:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 367
    return-void

    .line 27
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 28
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :try_start_2
    const-string v1, "jni_xt9korean"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 29
    const/4 v1, 0x1

    sput-boolean v1, Lcom/nuance/xt9/input/KoreanInput;->mNativeLibLoaded:Z
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 32
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 33
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "KoreanInput"

    const-string v2, "Could not load native library jni_xt9korean"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "databaseConfigFile"

    .prologue
    const/16 v2, 0x40

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordLenResutls:[I

    .line 47
    new-instance v0, Lcom/nuance/xt9/input/Int;

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/Int;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordLen:Lcom/nuance/xt9/input/Int;

    .line 48
    new-instance v0, Lcom/nuance/xt9/input/Int;

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/Int;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordCompletionLen:Lcom/nuance/xt9/input/Int;

    .line 50
    new-array v0, v2, [C

    iput-object v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mWord:[C

    .line 51
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mSymbolCounts:[S

    .line 53
    iput v1, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordList:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordPool:Ljava/util/List;

    .line 62
    iput-object p1, p0, Lcom/nuance/xt9/input/KoreanInput;->mDatabaseConfigFile:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lcom/nuance/xt9/input/KoreanInput;
    .locals 2
    .parameter "databaseConfigFile"

    .prologue
    .line 66
    const-class v0, Lcom/nuance/xt9/input/KoreanInput;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->mInstance:Lcom/nuance/xt9/input/KoreanInput;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/nuance/xt9/input/KoreanInput;

    invoke-direct {v1, p0}, Lcom/nuance/xt9/input/KoreanInput;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/nuance/xt9/input/KoreanInput;->mInstance:Lcom/nuance/xt9/input/KoreanInput;

    .line 70
    :cond_0
    sget v1, Lcom/nuance/xt9/input/KoreanInput;->mRefCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/nuance/xt9/input/KoreanInput;->mRefCount:I

    .line 74
    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->mInstance:Lcom/nuance/xt9/input/KoreanInput;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private recycleWordPool()V
    .locals 5

    .prologue
    .line 312
    iget-object v3, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordPool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 313
    .local v2, wordPoolSize:I
    iget-object v3, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 315
    .local v1, wordListSize:I
    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    if-lez v1, :cond_1

    .line 316
    iget-object v3, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordList:Ljava/util/List;

    const/4 v4, 0x1

    sub-int v4, v1, v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 317
    .local v0, collect:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 318
    iget-object v3, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordPool:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    add-int/lit8 v2, v2, 0x1

    .line 321
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 322
    goto :goto_0

    .line 323
    .end local v0           #collect:Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 324
    return-void
.end method


# virtual methods
.method public addExplicit([CII)Z
    .locals 1
    .parameter "charBuffer"
    .parameter "len"
    .parameter "shiftState"

    .prologue
    .line 222
    iget v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    invoke-static {v0, p1, p2, p3}, Lcom/nuance/xt9/input/NativeKoreanInput;->xt9input_korean_addExplicit(I[CII)Z

    move-result v0

    return v0
.end method

.method public buildHangulWord()Z
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeKoreanInput;->xt9input_korean_buildHangulWord(I)Z

    move-result v0

    return v0
.end method

.method public clearAllKeys()Z
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeKoreanInput;->xt9input_korean_clearAllKeys(I)Z

    move-result v0

    return v0
.end method

.method public clearKey()Z
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeKoreanInput;->xt9input_korean_clearKey(I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized create()Z
    .locals 3

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    if-nez v0, :cond_0

    .line 81
    const-string v0, "TEST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create() CREATE new isntance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nuance/xt9/input/KoreanInput;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mDatabaseConfigFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeKoreanInput;->xt9input_korean_create(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    .line 84
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public decodeHangulWord()Z
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeKoreanInput;->xt9input_korean_decodeHangulWord(I)Z

    move-result v0

    return v0
.end method

.method public deleteSymbs(II)Z
    .locals 1
    .parameter "index"
    .parameter "count"

    .prologue
    .line 303
    iget v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    invoke-static {v0, p1, p2}, Lcom/nuance/xt9/input/NativeKoreanInput;->xt9input_korean_deleteSymbs(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const/4 v0, 0x1

    .line 307
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized destroy()V
    .locals 3

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    if-eqz v0, :cond_0

    sget v0, Lcom/nuance/xt9/input/KoreanInput;->mRefCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lcom/nuance/xt9/input/KoreanInput;->mRefCount:I

    if-nez v0, :cond_0

    .line 91
    iget v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeKoreanInput;->xt9input_korean_destroy(I)V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/xt9/input/KoreanInput;->mInstance:Lcom/nuance/xt9/input/KoreanInput;

    .line 95
    const-string v0, "TEST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create() DESTROY isntance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nuance/xt9/input/KoreanInput;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mDatabaseConfigFile:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeKoreanInput;->xt9input_korean_finish(I)V

    .line 109
    return-void
.end method

.method public getDefaultWordIndex()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeKoreanInput;->xt9input_korean_getDefaultWordIndex(I)I

    move-result v0

    return v0
.end method

.method public getHangulWord([CLcom/nuance/xt9/input/Int;Lcom/nuance/xt9/input/Int;[S)Z
    .locals 5
    .parameter "word"
    .parameter "wordLen"
    .parameter "wordCompletionLen"
    .parameter "symbolCounts"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 283
    iget v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordLenResutls:[I

    const/16 v2, 0x40

    invoke-static {v0, p1, v1, p4, v2}, Lcom/nuance/xt9/input/NativeKoreanInput;->xt9input_korean_getHangulWord(I[C[I[SI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordLenResutls:[I

    aget v0, v0, v3

    invoke-virtual {p2, v0}, Lcom/nuance/xt9/input/Int;->setVal(I)I

    .line 285
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordLenResutls:[I

    aget v0, v0, v4

    invoke-virtual {p3, v0}, Lcom/nuance/xt9/input/Int;->setVal(I)I

    move v0, v4

    .line 289
    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method public getInlineString(Landroid/text/SpannableStringBuilder;)Z
    .locals 3
    .parameter "inlineString"

    .prologue
    .line 142
    const/4 v0, 0x1

    .line 144
    .local v0, success:Z
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 145
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 149
    :cond_0
    return v0
.end method

.method public getJamoWord(I[C[CLcom/nuance/xt9/input/Int;Lcom/nuance/xt9/input/Int;Lcom/nuance/xt9/input/Int;)Z
    .locals 5
    .parameter "wordIndex"
    .parameter "word"
    .parameter "sub"
    .parameter "wordLen"
    .parameter "wordCompletionLen"
    .parameter "subLen"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 293
    iget v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordLenResutls:[I

    const/16 v2, 0x40

    invoke-static {v0, p2, v1, v2}, Lcom/nuance/xt9/input/NativeKoreanInput;->xt9input_korean_getJamoWord(I[C[II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordLenResutls:[I

    aget v0, v0, v3

    invoke-virtual {p4, v0}, Lcom/nuance/xt9/input/Int;->setVal(I)I

    .line 295
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordLenResutls:[I

    aget v0, v0, v4

    invoke-virtual {p5, v0}, Lcom/nuance/xt9/input/Int;->setVal(I)I

    move v0, v4

    .line 299
    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method public getKeyCount()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeKoreanInput;->xt9input_korean_getKeyCount(I)I

    move-result v0

    return v0
.end method

.method public getKeyPositions(ILjava/util/ArrayList;)Z
    .locals 1
    .parameter "kdbId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    iget v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    invoke-static {v0, p1, p2}, Lcom/nuance/xt9/input/NativeKoreanInput;->xt9input_korean_getKeyPositions(IILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public getWords(Landroid/text/SpannableStringBuilder;Lcom/nuance/xt9/input/Int;)Ljava/util/List;
    .locals 10
    .parameter "defaultWord"
    .parameter "defaultWordIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Lcom/nuance/xt9/input/Int;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 165
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 166
    invoke-virtual {p2, v9}, Lcom/nuance/xt9/input/Int;->setVal(I)I

    .line 168
    iget-object v5, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordLen:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v5, v9}, Lcom/nuance/xt9/input/Int;->setVal(I)I

    .line 169
    iget-object v5, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordCompletionLen:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v5, v9}, Lcom/nuance/xt9/input/Int;->setVal(I)I

    .line 170
    invoke-direct {p0}, Lcom/nuance/xt9/input/KoreanInput;->recycleWordPool()V

    .line 172
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInput;->buildHangulWord()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nuance/xt9/input/KoreanInput;->mWord:[C

    iget-object v6, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordLen:Lcom/nuance/xt9/input/Int;

    iget-object v7, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordCompletionLen:Lcom/nuance/xt9/input/Int;

    iget-object v8, p0, Lcom/nuance/xt9/input/KoreanInput;->mSymbolCounts:[S

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/nuance/xt9/input/KoreanInput;->getHangulWord([CLcom/nuance/xt9/input/Int;Lcom/nuance/xt9/input/Int;[S)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 175
    iget-object v5, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordLen:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v2

    .line 176
    .local v2, len:I
    if-lez v2, :cond_3

    .line 177
    iget-object v5, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordPool:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 178
    .local v4, wordPoolSize:I
    if-lez v4, :cond_1

    iget-object v5, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordPool:Ljava/util/List;

    const/4 v6, 0x1

    sub-int v6, v4, v6

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StringBuilder;

    move-object v3, v5

    .line 181
    .local v3, str:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 183
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 184
    sget-object v5, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    iget-object v6, p0, Lcom/nuance/xt9/input/KoreanInput;->mWord:[C

    aget-char v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    int-to-char v0, v5

    .line 185
    .local v0, ch:C
    if-nez v0, :cond_0

    .line 186
    iget-object v5, p0, Lcom/nuance/xt9/input/KoreanInput;->mWord:[C

    aget-char v0, v5, v1

    .line 188
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 178
    .end local v0           #ch:C
    .end local v1           #i:I
    .end local v3           #str:Ljava/lang/StringBuilder;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v5

    goto :goto_0

    .line 190
    .restart local v1       #i:I
    .restart local v3       #str:Ljava/lang/StringBuilder;
    :cond_2
    iget-object v5, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 195
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #str:Ljava/lang/StringBuilder;
    .end local v4           #wordPoolSize:I
    :cond_3
    iget-object v5, p0, Lcom/nuance/xt9/input/KoreanInput;->mWordList:Ljava/util/List;

    return-object v5
.end method

.method public initTrace(III)V
    .locals 1
    .parameter "kdbId"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 112
    iget v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    invoke-static {v0, p1, p2, p3}, Lcom/nuance/xt9/input/NativeKoreanInput;->xt9input_korean_initTrace(IIII)V

    .line 113
    return-void
.end method

.method public isAutoSpaceBeforeTrace(ILjava/util/ArrayList;)I
    .locals 1
    .parameter "kdbId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 120
    .local p2, trace:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    iget v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    invoke-static {v0, p1, p2}, Lcom/nuance/xt9/input/NativeKoreanInput;->xt9input_korean_isAutoSpaceBeforeTrace(IILjava/util/List;)I

    move-result v0

    return v0
.end method

.method public isSymbolLowerCase(C)Z
    .locals 1
    .parameter "symbol"

    .prologue
    .line 252
    iget v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    invoke-static {v0, p1}, Lcom/nuance/xt9/input/NativeKoreanInput;->xt9input_korean_isLowerSymbol(IC)Z

    move-result v0

    return v0
.end method

.method public isSymbolUpperCase(C)Z
    .locals 1
    .parameter "symbol"

    .prologue
    .line 242
    iget v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    invoke-static {v0, p1}, Lcom/nuance/xt9/input/NativeKoreanInput;->xt9input_korean_isUpperSymbol(IC)Z

    move-result v0

    return v0
.end method

.method public processKey(III)Z
    .locals 2
    .parameter "kdbId"
    .parameter "key"
    .parameter "shiftState"

    .prologue
    .line 153
    if-eqz p3, :cond_1

    sget-object v1, Lcom/nuance/xt9/input/KoreanInput;->JAMO_SHIFT_LIST:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    move v0, v1

    .line 155
    .local v0, convertedKey:I
    :goto_0
    if-nez v0, :cond_0

    move v0, p2

    .line 157
    :cond_0
    iget v1, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    invoke-static {v1, p1, v0, p3}, Lcom/nuance/xt9/input/NativeKoreanInput;->xt9input_korean_processKey(IIII)Z

    move-result v1

    return v1

    .end local v0           #convertedKey:I
    :cond_1
    move v0, p2

    .line 153
    goto :goto_0
.end method

.method public processTap(IIIII)Z
    .locals 1
    .parameter "context"
    .parameter "kdbId"
    .parameter "TapX"
    .parameter "TapY"
    .parameter "shiftState"

    .prologue
    .line 210
    iget v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    invoke-static {v0, p2, p3, p4, p5}, Lcom/nuance/xt9/input/NativeKoreanInput;->xt9input_korean_processTap(IIIII)Z

    move-result v0

    return v0
.end method

.method public processTrace(ILjava/util/ArrayList;I)Z
    .locals 1
    .parameter "kdbId"
    .parameter
    .parameter "shiftState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 161
    .local p2, trace:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    iget v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    invoke-static {v0, p1, p2, p3}, Lcom/nuance/xt9/input/NativeKoreanInput;->xt9input_korean_processTrace(IILjava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public start()Z
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeKoreanInput;->xt9input_korean_start(I)Z

    move-result v0

    return v0
.end method

.method public toLowerSymbol(C)C
    .locals 1
    .parameter "symbol"

    .prologue
    .line 271
    iget v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    invoke-static {v0, p1}, Lcom/nuance/xt9/input/NativeKoreanInput;->xt9input_korean_toLowerSymbol(IC)C

    move-result v0

    return v0
.end method

.method public toUpperSymbol(C)C
    .locals 1
    .parameter "symbol"

    .prologue
    .line 262
    iget v0, p0, Lcom/nuance/xt9/input/KoreanInput;->mContext:I

    invoke-static {v0, p1}, Lcom/nuance/xt9/input/NativeKoreanInput;->xt9input_korean_toUpperSymbol(IC)C

    move-result v0

    return v0
.end method
