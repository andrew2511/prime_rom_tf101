.class public Lcom/nuance/xt9/input/ChineseTraceInput;
.super Lcom/nuance/xt9/input/Input;
.source "ChineseTraceInput.java"


# static fields
.field private static Active_PY_Lexicon_Name:Ljava/lang/String; = null

.field private static final COMPONENT_MARKER:C = '\u9fff'

.field public static final MAXWORDLIST:I = 0x100

.field private static final MAX_USER_PHRASE_LEN:I = 0x6

.field private static final USER_DICT_SIZE:I = 0x1f4

.field private static User_Data_Path:Ljava/lang/String;

.field private static User_Frequence_Name:Ljava/lang/String;

.field private static User_Lexicon_Name:Ljava/lang/String;

.field private static User_PY_Lexicon_Name:Ljava/lang/String;

.field private static mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

.field private static mNativeLibLoaded:Z


# instance fields
.field private mActiveDict:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChineseCandidateIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mChineseCandidateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

.field private mChineseDecode:Lcom/nuance/xt9/input/Chinese/ChineseDecode;

.field private mCompSimp:[C

.field private mContext:Landroid/content/Context;

.field private mDatabaseConfigFile:Ljava/lang/String;

.field private mInitialized:Z

.field private mInputtingPhrase:Ljava/lang/String;

.field private mIsSaveUserPhrase:Z

.field private mKeyWidth:I

.field private mKey_mapping_set:Lcom/nuance/xt9/input/recognizer/KeySet;

.field private mOriChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

.field private mPYList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mRecognizer:Lcom/nuance/xt9/input/recognizer/RCO;

.field private mScratchBuffer:[C

.field private mScratchInt:[I

.field private mSelectedChineseCandidateIndex:I

.field private mSelectedMoreThanOnce:Z

.field private mSelectedPYIndex:I

.field mTextContext:Ljava/lang/String;

.field private mUserDict:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mXT9JNIContext:I

.field private mkbd_info:Lcom/nuance/xt9/input/recognizer/KeyboardInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    const-string v1, "/data/data/com.nuance.xt9.input/files"

    sput-object v1, Lcom/nuance/xt9/input/ChineseTraceInput;->User_Data_Path:Ljava/lang/String;

    .line 82
    const-string v1, "userlexicon.dat"

    sput-object v1, Lcom/nuance/xt9/input/ChineseTraceInput;->User_Lexicon_Name:Ljava/lang/String;

    .line 83
    const-string v1, "activepy.dat"

    sput-object v1, Lcom/nuance/xt9/input/ChineseTraceInput;->Active_PY_Lexicon_Name:Ljava/lang/String;

    .line 84
    const-string v1, "userpy.dat"

    sput-object v1, Lcom/nuance/xt9/input/ChineseTraceInput;->User_PY_Lexicon_Name:Ljava/lang/String;

    .line 85
    const-string v1, "userfrequence.dat"

    sput-object v1, Lcom/nuance/xt9/input/ChineseTraceInput;->User_Frequence_Name:Ljava/lang/String;

    .line 86
    const/4 v1, 0x0

    sput-boolean v1, Lcom/nuance/xt9/input/ChineseTraceInput;->mNativeLibLoaded:Z

    .line 87
    const/4 v1, 0x0

    sput-object v1, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    .line 111
    :try_start_0
    sget-boolean v1, Lcom/nuance/xt9/input/ChineseTraceInput;->mNativeLibLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    .line 113
    :try_start_1
    const-string v1, "/data/data/com.nuance.xt9.input/lib/libshapewriter.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 115
    const-string v1, "/data/data/com.nuance.xt9.input/lib/libchinesetrace.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 117
    const/4 v1, 0x1

    sput-boolean v1, Lcom/nuance/xt9/input/ChineseTraceInput;->mNativeLibLoaded:Z
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 120
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :try_start_2
    const-string v1, "shapewriter"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 121
    const-string v1, "chinesetrace"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 123
    const/4 v1, 0x1

    sput-boolean v1, Lcom/nuance/xt9/input/ChineseTraceInput;->mNativeLibLoaded:Z
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 126
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 127
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "AlphaInput"

    const-string v2, "Could not load native library shapewriter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "databaseConfigFile"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 192
    invoke-direct {p0}, Lcom/nuance/xt9/input/Input;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidateList:Ljava/util/List;

    .line 53
    iput v1, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mSelectedChineseCandidateIndex:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mPYList:Ljava/util/List;

    .line 59
    iput v1, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mSelectedPYIndex:I

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mInputtingPhrase:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mUserDict:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mActiveDict:Ljava/util/List;

    .line 69
    iput-boolean v1, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mInitialized:Z

    .line 70
    iput-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mRecognizer:Lcom/nuance/xt9/input/recognizer/RCO;

    .line 71
    iput-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mKey_mapping_set:Lcom/nuance/xt9/input/recognizer/KeySet;

    .line 72
    iput-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mkbd_info:Lcom/nuance/xt9/input/recognizer/KeyboardInfo;

    .line 73
    iput-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseDecode:Lcom/nuance/xt9/input/Chinese/ChineseDecode;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mKeyWidth:I

    .line 75
    iput-boolean v3, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mIsSaveUserPhrase:Z

    .line 76
    iput-boolean v1, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mSelectedMoreThanOnce:Z

    .line 92
    const/4 v0, 0x6

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mScratchBuffer:[C

    .line 94
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mScratchInt:[I

    .line 193
    iput-object p1, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mContext:Landroid/content/Context;

    .line 194
    iput-object p2, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mDatabaseConfigFile:Ljava/lang/String;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidateIDList:Ljava/util/ArrayList;

    .line 196
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08016e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mCompSimp:[C

    .line 197
    return-void
.end method

.method private addChineseCandidateToSeletionList(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1122
    .local p1, aChineseCandidateList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1123
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1124
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidateList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1126
    :cond_0
    return-void
.end method

.method private addPYArrayToSpellList(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1110
    .local p1, aPYArray:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mPYList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1111
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1112
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mPYList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1114
    :cond_0
    return-void
.end method

.method private addPYToSpellList(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "aPY"

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mPYList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1118
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mPYList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1119
    return-void
.end method

.method private addUserPY(Ljava/lang/String;)V
    .locals 2
    .parameter "aPY"

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mUserDict:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mUserDict:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1175
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mUserDict:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1179
    :goto_0
    return-void

    .line 1177
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mUserDict:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private componentToExternal(C)C
    .locals 2
    .parameter "c"

    .prologue
    const v1, 0xeeb8

    .line 620
    if-gt v1, p1, :cond_0

    const v0, 0xef7f

    if-gt p1, v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mCompSimp:[C

    sub-int v1, p1, v1

    aget-char v0, v0, v1

    .line 623
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createChineseDecoder()V
    .locals 13

    .prologue
    .line 204
    iget-object v10, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseDecode:Lcom/nuance/xt9/input/Chinese/ChineseDecode;

    if-nez v10, :cond_0

    .line 205
    new-instance v10, Lcom/nuance/xt9/input/Chinese/ChineseDecode;

    invoke-direct {v10}, Lcom/nuance/xt9/input/Chinese/ChineseDecode;-><init>()V

    iput-object v10, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseDecode:Lcom/nuance/xt9/input/Chinese/ChineseDecode;

    .line 206
    iget-object v10, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseDecode:Lcom/nuance/xt9/input/Chinese/ChineseDecode;

    invoke-virtual {v10}, Lcom/nuance/xt9/input/Chinese/ChineseDecode;->init()V

    .line 209
    :try_start_0
    iget-object v10, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string v11, "total_py.bin"

    const/4 v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v6

    .line 212
    .local v6, in_chn:Ljava/io/InputStream;
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v8

    .line 213
    .local v8, length_chn:I
    new-array v2, v8, [B

    .line 214
    .local v2, buf_chn:[B
    const/4 v10, 0x0

    invoke-virtual {v6, v2, v10, v8}, Ljava/io/InputStream;->read([BII)I

    .line 215
    iget-object v10, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseDecode:Lcom/nuance/xt9/input/Chinese/ChineseDecode;

    invoke-virtual {v10, v2, v8}, Lcom/nuance/xt9/input/Chinese/ChineseDecode;->loadPYFromBuffer([BI)V

    .line 216
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 217
    const/4 v2, 0x0

    .line 220
    iget-object v10, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string v11, "unilex.bin"

    const/4 v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v7

    .line 222
    .local v7, in_unigram:Ljava/io/InputStream;
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v8

    .line 223
    new-array v2, v8, [B

    .line 224
    const/4 v10, 0x0

    invoke-virtual {v7, v2, v10, v8}, Ljava/io/InputStream;->read([BII)I

    .line 225
    iget-object v10, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseDecode:Lcom/nuance/xt9/input/Chinese/ChineseDecode;

    invoke-virtual {v10, v2, v8}, Lcom/nuance/xt9/input/Chinese/ChineseDecode;->loadUnigramFromBuffer([BI)V

    .line 226
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 227
    const/4 v2, 0x0

    .line 230
    new-instance v4, Ljava/io/File;

    sget-object v10, Lcom/nuance/xt9/input/ChineseTraceInput;->User_Data_Path:Ljava/lang/String;

    sget-object v11, Lcom/nuance/xt9/input/ChineseTraceInput;->User_Lexicon_Name:Ljava/lang/String;

    invoke-direct {v4, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-eqz v10, :cond_1

    .line 233
    :try_start_1
    iget-object v10, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/nuance/xt9/input/ChineseTraceInput;->User_Lexicon_Name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 235
    .local v5, in:Ljava/io/FileInputStream;
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 237
    .local v1, UserBufLength:I
    new-array v0, v1, [B

    .line 238
    .local v0, UserBuf:[B
    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 239
    iget-object v10, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseDecode:Lcom/nuance/xt9/input/Chinese/ChineseDecode;

    invoke-virtual {v10, v0, v1}, Lcom/nuance/xt9/input/Chinese/ChineseDecode;->loadUserLexFromBuffer([BI)V

    .line 241
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 255
    .end local v0           #UserBuf:[B
    .end local v1           #UserBufLength:I
    .end local v5           #in:Ljava/io/FileInputStream;
    :goto_0
    const/4 v4, 0x0

    .line 258
    :try_start_2
    new-instance v4, Ljava/io/File;

    .end local v4           #file:Ljava/io/File;
    sget-object v10, Lcom/nuance/xt9/input/ChineseTraceInput;->User_Data_Path:Ljava/lang/String;

    sget-object v11, Lcom/nuance/xt9/input/ChineseTraceInput;->User_Frequence_Name:Ljava/lang/String;

    invoke-direct {v4, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .restart local v4       #file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v10

    if-eqz v10, :cond_2

    .line 261
    :try_start_3
    iget-object v10, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/nuance/xt9/input/ChineseTraceInput;->User_Frequence_Name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 263
    .restart local v5       #in:Ljava/io/FileInputStream;
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 265
    .restart local v1       #UserBufLength:I
    new-array v0, v1, [B

    .line 266
    .restart local v0       #UserBuf:[B
    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 267
    iget-object v10, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseDecode:Lcom/nuance/xt9/input/Chinese/ChineseDecode;

    invoke-virtual {v10, v0, v1}, Lcom/nuance/xt9/input/Chinese/ChineseDecode;->loadUserFreqFromBuffer([BI)V

    .line 269
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 289
    .end local v0           #UserBuf:[B
    .end local v1           #UserBufLength:I
    .end local v2           #buf_chn:[B
    .end local v4           #file:Ljava/io/File;
    .end local v5           #in:Ljava/io/FileInputStream;
    .end local v6           #in_chn:Ljava/io/InputStream;
    .end local v7           #in_unigram:Ljava/io/InputStream;
    .end local v8           #length_chn:I
    :cond_0
    :goto_1
    return-void

    .line 247
    .restart local v2       #buf_chn:[B
    .restart local v4       #file:Ljava/io/File;
    .restart local v6       #in_chn:Ljava/io/InputStream;
    .restart local v7       #in_unigram:Ljava/io/InputStream;
    .restart local v8       #length_chn:I
    :cond_1
    :try_start_4
    iget-object v10, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/nuance/xt9/input/ChineseTraceInput;->User_Lexicon_Name:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9

    .line 249
    .local v9, out:Ljava/io/FileOutputStream;
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 250
    .end local v9           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 252
    .local v3, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 285
    .end local v2           #buf_chn:[B
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #file:Ljava/io/File;
    .end local v6           #in_chn:Ljava/io/InputStream;
    .end local v7           #in_unigram:Ljava/io/InputStream;
    .end local v8           #length_chn:I
    :catch_1
    move-exception v10

    goto :goto_1

    .line 275
    .restart local v2       #buf_chn:[B
    .restart local v4       #file:Ljava/io/File;
    .restart local v6       #in_chn:Ljava/io/InputStream;
    .restart local v7       #in_unigram:Ljava/io/InputStream;
    .restart local v8       #length_chn:I
    :cond_2
    :try_start_6
    iget-object v10, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/nuance/xt9/input/ChineseTraceInput;->User_Frequence_Name:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9

    .line 277
    .restart local v9       #out:Ljava/io/FileOutputStream;
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 278
    .end local v9           #out:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v10

    move-object v3, v10

    .line 280
    .restart local v3       #e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 271
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v10

    goto :goto_1

    .line 243
    :catch_4
    move-exception v10

    goto :goto_0
.end method

.method private createRCO()V
    .locals 7

    .prologue
    .line 376
    :try_start_0
    new-instance v4, Lcom/nuance/xt9/input/recognizer/RCO;

    invoke-direct {v4}, Lcom/nuance/xt9/input/recognizer/RCO;-><init>()V

    iput-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mRecognizer:Lcom/nuance/xt9/input/recognizer/RCO;

    .line 377
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "pinyin_rco.ldb"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v2

    .line 379
    .local v2, is:Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 380
    .local v3, size:I
    new-array v0, v3, [B

    .line 381
    .local v0, buf:[B
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    .line 382
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mRecognizer:Lcom/nuance/xt9/input/recognizer/RCO;

    invoke-virtual {v4, v0}, Lcom/nuance/xt9/input/recognizer/RCO;->LoadFromBuffer([B)V

    .line 383
    const/4 v0, 0x0

    .line 384
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v0           #buf:[B
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #size:I
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 386
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "Chinese Trace"

    const-string v5, "RCO initialization failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static declared-synchronized destroyInstance()V
    .locals 6

    .prologue
    .line 147
    const-class v1, Lcom/nuance/xt9/input/ChineseTraceInput;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 184
    :goto_0
    monitor-exit v1

    return-void

    .line 150
    :cond_0
    :try_start_1
    sget-object v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/nuance/xt9/input/ChineseTraceInput;->User_Data_Path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/nuance/xt9/input/ChineseTraceInput;->User_Lexicon_Name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/nuance/xt9/input/ChineseTraceInput;->User_Data_Path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/nuance/xt9/input/ChineseTraceInput;->User_Frequence_Name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/nuance/xt9/input/ChineseTraceInput;->writeUserInfoToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :try_start_2
    sget-object v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    sget-object v3, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    iget-object v3, v3, Lcom/nuance/xt9/input/ChineseTraceInput;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/nuance/xt9/input/ChineseTraceInput;->writerUserPYToFile(Landroid/content/Context;)V

    .line 157
    sget-object v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    sget-object v3, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    iget-object v3, v3, Lcom/nuance/xt9/input/ChineseTraceInput;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/nuance/xt9/input/ChineseTraceInput;->writerActivePYToFile(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 164
    :goto_1
    :try_start_3
    sget-object v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    iget-object v2, v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mRecognizer:Lcom/nuance/xt9/input/recognizer/RCO;

    if-eqz v2, :cond_1

    .line 165
    sget-object v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    iget-object v2, v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mRecognizer:Lcom/nuance/xt9/input/recognizer/RCO;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/recognizer/RCO;->Destroy()V

    .line 166
    sget-object v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mRecognizer:Lcom/nuance/xt9/input/recognizer/RCO;

    .line 169
    :cond_1
    sget-object v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    iget-object v2, v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseDecode:Lcom/nuance/xt9/input/Chinese/ChineseDecode;

    if-eqz v2, :cond_2

    .line 170
    sget-object v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    iget-object v2, v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseDecode:Lcom/nuance/xt9/input/Chinese/ChineseDecode;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/Chinese/ChineseDecode;->freeChineseDecode()V

    .line 171
    sget-object v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseDecode:Lcom/nuance/xt9/input/Chinese/ChineseDecode;

    .line 174
    :cond_2
    sget-object v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    iget-object v2, v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mKey_mapping_set:Lcom/nuance/xt9/input/recognizer/KeySet;

    if-eqz v2, :cond_4

    .line 175
    sget-object v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    iget-object v2, v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mKey_mapping_set:Lcom/nuance/xt9/input/recognizer/KeySet;

    iget-object v2, v2, Lcom/nuance/xt9/input/recognizer/KeySet;->keys:[Lcom/nuance/xt9/input/recognizer/Key;

    if-eqz v2, :cond_3

    .line 176
    sget-object v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    iget-object v2, v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mKey_mapping_set:Lcom/nuance/xt9/input/recognizer/KeySet;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/nuance/xt9/input/recognizer/KeySet;->keys:[Lcom/nuance/xt9/input/recognizer/Key;

    .line 177
    :cond_3
    sget-object v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mKey_mapping_set:Lcom/nuance/xt9/input/recognizer/KeySet;

    .line 180
    :cond_4
    sget-object v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    iget-object v2, v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mkbd_info:Lcom/nuance/xt9/input/recognizer/KeyboardInfo;

    if-eqz v2, :cond_5

    .line 181
    sget-object v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mkbd_info:Lcom/nuance/xt9/input/recognizer/KeyboardInfo;

    .line 182
    :cond_5
    sget-object v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mInitialized:Z

    .line 183
    const/4 v2, 0x0

    sput-object v2, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 147
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 160
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 162
    .local v0, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/xt9/input/ChineseTraceInput;
    .locals 2
    .parameter "context"
    .parameter "databaseConfigFile"

    .prologue
    .line 137
    const-class v0, Lcom/nuance/xt9/input/ChineseTraceInput;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-direct {v1, p0, p1}, Lcom/nuance/xt9/input/ChineseTraceInput;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    .line 140
    :cond_0
    sget-object v1, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getStringFromRCOResult([C)Ljava/lang/String;
    .locals 4
    .parameter "ca"

    .prologue
    .line 391
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, p0

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 392
    aget-char v0, p0, v1

    .line 393
    .local v0, c:C
    if-nez v0, :cond_0

    .line 394
    const/4 v3, 0x0

    invoke-static {p0, v3, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v3

    .line 397
    .end local v0           #c:C
    :goto_1
    return-object v3

    .line 391
    .restart local v0       #c:C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    .end local v0           #c:C
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private normalizeComponents(Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 606
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/ChineseTraceInput;->componentToExternal(C)C

    move-result v0

    .line 607
    .local v0, comp:C
    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {p1, v2, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 609
    const v1, 0x9fff

    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 611
    :cond_0
    return-void
.end method

.method private readActivePYFromFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1014
    const/4 v3, 0x0

    .line 1015
    .local v3, fIn:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 1016
    .local v5, isr:Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 1018
    .local v0, data:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/nuance/xt9/input/ChineseTraceInput;->Active_PY_Lexicon_Name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 1019
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v7

    .line 1020
    .local v7, length:I
    new-array v4, v7, [C

    .line 1021
    .local v4, inputBuffer:[C
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1022
    .end local v5           #isr:Ljava/io/InputStreamReader;
    .local v6, isr:Ljava/io/InputStreamReader;
    :try_start_1
    invoke-virtual {v6, v4}, Ljava/io/InputStreamReader;->read([C)I

    .line 1023
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([C)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1024
    .end local v0           #data:Ljava/lang/String;
    .local v1, data:Ljava/lang/String;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 1025
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .end local v1           #data:Ljava/lang/String;
    .restart local v0       #data:Ljava/lang/String;
    move-object v5, v6

    .end local v6           #isr:Ljava/io/InputStreamReader;
    .restart local v5       #isr:Ljava/io/InputStreamReader;
    move-object v8, v1

    .line 1037
    .end local v4           #inputBuffer:[C
    .end local v7           #length:I
    :goto_0
    return-object v8

    .line 1027
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 1028
    .local v2, e:Ljava/io/IOException;
    :goto_1
    if-nez v3, :cond_0

    move-object v8, v10

    .line 1029
    goto :goto_0

    .line 1030
    :cond_0
    if-eqz v5, :cond_1

    .line 1031
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 1032
    :cond_1
    if-eqz v0, :cond_2

    .line 1033
    const/4 v0, 0x0

    .line 1034
    :cond_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    move-object v8, v10

    .line 1035
    goto :goto_0

    .line 1027
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #isr:Ljava/io/InputStreamReader;
    .restart local v4       #inputBuffer:[C
    .restart local v6       #isr:Ljava/io/InputStreamReader;
    .restart local v7       #length:I
    :catch_1
    move-exception v8

    move-object v2, v8

    move-object v5, v6

    .end local v6           #isr:Ljava/io/InputStreamReader;
    .restart local v5       #isr:Ljava/io/InputStreamReader;
    goto :goto_1

    .end local v0           #data:Ljava/lang/String;
    .end local v5           #isr:Ljava/io/InputStreamReader;
    .restart local v1       #data:Ljava/lang/String;
    .restart local v6       #isr:Ljava/io/InputStreamReader;
    :catch_2
    move-exception v8

    move-object v2, v8

    move-object v0, v1

    .end local v1           #data:Ljava/lang/String;
    .restart local v0       #data:Ljava/lang/String;
    move-object v5, v6

    .end local v6           #isr:Ljava/io/InputStreamReader;
    .restart local v5       #isr:Ljava/io/InputStreamReader;
    goto :goto_1
.end method

.method private readUserPYFromFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1045
    const/4 v3, 0x0

    .line 1046
    .local v3, fIn:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 1047
    .local v5, isr:Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 1049
    .local v0, data:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/nuance/xt9/input/ChineseTraceInput;->User_PY_Lexicon_Name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 1050
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v7

    .line 1051
    .local v7, length:I
    new-array v4, v7, [C

    .line 1052
    .local v4, inputBuffer:[C
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1053
    .end local v5           #isr:Ljava/io/InputStreamReader;
    .local v6, isr:Ljava/io/InputStreamReader;
    :try_start_1
    invoke-virtual {v6, v4}, Ljava/io/InputStreamReader;->read([C)I

    .line 1054
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([C)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1055
    .end local v0           #data:Ljava/lang/String;
    .local v1, data:Ljava/lang/String;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 1056
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .end local v1           #data:Ljava/lang/String;
    .restart local v0       #data:Ljava/lang/String;
    move-object v5, v6

    .end local v6           #isr:Ljava/io/InputStreamReader;
    .restart local v5       #isr:Ljava/io/InputStreamReader;
    move-object v8, v1

    .line 1068
    .end local v4           #inputBuffer:[C
    .end local v7           #length:I
    :goto_0
    return-object v8

    .line 1058
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 1059
    .local v2, e:Ljava/io/IOException;
    :goto_1
    if-nez v3, :cond_0

    move-object v8, v10

    .line 1060
    goto :goto_0

    .line 1061
    :cond_0
    if-eqz v5, :cond_1

    .line 1062
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 1063
    :cond_1
    if-eqz v0, :cond_2

    .line 1064
    const/4 v0, 0x0

    .line 1065
    :cond_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    move-object v8, v10

    .line 1066
    goto :goto_0

    .line 1058
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #isr:Ljava/io/InputStreamReader;
    .restart local v4       #inputBuffer:[C
    .restart local v6       #isr:Ljava/io/InputStreamReader;
    .restart local v7       #length:I
    :catch_1
    move-exception v8

    move-object v2, v8

    move-object v5, v6

    .end local v6           #isr:Ljava/io/InputStreamReader;
    .restart local v5       #isr:Ljava/io/InputStreamReader;
    goto :goto_1

    .end local v0           #data:Ljava/lang/String;
    .end local v5           #isr:Ljava/io/InputStreamReader;
    .restart local v1       #data:Ljava/lang/String;
    .restart local v6       #isr:Ljava/io/InputStreamReader;
    :catch_2
    move-exception v8

    move-object v2, v8

    move-object v0, v1

    .end local v1           #data:Ljava/lang/String;
    .restart local v0       #data:Ljava/lang/String;
    move-object v5, v6

    .end local v6           #isr:Ljava/io/InputStreamReader;
    .restart local v5       #isr:Ljava/io/InputStreamReader;
    goto :goto_1
.end method

.method private shouldAddPYToRCO(Ljava/lang/String;)Z
    .locals 7
    .parameter "aPY"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1188
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1189
    .local v2, len:I
    if-gt v2, v6, :cond_1

    .line 1197
    :cond_0
    :goto_0
    return v5

    .line 1190
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 1191
    .local v3, tmp:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1192
    .local v0, first_char:C
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 1193
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1194
    .local v4, tmp_char:C
    if-eq v4, v0, :cond_2

    move v5, v6

    goto :goto_0

    .line 1192
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private writeUserInfoToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "fileUserWords"
    .parameter "fileFreq"

    .prologue
    .line 926
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseDecode:Lcom/nuance/xt9/input/Chinese/ChineseDecode;

    if-eqz v0, :cond_0

    .line 928
    :try_start_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseDecode:Lcom/nuance/xt9/input/Chinese/ChineseDecode;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/Chinese/ChineseDecode;->saveUserLexiconIntoFile(Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseDecode:Lcom/nuance/xt9/input/Chinese/ChineseDecode;

    invoke-virtual {v0, p2}, Lcom/nuance/xt9/input/Chinese/ChineseDecode;->saveUserFreqIntoFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 930
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writerActivePYToFile(Landroid/content/Context;)V
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 976
    const/4 v2, 0x0

    .line 977
    .local v2, fOut:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 978
    .local v4, osw:Ljava/io/OutputStreamWriter;
    const-string v0, ""

    .line 980
    .local v0, data:Ljava/lang/String;
    iget-object v7, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mActiveDict:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 981
    .local v6, size:I
    if-nez v6, :cond_0

    .line 1007
    :goto_0
    return-void

    .line 983
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v6, :cond_1

    .line 984
    iget-object v7, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mActiveDict:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 985
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 983
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 987
    :cond_1
    const-string v7, "End"

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 989
    :try_start_0
    iget-object v7, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/nuance/xt9/input/ChineseTraceInput;->Active_PY_Lexicon_Name:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 991
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 992
    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .local v5, osw:Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 993
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 998
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    .line 999
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 1005
    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    :goto_2
    iget-object v7, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mActiveDict:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1006
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mActiveDict:Ljava/util/List;

    goto :goto_0

    .line 1000
    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 1001
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 1003
    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_2

    .line 994
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 995
    .local v1, e:Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 998
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 999
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 1000
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 1001
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 997
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 998
    :goto_4
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 999
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1002
    :goto_5
    throw v7

    .line 1000
    :catch_3
    move-exception v8

    move-object v1, v8

    .line 1001
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 997
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_4

    .line 994
    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    :catch_4
    move-exception v7

    move-object v1, v7

    move-object v4, v5

    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_3
.end method

.method private writerUserPYToFile(Landroid/content/Context;)V
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 938
    const/4 v2, 0x0

    .line 939
    .local v2, fOut:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 940
    .local v4, osw:Ljava/io/OutputStreamWriter;
    const-string v0, ""

    .line 942
    .local v0, data:Ljava/lang/String;
    iget-object v7, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mUserDict:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 943
    .local v6, size:I
    if-nez v6, :cond_0

    .line 971
    :goto_0
    return-void

    .line 945
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v6, :cond_1

    .line 946
    iget-object v7, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mUserDict:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 947
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 945
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 949
    :cond_1
    const-string v7, "End"

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 953
    :try_start_0
    iget-object v7, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/nuance/xt9/input/ChineseTraceInput;->User_PY_Lexicon_Name:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 955
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 956
    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .local v5, osw:Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 957
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 962
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    .line 963
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 969
    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    :goto_2
    iget-object v7, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mUserDict:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 970
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mUserDict:Ljava/util/List;

    goto :goto_0

    .line 964
    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 965
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 967
    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_2

    .line 958
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 959
    .local v1, e:Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 962
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 963
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 964
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 965
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 961
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 962
    :goto_4
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 963
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 966
    :goto_5
    throw v7

    .line 964
    :catch_3
    move-exception v8

    move-object v1, v8

    .line 965
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 961
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_4

    .line 958
    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    :catch_4
    move-exception v7

    move-object v1, v7

    move-object v4, v5

    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_3
.end method


# virtual methods
.method public addActivePY(Ljava/lang/String;)V
    .locals 2
    .parameter "aPY"

    .prologue
    .line 913
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mRecognizer:Lcom/nuance/xt9/input/recognizer/RCO;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/recognizer/RCO;->IsWordActive(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mRecognizer:Lcom/nuance/xt9/input/recognizer/RCO;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/nuance/xt9/input/recognizer/RCO;->SetWordActive(Ljava/lang/String;Z)Z

    .line 916
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mActiveDict:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addHZResult(Ljava/lang/String;)V
    .locals 4
    .parameter "py"

    .prologue
    .line 773
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 774
    .local v2, temp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseDecode:Lcom/nuance/xt9/input/Chinese/ChineseDecode;

    invoke-virtual {v3, p1}, Lcom/nuance/xt9/input/Chinese/ChineseDecode;->getWordsFromPY(Ljava/lang/String;)Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    .line 775
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    if-nez v3, :cond_0

    .line 789
    :goto_0
    return-void

    .line 776
    :cond_0
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    iput-object v3, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mOriChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    .line 777
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->getChineseCandidateList()[Lcom/nuance/xt9/input/Chinese/ChineseCandidate;

    move-result-object v1

    .line 779
    .local v1, resultsList:[Lcom/nuance/xt9/input/Chinese/ChineseCandidate;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 780
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/nuance/xt9/input/Chinese/ChineseCandidate;->getWord()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 781
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/nuance/xt9/input/Chinese/ChineseCandidate;->getWord()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 782
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/nuance/xt9/input/Chinese/ChineseCandidate;->getWord()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 787
    :cond_2
    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/ChineseTraceInput;->addChineseCandidateToSeletionList(Ljava/util/List;)V

    .line 788
    const/4 v2, 0x0

    .line 789
    goto :goto_0
.end method

.method public addIDToChineseCandidateIDList(I)V
    .locals 2
    .parameter "aID"

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidateIDList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1150
    return-void
.end method

.method public addIDToChineseCandidateIDList([I)V
    .locals 3
    .parameter "aID"

    .prologue
    .line 1158
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1159
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidateIDList:Ljava/util/ArrayList;

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1161
    :cond_0
    return-void
.end method

.method public breakContext()Z
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mXT9JNIContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_breakContext(I)Z

    move-result v0

    return v0
.end method

.method public clearChineseCandidateIDList()V
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidateIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1142
    return-void
.end method

.method public create()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 444
    iget v4, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mXT9JNIContext:I

    if-nez v4, :cond_0

    .line 445
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mDatabaseConfigFile:Ljava/lang/String;

    invoke-static {v4}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_create(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mXT9JNIContext:I

    .line 448
    :cond_0
    iget-boolean v4, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mInitialized:Z

    if-nez v4, :cond_4

    .line 449
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInput;->createRCO()V

    .line 450
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInput;->createChineseDecoder()V

    .line 453
    :try_start_0
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/nuance/xt9/input/ChineseTraceInput;->readUserPYFromFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 454
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 455
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, data:[Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mRecognizer:Lcom/nuance/xt9/input/recognizer/RCO;

    array-length v5, v0

    sub-int/2addr v5, v7

    invoke-virtual {v4, v0, v5}, Lcom/nuance/xt9/input/recognizer/RCO;->AddWordsToRCO([Ljava/lang/String;I)Z

    .line 457
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    sub-int/2addr v4, v7

    if-ge v2, v4, :cond_1

    .line 458
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mUserDict:Ljava/util/List;

    aget-object v5, v0, v2

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 461
    .end local v0           #data:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_1
    const/4 v3, 0x0

    .line 462
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/nuance/xt9/input/ChineseTraceInput;->readActivePYFromFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 463
    if-eqz v3, :cond_3

    .line 464
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 465
    .restart local v0       #data:[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    array-length v4, v0

    sub-int/2addr v4, v7

    if-ge v2, v4, :cond_3

    .line 466
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mRecognizer:Lcom/nuance/xt9/input/recognizer/RCO;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Lcom/nuance/xt9/input/recognizer/RCO;->IsWordActive(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 467
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mRecognizer:Lcom/nuance/xt9/input/recognizer/RCO;

    aget-object v5, v0, v2

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/nuance/xt9/input/recognizer/RCO;->SetWordActive(Ljava/lang/String;Z)Z

    .line 468
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mActiveDict:Ljava/util/List;

    aget-object v5, v0, v2

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 473
    .end local v0           #data:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mInitialized:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .end local v3           #str:Ljava/lang/String;
    :cond_4
    :goto_2
    return v7

    .line 474
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 476
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public createPY(Ljava/lang/String;)V
    .locals 5
    .parameter "aPY"

    .prologue
    .line 744
    move-object v0, p1

    .line 745
    .local v0, currentPY:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 747
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .local v3, temp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseDecode:Lcom/nuance/xt9/input/Chinese/ChineseDecode;

    invoke-virtual {v4, v0}, Lcom/nuance/xt9/input/Chinese/ChineseDecode;->getWordsFromPY(Ljava/lang/String;)Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    .line 749
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    if-nez v4, :cond_1

    .line 764
    .end local v3           #temp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_0
    :goto_0
    return-void

    .line 750
    .restart local v3       #temp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_1
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->getRtnPY()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/nuance/xt9/input/ChineseTraceInput;->addPYToSpellList(Ljava/lang/CharSequence;)V

    .line 752
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->getChineseCandidateList()[Lcom/nuance/xt9/input/Chinese/ChineseCandidate;

    move-result-object v2

    .line 753
    .local v2, resultsList:[Lcom/nuance/xt9/input/Chinese/ChineseCandidate;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 754
    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/nuance/xt9/input/Chinese/ChineseCandidate;->getWord()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 755
    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/nuance/xt9/input/Chinese/ChineseCandidate;->getWord()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 756
    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/nuance/xt9/input/Chinese/ChineseCandidate;->getWord()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 761
    :cond_3
    invoke-direct {p0, v3}, Lcom/nuance/xt9/input/ChineseTraceInput;->addChineseCandidateToSeletionList(Ljava/util/List;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mXT9JNIContext:I

    if-eqz v0, :cond_0

    .line 490
    iget v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mXT9JNIContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_destroy(I)V

    .line 491
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mXT9JNIContext:I

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidateIDList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidateIDList:Ljava/util/ArrayList;

    .line 494
    :cond_1
    return-void
.end method

.method public destroyXT9JNIModule()V
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mXT9JNIContext:I

    if-eqz v0, :cond_0

    .line 503
    iget v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mXT9JNIContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_destroy(I)V

    .line 504
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mXT9JNIContext:I

    .line 506
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mXT9JNIContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_start(I)Z

    .line 522
    return-void
.end method

.method public getChineseCandidateIDCount()I
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidateIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getChineseCandidateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 712
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidateList:Ljava/util/List;

    return-object v0
.end method

.method public getMoreWords()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 674
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidateList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 677
    .local v1, word:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0, v1}, Lcom/nuance/xt9/input/ChineseTraceInput;->getWord(ILjava/lang/StringBuilder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 678
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidateList:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 674
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 685
    .end local v1           #word:Ljava/lang/StringBuilder;
    :cond_0
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidateList:Ljava/util/List;

    return-object v2
.end method

.method public getPYList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 721
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mPYList:Ljava/util/List;

    return-object v0
.end method

.method public getPhrases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInput;->resetStatus()V

    .line 658
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInput;->getMoreWords()Ljava/util/List;

    .line 660
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidateList:Ljava/util/List;

    return-object v0
.end method

.method public getSelectStatus()Z
    .locals 1

    .prologue
    .line 1215
    iget-boolean v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mSelectedMoreThanOnce:Z

    return v0
.end method

.method public getSelectedChineseCandidate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 1106
    .end local p0
    :goto_0
    return-object v0

    .line 1103
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1104
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidateList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1106
    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidateList:Ljava/util/List;

    iget v1, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mSelectedChineseCandidateIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectedPY()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mPYList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 1094
    .end local p0
    :goto_0
    return-object v0

    .line 1093
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mPYList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mPYList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1094
    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mPYList:Ljava/util/List;

    iget v1, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mSelectedPYIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getWord(ILjava/lang/StringBuilder;)Z
    .locals 6
    .parameter "index"
    .parameter "word"

    .prologue
    const/4 v5, 0x0

    .line 636
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 638
    iget v1, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mXT9JNIContext:I

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mScratchBuffer:[C

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mScratchInt:[I

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mScratchBuffer:[C

    array-length v4, v4

    invoke-static {v1, p1, v2, v3, v4}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_getWord(II[C[II)Z

    move-result v0

    .line 640
    .local v0, success:Z
    if-eqz v0, :cond_0

    .line 641
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mScratchBuffer:[C

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mScratchInt:[I

    aget v2, v2, v5

    invoke-virtual {p2, v1, v5, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 642
    invoke-direct {p0, p2}, Lcom/nuance/xt9/input/ChineseTraceInput;->normalizeComponents(Ljava/lang/StringBuilder;)V

    .line 645
    :cond_0
    return v0
.end method

.method public handleSpellPrefix(Ljava/lang/String;)V
    .locals 4
    .parameter "aNewChar"

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInput;->getSelectedPY()Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, currentPY:Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseDecode:Lcom/nuance/xt9/input/Chinese/ChineseDecode;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/nuance/xt9/input/Chinese/ChineseDecode;->buildNewPY(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 698
    .local v1, tmp:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInput;->resetStatus()V

    .line 704
    :goto_0
    return-void

    .line 702
    :cond_0
    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/ChineseTraceInput;->addPYToSpellList(Ljava/lang/CharSequence;)V

    .line 703
    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/ChineseTraceInput;->createPY(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSpellingList(ILjava/lang/String;)V
    .locals 13
    .parameter "aIndex"
    .parameter "aText"

    .prologue
    const/4 v12, 0x1

    .line 799
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInput;->getSelectedPY()Ljava/lang/String;

    move-result-object v2

    .line 800
    .local v2, currentPY:Ljava/lang/String;
    const-string v5, ""

    .line 802
    .local v5, leftPY:Ljava/lang/String;
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    if-nez v9, :cond_1

    .line 803
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 804
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseDecode:Lcom/nuance/xt9/input/Chinese/ChineseDecode;

    invoke-virtual {v9, v2}, Lcom/nuance/xt9/input/Chinese/ChineseDecode;->getWordsFromPY(Ljava/lang/String;)Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    .line 807
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    if-nez v9, :cond_1

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mOriChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    if-nez v9, :cond_2

    .line 812
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    iput-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mOriChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    .line 814
    :cond_2
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    invoke-virtual {v9, p1}, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->setSelectedIndex(I)V

    .line 816
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_f

    .line 817
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseDecode:Lcom/nuance/xt9/input/Chinese/ChineseDecode;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v2, v10}, Lcom/nuance/xt9/input/Chinese/ChineseDecode;->getLeftPY(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 819
    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInput;->getChineseCandidateIDCount()I

    move-result v9

    if-nez v9, :cond_4

    .line 821
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    invoke-virtual {v9}, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->getAdjustFlag()Z

    move-result v9

    if-ne v9, v12, :cond_3

    .line 823
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseDecode:Lcom/nuance/xt9/input/Chinese/ChineseDecode;

    iget-object v10, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    invoke-virtual {v9, v10}, Lcom/nuance/xt9/input/Chinese/ChineseDecode;->adjustFrequency(Lcom/nuance/xt9/input/Chinese/ChineseCandidates;)V

    .line 825
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInput;->resetStatus()V

    goto :goto_0

    .line 826
    :cond_4
    if-nez v5, :cond_5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInput;->getChineseCandidateIDCount()I

    move-result v9

    if-lez v9, :cond_0

    .line 829
    :cond_5
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mInputtingPhrase:Ljava/lang/String;

    invoke-virtual {v9, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mInputtingPhrase:Ljava/lang/String;

    .line 830
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    invoke-virtual {v9}, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->getSelectedIndex()I

    move-result v9

    if-nez v9, :cond_8

    .line 831
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    invoke-virtual {v9}, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->getSelectedWordId()I

    move-result v9

    if-lez v9, :cond_7

    .line 832
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    invoke-virtual {v9}, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->getSelectedWordId()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/nuance/xt9/input/ChineseTraceInput;->addIDToChineseCandidateIDList(I)V

    .line 841
    :goto_1
    if-eqz v5, :cond_b

    .line 842
    iput-boolean v12, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mSelectedMoreThanOnce:Z

    .line 843
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseDecode:Lcom/nuance/xt9/input/Chinese/ChineseDecode;

    invoke-virtual {v9, v5}, Lcom/nuance/xt9/input/Chinese/ChineseDecode;->getWordsFromPY(Ljava/lang/String;)Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    .line 844
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    if-eqz v9, :cond_a

    .line 845
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 846
    .local v7, temp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    invoke-virtual {v9}, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->getChineseCandidateList()[Lcom/nuance/xt9/input/Chinese/ChineseCandidate;

    move-result-object v8

    .line 848
    .local v8, test:[Lcom/nuance/xt9/input/Chinese/ChineseCandidate;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    invoke-virtual {v9}, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->getCount()I

    move-result v9

    if-ge v3, v9, :cond_9

    .line 849
    aget-object v9, v8, v3

    invoke-virtual {v9}, Lcom/nuance/xt9/input/Chinese/ChineseCandidate;->getWord()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 850
    aget-object v9, v8, v3

    invoke-virtual {v9}, Lcom/nuance/xt9/input/Chinese/ChineseCandidate;->getWord()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 834
    .end local v3           #i:I
    .end local v7           #temp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v8           #test:[Lcom/nuance/xt9/input/Chinese/ChineseCandidate;
    :cond_7
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    invoke-virtual {v9}, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->getUserWordIDSet()[I

    move-result-object v4

    .line 835
    .local v4, idList:[I
    invoke-virtual {p0, v4}, Lcom/nuance/xt9/input/ChineseTraceInput;->addIDToChineseCandidateIDList([I)V

    goto :goto_1

    .line 838
    .end local v4           #idList:[I
    :cond_8
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    invoke-virtual {v9}, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->getSelectedWordId()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/nuance/xt9/input/ChineseTraceInput;->addIDToChineseCandidateIDList(I)V

    goto :goto_1

    .line 853
    .restart local v3       #i:I
    .restart local v7       #temp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v8       #test:[Lcom/nuance/xt9/input/Chinese/ChineseCandidate;
    :cond_9
    invoke-direct {p0, v7}, Lcom/nuance/xt9/input/ChineseTraceInput;->addChineseCandidateToSeletionList(Ljava/util/List;)V

    .line 857
    .end local v3           #i:I
    .end local v7           #temp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v8           #test:[Lcom/nuance/xt9/input/Chinese/ChineseCandidate;
    :cond_a
    invoke-direct {p0, v5}, Lcom/nuance/xt9/input/ChineseTraceInput;->addPYToSpellList(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 858
    :cond_b
    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInput;->getChineseCandidateIDCount()I

    move-result v9

    if-lez v9, :cond_0

    .line 859
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInput;->getChineseCandidateIDCount()I

    move-result v9

    if-lez v9, :cond_e

    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mInputtingPhrase:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x6

    if-gt v9, v10, :cond_e

    .line 861
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInput;->getChineseCandidateIDCount()I

    move-result v9

    new-array v1, v9, [I

    .line 863
    .local v1, arrayId:[I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInput;->getChineseCandidateIDCount()I

    move-result v9

    if-ge v3, v9, :cond_c

    .line 864
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidateIDList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v1, v3

    .line 863
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 866
    :cond_c
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInput;->getChineseCandidateIDCount()I

    move-result v10

    invoke-virtual {v9, v1, v10}, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->setUserWordIDSet([II)V

    .line 868
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInput;->clearChineseCandidateIDList()V

    .line 869
    const/4 v0, 0x0

    .line 870
    .local v0, add_flag:I
    iget-boolean v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mIsSaveUserPhrase:Z

    if-eqz v9, :cond_d

    .line 871
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseDecode:Lcom/nuance/xt9/input/Chinese/ChineseDecode;

    iget-object v10, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mInputtingPhrase:Ljava/lang/String;

    iget-object v11, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mOriChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    invoke-virtual {v9, v10, v11}, Lcom/nuance/xt9/input/Chinese/ChineseDecode;->addUserWords(Ljava/lang/String;Lcom/nuance/xt9/input/Chinese/ChineseCandidates;)I

    move-result v0

    .line 874
    :cond_d
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    invoke-virtual {v9}, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->getUserPY()Ljava/lang/String;

    move-result-object v6

    .line 875
    .local v6, temp:Ljava/lang/String;
    if-eqz v6, :cond_e

    if-ne v0, v12, :cond_e

    .line 876
    invoke-direct {p0, v6}, Lcom/nuance/xt9/input/ChineseTraceInput;->shouldAddPYToRCO(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 877
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mRecognizer:Lcom/nuance/xt9/input/recognizer/RCO;

    invoke-virtual {v9, v6}, Lcom/nuance/xt9/input/recognizer/RCO;->IsWordExistInRCO(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 878
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mRecognizer:Lcom/nuance/xt9/input/recognizer/RCO;

    invoke-virtual {v9, v6}, Lcom/nuance/xt9/input/recognizer/RCO;->AddWordToRCO(Ljava/lang/String;)Z

    .line 879
    invoke-direct {p0, v6}, Lcom/nuance/xt9/input/ChineseTraceInput;->addUserPY(Ljava/lang/String;)V

    .line 885
    .end local v0           #add_flag:I
    .end local v1           #arrayId:[I
    .end local v3           #i:I
    .end local v6           #temp:Ljava/lang/String;
    :cond_e
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInput;->resetStatus()V

    .line 887
    const-string v9, ""

    iput-object v9, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mInputtingPhrase:Ljava/lang/String;

    goto/16 :goto_0

    .line 891
    :cond_f
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInput;->resetStatus()V

    goto/16 :goto_0
.end method

.method public isPrepareToAddUserPhrase()Z
    .locals 1

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidateIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recognize(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, samplePoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    const/4 v10, 0x0

    .line 409
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 410
    .local v3, n:I
    if-eqz v3, :cond_0

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    :cond_0
    move-object v7, v10

    .line 434
    :goto_0
    return-object v7

    .line 412
    :cond_1
    iget-object v7, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mRecognizer:Lcom/nuance/xt9/input/recognizer/RCO;

    if-nez v7, :cond_2

    move-object v7, v10

    .line 413
    goto :goto_0

    .line 414
    :cond_2
    new-instance v2, Lcom/nuance/xt9/input/recognizer/InputSignal;

    invoke-direct {v2}, Lcom/nuance/xt9/input/recognizer/InputSignal;-><init>()V

    .line 415
    .local v2, input_signal:Lcom/nuance/xt9/input/recognizer/InputSignal;
    iput v3, v2, Lcom/nuance/xt9/input/recognizer/InputSignal;->iCount:I

    .line 416
    new-array v7, v3, [Lcom/nuance/xt9/input/recognizer/SamplePoint;

    iput-object v7, v2, Lcom/nuance/xt9/input/recognizer/InputSignal;->iSamplePoints:[Lcom/nuance/xt9/input/recognizer/SamplePoint;

    .line 417
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 418
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 419
    .local v4, pt:Landroid/graphics/Point;
    iget-object v7, v2, Lcom/nuance/xt9/input/recognizer/InputSignal;->iSamplePoints:[Lcom/nuance/xt9/input/recognizer/SamplePoint;

    new-instance v8, Lcom/nuance/xt9/input/recognizer/SamplePoint;

    invoke-direct {v8}, Lcom/nuance/xt9/input/recognizer/SamplePoint;-><init>()V

    aput-object v8, v7, v1

    .line 420
    iget-object v7, v2, Lcom/nuance/xt9/input/recognizer/InputSignal;->iSamplePoints:[Lcom/nuance/xt9/input/recognizer/SamplePoint;

    aget-object v7, v7, v1

    iget v8, v4, Landroid/graphics/Point;->x:I

    int-to-double v8, v8

    iput-wide v8, v7, Lcom/nuance/xt9/input/recognizer/SamplePoint;->x:D

    .line 421
    iget-object v7, v2, Lcom/nuance/xt9/input/recognizer/InputSignal;->iSamplePoints:[Lcom/nuance/xt9/input/recognizer/SamplePoint;

    aget-object v7, v7, v1

    iget v8, v4, Landroid/graphics/Point;->y:I

    int-to-double v8, v8

    iput-wide v8, v7, Lcom/nuance/xt9/input/recognizer/SamplePoint;->y:D

    .line 422
    iget-object v7, v2, Lcom/nuance/xt9/input/recognizer/InputSignal;->iSamplePoints:[Lcom/nuance/xt9/input/recognizer/SamplePoint;

    aget-object v7, v7, v1

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/nuance/xt9/input/recognizer/SamplePoint;->t:D

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 424
    .end local v4           #pt:Landroid/graphics/Point;
    :cond_3
    iget-object v7, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mRecognizer:Lcom/nuance/xt9/input/recognizer/RCO;

    invoke-virtual {v7, v2, v10}, Lcom/nuance/xt9/input/recognizer/RCO;->Recognize(Lcom/nuance/xt9/input/recognizer/InputSignal;Ljava/lang/Object;)Lcom/nuance/xt9/input/recognizer/ResultSet;

    move-result-object v5

    .line 425
    .local v5, results:Lcom/nuance/xt9/input/recognizer/ResultSet;
    if-eqz v5, :cond_4

    iget v7, v5, Lcom/nuance/xt9/input/recognizer/ResultSet;->result_count:I

    if-nez v7, :cond_5

    :cond_4
    move-object v7, v10

    .line 426
    goto :goto_0

    .line 428
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    :goto_2
    iget v7, v5, Lcom/nuance/xt9/input/recognizer/ResultSet;->result_count:I

    if-ge v1, v7, :cond_6

    .line 430
    iget-object v7, v5, Lcom/nuance/xt9/input/recognizer/ResultSet;->results:[Lcom/nuance/xt9/input/recognizer/Result;

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/nuance/xt9/input/recognizer/Result;->str:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/xt9/input/ChineseTraceInput;->getStringFromRCOResult([C)Ljava/lang/String;

    move-result-object v6

    .line 432
    .local v6, text:Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v6           #text:Ljava/lang/String;
    :cond_6
    move-object v7, v0

    .line 434
    goto :goto_0
.end method

.method public remapRCO(Ljava/util/List;I)V
    .locals 22
    .parameter
    .parameter "aKey_width"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/KeyboardEx$Key;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p1, keys:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/KeyboardEx$Key;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseTraceInput;->mRecognizer:Lcom/nuance/xt9/input/recognizer/RCO;

    move-object v2, v0

    if-nez v2, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/ChineseTraceInput;->mKeyWidth:I

    move v2, v0

    move v0, v2

    move/from16 v1, p2

    if-eq v0, v1, :cond_0

    .line 306
    const/16 v21, 0x0

    .local v21, y_r:F
    const/16 v20, 0x0

    .local v20, y_g:F
    const/16 v19, 0x0

    .line 307
    .local v19, y_b:F
    const/16 v17, -0x1

    .line 308
    .local v17, key_width:I
    const/16 v16, -0x1

    .line 309
    .local v16, key_height:I
    const/16 v18, 0x1a

    .line 310
    .local v18, rco_size:I
    const/4 v13, 0x0

    .line 312
    .local v13, curr:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseTraceInput;->mKey_mapping_set:Lcom/nuance/xt9/input/recognizer/KeySet;

    move-object v2, v0

    if-nez v2, :cond_2

    .line 313
    new-instance v2, Lcom/nuance/xt9/input/recognizer/KeySet;

    invoke-direct {v2}, Lcom/nuance/xt9/input/recognizer/KeySet;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/xt9/input/ChineseTraceInput;->mKey_mapping_set:Lcom/nuance/xt9/input/recognizer/KeySet;

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseTraceInput;->mKey_mapping_set:Lcom/nuance/xt9/input/recognizer/KeySet;

    move-object v2, v0

    move/from16 v0, v18

    move-object v1, v2

    iput v0, v1, Lcom/nuance/xt9/input/recognizer/KeySet;->key_mapping_count:I

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseTraceInput;->mKey_mapping_set:Lcom/nuance/xt9/input/recognizer/KeySet;

    move-object v2, v0

    move/from16 v0, v18

    new-array v0, v0, [Lcom/nuance/xt9/input/recognizer/Key;

    move-object v3, v0

    iput-object v3, v2, Lcom/nuance/xt9/input/recognizer/KeySet;->keys:[Lcom/nuance/xt9/input/recognizer/Key;

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseTraceInput;->mKey_mapping_set:Lcom/nuance/xt9/input/recognizer/KeySet;

    move-object v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/nuance/xt9/input/recognizer/KeySet;->n_ignore_chars:I

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseTraceInput;->mKey_mapping_set:Lcom/nuance/xt9/input/recognizer/KeySet;

    move-object v2, v0

    const-string v3, "\'_-."

    iput-object v3, v2, Lcom/nuance/xt9/input/recognizer/KeySet;->ignore_chars:Ljava/lang/String;

    .line 320
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseTraceInput;->mkbd_info:Lcom/nuance/xt9/input/recognizer/KeyboardInfo;

    move-object v2, v0

    if-nez v2, :cond_3

    .line 321
    new-instance v2, Lcom/nuance/xt9/input/recognizer/KeyboardInfo;

    invoke-direct {v2}, Lcom/nuance/xt9/input/recognizer/KeyboardInfo;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/xt9/input/ChineseTraceInput;->mkbd_info:Lcom/nuance/xt9/input/recognizer/KeyboardInfo;

    .line 323
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v14

    .line 326
    .local v14, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/nuance/xt9/input/KeyboardEx$Key;>;"
    :cond_4
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 327
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/nuance/xt9/input/KeyboardEx$Key;

    .line 328
    .local v15, key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    iget-object v2, v15, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, 0x61

    if-lt v2, v3, :cond_4

    iget-object v2, v15, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_4

    .line 329
    if-gez v17, :cond_5

    .line 330
    move-object v0, v15

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->width:I

    move/from16 v17, v0

    .line 331
    :cond_5
    if-gez v16, :cond_6

    .line 332
    move-object v0, v15

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->height:I

    move/from16 v16, v0

    .line 334
    :cond_6
    iget v2, v15, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    iget v3, v15, Lcom/nuance/xt9/input/KeyboardEx$Key;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-double v9, v2

    .line 335
    .local v9, centerX:D
    iget v2, v15, Lcom/nuance/xt9/input/KeyboardEx$Key;->y:I

    iget v3, v15, Lcom/nuance/xt9/input/KeyboardEx$Key;->height:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-double v11, v2

    .line 337
    .local v11, centerY:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseTraceInput;->mKey_mapping_set:Lcom/nuance/xt9/input/recognizer/KeySet;

    move-object v2, v0

    iget-object v2, v2, Lcom/nuance/xt9/input/recognizer/KeySet;->keys:[Lcom/nuance/xt9/input/recognizer/Key;

    new-instance v3, Lcom/nuance/xt9/input/recognizer/Key;

    invoke-direct {v3}, Lcom/nuance/xt9/input/recognizer/Key;-><init>()V

    aput-object v3, v2, v13

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseTraceInput;->mKey_mapping_set:Lcom/nuance/xt9/input/recognizer/KeySet;

    move-object v2, v0

    iget-object v2, v2, Lcom/nuance/xt9/input/recognizer/KeySet;->keys:[Lcom/nuance/xt9/input/recognizer/Key;

    aget-object v2, v2, v13

    iget-object v3, v15, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nuance/xt9/input/recognizer/Key;->key_label:Ljava/lang/String;

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseTraceInput;->mKey_mapping_set:Lcom/nuance/xt9/input/recognizer/KeySet;

    move-object v2, v0

    iget-object v2, v2, Lcom/nuance/xt9/input/recognizer/KeySet;->keys:[Lcom/nuance/xt9/input/recognizer/Key;

    aget-object v2, v2, v13

    iput-wide v9, v2, Lcom/nuance/xt9/input/recognizer/Key;->x:D

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseTraceInput;->mKey_mapping_set:Lcom/nuance/xt9/input/recognizer/KeySet;

    move-object v2, v0

    iget-object v2, v2, Lcom/nuance/xt9/input/recognizer/KeySet;->keys:[Lcom/nuance/xt9/input/recognizer/Key;

    aget-object v2, v2, v13

    iput-wide v11, v2, Lcom/nuance/xt9/input/recognizer/Key;->y:D

    .line 343
    iget-object v2, v15, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, 0x72

    if-ne v2, v3, :cond_8

    .line 344
    move-wide v0, v11

    double-to-float v0, v0

    move/from16 v21, v0

    .line 350
    :cond_7
    :goto_2
    add-int/lit8 v13, v13, 0x1

    .line 351
    goto/16 :goto_1

    .line 345
    :cond_8
    iget-object v2, v15, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, 0x67

    if-ne v2, v3, :cond_9

    .line 346
    move-wide v0, v11

    double-to-float v0, v0

    move/from16 v20, v0

    goto :goto_2

    .line 347
    :cond_9
    iget-object v2, v15, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, 0x62

    if-ne v2, v3, :cond_7

    .line 348
    move-wide v0, v11

    double-to-float v0, v0

    move/from16 v19, v0

    goto :goto_2

    .line 354
    .end local v9           #centerX:D
    .end local v11           #centerY:D
    .end local v15           #key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseTraceInput;->mkbd_info:Lcom/nuance/xt9/input/recognizer/KeyboardInfo;

    move-object v2, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move v3, v0

    iput v3, v2, Lcom/nuance/xt9/input/recognizer/KeyboardInfo;->letter_key_width:F

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseTraceInput;->mkbd_info:Lcom/nuance/xt9/input/recognizer/KeyboardInfo;

    move-object v2, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move v3, v0

    iput v3, v2, Lcom/nuance/xt9/input/recognizer/KeyboardInfo;->letter_key_height:F

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseTraceInput;->mkbd_info:Lcom/nuance/xt9/input/recognizer/KeyboardInfo;

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/nuance/xt9/input/recognizer/KeyboardInfo;->kbd_type:I

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseTraceInput;->mkbd_info:Lcom/nuance/xt9/input/recognizer/KeyboardInfo;

    move-object v2, v0

    add-float v3, v21, v20

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    iput v3, v2, Lcom/nuance/xt9/input/recognizer/KeyboardInfo;->row_break1:F

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseTraceInput;->mkbd_info:Lcom/nuance/xt9/input/recognizer/KeyboardInfo;

    move-object v2, v0

    add-float v3, v20, v19

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    iput v3, v2, Lcom/nuance/xt9/input/recognizer/KeyboardInfo;->row_break2:F

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseTraceInput;->mRecognizer:Lcom/nuance/xt9/input/recognizer/RCO;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseTraceInput;->mKey_mapping_set:Lcom/nuance/xt9/input/recognizer/KeySet;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseTraceInput;->mkbd_info:Lcom/nuance/xt9/input/recognizer/KeyboardInfo;

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/xt9/input/recognizer/RCO;->Remap(Lcom/nuance/xt9/input/recognizer/KeySet;Lcom/nuance/xt9/input/recognizer/KeyboardInfo;)Z

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseTraceInput;->mRecognizer:Lcom/nuance/xt9/input/recognizer/RCO;

    move-object v2, v0

    const/4 v3, 0x6

    const/4 v4, 0x6

    const/16 v5, 0x50

    const/16 v6, 0x1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseTraceInput;->mkbd_info:Lcom/nuance/xt9/input/recognizer/KeyboardInfo;

    move-object v7, v0

    iget v7, v7, Lcom/nuance/xt9/input/recognizer/KeyboardInfo;->letter_key_width:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseTraceInput;->mkbd_info:Lcom/nuance/xt9/input/recognizer/KeyboardInfo;

    move-object v8, v0

    iget v8, v8, Lcom/nuance/xt9/input/recognizer/KeyboardInfo;->letter_key_height:F

    float-to-int v8, v8

    invoke-virtual/range {v2 .. v8}, Lcom/nuance/xt9/input/recognizer/RCO;->SetParameters(IIIIII)V

    .line 366
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/xt9/input/ChineseTraceInput;->mKeyWidth:I

    goto/16 :goto_0
.end method

.method public resetStatus()V
    .locals 1

    .prologue
    .line 899
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mInputtingPhrase:Ljava/lang/String;

    .line 900
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mPYList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 901
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mChineseCandidateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 902
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mOriChineseCandidates:Lcom/nuance/xt9/input/Chinese/ChineseCandidates;

    .line 903
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mIsSaveUserPhrase:Z

    .line 904
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mSelectedMoreThanOnce:Z

    .line 905
    return-void
.end method

.method public setAttribute(II)Z
    .locals 1
    .parameter "id"
    .parameter "value"

    .prologue
    .line 534
    iget v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mXT9JNIContext:I

    invoke-static {v0, p1, p2}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_setAttribute(III)Z

    move-result v0

    return v0
.end method

.method public setContext(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "newContext"

    .prologue
    .line 566
    if-nez p1, :cond_0

    .line 571
    :goto_0
    return-void

    .line 570
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mTextContext:Ljava/lang/String;

    goto :goto_0
.end method

.method public setInputMode(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 554
    iget v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mXT9JNIContext:I

    invoke-static {v0, p1}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_setInputMode(II)Z

    move-result v0

    return v0
.end method

.method public setLanguage(I)Z
    .locals 1
    .parameter "langId"

    .prologue
    .line 544
    iget v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mXT9JNIContext:I

    invoke-static {v0, p1}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_setLanguage(II)Z

    move-result v0

    return v0
.end method

.method public setPYList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 730
    .local p1, pyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/ChineseTraceInput;->addPYArrayToSpellList(Ljava/util/List;)V

    .line 731
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInput;->clearChineseCandidateIDList()V

    .line 732
    return-void
.end method

.method public setSaveStatus(Z)V
    .locals 0
    .parameter "isSavePhrase"

    .prologue
    .line 1207
    iput-boolean p1, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mIsSaveUserPhrase:Z

    .line 1208
    return-void
.end method

.method public setSelectedChineseCandidateIndex(I)V
    .locals 0
    .parameter "aIndex"

    .prologue
    .line 1084
    iput p1, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mSelectedChineseCandidateIndex:I

    .line 1085
    return-void
.end method

.method public setSelectedPYIndex(I)V
    .locals 0
    .parameter "aIndex"

    .prologue
    .line 1076
    iput p1, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mSelectedPYIndex:I

    .line 1077
    return-void
.end method

.method public start()Z
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mTextContext:Ljava/lang/String;

    .line 513
    iget v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mXT9JNIContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_start(I)Z

    move-result v0

    return v0
.end method

.method public updateContext(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "newContext"

    .prologue
    .line 579
    if-eqz p1, :cond_0

    .line 580
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mTextContext:Ljava/lang/String;

    .line 581
    iget v0, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mXT9JNIContext:I

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mTextContext:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInput;->mTextContext:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_setContext(I[CI)Z

    .line 582
    const/4 v0, 0x1

    .line 585
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
