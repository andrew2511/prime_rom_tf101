.class public Lcom/android/inputmethod/latin/BinaryDictionary;
.super Lcom/android/inputmethod/latin/Dictionary;
.source "BinaryDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/BinaryDictionary$Flags;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/android/inputmethod/latin/BinaryDictionary;


# instance fields
.field private mDicTypeId:I

.field private mDictLength:J

.field private mFlags:I

.field private final mFrequencies:[I

.field private final mFrequencies_bigrams:[I

.field private final mInputCodes:[I

.field private final mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

.field private mNativeDict:I

.field private final mOutputChars:[C

.field private final mOutputChars_bigrams:[C

.field private final mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/BinaryDictionary;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/BinaryDictionary;->sInstance:Lcom/android/inputmethod/latin/BinaryDictionary;

    .line 142
    invoke-static {}, Lcom/android/inputmethod/latin/Utils;->loadNativeLibrary()V

    .line 143
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Dictionary;-><init>()V

    .line 54
    const/16 v0, 0x300

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    .line 55
    const/16 v0, 0x360

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    .line 56
    const/16 v0, 0xb40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars_bigrams:[C

    .line 57
    const/16 v0, 0x12

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies:[I

    .line 58
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies_bigrams:[I

    .line 60
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 61
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFlags:I

    .line 82
    return-void
.end method

.method private closeInternal()V
    .locals 2

    .prologue
    .line 260
    iget v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    if-eqz v0, :cond_0

    .line 261
    iget v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->closeNative(I)V

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    .line 263
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDictLength:J

    .line 265
    :cond_0
    return-void
.end method

.method private native closeNative(I)V
.end method

.method private native getBigramsNative(I[CI[II[C[IIII)I
.end method

.method private native getSuggestionsNative(II[I[I[III[C[I)I
.end method

.method public static initDictionary(Landroid/content/Context;II)Lcom/android/inputmethod/latin/BinaryDictionary;
    .locals 11
    .parameter "context"
    .parameter "resId"
    .parameter "dicTypeId"

    .prologue
    const/4 v10, 0x0

    .line 91
    sget-object v9, Lcom/android/inputmethod/latin/BinaryDictionary;->sInstance:Lcom/android/inputmethod/latin/BinaryDictionary;

    monitor-enter v9

    .line 92
    :try_start_0
    sget-object v0, Lcom/android/inputmethod/latin/BinaryDictionary;->sInstance:Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->closeInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 95
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-nez v6, :cond_0

    .line 96
    const-string v0, "BinaryDictionary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found the resource but it is compressed. resId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v10

    .line 114
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-object v0

    .line 99
    .restart local v6       #afd:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 100
    .local v1, sourceDir:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v8, packagePath:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    const-string v0, "BinaryDictionary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sourceDir is not a file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 104
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v10

    goto :goto_0

    .line 106
    :cond_1
    :try_start_5
    sget-object v0, Lcom/android/inputmethod/latin/BinaryDictionary;->sInstance:Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/BinaryDictionary;->loadDictionary(Ljava/lang/String;JJ)V

    .line 107
    sget-object v0, Lcom/android/inputmethod/latin/BinaryDictionary;->sInstance:Lcom/android/inputmethod/latin/BinaryDictionary;

    iput p2, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDicTypeId:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 112
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 113
    sget-object v0, Lcom/android/inputmethod/latin/BinaryDictionary;->sInstance:Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->initFlags()V

    .line 114
    sget-object v0, Lcom/android/inputmethod/latin/BinaryDictionary;->sInstance:Lcom/android/inputmethod/latin/BinaryDictionary;

    goto :goto_0

    .line 108
    .end local v1           #sourceDir:Ljava/lang/String;
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    .end local v8           #packagePath:Ljava/io/File;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 109
    .local v7, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_7
    const-string v0, "BinaryDictionary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find the resource. resId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    monitor-exit v9

    move-object v0, v10

    goto :goto_0

    .line 112
    .end local v7           #e:Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method

.method static initDictionary(Ljava/io/File;JJI)Lcom/android/inputmethod/latin/BinaryDictionary;
    .locals 7
    .parameter "dictionary"
    .parameter "startOffset"
    .parameter "length"
    .parameter "dicTypeId"

    .prologue
    .line 119
    sget-object v6, Lcom/android/inputmethod/latin/BinaryDictionary;->sInstance:Lcom/android/inputmethod/latin/BinaryDictionary;

    monitor-enter v6

    .line 120
    :try_start_0
    sget-object v0, Lcom/android/inputmethod/latin/BinaryDictionary;->sInstance:Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->closeInternal()V

    .line 121
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/android/inputmethod/latin/BinaryDictionary;->sInstance:Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/BinaryDictionary;->loadDictionary(Ljava/lang/String;JJ)V

    .line 123
    sget-object v0, Lcom/android/inputmethod/latin/BinaryDictionary;->sInstance:Lcom/android/inputmethod/latin/BinaryDictionary;

    iput p5, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDicTypeId:I

    .line 128
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    sget-object v0, Lcom/android/inputmethod/latin/BinaryDictionary;->sInstance:Lcom/android/inputmethod/latin/BinaryDictionary;

    :goto_0
    return-object v0

    .line 125
    :cond_0
    :try_start_1
    const-string v0, "BinaryDictionary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find the file. path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v0, 0x0

    monitor-exit v6

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initFlags()V
    .locals 7

    .prologue
    .line 133
    const/4 v2, 0x0

    .line 134
    .local v2, flags:I
    sget-object v0, Lcom/android/inputmethod/latin/BinaryDictionary$Flags;->ALL_FLAGS:[Lcom/android/inputmethod/latin/BinaryDictionary$Flags$FlagEntry;

    .local v0, arr$:[Lcom/android/inputmethod/latin/BinaryDictionary$Flags$FlagEntry;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 135
    .local v1, entry:Lcom/android/inputmethod/latin/BinaryDictionary$Flags$FlagEntry;
    iget-object v5, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    iget-object v6, v1, Lcom/android/inputmethod/latin/BinaryDictionary$Flags$FlagEntry;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->currentSubtypeContainsExtraValueKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 136
    iget v5, v1, Lcom/android/inputmethod/latin/BinaryDictionary$Flags$FlagEntry;->mValue:I

    or-int/2addr v2, v5

    .line 134
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 138
    .end local v1           #entry:Lcom/android/inputmethod/latin/BinaryDictionary$Flags$FlagEntry;
    :cond_1
    iput v2, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFlags:I

    .line 139
    return-void
.end method

.method private native isValidWordNative(I[CI)Z
.end method

.method private final loadDictionary(Ljava/lang/String;JJ)V
    .locals 11
    .parameter "path"
    .parameter "startOffset"
    .parameter "length"

    .prologue
    .line 158
    const/4 v6, 0x2

    const/4 v7, 0x2

    const/16 v8, 0x30

    const/16 v9, 0x12

    const/16 v10, 0x10

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/inputmethod/latin/BinaryDictionary;->openNative(Ljava/lang/String;JJIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    .line 161
    iput-wide p4, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDictLength:J

    .line 162
    return-void
.end method

.method private native openNative(Ljava/lang/String;JJIIIII)I
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/BinaryDictionary;->closeInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 270
    :try_start_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/BinaryDictionary;->closeInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 274
    return-void

    .line 272
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBigrams(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    .locals 18
    .parameter "codes"
    .parameter "previousWord"
    .parameter "callback"

    .prologue
    .line 167
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    move v2, v0

    if-nez v2, :cond_1

    .line 195
    :cond_0
    return-void

    .line 169
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 170
    .local v4, chars:[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars_bigrams:[C

    move-object v2, v0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([CC)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies_bigrams:[I

    move-object v2, v0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v7

    .line 174
    .local v7, codesSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    move-object v2, v0

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 175
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/WordComposer;->getCodesAt(I)[I

    move-result-object v15

    .line 176
    .local v15, alternatives:[I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    move-object v3, v0

    const/4 v5, 0x0

    array-length v6, v15

    const/16 v8, 0x10

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v15, v2, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    move v3, v0

    array-length v5, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars_bigrams:[C

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies_bigrams:[I

    move-object v9, v0

    const/16 v10, 0x30

    const/16 v11, 0x3c

    const/16 v12, 0x10

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/android/inputmethod/latin/BinaryDictionary;->getBigramsNative(I[CI[II[C[IIII)I

    move-result v16

    .line 183
    .local v16, count:I
    const/16 v17, 0x0

    .local v17, j:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies_bigrams:[I

    move-object v2, v0

    aget v2, v2, v17

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 185
    mul-int/lit8 v10, v17, 0x30

    .line 186
    .local v10, start:I
    const/4 v11, 0x0

    .line 187
    .local v11, len:I
    :goto_1
    const/16 v2, 0x30

    if-ge v11, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars_bigrams:[C

    move-object v2, v0

    add-int v3, v10, v11

    aget-char v2, v2, v3

    if-eqz v2, :cond_2

    .line 188
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 190
    :cond_2
    if-lez v11, :cond_3

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars_bigrams:[C

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies_bigrams:[I

    move-object v2, v0

    aget v12, v2, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDicTypeId:I

    move v13, v0

    sget-object v14, Lcom/android/inputmethod/latin/Dictionary$DataType;->BIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object/from16 v8, p3

    invoke-interface/range {v8 .. v14}, Lcom/android/inputmethod/latin/Dictionary$WordCallback;->addWord([CIIIILcom/android/inputmethod/latin/Dictionary$DataType;)Z

    .line 183
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 251
    iget-wide v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDictLength:J

    return-wide v0
.end method

.method getSuggestions(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/keyboard/Keyboard;[C[I)I
    .locals 14
    .parameter "codes"
    .parameter "keyboard"
    .parameter "outputChars"
    .parameter "frequencies"

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/BinaryDictionary;->isValidDictionary()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    .line 237
    :goto_0
    return v2

    .line 224
    :cond_0
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v8

    .line 226
    .local v8, codesSize:I
    const/16 v2, 0x2f

    if-le v8, v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    .line 228
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 229
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    if-ge v13, v8, :cond_2

    .line 230
    invoke-virtual {p1, v13}, Lcom/android/inputmethod/latin/WordComposer;->getCodesAt(I)[I

    move-result-object v12

    .line 231
    .local v12, alternatives:[I
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    mul-int/lit8 v4, v13, 0x10

    array-length v5, v12

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v12, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 234
    .end local v12           #alternatives:[I
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 235
    const/4 v2, 0x0

    move-object/from16 v0, p4

    move v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 237
    iget v3, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/keyboard/Keyboard;->getProximityInfo()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/WordComposer;->getXCoordinates()[I

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/WordComposer;->getYCoordinates()[I

    move-result-object v6

    iget-object v7, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    iget v9, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFlags:I

    move-object v2, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v2 .. v11}, Lcom/android/inputmethod/latin/BinaryDictionary;->getSuggestionsNative(II[I[I[III[C[I)I

    move-result v2

    goto :goto_0
.end method

.method public getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    .locals 9
    .parameter "codes"
    .parameter "callback"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    iget-object v4, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies:[I

    invoke-virtual {p0, p1, v0, v1, v4}, Lcom/android/inputmethod/latin/BinaryDictionary;->getSuggestions(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/keyboard/Keyboard;[C[I)I

    move-result v7

    .line 202
    .local v7, count:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies:[I

    aget v0, v0, v8

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 214
    :cond_0
    return-void

    .line 204
    :cond_1
    mul-int/lit8 v2, v8, 0x30

    .line 205
    .local v2, start:I
    const/4 v3, 0x0

    .line 206
    .local v3, len:I
    :goto_1
    const/16 v0, 0x30

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    add-int v1, v2, v3

    aget-char v0, v0, v1

    if-eqz v0, :cond_2

    .line 207
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 209
    :cond_2
    if-lez v3, :cond_3

    .line 210
    iget-object v1, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    iget-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies:[I

    aget v4, v0, v8

    iget v5, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDicTypeId:I

    sget-object v6, Lcom/android/inputmethod/latin/Dictionary$DataType;->UNIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/inputmethod/latin/Dictionary$WordCallback;->addWord([CIIIILcom/android/inputmethod/latin/Dictionary$DataType;)Z

    .line 202
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method isValidDictionary()Z
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "word"

    .prologue
    .line 245
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 247
    :goto_0
    return v1

    .line 246
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 247
    .local v0, chars:[C
    iget v1, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    array-length v2, v0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/inputmethod/latin/BinaryDictionary;->isValidWordNative(I[CI)Z

    move-result v1

    goto :goto_0
.end method
