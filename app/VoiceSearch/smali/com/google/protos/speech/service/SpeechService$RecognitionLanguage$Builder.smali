.class public final Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognitionLanguageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionLanguageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

.field private localizedName_:Ljava/lang/Object;

.field private matchingLanguage_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$LanguageTag;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10884
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 11008
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->name_:Ljava/lang/Object;

    .line 11061
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    .line 11104
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    .line 11193
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->localizedName_:Ljava/lang/Object;

    .line 10885
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->maybeForceBuilderInitialization()V

    .line 10886
    return-void
.end method

.method static synthetic access$12400()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 1

    .prologue
    .line 10879
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 1

    .prologue
    .line 10891
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;-><init>()V

    return-object v0
.end method

.method private ensureMatchingLanguageIsMutable()V
    .locals 2

    .prologue
    .line 11107
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 11108
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    .line 11109
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 11111
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 10889
    return-void
.end method


# virtual methods
.method public addAllMatchingLanguage(Ljava/lang/Iterable;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/speech/service/SpeechService$LanguageTag;",
            ">;)",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;"
        }
    .end annotation

    .prologue
    .line 11174
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->ensureMatchingLanguageIsMutable()V

    .line 11175
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 11177
    return-object p0
.end method

.method public addMatchingLanguage(ILcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 11167
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->ensureMatchingLanguageIsMutable()V

    .line 11168
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->build()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11170
    return-object p0
.end method

.method public addMatchingLanguage(ILcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11150
    if-nez p2, :cond_0

    .line 11151
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11153
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->ensureMatchingLanguageIsMutable()V

    .line 11154
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11156
    return-object p0
.end method

.method public addMatchingLanguage(Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 2
    .parameter

    .prologue
    .line 11160
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->ensureMatchingLanguageIsMutable()V

    .line 11161
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->build()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11163
    return-object p0
.end method

.method public addMatchingLanguage(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 11140
    if-nez p1, :cond_0

    .line 11141
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11143
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->ensureMatchingLanguageIsMutable()V

    .line 11144
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11146
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10879
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    .locals 2

    .prologue
    .line 10916
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v0

    .line 10917
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10918
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 10920
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10879
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    .locals 5

    .prologue
    .line 10924
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 10925
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 10926
    const/4 v2, 0x0

    .line 10927
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 10928
    or-int/lit8 v2, v2, 0x1

    .line 10930
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->access$12602(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10931
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 10932
    or-int/lit8 v2, v2, 0x2

    .line 10934
    :cond_1
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->access$12702(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    .line 10935
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 10936
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    .line 10937
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 10939
    :cond_2
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->access$12802(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;Ljava/util/List;)Ljava/util/List;

    .line 10940
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 10941
    or-int/lit8 v1, v2, 0x4

    .line 10943
    :goto_0
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->localizedName_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->access$12902(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10944
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->access$13002(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;I)I

    .line 10945
    return-object v0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 10879
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10879
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 1

    .prologue
    .line 10895
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 10896
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->name_:Ljava/lang/Object;

    .line 10897
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 10898
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    .line 10899
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 10900
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    .line 10901
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 10902
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->localizedName_:Ljava/lang/Object;

    .line 10903
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 10904
    return-object p0
.end method

.method public clearLanguageTag()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 1

    .prologue
    .line 11097
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    .line 11099
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 11100
    return-object p0
.end method

.method public clearLocalizedName()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 1

    .prologue
    .line 11229
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 11230
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->getLocalizedName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->localizedName_:Ljava/lang/Object;

    .line 11232
    return-object p0
.end method

.method public clearMatchingLanguage()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 1

    .prologue
    .line 11180
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    .line 11181
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 11183
    return-object p0
.end method

.method public clearName()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 1

    .prologue
    .line 11044
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 11045
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->name_:Ljava/lang/Object;

    .line 11047
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 10879
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 10879
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10879
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 2

    .prologue
    .line 10908
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

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
    .line 10879
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 10879
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10879
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    .locals 1

    .prologue
    .line 10912
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageTag()Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .locals 1

    .prologue
    .line 11066
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    return-object v0
.end method

.method public getLocalizedName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 11198
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->localizedName_:Ljava/lang/Object;

    .line 11199
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 11200
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 11201
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->localizedName_:Ljava/lang/Object;

    .line 11204
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getLocalizedNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 11209
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->localizedName_:Ljava/lang/Object;

    .line 11210
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11211
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11213
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->localizedName_:Ljava/lang/Object;

    .line 11216
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getMatchingLanguage(I)Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .locals 1
    .parameter

    .prologue
    .line 11120
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    return-object p0
.end method

.method public getMatchingLanguageCount()I
    .locals 1

    .prologue
    .line 11117
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMatchingLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$LanguageTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11114
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 11013
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->name_:Ljava/lang/Object;

    .line 11014
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 11015
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 11016
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->name_:Ljava/lang/Object;

    .line 11019
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 11024
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->name_:Ljava/lang/Object;

    .line 11025
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11026
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11028
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->name_:Ljava/lang/Object;

    .line 11031
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasLanguageTag()Z
    .locals 2

    .prologue
    .line 11063
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

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

.method public hasLocalizedName()Z
    .locals 2

    .prologue
    .line 11195
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 11010
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10977
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->hasName()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 10985
    :goto_0
    return v0

    .line 10981
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->hasLanguageTag()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 10983
    goto :goto_0

    .line 10985
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
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
    .line 10879
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10879
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

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
    .line 10879
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10992
    const/4 v1, 0x0

    .line 10994
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10999
    if-eqz v0, :cond_0

    .line 11000
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    .line 11003
    :cond_0
    return-object p0

    .line 10995
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 10996
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10997
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10999
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 11000
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    :cond_1
    throw v0

    .line 10999
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 2
    .parameter

    .prologue
    .line 10949
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 10973
    :goto_0
    return-object v0

    .line 10950
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10951
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 10952
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->access$12600(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->name_:Ljava/lang/Object;

    .line 10955
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->hasLanguageTag()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10956
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->getLanguageTag()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->mergeLanguageTag(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    .line 10958
    :cond_2
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->access$12800(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10959
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10960
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->access$12800(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    .line 10961
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 10968
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->hasLocalizedName()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10969
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 10970
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->access$12900(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->localizedName_:Ljava/lang/Object;

    :cond_4
    move-object v0, p0

    .line 10973
    goto :goto_0

    .line 10963
    :cond_5
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->ensureMatchingLanguageIsMutable()V

    .line 10964
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->access$12800(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public mergeLanguageTag(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 2
    .parameter

    .prologue
    .line 11085
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11087
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->newBuilder(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    .line 11093
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 11094
    return-object p0

    .line 11090
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    goto :goto_0
.end method

.method public removeMatchingLanguage(I)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 11186
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->ensureMatchingLanguageIsMutable()V

    .line 11187
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11189
    return-object p0
.end method

.method public setLanguageTag(Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 11079
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->build()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    .line 11081
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 11082
    return-object p0
.end method

.method public setLanguageTag(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 11069
    if-nez p1, :cond_0

    .line 11070
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11072
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    .line 11074
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 11075
    return-object p0
.end method

.method public setLocalizedName(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 11220
    if-nez p1, :cond_0

    .line 11221
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11223
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 11224
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->localizedName_:Ljava/lang/Object;

    .line 11226
    return-object p0
.end method

.method public setLocalizedNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 11236
    if-nez p1, :cond_0

    .line 11237
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11239
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 11240
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->localizedName_:Ljava/lang/Object;

    .line 11242
    return-object p0
.end method

.method public setMatchingLanguage(ILcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 11134
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->ensureMatchingLanguageIsMutable()V

    .line 11135
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->build()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11137
    return-object p0
.end method

.method public setMatchingLanguage(ILcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11124
    if-nez p2, :cond_0

    .line 11125
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11127
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->ensureMatchingLanguageIsMutable()V

    .line 11128
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11130
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 11035
    if-nez p1, :cond_0

    .line 11036
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11038
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 11039
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->name_:Ljava/lang/Object;

    .line 11041
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 11051
    if-nez p1, :cond_0

    .line 11052
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11054
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 11055
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->name_:Ljava/lang/Object;

    .line 11057
    return-object p0
.end method
