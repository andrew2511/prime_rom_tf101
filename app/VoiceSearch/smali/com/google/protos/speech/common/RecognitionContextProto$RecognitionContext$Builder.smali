.class public final Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RecognitionContextProto.java"

# interfaces
.implements Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;",
        "Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;",
        ">;",
        "Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContextOrBuilder;"
    }
.end annotation


# instance fields
.field private applicationName_:Ljava/lang/Object;

.field private bitField0_:I

.field private clientApplicationId_:Ljava/lang/Object;

.field private clientId_:Ljava/lang/Object;

.field private enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

.field private fieldId_:Ljava/lang/Object;

.field private fieldName_:Ljava/lang/Object;

.field private hardware_:Ljava/lang/Object;

.field private hasGrxmlGrammar_:Z

.field private hint_:Ljava/lang/Object;

.field private imeOptions_:I

.field private inputType_:I

.field private label_:Ljava/lang/Object;

.field private languageModel_:Ljava/lang/Object;

.field private language_:Ljava/lang/Object;

.field private referer_:Ljava/lang/Object;

.field private selectedKeyboardLanguage_:Ljava/lang/Object;

.field private singleLine_:Z

.field private userAgent_:Ljava/lang/Object;

.field private voiceSearchLanguage_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1063
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1339
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->applicationName_:Ljava/lang/Object;

    .line 1392
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldName_:Ljava/lang/Object;

    .line 1445
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldId_:Ljava/lang/Object;

    .line 1519
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->label_:Ljava/lang/Object;

    .line 1572
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hint_:Ljava/lang/Object;

    .line 1667
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->languageModel_:Ljava/lang/Object;

    .line 1720
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->language_:Ljava/lang/Object;

    .line 1773
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientId_:Ljava/lang/Object;

    .line 1847
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->selectedKeyboardLanguage_:Ljava/lang/Object;

    .line 1900
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    .line 1965
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 2018
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->referer_:Ljava/lang/Object;

    .line 2071
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->userAgent_:Ljava/lang/Object;

    .line 2124
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hardware_:Ljava/lang/Object;

    .line 2177
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientApplicationId_:Ljava/lang/Object;

    .line 1064
    invoke-direct {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->maybeForceBuilderInitialization()V

    .line 1065
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1

    .prologue
    .line 1058
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->create()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1

    .prologue
    .line 1070
    new-instance v0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;-><init>()V

    return-object v0
.end method

.method private ensureEnabledKeyboardLanguageIsMutable()V
    .locals 2

    .prologue
    .line 1902
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_0

    .line 1903
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    .line 1904
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1906
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1068
    return-void
.end method


# virtual methods
.method public addAllEnabledKeyboardLanguage(Ljava/lang/Iterable;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;"
        }
    .end annotation

    .prologue
    .line 1942
    invoke-direct {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->ensureEnabledKeyboardLanguageIsMutable()V

    .line 1943
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1945
    return-object p0
.end method

.method public addEnabledKeyboardLanguage(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1932
    if-nez p1, :cond_0

    .line 1933
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1935
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->ensureEnabledKeyboardLanguageIsMutable()V

    .line 1936
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1938
    return-object p0
.end method

.method public addEnabledKeyboardLanguageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1955
    if-nez p1, :cond_0

    .line 1956
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1958
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->ensureEnabledKeyboardLanguageIsMutable()V

    .line 1959
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 1961
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->build()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
    .locals 2

    .prologue
    .line 1125
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->buildPartial()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    .line 1126
    invoke-virtual {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1127
    invoke-static {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1129
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->buildPartial()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
    .locals 9

    .prologue
    const/high16 v8, 0x4

    const/high16 v7, 0x2

    const/high16 v6, 0x1

    const v5, 0x8000

    .line 1133
    new-instance v0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/common/RecognitionContextProto$1;)V

    .line 1134
    iget v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1135
    const/4 v2, 0x0

    .line 1136
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1137
    or-int/lit8 v2, v2, 0x1

    .line 1139
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->applicationName_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$302(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1141
    or-int/lit8 v2, v2, 0x2

    .line 1143
    :cond_1
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldName_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$402(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1145
    or-int/lit8 v2, v2, 0x4

    .line 1147
    :cond_2
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldId_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$502(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1149
    or-int/lit8 v2, v2, 0x8

    .line 1151
    :cond_3
    iget-boolean v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->singleLine_:Z

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$602(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Z)Z

    .line 1152
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1153
    or-int/lit8 v2, v2, 0x10

    .line 1155
    :cond_4
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->label_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$702(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1157
    or-int/lit8 v2, v2, 0x20

    .line 1159
    :cond_5
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hint_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$802(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    and-int/lit8 v3, v1, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1161
    or-int/lit8 v2, v2, 0x40

    .line 1163
    :cond_6
    iget v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->inputType_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$902(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;I)I

    .line 1164
    and-int/lit16 v3, v1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 1165
    or-int/lit16 v2, v2, 0x80

    .line 1167
    :cond_7
    iget v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->imeOptions_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1002(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;I)I

    .line 1168
    and-int/lit16 v3, v1, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 1169
    or-int/lit16 v2, v2, 0x100

    .line 1171
    :cond_8
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->languageModel_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1102(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    and-int/lit16 v3, v1, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 1173
    or-int/lit16 v2, v2, 0x200

    .line 1175
    :cond_9
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->language_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1202(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    and-int/lit16 v3, v1, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 1177
    or-int/lit16 v2, v2, 0x400

    .line 1179
    :cond_a
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientId_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1302(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    and-int/lit16 v3, v1, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 1181
    or-int/lit16 v2, v2, 0x800

    .line 1183
    :cond_b
    iget-boolean v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hasGrxmlGrammar_:Z

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1402(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Z)Z

    .line 1184
    and-int/lit16 v3, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 1185
    or-int/lit16 v2, v2, 0x1000

    .line 1187
    :cond_c
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->selectedKeyboardLanguage_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1502(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    iget v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 1189
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    .line 1191
    iget v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1193
    :cond_d
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1602(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 1194
    and-int/lit16 v3, v1, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 1195
    or-int/lit16 v2, v2, 0x2000

    .line 1197
    :cond_e
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1702(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    and-int v3, v1, v5

    if-ne v3, v5, :cond_f

    .line 1199
    or-int/lit16 v2, v2, 0x4000

    .line 1201
    :cond_f
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->referer_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1802(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    and-int v3, v1, v6

    if-ne v3, v6, :cond_10

    .line 1203
    or-int/2addr v2, v5

    .line 1205
    :cond_10
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->userAgent_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1902(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    and-int v3, v1, v7

    if-ne v3, v7, :cond_11

    .line 1207
    or-int/2addr v2, v6

    .line 1209
    :cond_11
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hardware_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$2002(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    and-int/2addr v1, v8

    if-ne v1, v8, :cond_12

    .line 1211
    or-int v1, v2, v7

    .line 1213
    :goto_0
    iget-object v2, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientApplicationId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$2102(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    invoke-static {v0, v1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$2202(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;I)I

    .line 1215
    return-object v0

    :cond_12
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clear()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clear()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1074
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1075
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->applicationName_:Ljava/lang/Object;

    .line 1076
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1077
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldName_:Ljava/lang/Object;

    .line 1078
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1079
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldId_:Ljava/lang/Object;

    .line 1080
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1081
    iput-boolean v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->singleLine_:Z

    .line 1082
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1083
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->label_:Ljava/lang/Object;

    .line 1084
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1085
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hint_:Ljava/lang/Object;

    .line 1086
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1087
    iput v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->inputType_:I

    .line 1088
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1089
    iput v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->imeOptions_:I

    .line 1090
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1091
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->languageModel_:Ljava/lang/Object;

    .line 1092
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1093
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->language_:Ljava/lang/Object;

    .line 1094
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1095
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientId_:Ljava/lang/Object;

    .line 1096
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1097
    iput-boolean v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hasGrxmlGrammar_:Z

    .line 1098
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1099
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->selectedKeyboardLanguage_:Ljava/lang/Object;

    .line 1100
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1101
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    .line 1102
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1103
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 1104
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1105
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->referer_:Ljava/lang/Object;

    .line 1106
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1107
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->userAgent_:Ljava/lang/Object;

    .line 1108
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1109
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hardware_:Ljava/lang/Object;

    .line 1110
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1111
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientApplicationId_:Ljava/lang/Object;

    .line 1112
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1113
    return-object p0
.end method

.method public clearApplicationName()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1

    .prologue
    .line 1375
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1376
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getDefaultInstance()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->applicationName_:Ljava/lang/Object;

    .line 1378
    return-object p0
.end method

.method public clearClientApplicationId()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 2

    .prologue
    .line 2213
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 2214
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getDefaultInstance()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getClientApplicationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientApplicationId_:Ljava/lang/Object;

    .line 2216
    return-object p0
.end method

.method public clearClientId()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1

    .prologue
    .line 1809
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1810
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getDefaultInstance()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientId_:Ljava/lang/Object;

    .line 1812
    return-object p0
.end method

.method public clearEnabledKeyboardLanguage()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1

    .prologue
    .line 1948
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    .line 1949
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1951
    return-object p0
.end method

.method public clearFieldId()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1

    .prologue
    .line 1481
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1482
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getDefaultInstance()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getFieldId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldId_:Ljava/lang/Object;

    .line 1484
    return-object p0
.end method

.method public clearFieldName()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1

    .prologue
    .line 1428
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1429
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getDefaultInstance()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getFieldName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldName_:Ljava/lang/Object;

    .line 1431
    return-object p0
.end method

.method public clearHardware()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 2

    .prologue
    .line 2160
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 2161
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getDefaultInstance()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getHardware()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hardware_:Ljava/lang/Object;

    .line 2163
    return-object p0
.end method

.method public clearHasGrxmlGrammar()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1

    .prologue
    .line 1840
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1841
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hasGrxmlGrammar_:Z

    .line 1843
    return-object p0
.end method

.method public clearHint()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1

    .prologue
    .line 1608
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1609
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getDefaultInstance()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getHint()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hint_:Ljava/lang/Object;

    .line 1611
    return-object p0
.end method

.method public clearImeOptions()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1

    .prologue
    .line 1660
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1661
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->imeOptions_:I

    .line 1663
    return-object p0
.end method

.method public clearInputType()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1

    .prologue
    .line 1639
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1640
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->inputType_:I

    .line 1642
    return-object p0
.end method

.method public clearLabel()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1

    .prologue
    .line 1555
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1556
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getDefaultInstance()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->label_:Ljava/lang/Object;

    .line 1558
    return-object p0
.end method

.method public clearLanguage()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1

    .prologue
    .line 1756
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1757
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getDefaultInstance()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->language_:Ljava/lang/Object;

    .line 1759
    return-object p0
.end method

.method public clearLanguageModel()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1

    .prologue
    .line 1703
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1704
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getDefaultInstance()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getLanguageModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->languageModel_:Ljava/lang/Object;

    .line 1706
    return-object p0
.end method

.method public clearReferer()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 2

    .prologue
    .line 2054
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 2055
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getDefaultInstance()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getReferer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->referer_:Ljava/lang/Object;

    .line 2057
    return-object p0
.end method

.method public clearSelectedKeyboardLanguage()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1

    .prologue
    .line 1883
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1884
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getDefaultInstance()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getSelectedKeyboardLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->selectedKeyboardLanguage_:Ljava/lang/Object;

    .line 1886
    return-object p0
.end method

.method public clearSingleLine()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1

    .prologue
    .line 1512
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->singleLine_:Z

    .line 1515
    return-object p0
.end method

.method public clearUserAgent()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 2

    .prologue
    .line 2107
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 2108
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getDefaultInstance()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->userAgent_:Ljava/lang/Object;

    .line 2110
    return-object p0
.end method

.method public clearVoiceSearchLanguage()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1

    .prologue
    .line 2001
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 2002
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getDefaultInstance()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getVoiceSearchLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 2004
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clone()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clone()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clone()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 2

    .prologue
    .line 1117
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->create()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->buildPartial()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->mergeFrom(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clone()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->applicationName_:Ljava/lang/Object;

    .line 1345
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1346
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1347
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->applicationName_:Ljava/lang/Object;

    .line 1350
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getApplicationNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->applicationName_:Ljava/lang/Object;

    .line 1356
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1357
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1359
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->applicationName_:Ljava/lang/Object;

    .line 1362
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getClientApplicationId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2182
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientApplicationId_:Ljava/lang/Object;

    .line 2183
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2184
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2185
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientApplicationId_:Ljava/lang/Object;

    .line 2188
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getClientApplicationIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2193
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientApplicationId_:Ljava/lang/Object;

    .line 2194
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2195
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2197
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientApplicationId_:Ljava/lang/Object;

    .line 2200
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientId_:Ljava/lang/Object;

    .line 1779
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1780
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1781
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientId_:Ljava/lang/Object;

    .line 1784
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getClientIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientId_:Ljava/lang/Object;

    .line 1790
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1791
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1793
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientId_:Ljava/lang/Object;

    .line 1796
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 1121
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getDefaultInstance()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledKeyboardLanguage(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getEnabledKeyboardLanguageBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter

    .prologue
    .line 1919
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledKeyboardLanguageCount()I
    .locals 1

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getEnabledKeyboardLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFieldId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldId_:Ljava/lang/Object;

    .line 1451
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1452
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1453
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldId_:Ljava/lang/Object;

    .line 1456
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getFieldIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldId_:Ljava/lang/Object;

    .line 1462
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1463
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1465
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldId_:Ljava/lang/Object;

    .line 1468
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldName_:Ljava/lang/Object;

    .line 1398
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1399
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1400
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldName_:Ljava/lang/Object;

    .line 1403
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getFieldNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldName_:Ljava/lang/Object;

    .line 1409
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1410
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1412
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldName_:Ljava/lang/Object;

    .line 1415
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getHardware()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2129
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hardware_:Ljava/lang/Object;

    .line 2130
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2131
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2132
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hardware_:Ljava/lang/Object;

    .line 2135
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getHardwareBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hardware_:Ljava/lang/Object;

    .line 2141
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2142
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2144
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hardware_:Ljava/lang/Object;

    .line 2147
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getHasGrxmlGrammar()Z
    .locals 1

    .prologue
    .line 1831
    iget-boolean v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hasGrxmlGrammar_:Z

    return v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hint_:Ljava/lang/Object;

    .line 1578
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1579
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1580
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hint_:Ljava/lang/Object;

    .line 1583
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getHintBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hint_:Ljava/lang/Object;

    .line 1589
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1590
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1592
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hint_:Ljava/lang/Object;

    .line 1595
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 1651
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->imeOptions_:I

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 1630
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->inputType_:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->label_:Ljava/lang/Object;

    .line 1525
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1526
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1527
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->label_:Ljava/lang/Object;

    .line 1530
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->label_:Ljava/lang/Object;

    .line 1536
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1537
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1539
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->label_:Ljava/lang/Object;

    .line 1542
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->language_:Ljava/lang/Object;

    .line 1726
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1727
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1728
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->language_:Ljava/lang/Object;

    .line 1731
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->language_:Ljava/lang/Object;

    .line 1737
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1738
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1740
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->language_:Ljava/lang/Object;

    .line 1743
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getLanguageModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->languageModel_:Ljava/lang/Object;

    .line 1673
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1674
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1675
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->languageModel_:Ljava/lang/Object;

    .line 1678
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getLanguageModelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->languageModel_:Ljava/lang/Object;

    .line 1684
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1685
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1687
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->languageModel_:Ljava/lang/Object;

    .line 1690
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getReferer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->referer_:Ljava/lang/Object;

    .line 2024
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2025
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2026
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->referer_:Ljava/lang/Object;

    .line 2029
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getRefererBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->referer_:Ljava/lang/Object;

    .line 2035
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2036
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2038
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->referer_:Ljava/lang/Object;

    .line 2041
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getSelectedKeyboardLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->selectedKeyboardLanguage_:Ljava/lang/Object;

    .line 1853
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1854
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1855
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->selectedKeyboardLanguage_:Ljava/lang/Object;

    .line 1858
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSelectedKeyboardLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->selectedKeyboardLanguage_:Ljava/lang/Object;

    .line 1864
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1865
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1867
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->selectedKeyboardLanguage_:Ljava/lang/Object;

    .line 1870
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getSingleLine()Z
    .locals 1

    .prologue
    .line 1503
    iget-boolean v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->singleLine_:Z

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2076
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->userAgent_:Ljava/lang/Object;

    .line 2077
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2078
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2079
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->userAgent_:Ljava/lang/Object;

    .line 2082
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserAgentBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2087
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->userAgent_:Ljava/lang/Object;

    .line 2088
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2089
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2091
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->userAgent_:Ljava/lang/Object;

    .line 2094
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getVoiceSearchLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 1971
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1972
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1973
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 1976
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getVoiceSearchLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 1982
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1983
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1985
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 1988
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasApplicationName()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1341
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientApplicationId()Z
    .locals 2

    .prologue
    const/high16 v1, 0x4

    .line 2179
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientId()Z
    .locals 2

    .prologue
    .line 1775
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFieldId()Z
    .locals 2

    .prologue
    .line 1447
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFieldName()Z
    .locals 2

    .prologue
    .line 1394
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHardware()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2

    .line 2126
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHasGrxmlGrammar()Z
    .locals 2

    .prologue
    .line 1828
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHint()Z
    .locals 2

    .prologue
    .line 1574
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImeOptions()Z
    .locals 2

    .prologue
    .line 1648
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInputType()Z
    .locals 2

    .prologue
    .line 1627
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLabel()Z
    .locals 2

    .prologue
    .line 1521
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLanguage()Z
    .locals 2

    .prologue
    .line 1722
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLanguageModel()Z
    .locals 2

    .prologue
    .line 1669
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReferer()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 2020
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSelectedKeyboardLanguage()Z
    .locals 2

    .prologue
    .line 1849
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSingleLine()Z
    .locals 2

    .prologue
    .line 1500
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserAgent()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1

    .line 2073
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVoiceSearchLanguage()Z
    .locals 2

    .prologue
    .line 1967
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1316
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1058
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1058
    check-cast p1, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->mergeFrom(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1058
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1323
    const/4 v1, 0x0

    .line 1325
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    if-eqz v0, :cond_0

    .line 1331
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->mergeFrom(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 1334
    :cond_0
    return-object p0

    .line 1326
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1327
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1328
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1330
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 1331
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->mergeFrom(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    :cond_1
    throw v0

    .line 1330
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 2
    .parameter

    .prologue
    .line 1219
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getDefaultInstance()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 1312
    :goto_0
    return-object v0

    .line 1220
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasApplicationName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1221
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1222
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$300(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->applicationName_:Ljava/lang/Object;

    .line 1225
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasFieldName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1226
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1227
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$400(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldName_:Ljava/lang/Object;

    .line 1230
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasFieldId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1231
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1232
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$500(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldId_:Ljava/lang/Object;

    .line 1235
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasSingleLine()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1236
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getSingleLine()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setSingleLine(Z)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 1238
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1239
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1240
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$700(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->label_:Ljava/lang/Object;

    .line 1243
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasHint()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1244
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1245
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$800(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hint_:Ljava/lang/Object;

    .line 1248
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasInputType()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1249
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getInputType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setInputType(I)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 1251
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasImeOptions()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1252
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getImeOptions()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setImeOptions(I)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 1254
    :cond_8
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasLanguageModel()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1255
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1256
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1100(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->languageModel_:Ljava/lang/Object;

    .line 1259
    :cond_9
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasLanguage()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1260
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1261
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1200(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->language_:Ljava/lang/Object;

    .line 1264
    :cond_a
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasClientId()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1265
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1266
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1300(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientId_:Ljava/lang/Object;

    .line 1269
    :cond_b
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasHasGrxmlGrammar()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1270
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getHasGrxmlGrammar()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setHasGrxmlGrammar(Z)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 1272
    :cond_c
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasSelectedKeyboardLanguage()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1273
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1274
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1500(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->selectedKeyboardLanguage_:Ljava/lang/Object;

    .line 1277
    :cond_d
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1600(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1278
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1279
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1600(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    .line 1280
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1287
    :cond_e
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasVoiceSearchLanguage()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1288
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1289
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1700(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 1292
    :cond_f
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasReferer()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1293
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1294
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1800(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->referer_:Ljava/lang/Object;

    .line 1297
    :cond_10
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasUserAgent()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1298
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1299
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1900(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->userAgent_:Ljava/lang/Object;

    .line 1302
    :cond_11
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasHardware()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1303
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1304
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$2000(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hardware_:Ljava/lang/Object;

    .line 1307
    :cond_12
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasClientApplicationId()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1308
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1309
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$2100(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientApplicationId_:Ljava/lang/Object;

    :cond_13
    move-object v0, p0

    .line 1312
    goto/16 :goto_0

    .line 1282
    :cond_14
    invoke-direct {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->ensureEnabledKeyboardLanguageIsMutable()V

    .line 1283
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1600(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public setApplicationName(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1366
    if-nez p1, :cond_0

    .line 1367
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1369
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1370
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->applicationName_:Ljava/lang/Object;

    .line 1372
    return-object p0
.end method

.method public setApplicationNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1382
    if-nez p1, :cond_0

    .line 1383
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1385
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1386
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->applicationName_:Ljava/lang/Object;

    .line 1388
    return-object p0
.end method

.method public setClientApplicationId(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 2
    .parameter

    .prologue
    .line 2204
    if-nez p1, :cond_0

    .line 2205
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2207
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 2208
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientApplicationId_:Ljava/lang/Object;

    .line 2210
    return-object p0
.end method

.method public setClientApplicationIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 2
    .parameter

    .prologue
    .line 2220
    if-nez p1, :cond_0

    .line 2221
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2223
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 2224
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientApplicationId_:Ljava/lang/Object;

    .line 2226
    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1800
    if-nez p1, :cond_0

    .line 1801
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1803
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1804
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientId_:Ljava/lang/Object;

    .line 1806
    return-object p0
.end method

.method public setClientIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1816
    if-nez p1, :cond_0

    .line 1817
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1819
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1820
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientId_:Ljava/lang/Object;

    .line 1822
    return-object p0
.end method

.method public setEnabledKeyboardLanguage(ILjava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1923
    if-nez p2, :cond_0

    .line 1924
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1926
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->ensureEnabledKeyboardLanguageIsMutable()V

    .line 1927
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1929
    return-object p0
.end method

.method public setFieldId(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1472
    if-nez p1, :cond_0

    .line 1473
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1475
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1476
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldId_:Ljava/lang/Object;

    .line 1478
    return-object p0
.end method

.method public setFieldIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1488
    if-nez p1, :cond_0

    .line 1489
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1491
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1492
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldId_:Ljava/lang/Object;

    .line 1494
    return-object p0
.end method

.method public setFieldName(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1419
    if-nez p1, :cond_0

    .line 1420
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1422
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1423
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldName_:Ljava/lang/Object;

    .line 1425
    return-object p0
.end method

.method public setFieldNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1435
    if-nez p1, :cond_0

    .line 1436
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1438
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1439
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldName_:Ljava/lang/Object;

    .line 1441
    return-object p0
.end method

.method public setHardware(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 2
    .parameter

    .prologue
    .line 2151
    if-nez p1, :cond_0

    .line 2152
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2154
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 2155
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hardware_:Ljava/lang/Object;

    .line 2157
    return-object p0
.end method

.method public setHardwareBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 2
    .parameter

    .prologue
    .line 2167
    if-nez p1, :cond_0

    .line 2168
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2170
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 2171
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hardware_:Ljava/lang/Object;

    .line 2173
    return-object p0
.end method

.method public setHasGrxmlGrammar(Z)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1834
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1835
    iput-boolean p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hasGrxmlGrammar_:Z

    .line 1837
    return-object p0
.end method

.method public setHint(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1599
    if-nez p1, :cond_0

    .line 1600
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1602
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1603
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hint_:Ljava/lang/Object;

    .line 1605
    return-object p0
.end method

.method public setHintBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1615
    if-nez p1, :cond_0

    .line 1616
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1618
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1619
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hint_:Ljava/lang/Object;

    .line 1621
    return-object p0
.end method

.method public setImeOptions(I)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1654
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1655
    iput p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->imeOptions_:I

    .line 1657
    return-object p0
.end method

.method public setInputType(I)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1633
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1634
    iput p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->inputType_:I

    .line 1636
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1546
    if-nez p1, :cond_0

    .line 1547
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1549
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1550
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->label_:Ljava/lang/Object;

    .line 1552
    return-object p0
.end method

.method public setLabelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1562
    if-nez p1, :cond_0

    .line 1563
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1565
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1566
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->label_:Ljava/lang/Object;

    .line 1568
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1747
    if-nez p1, :cond_0

    .line 1748
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1750
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1751
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->language_:Ljava/lang/Object;

    .line 1753
    return-object p0
.end method

.method public setLanguageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1763
    if-nez p1, :cond_0

    .line 1764
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1766
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1767
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->language_:Ljava/lang/Object;

    .line 1769
    return-object p0
.end method

.method public setLanguageModel(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1694
    if-nez p1, :cond_0

    .line 1695
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1697
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1698
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->languageModel_:Ljava/lang/Object;

    .line 1700
    return-object p0
.end method

.method public setLanguageModelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1710
    if-nez p1, :cond_0

    .line 1711
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1713
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1714
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->languageModel_:Ljava/lang/Object;

    .line 1716
    return-object p0
.end method

.method public setReferer(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 2
    .parameter

    .prologue
    .line 2045
    if-nez p1, :cond_0

    .line 2046
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2048
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 2049
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->referer_:Ljava/lang/Object;

    .line 2051
    return-object p0
.end method

.method public setRefererBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 2
    .parameter

    .prologue
    .line 2061
    if-nez p1, :cond_0

    .line 2062
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2064
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 2065
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->referer_:Ljava/lang/Object;

    .line 2067
    return-object p0
.end method

.method public setSelectedKeyboardLanguage(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1874
    if-nez p1, :cond_0

    .line 1875
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1877
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1878
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->selectedKeyboardLanguage_:Ljava/lang/Object;

    .line 1880
    return-object p0
.end method

.method public setSelectedKeyboardLanguageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1890
    if-nez p1, :cond_0

    .line 1891
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1893
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1894
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->selectedKeyboardLanguage_:Ljava/lang/Object;

    .line 1896
    return-object p0
.end method

.method public setSingleLine(Z)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1506
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1507
    iput-boolean p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->singleLine_:Z

    .line 1509
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 2
    .parameter

    .prologue
    .line 2098
    if-nez p1, :cond_0

    .line 2099
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2101
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 2102
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->userAgent_:Ljava/lang/Object;

    .line 2104
    return-object p0
.end method

.method public setUserAgentBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 2
    .parameter

    .prologue
    .line 2114
    if-nez p1, :cond_0

    .line 2115
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2117
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 2118
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->userAgent_:Ljava/lang/Object;

    .line 2120
    return-object p0
.end method

.method public setVoiceSearchLanguage(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1992
    if-nez p1, :cond_0

    .line 1993
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1995
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1996
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 1998
    return-object p0
.end method

.method public setVoiceSearchLanguageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2008
    if-nez p1, :cond_0

    .line 2009
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2011
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 2012
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 2014
    return-object p0
.end method
