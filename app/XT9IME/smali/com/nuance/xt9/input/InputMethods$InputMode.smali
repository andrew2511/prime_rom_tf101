.class public Lcom/nuance/xt9/input/InputMethods$InputMode;
.super Ljava/lang/Object;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/InputMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputMode"
.end annotation


# static fields
.field private static AUTO_CORRECTION:Ljava/lang/String;

.field private static MIX_LETTER_AND_DIGIT:Ljava/lang/String;

.field private static MIX_LETTER_AND_PUNCTUATION:Ljava/lang/String;

.field private static MIX_LETTER_AND_SYMBOL:Ljava/lang/String;

.field private static NEXT_WORD_PREDICTION:Ljava/lang/String;

.field private static RECAPTURE:Ljava/lang/String;

.field private static TRACE:Ljava/lang/String;

.field private static TRACE_AUTO_ACCEPT:Ljava/lang/String;

.field private static WORD_COMPLETION:Ljava/lang/String;


# instance fields
.field public mChtBackKeyString:Ljava/lang/String;

.field protected mDefaultEnabled:Z

.field public mDefaultLayoutId:I

.field public mDisplayInputMode:Ljava/lang/String;

.field protected mEnabledPrefKey:Ljava/lang/String;

.field private mEnabledTrace:Z

.field public mInputMode:Ljava/lang/String;

.field public mInputModeIconResId:I

.field public mKCMFile:Ljava/lang/String;

.field public mKLFile:Ljava/lang/String;

.field public mLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/InputMethods$Layout;",
            ">;"
        }
    .end annotation
.end field

.field public mMixLetterAndDigit:Z

.field public mMixLetterAndPunctuation:Z

.field public mMixLetterAndSymbol:Z

.field public mParent:Lcom/nuance/xt9/input/InputMethods$Language;

.field private mTraceAutoAccept:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1076
    const-string v0, ".mix_letter_and_symbol"

    sput-object v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->MIX_LETTER_AND_SYMBOL:Ljava/lang/String;

    .line 1077
    const-string v0, ".mix_letter_punctuation"

    sput-object v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->MIX_LETTER_AND_PUNCTUATION:Ljava/lang/String;

    .line 1078
    const-string v0, ".mix_letter_digit"

    sput-object v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->MIX_LETTER_AND_DIGIT:Ljava/lang/String;

    .line 1079
    const-string v0, ".recapture"

    sput-object v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->RECAPTURE:Ljava/lang/String;

    .line 1080
    const-string v0, ".next_word_prediction"

    sput-object v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->NEXT_WORD_PREDICTION:Ljava/lang/String;

    .line 1081
    const-string v0, ".auto_correction"

    sput-object v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->AUTO_CORRECTION:Ljava/lang/String;

    .line 1082
    const-string v0, ".word_completion"

    sput-object v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->WORD_COMPLETION:Ljava/lang/String;

    .line 1083
    const-string v0, ".trace"

    sput-object v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->TRACE:Ljava/lang/String;

    .line 1084
    const-string v0, ".trace_auto_accept"

    sput-object v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->TRACE_AUTO_ACCEPT:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1090
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    .line 1116
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V
    .locals 7
    .parameter "res"
    .parameter "parent"
    .parameter "parser"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1090
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    .line 1119
    iput-object p2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    .line 1120
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    sget-object v3, Lcom/nuance/xt9/input/R$styleable;->XT9:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1121
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 1122
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mDefaultLayoutId:I

    .line 1123
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mDefaultEnabled:Z

    .line 1124
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mDisplayInputMode:Ljava/lang/String;

    .line 1126
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mDisplayInputMode:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1127
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mDisplayInputMode:Ljava/lang/String;

    .line 1129
    :cond_0
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1130
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-object v2, v2, Lcom/nuance/xt9/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 1133
    :cond_1
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-static {v3}, Lcom/nuance/xt9/input/InputMethods$Language;->access$700(Lcom/nuance/xt9/input/InputMethods$Language;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mEnabledTrace:Z

    .line 1134
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mTraceAutoAccept:Z

    .line 1137
    const/16 v2, 0x1a

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mChtBackKeyString:Ljava/lang/String;

    .line 1142
    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mKCMFile:Ljava/lang/String;

    .line 1143
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mKCMFile:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1144
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-object v2, v2, Lcom/nuance/xt9/input/InputMethods$Language;->mKCMFile:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mKCMFile:Ljava/lang/String;

    .line 1147
    :cond_2
    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mKLFile:Ljava/lang/String;

    .line 1148
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mKLFile:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1149
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-object v2, v2, Lcom/nuance/xt9/input/InputMethods$Language;->mKLFile:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mKLFile:Ljava/lang/String;

    .line 1153
    :cond_3
    const/16 v2, 0x13

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputModeIconResId:I

    .line 1156
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getLanguageId()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/nuance/xt9/input/InputMethods;->access$800(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    .line 1162
    const/16 v2, 0x10

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mMixLetterAndSymbol:Z

    .line 1163
    const/16 v2, 0x11

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mMixLetterAndPunctuation:Z

    .line 1164
    const/16 v2, 0xf

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mMixLetterAndDigit:Z

    .line 1166
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-object v2, v2, Lcom/nuance/xt9/input/InputMethods$Language;->mParent:Lcom/nuance/xt9/input/InputMethods;

    invoke-static {v2}, Lcom/nuance/xt9/input/InputMethods;->access$500(Lcom/nuance/xt9/input/InputMethods;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1168
    iget-boolean v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mDefaultEnabled:Z

    iget-object v3, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$Language;->isEnabled()Z

    move-result v3

    and-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mDefaultEnabled:Z

    .line 1169
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1170
    .local v1, sp:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mDefaultEnabled:Z

    invoke-static {v1, v2, v3}, Lcom/nuance/xt9/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1172
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_4
    return-void
.end method

.method static synthetic access$100(Lcom/nuance/xt9/input/InputMethods$InputMode;Lcom/nuance/xt9/input/InputMethods$Layout;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1075
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->addLayout(Lcom/nuance/xt9/input/InputMethods$Layout;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/nuance/xt9/input/InputMethods$InputMode;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1075
    invoke-direct {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getModeNameAsKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addLayout(Lcom/nuance/xt9/input/InputMethods$Layout;)V
    .locals 3
    .parameter "layout"

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1240
    :goto_0
    return-void

    .line 1236
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicated layout("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "for input mode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - IGNORED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getModeNameAsKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1554
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isABCMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1555
    const-string v0, "ambig"

    .line 1558
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    goto :goto_0
.end method

.method private getNextEnabledLayout(Lcom/nuance/xt9/input/InputMethods$Layout;)Lcom/nuance/xt9/input/InputMethods$Layout;
    .locals 5
    .parameter "currentLayout"

    .prologue
    .line 1397
    iget-object v4, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 1398
    .local v0, count:I
    const/4 v3, 0x0

    .line 1401
    .local v3, start:I
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 1402
    iget-object v4, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/nuance/xt9/input/InputMethods$Layout;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1408
    :cond_0
    const/4 v2, 0x0

    .line 1409
    .local v2, nextLayout:Lcom/nuance/xt9/input/InputMethods$Layout;
    :cond_1
    :goto_1
    if-nez v2, :cond_4

    .line 1410
    add-int/lit8 v4, v3, 0x1

    rem-int v3, v4, v0

    .line 1411
    iget-object v4, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/InputMethods$Layout;

    .line 1412
    .local v1, layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$Layout;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1, v1}, Lcom/nuance/xt9/input/InputMethods$Layout;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1413
    :cond_2
    move-object v2, v1

    goto :goto_1

    .line 1401
    .end local v1           #layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    .end local v2           #nextLayout:Lcom/nuance/xt9/input/InputMethods$Layout;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1417
    .restart local v2       #nextLayout:Lcom/nuance/xt9/input/InputMethods$Layout;
    :cond_4
    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$Layout;->saveAsCurrent()V

    .line 1419
    return-object v2
.end method

.method private getScreenOrientation()I
    .locals 1

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods$Language;->mParent:Lcom/nuance/xt9/input/InputMethods;

    invoke-static {v0}, Lcom/nuance/xt9/input/InputMethods;->access$900(Lcom/nuance/xt9/input/InputMethods;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public enableMixLetterAndDigit(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1544
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1545
    .local v0, sp:Landroid/content/SharedPreferences;
    iput-boolean p1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mMixLetterAndDigit:Z

    .line 1546
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getMixLetterAndDigitEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mMixLetterAndDigit:Z

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1547
    return-void
.end method

.method public enableMixLetterAndPunctuation(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1528
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1529
    .local v0, sp:Landroid/content/SharedPreferences;
    iput-boolean p1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mMixLetterAndPunctuation:Z

    .line 1530
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getMixLetterAndPunctuationEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mMixLetterAndPunctuation:Z

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1531
    return-void
.end method

.method public enableMixLetterAndSymbol(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1512
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1513
    .local v0, sp:Landroid/content/SharedPreferences;
    iput-boolean p1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mMixLetterAndSymbol:Z

    .line 1514
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getLetterAndSymbolEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mMixLetterAndSymbol:Z

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1515
    return-void
.end method

.method public enableNextWordPrediction(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1333
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getNextWordPredictionPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/nuance/xt9/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1334
    return-void
.end method

.method public enableRecapture(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getRecapturePrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/nuance/xt9/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1322
    return-void
.end method

.method public enableTrace(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1375
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1376
    .local v0, sp:Landroid/content/SharedPreferences;
    iput-boolean p1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mEnabledTrace:Z

    .line 1377
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getTraceEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mEnabledTrace:Z

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1378
    return-void
.end method

.method public enableTraceAutoAccept(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1391
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1392
    .local v0, sp:Landroid/content/SharedPreferences;
    iput-boolean p1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mTraceAutoAccept:Z

    .line 1393
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getTraceAutoAcceptEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mTraceAutoAccept:Z

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1394
    return-void
.end method

.method public enabledKeyboardLayoutCount()I
    .locals 4

    .prologue
    .line 1175
    const/4 v0, 0x0

    .line 1176
    .local v0, enabledKeyboardCount:I
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isABCMode()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1177
    iget-object v3, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/xt9/input/InputMethods$Layout;

    .line 1178
    .local v2, layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$Layout;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1186
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    :cond_1
    return v0
.end method

.method protected ensureAtleastOneLayoutIsEnabled()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1487
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isAtLeastOneLayoutIsEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1488
    iget v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mDefaultLayoutId:I

    invoke-virtual {p0, v2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->findLayout(I)Lcom/nuance/xt9/input/InputMethods$Layout;

    move-result-object v0

    .line 1489
    .local v0, defaultLayout:Lcom/nuance/xt9/input/InputMethods$Layout;
    if-eqz v0, :cond_1

    .line 1490
    invoke-virtual {v0, v4}, Lcom/nuance/xt9/input/InputMethods$Layout;->setEnabled(Z)V

    .line 1499
    .end local v0           #defaultLayout:Lcom/nuance/xt9/input/InputMethods$Layout;
    :cond_0
    :goto_0
    return-void

    .line 1493
    .restart local v0       #defaultLayout:Lcom/nuance/xt9/input/InputMethods$Layout;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Can not find the default layout, make the first layout as default"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/InputMethods$Layout;

    .line 1496
    .local v1, layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    invoke-virtual {v1, v4}, Lcom/nuance/xt9/input/InputMethods$Layout;->setEnabled(Z)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 1460
    instance-of v2, p1, Lcom/nuance/xt9/input/InputMethods$InputMode;

    if-eqz v2, :cond_1

    .line 1461
    move-object v0, p1

    check-cast v0, Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-object v1, v0

    .line 1462
    .local v1, inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    iget-object v2, v1, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-object v3, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/InputMethods$Language;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 1465
    .end local v1           #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :goto_0
    return v2

    .restart local v1       #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_0
    move v2, v4

    .line 1462
    goto :goto_0

    .end local v1           #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_1
    move v2, v4

    .line 1465
    goto :goto_0
.end method

.method public findLayout(I)Lcom/nuance/xt9/input/InputMethods$Layout;
    .locals 3
    .parameter "layoutId"

    .prologue
    .line 1427
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/InputMethods$Layout;

    .line 1428
    .local v1, layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    iget v2, v1, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutId:I

    if-ne v2, p1, :cond_0

    move-object v2, v1

    .line 1433
    .end local v1           #layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAutoCorrectionMode()I
    .locals 3

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getAutoCorrectionPrefKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAutoCorrectionPrefKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nuance/xt9/input/InputMethods$InputMode;->AUTO_CORRECTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods$Language;->mParent:Lcom/nuance/xt9/input/InputMethods;

    invoke-static {v0}, Lcom/nuance/xt9/input/InputMethods;->access$600(Lcom/nuance/xt9/input/InputMethods;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLayout()Lcom/nuance/xt9/input/InputMethods$Layout;
    .locals 8

    .prologue
    .line 1246
    const/4 v6, 0x0

    .line 1248
    .local v6, layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1251
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getLanguageId()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getModeNameAsKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getScreenOrientation()I

    move-result v4

    iget v5, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mDefaultLayoutId:I

    invoke-static/range {v0 .. v5}, Lcom/nuance/xt9/input/InputMethods;->getKeyboardLayoutId(Landroid/content/SharedPreferences;ILjava/lang/String;Ljava/lang/String;II)I

    move-result v7

    .line 1254
    .local v7, layoutId:I
    invoke-virtual {p0, v7}, Lcom/nuance/xt9/input/InputMethods$InputMode;->findLayout(I)Lcom/nuance/xt9/input/InputMethods$Layout;

    move-result-object v6

    .line 1257
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/nuance/xt9/input/InputMethods$Layout;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1260
    :cond_0
    if-nez v6, :cond_1

    .line 1261
    iget v1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mDefaultLayoutId:I

    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->findLayout(I)Lcom/nuance/xt9/input/InputMethods$Layout;

    move-result-object v6

    .line 1265
    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/nuance/xt9/input/InputMethods$Layout;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1266
    invoke-direct {p0, v6}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getNextEnabledLayout(Lcom/nuance/xt9/input/InputMethods$Layout;)Lcom/nuance/xt9/input/InputMethods$Layout;

    move-result-object v6

    .line 1270
    :cond_2
    if-nez v6, :cond_3

    .line 1271
    iget v1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mDefaultLayoutId:I

    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->findLayout(I)Lcom/nuance/xt9/input/InputMethods$Layout;

    move-result-object v6

    .line 1272
    if-eqz v6, :cond_3

    .line 1273
    invoke-virtual {v6}, Lcom/nuance/xt9/input/InputMethods$Layout;->saveAsCurrent()V

    .line 1274
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Lcom/nuance/xt9/input/InputMethods$Layout;->setEnabled(Z)V

    .line 1279
    :cond_3
    if-nez v6, :cond_4

    .line 1281
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error - can\'t find the current or default layout for languageId(0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getLanguageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with input mode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :cond_4
    return-object v6
.end method

.method public getEnabledPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyboardLayouts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/InputMethods$Layout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1438
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1439
    .local v2, layouts:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$Layout;>;"
    iget-object v3, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/InputMethods$Layout;

    .line 1440
    .local v1, layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    iget v3, v1, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutId:I

    const/16 v4, 0x600

    if-eq v3, v4, :cond_1

    iget v3, v1, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutId:I

    const/16 v4, 0x900

    if-eq v3, v4, :cond_1

    iget v3, v1, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutId:I

    const/16 v4, 0xa00

    if-ne v3, v4, :cond_0

    .line 1443
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1447
    .end local v1           #layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    :cond_2
    return-object v2
.end method

.method public getLanguageId()I
    .locals 1

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v0, v0, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    return v0
.end method

.method public getLetterAndSymbolEnabledPrefKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nuance/xt9/input/InputMethods$InputMode;->MIX_LETTER_AND_SYMBOL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods$Language;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getMixLetterAndDigitEnabledPrefKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nuance/xt9/input/InputMethods$InputMode;->MIX_LETTER_AND_DIGIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMixLetterAndPunctuationEnabledPrefKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nuance/xt9/input/InputMethods$InputMode;->MIX_LETTER_AND_PUNCTUATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextLayout()Lcom/nuance/xt9/input/InputMethods$Layout;
    .locals 1

    .prologue
    .line 1423
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/xt9/input/InputMethods$Layout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getNextEnabledLayout(Lcom/nuance/xt9/input/InputMethods$Layout;)Lcom/nuance/xt9/input/InputMethods$Layout;

    move-result-object v0

    return-object v0
.end method

.method public getNextWordPredictionPrefKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nuance/xt9/input/InputMethods$InputMode;->NEXT_WORD_PREDICTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecapturePrefKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nuance/xt9/input/InputMethods$InputMode;->RECAPTURE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTraceAutoAcceptEnabledPrefKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nuance/xt9/input/InputMethods$InputMode;->TRACE_AUTO_ACCEPT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTraceEnabledPrefKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nuance/xt9/input/InputMethods$InputMode;->TRACE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWordCompletionPoint()I
    .locals 3

    .prologue
    .line 1357
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getWordCompletionPrefKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getWordCompletionPrefKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nuance/xt9/input/InputMethods$InputMode;->WORD_COMPLETION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isABCMode()Z
    .locals 2

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v1, "abc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAlphaInputMode()Z
    .locals 2

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v1, "alpha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAmbigMode()Z
    .locals 2

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v1, "ambig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isAtLeastOneLayoutIsEnabled()Z
    .locals 4

    .prologue
    .line 1469
    const/4 v0, 0x0

    .line 1470
    .local v0, atleastOneEnable:Z
    iget-object v3, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/xt9/input/InputMethods$Layout;

    .line 1471
    .local v2, layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$Layout;->isEnabled()Z

    move-result v0

    .line 1472
    if-eqz v0, :cond_0

    .line 1479
    .end local v2           #layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    :cond_1
    return v0
.end method

.method public isChineseTraceInputMode()Z
    .locals 2

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v1, "chinese_trace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 4

    .prologue
    .line 1304
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1305
    .local v1, sp:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mDefaultEnabled:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$Language;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 1309
    .local v0, enabled:Z
    :goto_0
    return v0

    .line 1305
    .end local v0           #enabled:Z
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public isHandwriting()Z
    .locals 2

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v1, "handwriting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMixLetterAndDigitEnabled()Z
    .locals 3

    .prologue
    .line 1538
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1539
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getMixLetterAndDigitEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mMixLetterAndDigit:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mMixLetterAndDigit:Z

    .line 1540
    iget-boolean v1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mMixLetterAndDigit:Z

    return v1
.end method

.method public isMixLetterAndPunctuationEnabled()Z
    .locals 3

    .prologue
    .line 1522
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1523
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getMixLetterAndPunctuationEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mMixLetterAndPunctuation:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mMixLetterAndPunctuation:Z

    .line 1524
    iget-boolean v1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mMixLetterAndPunctuation:Z

    return v1
.end method

.method public isMixLetterAndSymbolEnabled()Z
    .locals 3

    .prologue
    .line 1506
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1507
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getLetterAndSymbolEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mMixLetterAndSymbol:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mMixLetterAndSymbol:Z

    .line 1508
    iget-boolean v1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mMixLetterAndSymbol:Z

    return v1
.end method

.method public isNextWordPredictionEnabled()Z
    .locals 3

    .prologue
    .line 1329
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getNextWordPredictionPrefKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isRecaptureEnabled()Z
    .locals 3

    .prologue
    .line 1317
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getRecapturePrefKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTraceAutoAcceptEnabled()Z
    .locals 3

    .prologue
    .line 1385
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1386
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getTraceAutoAcceptEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mTraceAutoAccept:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mTraceAutoAccept:Z

    .line 1387
    iget-boolean v1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mTraceAutoAccept:Z

    return v1
.end method

.method public isTraceEnabled()Z
    .locals 3

    .prologue
    .line 1369
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1370
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getTraceEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mEnabledTrace:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mEnabledTrace:Z

    .line 1371
    iget-boolean v1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mEnabledTrace:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->isTraceFeatureSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveAsCurrent()V
    .locals 3

    .prologue
    .line 1289
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1290
    .local v0, sp:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->saveAsCurrent()V

    .line 1291
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getLanguageId()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/InputMethods;->saveInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)V

    .line 1292
    return-void
.end method

.method public setAutoCorrectionMode(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getAutoCorrectionPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/Settings;->setString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1298
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1299
    .local v0, sp:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/nuance/xt9/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1300
    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v1, p1}, Lcom/nuance/xt9/input/InputMethods$Language;->setEnabled(Z)V

    .line 1301
    return-void
.end method

.method public setWordCompletionPoint(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1361
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getWordCompletionPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/Settings;->setString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    return-void
.end method
